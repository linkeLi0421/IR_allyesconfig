; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/selftests/test-drm_mm.c_pt.bc'
source_filename = "../drivers/gpu/drm/selftests/test-drm_mm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.drm_selftest = type { i8, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.insert_mode = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_mm_scan = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.evict_node = type { %struct.drm_mm_node, %struct.list_head }
%struct.boundary = type { i64, i64, ptr }

@__param_str_igt__9__sanitycheck = internal constant [32 x i8] c"test_drm_mm.igt__9__sanitycheck\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@selftests = internal global { [20 x %struct.drm_selftest], [48 x i8] } { [20 x %struct.drm_selftest] [%struct.drm_selftest { i8 0, ptr @.str, ptr @igt_sanitycheck }, %struct.drm_selftest { i8 0, ptr @.str.1, ptr @igt_init }, %struct.drm_selftest { i8 0, ptr @.str.2, ptr @igt_debug }, %struct.drm_selftest { i8 0, ptr @.str.3, ptr @igt_reserve }, %struct.drm_selftest { i8 0, ptr @.str.4, ptr @igt_insert }, %struct.drm_selftest { i8 0, ptr @.str.5, ptr @igt_replace }, %struct.drm_selftest { i8 0, ptr @.str.6, ptr @igt_insert_range }, %struct.drm_selftest { i8 0, ptr @.str.7, ptr @igt_align }, %struct.drm_selftest { i8 0, ptr @.str.8, ptr @igt_frag }, %struct.drm_selftest { i8 0, ptr @.str.9, ptr @igt_align32 }, %struct.drm_selftest { i8 0, ptr @.str.10, ptr @igt_align64 }, %struct.drm_selftest { i8 0, ptr @.str.11, ptr @igt_evict }, %struct.drm_selftest { i8 0, ptr @.str.12, ptr @igt_evict_range }, %struct.drm_selftest { i8 0, ptr @.str.13, ptr @igt_bottomup }, %struct.drm_selftest { i8 0, ptr @.str.14, ptr @igt_lowest }, %struct.drm_selftest { i8 0, ptr @.str.15, ptr @igt_topdown }, %struct.drm_selftest { i8 0, ptr @.str.16, ptr @igt_highest }, %struct.drm_selftest { i8 0, ptr @.str.17, ptr @igt_color }, %struct.drm_selftest { i8 0, ptr @.str.18, ptr @igt_color_evict }, %struct.drm_selftest { i8 0, ptr @.str.19, ptr @igt_color_evict_range }], [48 x i8] zeroinitializer }, align 32
@__param_igt__9__sanitycheck = internal constant %struct.kernel_param { ptr @__param_str_igt__9__sanitycheck, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr @selftests } }, section "__param", align 4
@__UNIQUE_ID_igt__9__sanitychecktype254 = internal constant [46 x i8] c"test_drm_mm.parmtype=igt__9__sanitycheck:bool\00", section ".modinfo", align 1
@__param_str_igt__10__init = internal constant [26 x i8] c"test_drm_mm.igt__10__init\00", align 1
@__param_igt__10__init = internal constant %struct.kernel_param { ptr @__param_str_igt__10__init, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_igt__10__inittype255 = internal constant [40 x i8] c"test_drm_mm.parmtype=igt__10__init:bool\00", section ".modinfo", align 1
@__param_str_igt__11__debug = internal constant [27 x i8] c"test_drm_mm.igt__11__debug\00", align 1
@__param_igt__11__debug = internal constant %struct.kernel_param { ptr @__param_str_igt__11__debug, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_igt__11__debugtype256 = internal constant [41 x i8] c"test_drm_mm.parmtype=igt__11__debug:bool\00", section ".modinfo", align 1
@__param_str_igt__12__reserve = internal constant [29 x i8] c"test_drm_mm.igt__12__reserve\00", align 1
@__param_igt__12__reserve = internal constant %struct.kernel_param { ptr @__param_str_igt__12__reserve, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 36) } }, section "__param", align 4
@__UNIQUE_ID_igt__12__reservetype257 = internal constant [43 x i8] c"test_drm_mm.parmtype=igt__12__reserve:bool\00", section ".modinfo", align 1
@__param_str_igt__13__insert = internal constant [28 x i8] c"test_drm_mm.igt__13__insert\00", align 1
@__param_igt__13__insert = internal constant %struct.kernel_param { ptr @__param_str_igt__13__insert, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 48) } }, section "__param", align 4
@__UNIQUE_ID_igt__13__inserttype258 = internal constant [42 x i8] c"test_drm_mm.parmtype=igt__13__insert:bool\00", section ".modinfo", align 1
@__param_str_igt__14__replace = internal constant [29 x i8] c"test_drm_mm.igt__14__replace\00", align 1
@__param_igt__14__replace = internal constant %struct.kernel_param { ptr @__param_str_igt__14__replace, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 60) } }, section "__param", align 4
@__UNIQUE_ID_igt__14__replacetype259 = internal constant [43 x i8] c"test_drm_mm.parmtype=igt__14__replace:bool\00", section ".modinfo", align 1
@__param_str_igt__15__insert_range = internal constant [34 x i8] c"test_drm_mm.igt__15__insert_range\00", align 1
@__param_igt__15__insert_range = internal constant %struct.kernel_param { ptr @__param_str_igt__15__insert_range, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 72) } }, section "__param", align 4
@__UNIQUE_ID_igt__15__insert_rangetype260 = internal constant [48 x i8] c"test_drm_mm.parmtype=igt__15__insert_range:bool\00", section ".modinfo", align 1
@__param_str_igt__16__align = internal constant [27 x i8] c"test_drm_mm.igt__16__align\00", align 1
@__param_igt__16__align = internal constant %struct.kernel_param { ptr @__param_str_igt__16__align, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 84) } }, section "__param", align 4
@__UNIQUE_ID_igt__16__aligntype261 = internal constant [41 x i8] c"test_drm_mm.parmtype=igt__16__align:bool\00", section ".modinfo", align 1
@__param_str_igt__17__frag = internal constant [26 x i8] c"test_drm_mm.igt__17__frag\00", align 1
@__param_igt__17__frag = internal constant %struct.kernel_param { ptr @__param_str_igt__17__frag, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 96) } }, section "__param", align 4
@__UNIQUE_ID_igt__17__fragtype262 = internal constant [40 x i8] c"test_drm_mm.parmtype=igt__17__frag:bool\00", section ".modinfo", align 1
@__param_str_igt__18__align32 = internal constant [29 x i8] c"test_drm_mm.igt__18__align32\00", align 1
@__param_igt__18__align32 = internal constant %struct.kernel_param { ptr @__param_str_igt__18__align32, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 108) } }, section "__param", align 4
@__UNIQUE_ID_igt__18__align32type263 = internal constant [43 x i8] c"test_drm_mm.parmtype=igt__18__align32:bool\00", section ".modinfo", align 1
@__param_str_igt__19__align64 = internal constant [29 x i8] c"test_drm_mm.igt__19__align64\00", align 1
@__param_igt__19__align64 = internal constant %struct.kernel_param { ptr @__param_str_igt__19__align64, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 120) } }, section "__param", align 4
@__UNIQUE_ID_igt__19__align64type264 = internal constant [43 x i8] c"test_drm_mm.parmtype=igt__19__align64:bool\00", section ".modinfo", align 1
@__param_str_igt__20__evict = internal constant [27 x i8] c"test_drm_mm.igt__20__evict\00", align 1
@__param_igt__20__evict = internal constant %struct.kernel_param { ptr @__param_str_igt__20__evict, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 132) } }, section "__param", align 4
@__UNIQUE_ID_igt__20__evicttype265 = internal constant [41 x i8] c"test_drm_mm.parmtype=igt__20__evict:bool\00", section ".modinfo", align 1
@__param_str_igt__21__evict_range = internal constant [33 x i8] c"test_drm_mm.igt__21__evict_range\00", align 1
@__param_igt__21__evict_range = internal constant %struct.kernel_param { ptr @__param_str_igt__21__evict_range, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 144) } }, section "__param", align 4
@__UNIQUE_ID_igt__21__evict_rangetype266 = internal constant [47 x i8] c"test_drm_mm.parmtype=igt__21__evict_range:bool\00", section ".modinfo", align 1
@__param_str_igt__22__bottomup = internal constant [30 x i8] c"test_drm_mm.igt__22__bottomup\00", align 1
@__param_igt__22__bottomup = internal constant %struct.kernel_param { ptr @__param_str_igt__22__bottomup, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 156) } }, section "__param", align 4
@__UNIQUE_ID_igt__22__bottomuptype267 = internal constant [44 x i8] c"test_drm_mm.parmtype=igt__22__bottomup:bool\00", section ".modinfo", align 1
@__param_str_igt__23__lowest = internal constant [28 x i8] c"test_drm_mm.igt__23__lowest\00", align 1
@__param_igt__23__lowest = internal constant %struct.kernel_param { ptr @__param_str_igt__23__lowest, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 168) } }, section "__param", align 4
@__UNIQUE_ID_igt__23__lowesttype268 = internal constant [42 x i8] c"test_drm_mm.parmtype=igt__23__lowest:bool\00", section ".modinfo", align 1
@__param_str_igt__24__topdown = internal constant [29 x i8] c"test_drm_mm.igt__24__topdown\00", align 1
@__param_igt__24__topdown = internal constant %struct.kernel_param { ptr @__param_str_igt__24__topdown, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 180) } }, section "__param", align 4
@__UNIQUE_ID_igt__24__topdowntype269 = internal constant [43 x i8] c"test_drm_mm.parmtype=igt__24__topdown:bool\00", section ".modinfo", align 1
@__param_str_igt__25__highest = internal constant [29 x i8] c"test_drm_mm.igt__25__highest\00", align 1
@__param_igt__25__highest = internal constant %struct.kernel_param { ptr @__param_str_igt__25__highest, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 192) } }, section "__param", align 4
@__UNIQUE_ID_igt__25__highesttype270 = internal constant [43 x i8] c"test_drm_mm.parmtype=igt__25__highest:bool\00", section ".modinfo", align 1
@__param_str_igt__26__color = internal constant [27 x i8] c"test_drm_mm.igt__26__color\00", align 1
@__param_igt__26__color = internal constant %struct.kernel_param { ptr @__param_str_igt__26__color, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 204) } }, section "__param", align 4
@__UNIQUE_ID_igt__26__colortype271 = internal constant [41 x i8] c"test_drm_mm.parmtype=igt__26__color:bool\00", section ".modinfo", align 1
@__param_str_igt__27__color_evict = internal constant [33 x i8] c"test_drm_mm.igt__27__color_evict\00", align 1
@__param_igt__27__color_evict = internal constant %struct.kernel_param { ptr @__param_str_igt__27__color_evict, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 216) } }, section "__param", align 4
@__UNIQUE_ID_igt__27__color_evicttype272 = internal constant [47 x i8] c"test_drm_mm.parmtype=igt__27__color_evict:bool\00", section ".modinfo", align 1
@__param_str_igt__28__color_evict_range = internal constant [39 x i8] c"test_drm_mm.igt__28__color_evict_range\00", align 1
@__param_igt__28__color_evict_range = internal constant %struct.kernel_param { ptr @__param_str_igt__28__color_evict_range, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.62 { ptr getelementptr (i8, ptr @selftests, i64 228) } }, section "__param", align 4
@__UNIQUE_ID_igt__28__color_evict_rangetype273 = internal constant [53 x i8] c"test_drm_mm.parmtype=igt__28__color_evict_range:bool\00", section ".modinfo", align 1
@__initcall__kmod_test_drm_mm__276_2479_test_drm_mm_init6 = internal global ptr @test_drm_mm_init, section ".initcall6.init", align 4
@__exitcall_test_drm_mm_exit = internal global ptr @test_drm_mm_exit, section ".exitcall.exit", align 4
@__param_str_random_seed = internal constant [24 x i8] c"test_drm_mm.random_seed\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@random_seed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_random_seed = internal constant %struct.kernel_param { ptr @__param_str_random_seed, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.62 { ptr @random_seed } }, section "__param", align 4
@__UNIQUE_ID_random_seedtype277 = internal constant [38 x i8] c"test_drm_mm.parmtype=random_seed:uint\00", section ".modinfo", align 1
@__param_str_max_iterations = internal constant [27 x i8] c"test_drm_mm.max_iterations\00", align 1
@max_iterations = internal global { i32, [28 x i8] } { i32 8192, [28 x i8] zeroinitializer }, align 32
@__param_max_iterations = internal constant %struct.kernel_param { ptr @__param_str_max_iterations, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.62 { ptr @max_iterations } }, section "__param", align 4
@__UNIQUE_ID_max_iterationstype278 = internal constant [41 x i8] c"test_drm_mm.parmtype=max_iterations:uint\00", section ".modinfo", align 1
@__param_str_max_prime = internal constant [22 x i8] c"test_drm_mm.max_prime\00", align 1
@max_prime = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_max_prime = internal constant %struct.kernel_param { ptr @__param_str_max_prime, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.62 { ptr @max_prime } }, section "__param", align 4
@__UNIQUE_ID_max_primetype279 = internal constant [36 x i8] c"test_drm_mm.parmtype=max_prime:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_author280 = internal constant [37 x i8] c"test_drm_mm.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file281 = internal constant [55 x i8] c"test_drm_mm.file=drivers/gpu/drm/selftests/test-drm_mm\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [24 x i8] c"test_drm_mm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sanitycheck\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reserve\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"insert\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"replace\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"insert_range\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"align\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"frag\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"align32\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"align64\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"evict\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"evict_range\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bottomup\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lowest\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"topdown\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"highest\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"color\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"color_evict\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"color_evict_range\00", [46 x i8] zeroinitializer }, align 32
@igt_sanitycheck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016drm_mm: %s - ok!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"igt_sanitycheck\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/selftests/test-drm_mm.c\00", [56 x i8] zeroinitializer }, align 32
@igt_sanitycheck._entry_ptr = internal global ptr @igt_sanitycheck._entry, section ".printk_index", align 4
@igt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.22, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013drm_mm: zeroed mm claims to be initialized\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"igt_init\00", [23 x i8] zeroinitializer }, align 32
@igt_init._entry_ptr = internal global ptr @igt_init._entry, section ".printk_index", align 4
@igt_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.22, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013drm_mm: mm claims not to be initialized\0A\00", [53 x i8] zeroinitializer }, align 32
@igt_init._entry_ptr.27 = internal global ptr @igt_init._entry.25, section ".printk_index", align 4
@igt_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.22, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013drm_mm: mm not empty on creation\0A\00", [60 x i8] zeroinitializer }, align 32
@igt_init._entry_ptr.30 = internal global ptr @igt_init._entry.28, section ".printk_index", align 4
@igt_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.22, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013drm_mm: failed to reserve whole drm_mm\0A\00", [54 x i8] zeroinitializer }, align 32
@igt_init._entry_ptr.33 = internal global ptr @igt_init._entry.31, section ".printk_index", align 4
@assert_one_hole._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.22, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013drm_mm: empty mm has incorrect hole, found (%llx, %llx), expect (%llx, %llx)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assert_one_hole\00", [16 x i8] zeroinitializer }, align 32
@assert_one_hole._entry_ptr = internal global ptr @assert_one_hole._entry, section ".printk_index", align 4
@assert_one_hole._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.22, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013drm_mm: Expected to find one hole, found %lu instead\0A\00", [40 x i8] zeroinitializer }, align 32
@assert_one_hole._entry_ptr.38 = internal global ptr @assert_one_hole._entry.36, section ".printk_index", align 4
@assert_no_holes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.22, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013drm_mm: Expected to find no holes (after reserve), found %lu instead\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assert_no_holes\00", [16 x i8] zeroinitializer }, align 32
@assert_no_holes._entry_ptr = internal global ptr @assert_no_holes._entry, section ".printk_index", align 4
@assert_no_holes._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.22, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013drm_mm: Hole follows node, expected none!\0A\00", [51 x i8] zeroinitializer }, align 32
@assert_no_holes._entry_ptr.43 = internal global ptr @assert_no_holes._entry.41, section ".printk_index", align 4
@igt_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.22, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013drm_mm: failed to reserve node[0] {start=%lld, size=%lld)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"igt_debug\00", [22 x i8] zeroinitializer }, align 32
@igt_debug._entry_ptr = internal global ptr @igt_debug._entry, section ".printk_index", align 4
@igt_debug._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.22, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013drm_mm: failed to reserve node[1] {start=%lld, size=%lld)\0A\00", [35 x i8] zeroinitializer }, align 32
@igt_debug._entry_ptr.48 = internal global ptr @igt_debug._entry.46, section ".printk_index", align 4
@__igt_reserve._entry = internal constant %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.22, i32 411, ptr null, ptr null }, align 1
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013drm_mm: reserve failed, step %d, start %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__igt_reserve\00", [18 x i8] zeroinitializer }, align 32
@__igt_reserve._entry_ptr = internal global ptr @__igt_reserve._entry, section ".printk_index", align 4
@__igt_reserve._entry.51 = internal constant %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.22, i32 418, ptr null, ptr null }, align 1
@.str.52 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013drm_mm: reserved node not allocated! step %d, start %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@__igt_reserve._entry_ptr.53 = internal global ptr @__igt_reserve._entry.51, section ".printk_index", align 4
@__igt_reserve._entry.54 = internal constant %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.22, i32 442, ptr null, ptr null }, align 1
@__igt_reserve._entry_ptr.55 = internal global ptr @__igt_reserve._entry.54, section ".printk_index", align 4
@__igt_reserve._entry.56 = internal constant %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.22, i32 476, ptr null, ptr null }, align 1
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013drm_mm: reserve failed, step %d/%d, start %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@__igt_reserve._entry_ptr.58 = internal global ptr @__igt_reserve._entry.56, section ".printk_index", align 4
@net_rand_noise = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"{ 0, 0}\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"{ -size, 0}\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"{ size, 0}\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"{ size * count, 0}\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"{ -size, size}\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"{ -size, -size}\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"{ -size, 2*size}\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"{ 0, -size}\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"{ size, -size}\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"{ count*size, size}\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"{ count*size, -size}\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"{ count*size, count*size}\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"{ count*size, -count*size}\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"{ count*size, -(count+1)*size}\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"{ (count+1)*size, size}\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"{ (count+1)*size, -size}\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"{ (count+1)*size, -2*size}\00", [37 x i8] zeroinitializer }, align 32
@check_reserve_boundaries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.22, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013drm_mm: boundary[%d:%s] failed, count=%u, size=%lld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_reserve_boundaries\00", [39 x i8] zeroinitializer }, align 32
@check_reserve_boundaries._entry_ptr = internal global ptr @check_reserve_boundaries._entry, section ".printk_index", align 4
@expect_reserve_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.22, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013drm_mm: impossible reserve succeeded, node %llu + %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"expect_reserve_fail\00", [44 x i8] zeroinitializer }, align 32
@expect_reserve_fail._entry_ptr = internal global ptr @expect_reserve_fail._entry, section ".printk_index", align 4
@expect_reserve_fail._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.22, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013drm_mm: impossible reserve failed with wrong error %d [expected %d], node %llu + %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@expect_reserve_fail._entry_ptr.82 = internal global ptr @expect_reserve_fail._entry.80, section ".printk_index", align 4
@assert_continuous._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.22, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013drm_mm: node[%ld] list out of order, expected %llx found %llx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assert_continuous\00", [46 x i8] zeroinitializer }, align 32
@assert_continuous._entry_ptr = internal global ptr @assert_continuous._entry, section ".printk_index", align 4
@assert_continuous._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.22, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013drm_mm: node[%ld].size incorrect, expected %llx, found %llx\0A\00", [33 x i8] zeroinitializer }, align 32
@assert_continuous._entry_ptr.87 = internal global ptr @assert_continuous._entry.85, section ".printk_index", align 4
@assert_continuous._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.22, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013drm_mm: node[%ld] is followed by a hole!\0A\00", [52 x i8] zeroinitializer }, align 32
@assert_continuous._entry_ptr.90 = internal global ptr @assert_continuous._entry.88, section ".printk_index", align 4
@assert_continuous._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.84, ptr @.str.22, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013drm_mm: lookup return wrong node, expected start %llx, found %llx\0A\00", [59 x i8] zeroinitializer }, align 32
@assert_continuous._entry_ptr.93 = internal global ptr @assert_continuous._entry.91, section ".printk_index", align 4
@assert_continuous._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.84, ptr @.str.22, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013drm_mm: lookup failed for node %llx + %llx\0A\00", [50 x i8] zeroinitializer }, align 32
@assert_continuous._entry_ptr.96 = internal global ptr @assert_continuous._entry.94, section ".printk_index", align 4
@insert_modes = internal constant { [5 x %struct.insert_mode], [56 x i8] } { [5 x %struct.insert_mode] [%struct.insert_mode { ptr @.str.117, i32 0 }, %struct.insert_mode { ptr @.str.118, i32 1 }, %struct.insert_mode { ptr @.str.119, i32 2 }, %struct.insert_mode { ptr @.str.11, i32 3 }, %struct.insert_mode zeroinitializer], [56 x i8] zeroinitializer }, align 32
@__igt_insert._entry = internal constant %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.22, i32 603, ptr null, ptr null }, align 1
@.str.97 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013drm_mm: %s insert failed, size %llu step %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__igt_insert\00", [19 x i8] zeroinitializer }, align 32
@__igt_insert._entry_ptr = internal global ptr @__igt_insert._entry, section ".printk_index", align 4
@__igt_insert._entry.99 = internal constant %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.22, i32 611, ptr null, ptr null }, align 1
@.str.100 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013drm_mm: replaced old-node still allocated! step %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__igt_insert._entry_ptr.101 = internal global ptr @__igt_insert._entry.99, section ".printk_index", align 4
@__igt_insert._entry.102 = internal constant %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.22, i32 617, ptr null, ptr null }, align 1
@.str.103 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013drm_mm: replaced node did not inherit parameters, size %llu step %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__igt_insert._entry_ptr.104 = internal global ptr @__igt_insert._entry.102, section ".printk_index", align 4
@__igt_insert._entry.105 = internal constant %struct.pi_entry { ptr @.str.106, ptr @.str.98, ptr @.str.22, i32 624, ptr null, ptr null }, align 1
@.str.106 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013drm_mm: replaced node mismatch location expected [%llx + %llx], found [%llx + %llx]\0A\00", [41 x i8] zeroinitializer }, align 32
@__igt_insert._entry_ptr.107 = internal global ptr @__igt_insert._entry.105, section ".printk_index", align 4
@__igt_insert._entry.108 = internal constant %struct.pi_entry { ptr @.str.109, ptr @.str.98, ptr @.str.22, i32 645, ptr null, ptr null }, align 1
@.str.109 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013drm_mm: %s reinsert failed, size %llu step %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__igt_insert._entry_ptr.110 = internal global ptr @__igt_insert._entry.108, section ".printk_index", align 4
@__igt_insert._entry.111 = internal constant %struct.pi_entry { ptr @.str.112, ptr @.str.98, ptr @.str.22, i32 651, ptr null, ptr null }, align 1
@.str.112 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013drm_mm: %s reinsert node moved, step %d, expected %llx, found %llx\0A\00", [58 x i8] zeroinitializer }, align 32
@__igt_insert._entry_ptr.113 = internal global ptr @__igt_insert._entry.111, section ".printk_index", align 4
@__igt_insert._entry.114 = internal constant %struct.pi_entry { ptr @.str.115, ptr @.str.98, ptr @.str.22, i32 670, ptr null, ptr null }, align 1
@.str.115 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013drm_mm: %s multiple reinsert failed, size %llu step %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__igt_insert._entry_ptr.116 = internal global ptr @__igt_insert._entry.114, section ".printk_index", align 4
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"best\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bottom-up\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"top-down\00", [23 x i8] zeroinitializer }, align 32
@expect_insert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.22, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013drm_mm: insert (size=%llu, alignment=%llu, color=%lu, mode=%s) failed with err=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"expect_insert\00", [18 x i8] zeroinitializer }, align 32
@expect_insert._entry_ptr = internal global ptr @expect_insert._entry, section ".printk_index", align 4
@assert_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.22, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013drm_mm: node not allocated\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"assert_node\00", [20 x i8] zeroinitializer }, align 32
@assert_node._entry_ptr = internal global ptr @assert_node._entry, section ".printk_index", align 4
@assert_node._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.22, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013drm_mm: node has wrong size, found %llu, expected %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@assert_node._entry_ptr.126 = internal global ptr @assert_node._entry.124, section ".printk_index", align 4
@assert_node._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.123, ptr @.str.22, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013drm_mm: node is misaligned, start %llx rem %llu, expected alignment %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@assert_node._entry_ptr.129 = internal global ptr @assert_node._entry.127, section ".printk_index", align 4
@assert_node._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.123, ptr @.str.22, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013drm_mm: node has wrong color, found %lu, expected %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@assert_node._entry_ptr.132 = internal global ptr @assert_node._entry.130, section ".printk_index", align 4
@expect_insert_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.22, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013drm_mm: impossible insert succeeded, node %llu + %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"expect_insert_fail\00", [45 x i8] zeroinitializer }, align 32
@expect_insert_fail._entry_ptr = internal global ptr @expect_insert_fail._entry, section ".printk_index", align 4
@expect_insert_fail._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.22, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013drm_mm: impossible insert failed with wrong error %d [expected %d], size %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@expect_insert_fail._entry_ptr.137 = internal global ptr @expect_insert_fail._entry.135, section ".printk_index", align 4
@expect_insert_in_range_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.22, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013drm_mm: impossible insert succeeded, node %llx + %llu, range [%llx, %llx]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"expect_insert_in_range_fail\00", [36 x i8] zeroinitializer }, align 32
@expect_insert_in_range_fail._entry_ptr = internal global ptr @expect_insert_in_range_fail._entry, section ".printk_index", align 4
@expect_insert_in_range_fail._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.22, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013drm_mm: impossible insert failed with wrong error %d [expected %d], size %llu, range [%llx, %llx]\0A\00", [59 x i8] zeroinitializer }, align 32
@expect_insert_in_range_fail._entry_ptr.142 = internal global ptr @expect_insert_in_range_fail._entry.140, section ".printk_index", align 4
@__igt_insert_range._entry = internal constant %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.22, i32 912, ptr null, ptr null }, align 1
@.str.143 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013drm_mm: %s insert failed, size %llu, step %d [%d, %d], range [%llx, %llx]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__igt_insert_range\00", [45 x i8] zeroinitializer }, align 32
@__igt_insert_range._entry_ptr = internal global ptr @__igt_insert_range._entry, section ".printk_index", align 4
@__igt_insert_range._entry.145 = internal constant %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.22, i32 919, ptr null, ptr null }, align 1
@.str.146 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013drm_mm: %s: range [%llx, %llx] not full after initialisation, size=%llu\0A\00", [53 x i8] zeroinitializer }, align 32
@__igt_insert_range._entry_ptr.147 = internal global ptr @__igt_insert_range._entry.145, section ".printk_index", align 4
@__igt_insert_range._entry.148 = internal constant %struct.pi_entry { ptr @.str.149, ptr @.str.144, ptr @.str.22, i32 931, ptr null, ptr null }, align 1
@.str.149 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013drm_mm: %s reinsert failed, step %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__igt_insert_range._entry_ptr.150 = internal global ptr @__igt_insert_range._entry.148, section ".printk_index", align 4
@__igt_insert_range._entry.151 = internal constant %struct.pi_entry { ptr @.str.112, ptr @.str.144, ptr @.str.22, i32 937, ptr null, ptr null }, align 1
@__igt_insert_range._entry_ptr.152 = internal global ptr @__igt_insert_range._entry.151, section ".printk_index", align 4
@__igt_insert_range._entry.153 = internal constant %struct.pi_entry { ptr @.str.154, ptr @.str.144, ptr @.str.22, i32 944, ptr null, ptr null }, align 1
@.str.154 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013drm_mm: %s: range [%llx, %llx] not full after reinsertion, size=%llu\0A\00", [56 x i8] zeroinitializer }, align 32
@__igt_insert_range._entry_ptr.155 = internal global ptr @__igt_insert_range._entry.153, section ".printk_index", align 4
@expect_insert_in_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.22, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013drm_mm: insert (size=%llu, alignment=%llu, color=%lu, mode=%s) nto range [%llx, %llx] failed with err=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"expect_insert_in_range\00", [41 x i8] zeroinitializer }, align 32
@expect_insert_in_range._entry_ptr = internal global ptr @expect_insert_in_range._entry, section ".printk_index", align 4
@assert_contiguous_in_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.22, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013drm_mm: node %d out of range, address [%llx + %llu], range [%llx, %llx]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"assert_contiguous_in_range\00", [37 x i8] zeroinitializer }, align 32
@assert_contiguous_in_range._entry_ptr = internal global ptr @assert_contiguous_in_range._entry, section ".printk_index", align 4
@assert_contiguous_in_range._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.22, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013drm_mm: node %d out of order, expected start %llx, found %llx\0A\00", [63 x i8] zeroinitializer }, align 32
@assert_contiguous_in_range._entry_ptr.162 = internal global ptr @assert_contiguous_in_range._entry.160, section ".printk_index", align 4
@assert_contiguous_in_range._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.159, ptr @.str.22, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013drm_mm: node %d has wrong size, expected size %llx, found %llx\0A\00", [62 x i8] zeroinitializer }, align 32
@assert_contiguous_in_range._entry_ptr.165 = internal global ptr @assert_contiguous_in_range._entry.163, section ".printk_index", align 4
@assert_contiguous_in_range._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.159, ptr @.str.22, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013drm_mm: node %d is followed by a hole!\0A\00", [54 x i8] zeroinitializer }, align 32
@assert_contiguous_in_range._entry_ptr.168 = internal global ptr @assert_contiguous_in_range._entry.166, section ".printk_index", align 4
@assert_contiguous_in_range._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.159, ptr @.str.22, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013drm_mm: node before start: node=%llx+%llu, start=%llx\0A\00", [39 x i8] zeroinitializer }, align 32
@assert_contiguous_in_range._entry_ptr.171 = internal global ptr @assert_contiguous_in_range._entry.169, section ".printk_index", align 4
@assert_contiguous_in_range._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.159, ptr @.str.22, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013drm_mm: node after end: node=%llx+%llu, end=%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@assert_contiguous_in_range._entry_ptr.174 = internal global ptr @assert_contiguous_in_range._entry.172, section ".printk_index", align 4
@igt_align._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.22, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013drm_mm: %s insert failed with alignment=%d\00", [51 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"igt_align\00", [22 x i8] zeroinitializer }, align 32
@igt_align._entry_ptr = internal global ptr @igt_align._entry, section ".printk_index", align 4
@igt_frag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.22, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016drm_mm: %s fragmented insert of %u and %u insertions took %llu and %llu nsecs\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"igt_frag\00", [23 x i8] zeroinitializer }, align 32
@igt_frag._entry_ptr = internal global ptr @igt_frag._entry, section ".printk_index", align 4
@igt_frag._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.178, ptr @.str.22, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013drm_mm: %s fragmented insert took %llu nsecs more\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_frag._entry_ptr.181 = internal global ptr @igt_frag._entry.179, section ".printk_index", align 4
@prepare_igt_frag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.22, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013drm_mm: %s insert failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prepare_igt_frag\00", [47 x i8] zeroinitializer }, align 32
@prepare_igt_frag._entry_ptr = internal global ptr @prepare_igt_frag._entry, section ".printk_index", align 4
@get_insert_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.184, ptr @.str.22, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_insert_time\00", [16 x i8] zeroinitializer }, align 32
@get_insert_time._entry_ptr = internal global ptr @get_insert_time._entry, section ".printk_index", align 4
@igt_align_pot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.22, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013drm_mm: insert failed with alignment=%llx [%d]\00", [47 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"igt_align_pot\00", [18 x i8] zeroinitializer }, align 32
@igt_align_pot._entry_ptr = internal global ptr @igt_align_pot._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@igt_evict._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.22, i32 1550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013drm_mm: insert failed, step %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"igt_evict\00", [22 x i8] zeroinitializer }, align 32
@igt_evict._entry_ptr = internal global ptr @igt_evict._entry, section ".printk_index", align 4
@igt_evict._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.22, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013drm_mm: evict_nothing() failed\0A\00", [62 x i8] zeroinitializer }, align 32
@igt_evict._entry_ptr.191 = internal global ptr @igt_evict._entry.189, section ".printk_index", align 4
@igt_evict._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.22, i32 1562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013drm_mm: evict_everything() failed\0A\00", [59 x i8] zeroinitializer }, align 32
@igt_evict._entry_ptr.194 = internal global ptr @igt_evict._entry.192, section ".printk_index", align 4
@evict_modes = internal constant { [3 x %struct.insert_mode], [40 x i8] } { [3 x %struct.insert_mode] [%struct.insert_mode { ptr @.str.118, i32 1 }, %struct.insert_mode { ptr @.str.119, i32 2 }, %struct.insert_mode zeroinitializer], [40 x i8] zeroinitializer }, align 32
@igt_evict._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.188, ptr @.str.22, i32 1575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013drm_mm: %s evict_something(size=%u) failed\0A\00", [50 x i8] zeroinitializer }, align 32
@igt_evict._entry_ptr.197 = internal global ptr @igt_evict._entry.195, section ".printk_index", align 4
@igt_evict._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.188, ptr @.str.22, i32 1589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013drm_mm: %s evict_something(size=%u, alignment=%u) failed\0A\00", [36 x i8] zeroinitializer }, align 32
@igt_evict._entry_ptr.200 = internal global ptr @igt_evict._entry.198, section ".printk_index", align 4
@igt_evict._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.188, ptr @.str.22, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_evict._entry_ptr.202 = internal global ptr @igt_evict._entry.201, section ".printk_index", align 4
@evict_nothing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.22, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013drm_mm: node[%d] no longer allocated!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"evict_nothing\00", [18 x i8] zeroinitializer }, align 32
@evict_nothing._entry_ptr = internal global ptr @evict_nothing._entry, section ".printk_index", align 4
@evict_nothing._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.204, ptr @.str.22, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013drm_mm: node[%d] no longer connected!\0A\00", [55 x i8] zeroinitializer }, align 32
@evict_nothing._entry_ptr.207 = internal global ptr @evict_nothing._entry.205, section ".printk_index", align 4
@evict_everything._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.22, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013drm_mm: Node %lld not marked for eviction!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"evict_everything\00", [47 x i8] zeroinitializer }, align 32
@evict_everything._entry_ptr = internal global ptr @evict_everything._entry, section ".printk_index", align 4
@evict_everything._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.209, ptr @.str.22, i32 1439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013drm_mm: Failed to reinsert node after eviction: start=%llx\0A\00", [34 x i8] zeroinitializer }, align 32
@evict_everything._entry_ptr.212 = internal global ptr @evict_everything._entry.210, section ".printk_index", align 4
@evict_something._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.22, i32 1476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013drm_mm: Failed to insert into eviction hole: size=%d, align=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"evict_something\00", [16 x i8] zeroinitializer }, align 32
@evict_something._entry_ptr = internal global ptr @evict_something._entry, section ".printk_index", align 4
@evict_something._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.22, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013drm_mm: Inserted [address=%llu + %llu] did not fit into the request range [%llu, %llu]\0A\00", [38 x i8] zeroinitializer }, align 32
@evict_something._entry_ptr.217 = internal global ptr @evict_something._entry.215, section ".printk_index", align 4
@evict_something._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.214, ptr @.str.22, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\013drm_mm: Inserted did not fill the eviction hole: size=%lld [%d], align=%d [rem=%lld], start=%llx, hole-follows?=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@evict_something._entry_ptr.220 = internal global ptr @evict_something._entry.218, section ".printk_index", align 4
@evict_something._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.214, ptr @.str.22, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@evict_something._entry_ptr.222 = internal global ptr @evict_something._entry.221, section ".printk_index", align 4
@evict_something._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.214, ptr @.str.22, i32 1511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013drm_mm: range is no longer continuous\0A\00", [55 x i8] zeroinitializer }, align 32
@evict_something._entry_ptr.225 = internal global ptr @evict_something._entry.223, section ".printk_index", align 4
@evict_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.22, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013drm_mm: Failed to find eviction: size=%lld [avail=%d], align=%lld (color=%lu)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"evict_nodes\00", [20 x i8] zeroinitializer }, align 32
@evict_nodes._entry_ptr = internal global ptr @evict_nodes._entry, section ".printk_index", align 4
@evict_nodes._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.227, ptr @.str.22, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013drm_mm: drm_mm_scan_color_evict unexpectedly reported overlapping nodes!\0A\00", [52 x i8] zeroinitializer }, align 32
@evict_nodes._entry_ptr.230 = internal global ptr @evict_nodes._entry.228, section ".printk_index", align 4
@show_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.22, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016drm_mm: scan: hit [%llx, %llx], size=%lld, align=%lld, color=%ld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"show_scan\00", [22 x i8] zeroinitializer }, align 32
@show_scan._entry_ptr = internal global ptr @show_scan._entry, section ".printk_index", align 4
@.str.233 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%llx + %lld, color=%ld], \00", [37 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c", [%llx + %lld, color=%ld]\00", [37 x i8] zeroinitializer }, align 32
@show_holes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.22, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016drm_mm: %sHole [%llx - %llx, size %lld]%s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"show_holes\00", [21 x i8] zeroinitializer }, align 32
@show_holes._entry_ptr = internal global ptr @show_holes._entry, section ".printk_index", align 4
@igt_evict_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.237, ptr @.str.22, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"igt_evict_range\00", [16 x i8] zeroinitializer }, align 32
@igt_evict_range._entry_ptr = internal global ptr @igt_evict_range._entry, section ".printk_index", align 4
@igt_evict_range._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.237, ptr @.str.22, i32 1675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013drm_mm: %s evict_something(size=%u) failed with range [%u, %u]\0A\00", [62 x i8] zeroinitializer }, align 32
@igt_evict_range._entry_ptr.240 = internal global ptr @igt_evict_range._entry.238, section ".printk_index", align 4
@igt_evict_range._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.237, ptr @.str.22, i32 1688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013drm_mm: %s evict_something(size=%u, alignment=%u) failed with range [%u, %u]\0A\00", [48 x i8] zeroinitializer }, align 32
@igt_evict_range._entry_ptr.243 = internal global ptr @igt_evict_range._entry.241, section ".printk_index", align 4
@igt_evict_range._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.237, ptr @.str.22, i32 1705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_evict_range._entry_ptr.245 = internal global ptr @igt_evict_range._entry.244, section ".printk_index", align 4
@igt_bottomup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.247, ptr @.str.22, i32 1880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013drm_mm: bottomup insert failed, size %u step %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"igt_bottomup\00", [19 x i8] zeroinitializer }, align 32
@igt_bottomup._entry_ptr = internal global ptr @igt_bottomup._entry, section ".printk_index", align 4
@igt_bottomup._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.247, ptr @.str.22, i32 1906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013drm_mm: insert failed, step %d/%d\0A\00", [59 x i8] zeroinitializer }, align 32
@igt_bottomup._entry_ptr.250 = internal global ptr @igt_bottomup._entry.248, section ".printk_index", align 4
@igt_bottomup._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.247, ptr @.str.22, i32 1913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013drm_mm: node %d/%d not inserted into bottom hole, expected %d, found %d\0A\00", [53 x i8] zeroinitializer }, align 32
@igt_bottomup._entry_ptr.253 = internal global ptr @igt_bottomup._entry.251, section ".printk_index", align 4
@__igt_once._entry = internal constant %struct.pi_entry { ptr @.str.254, ptr @.str.255, ptr @.str.22, i32 1957, ptr null, ptr null }, align 1
@.str.254 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013drm_mm: Could not reserve low node\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__igt_once\00", [21 x i8] zeroinitializer }, align 32
@__igt_once._entry_ptr = internal global ptr @__igt_once._entry, section ".printk_index", align 4
@__igt_once._entry.256 = internal constant %struct.pi_entry { ptr @.str.254, ptr @.str.255, ptr @.str.22, i32 1966, ptr null, ptr null }, align 1
@__igt_once._entry_ptr.257 = internal global ptr @__igt_once._entry.256, section ".printk_index", align 4
@__igt_once._entry.258 = internal constant %struct.pi_entry { ptr @.str.259, ptr @.str.255, ptr @.str.22, i32 1971, ptr null, ptr null }, align 1
@.str.259 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013drm_mm: Expected a hole after lo and high nodes!\0A\00", [44 x i8] zeroinitializer }, align 32
@__igt_once._entry_ptr.260 = internal global ptr @__igt_once._entry.258, section ".printk_index", align 4
@__igt_once._entry.261 = internal constant %struct.pi_entry { ptr @.str.262, ptr @.str.255, ptr @.str.22, i32 1979, ptr null, ptr null }, align 1
@.str.262 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013drm_mm: Could not insert the node into the available hole!\0A\00", [34 x i8] zeroinitializer }, align 32
@__igt_once._entry_ptr.263 = internal global ptr @__igt_once._entry.261, section ".printk_index", align 4
@igt_topdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.265, ptr @.str.22, i32 1767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013drm_mm: insert failed, size %u step %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"igt_topdown\00", [20 x i8] zeroinitializer }, align 32
@igt_topdown._entry_ptr = internal global ptr @igt_topdown._entry, section ".printk_index", align 4
@igt_topdown._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.265, ptr @.str.22, i32 1773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013drm_mm: hole after topdown insert %d, start=%llx\0A, size=%u\00", [35 x i8] zeroinitializer }, align 32
@igt_topdown._entry_ptr.268 = internal global ptr @igt_topdown._entry.266, section ".printk_index", align 4
@igt_topdown._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.265, ptr @.str.22, i32 1799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_topdown._entry_ptr.270 = internal global ptr @igt_topdown._entry.269, section ".printk_index", align 4
@igt_topdown._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.265, ptr @.str.22, i32 1805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013drm_mm: hole after topdown insert %d/%d, start=%llx\0A\00", [41 x i8] zeroinitializer }, align 32
@igt_topdown._entry_ptr.273 = internal global ptr @igt_topdown._entry.271, section ".printk_index", align 4
@igt_topdown._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.265, ptr @.str.22, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013drm_mm: node %d/%d, size %d, not inserted into upmost hole, expected %d, found %d\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_topdown._entry_ptr.276 = internal global ptr @igt_topdown._entry.274, section ".printk_index", align 4
@igt_color._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.277, ptr @.str.22, i32 2060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"igt_color\00", [22 x i8] zeroinitializer }, align 32
@igt_color._entry_ptr = internal global ptr @igt_color._entry, section ".printk_index", align 4
@igt_color._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.277, ptr @.str.22, i32 2069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013drm_mm: invalid color stored: expected %lld, found %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@igt_color._entry_ptr.280 = internal global ptr @igt_color._entry.278, section ".printk_index", align 4
@igt_color._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.277, ptr @.str.22, i32 2094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013drm_mm: initial reserve failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@igt_color._entry_ptr.283 = internal global ptr @igt_color._entry.281, section ".printk_index", align 4
@igt_color._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.277, ptr @.str.22, i32 2117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013drm_mm: reserve %d did not report color overlap! err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@igt_color._entry_ptr.286 = internal global ptr @igt_color._entry.284, section ".printk_index", align 4
@igt_color._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.277, ptr @.str.22, i32 2127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013drm_mm: reserve %d failed, err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@igt_color._entry_ptr.289 = internal global ptr @igt_color._entry.287, section ".printk_index", align 4
@igt_color._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.277, ptr @.str.22, i32 2146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013drm_mm: %s insert failed, step %d\0A\00", [59 x i8] zeroinitializer }, align 32
@igt_color._entry_ptr.292 = internal global ptr @igt_color._entry.290, section ".printk_index", align 4
@igt_color._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.277, ptr @.str.22, i32 2157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013drm_mm: %s invalid color stored: expected %lld, found %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@igt_color._entry_ptr.295 = internal global ptr @igt_color._entry.293, section ".printk_index", align 4
@igt_color._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.277, ptr @.str.22, i32 2168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013drm_mm: %s colored node misaligned, start=%llx expected alignment=%lld [rem=%lld]\0A\00", [43 x i8] zeroinitializer }, align 32
@igt_color._entry_ptr.298 = internal global ptr @igt_color._entry.296, section ".printk_index", align 4
@colors_abutt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.300, ptr @.str.22, i32 2025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013drm_mm: colors abutt; %ld [%llx + %llx] is next to %ld [%llx + %llx]!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"colors_abutt\00", [19 x i8] zeroinitializer }, align 32
@colors_abutt._entry_ptr = internal global ptr @colors_abutt._entry, section ".printk_index", align 4
@igt_color_evict._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.301, ptr @.str.22, i32 2292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"igt_color_evict\00", [16 x i8] zeroinitializer }, align 32
@igt_color_evict._entry_ptr = internal global ptr @igt_color_evict._entry, section ".printk_index", align 4
@igt_color_evict._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.301, ptr @.str.22, i32 2306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013drm_mm: %s evict_color(size=%u) failed\0A\00", [54 x i8] zeroinitializer }, align 32
@igt_color_evict._entry_ptr.304 = internal global ptr @igt_color_evict._entry.302, section ".printk_index", align 4
@igt_color_evict._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.301, ptr @.str.22, i32 2319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013drm_mm: %s evict_color(size=%u, alignment=%u) failed\0A\00", [40 x i8] zeroinitializer }, align 32
@igt_color_evict._entry_ptr.307 = internal global ptr @igt_color_evict._entry.305, section ".printk_index", align 4
@igt_color_evict._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.301, ptr @.str.22, i32 2336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_color_evict._entry_ptr.309 = internal global ptr @igt_color_evict._entry.308, section ".printk_index", align 4
@evict_color._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.311, ptr @.str.22, i32 2219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013drm_mm: Failed to insert into eviction hole: size=%d, align=%d, color=%lu, err=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"evict_color\00", [20 x i8] zeroinitializer }, align 32
@evict_color._entry_ptr = internal global ptr @evict_color._entry, section ".printk_index", align 4
@evict_color._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.311, ptr @.str.22, i32 2227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@evict_color._entry_ptr.313 = internal global ptr @evict_color._entry.312, section ".printk_index", align 4
@evict_color._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.311, ptr @.str.22, i32 2237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013drm_mm: Inserted did not fit the eviction hole: size=%lld [%d], align=%d [rem=%lld], start=%llx\0A\00", [61 x i8] zeroinitializer }, align 32
@evict_color._entry_ptr.316 = internal global ptr @evict_color._entry.314, section ".printk_index", align 4
@evict_color._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.311, ptr @.str.22, i32 2249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@evict_color._entry_ptr.318 = internal global ptr @evict_color._entry.317, section ".printk_index", align 4
@igt_color_evict_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.319, ptr @.str.22, i32 2393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"igt_color_evict_range\00", [42 x i8] zeroinitializer }, align 32
@igt_color_evict_range._entry_ptr = internal global ptr @igt_color_evict_range._entry, section ".printk_index", align 4
@igt_color_evict_range._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.319, ptr @.str.22, i32 2407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013drm_mm: %s evict_color(size=%u) failed for range [%x, %x]\0A\00", [35 x i8] zeroinitializer }, align 32
@igt_color_evict_range._entry_ptr.322 = internal global ptr @igt_color_evict_range._entry.320, section ".printk_index", align 4
@igt_color_evict_range._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.319, ptr @.str.22, i32 2420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013drm_mm: %s evict_color(size=%u, alignment=%u) failed for range [%x, %x]\0A\00", [53 x i8] zeroinitializer }, align 32
@igt_color_evict_range._entry_ptr.325 = internal global ptr @igt_color_evict_range._entry.323, section ".printk_index", align 4
@igt_color_evict_range._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.319, ptr @.str.22, i32 2437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_color_evict_range._entry_ptr.327 = internal global ptr @igt_color_evict_range._entry.326, section ".printk_index", align 4
@test_drm_mm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.22, i32 2469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\016drm_mm: Testing DRM range manager (struct drm_mm), with random_seed=0x%x max_iterations=%u max_prime=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_drm_mm_init\00", [47 x i8] zeroinitializer }, align 32
@test_drm_mm_init._entry_ptr = internal global ptr @test_drm_mm_init._entry, section ".printk_index", align 4
@run_selftests.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.330 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_drm_mm\00", [20 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"run_selftests\00", [18 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/selftests/drm_selftest.c\00", [55 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drm: Running %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drm_mm: drm: Running %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s returned %d, conflicting with selftest's magic values!\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.336 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.337 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.338 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.339 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.340 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.341 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.342 = private unnamed_addr constant [10 x i8] c"selftests\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1198, i32 37, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [12 x i8] c"random_seed\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 22, i32 21 }
@___asan_gen_.348 = private unnamed_addr constant [15 x i8] c"max_iterations\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 23, i32 21 }
@___asan_gen_.351 = private unnamed_addr constant [10 x i8] c"max_prime\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 24, i32 21 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 9, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 10, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 11, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 12, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 13, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 14, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 15, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 16, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 17, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 18, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 19, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 20, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 21, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 22, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 23, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 24, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 25, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 26, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 27, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant [48 x i8] c"../drivers/gpu/drm/selftests/drm_mm_selftests.h\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 28, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 50, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 214, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 221, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 226, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 241, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 92, i32 5 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 100, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 64, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 70, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 282, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 291, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 410, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 417, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 475, i32 5 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 336, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 337, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 338, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 339, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 340, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 341, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 342, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 343, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 344, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 345, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 346, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 347, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 348, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 349, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 350, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 351, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 352, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 363, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 317, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 321, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 120, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 126, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 132, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 139, i32 5 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 146, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant [13 x i8] c"insert_modes\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 36, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 602, i32 5 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 610, i32 6 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 616, i32 6 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 622, i32 6 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 644, i32 5 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 650, i32 5 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 669, i32 6 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 37, i32 13 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 38, i32 17 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 39, i32 16 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 536, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 175, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 180, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 186, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 192, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 559, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 563, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 805, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 809, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 909, i32 5 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 918, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 931, i32 5 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 943, i32 4 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 775, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 830, i32 4 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 836, i32 4 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 842, i32 4 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 849, i32 4 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 859, i32 4 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 868, i32 4 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1182, i32 5 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1128, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1133, i32 4 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1048, i32 4 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1075, i32 4 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1232, i32 4 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1550, i32 4 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1558, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1562, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant [12 x i8] c"evict_modes\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 42, i32 4 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1574, i32 5 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1588, i32 5 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1606, i32 5 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1374, i32 4 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1390, i32 4 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1420, i32 5 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1438, i32 4 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1475, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1483, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1490, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1504, i32 4 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1511, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1325, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1343, i32 4 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1262, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1278, i32 8 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1283, i32 8 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1286, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1660, i32 4 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1674, i32 5 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1687, i32 5 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1704, i32 5 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1880, i32 5 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1906, i32 6 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1912, i32 6 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1957, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1971, i32 3 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1979, i32 3 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1767, i32 5 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1772, i32 5 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1799, i32 6 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1804, i32 6 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 1811, i32 6 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2060, i32 4 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2068, i32 4 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2094, i32 4 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2116, i32 5 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2127, i32 5 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2145, i32 5 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2156, i32 5 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2167, i32 5 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2021, i32 3 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2292, i32 4 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2305, i32 5 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2318, i32 5 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2335, i32 5 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2218, i32 3 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2226, i32 3 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2235, i32 3 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2248, i32 4 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2393, i32 4 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2406, i32 5 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2419, i32 5 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2436, i32 5 }
@___asan_gen_.1173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1180 = private constant [43 x i8] c"../drivers/gpu/drm/selftests/test-drm_mm.c\00", align 1
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1180, i32 2468, i32 2 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1198, i32 75, i32 3 }
@___asan_gen_.1197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1198 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/selftests/drm_selftest.c\00", align 1
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1198, i32 81, i32 6 }
@llvm.compiler.used = appending global [472 x ptr] [ptr @__UNIQUE_ID_author280, ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_igt__10__inittype255, ptr @__UNIQUE_ID_igt__11__debugtype256, ptr @__UNIQUE_ID_igt__12__reservetype257, ptr @__UNIQUE_ID_igt__13__inserttype258, ptr @__UNIQUE_ID_igt__14__replacetype259, ptr @__UNIQUE_ID_igt__15__insert_rangetype260, ptr @__UNIQUE_ID_igt__16__aligntype261, ptr @__UNIQUE_ID_igt__17__fragtype262, ptr @__UNIQUE_ID_igt__18__align32type263, ptr @__UNIQUE_ID_igt__19__align64type264, ptr @__UNIQUE_ID_igt__20__evicttype265, ptr @__UNIQUE_ID_igt__21__evict_rangetype266, ptr @__UNIQUE_ID_igt__22__bottomuptype267, ptr @__UNIQUE_ID_igt__23__lowesttype268, ptr @__UNIQUE_ID_igt__24__topdowntype269, ptr @__UNIQUE_ID_igt__25__highesttype270, ptr @__UNIQUE_ID_igt__26__colortype271, ptr @__UNIQUE_ID_igt__27__color_evicttype272, ptr @__UNIQUE_ID_igt__28__color_evict_rangetype273, ptr @__UNIQUE_ID_igt__9__sanitychecktype254, ptr @__UNIQUE_ID_license282, ptr @__UNIQUE_ID_max_iterationstype278, ptr @__UNIQUE_ID_max_primetype279, ptr @__UNIQUE_ID_random_seedtype277, ptr @__exitcall_test_drm_mm_exit, ptr @__igt_insert._entry, ptr @__igt_insert._entry.102, ptr @__igt_insert._entry.105, ptr @__igt_insert._entry.108, ptr @__igt_insert._entry.111, ptr @__igt_insert._entry.114, ptr @__igt_insert._entry.99, ptr @__igt_insert._entry_ptr, ptr @__igt_insert._entry_ptr.101, ptr @__igt_insert._entry_ptr.104, ptr @__igt_insert._entry_ptr.107, ptr @__igt_insert._entry_ptr.110, ptr @__igt_insert._entry_ptr.113, ptr @__igt_insert._entry_ptr.116, ptr @__igt_insert_range._entry, ptr @__igt_insert_range._entry.145, ptr @__igt_insert_range._entry.148, ptr @__igt_insert_range._entry.151, ptr @__igt_insert_range._entry.153, ptr @__igt_insert_range._entry_ptr, ptr @__igt_insert_range._entry_ptr.147, ptr @__igt_insert_range._entry_ptr.150, ptr @__igt_insert_range._entry_ptr.152, ptr @__igt_insert_range._entry_ptr.155, ptr @__igt_once._entry, ptr @__igt_once._entry.256, ptr @__igt_once._entry.258, ptr @__igt_once._entry.261, ptr @__igt_once._entry_ptr, ptr @__igt_once._entry_ptr.257, ptr @__igt_once._entry_ptr.260, ptr @__igt_once._entry_ptr.263, ptr @__igt_reserve._entry, ptr @__igt_reserve._entry.51, ptr @__igt_reserve._entry.54, ptr @__igt_reserve._entry.56, ptr @__igt_reserve._entry_ptr, ptr @__igt_reserve._entry_ptr.53, ptr @__igt_reserve._entry_ptr.55, ptr @__igt_reserve._entry_ptr.58, ptr @__initcall__kmod_test_drm_mm__276_2479_test_drm_mm_init6, ptr @__param_igt__10__init, ptr @__param_igt__11__debug, ptr @__param_igt__12__reserve, ptr @__param_igt__13__insert, ptr @__param_igt__14__replace, ptr @__param_igt__15__insert_range, ptr @__param_igt__16__align, ptr @__param_igt__17__frag, ptr @__param_igt__18__align32, ptr @__param_igt__19__align64, ptr @__param_igt__20__evict, ptr @__param_igt__21__evict_range, ptr @__param_igt__22__bottomup, ptr @__param_igt__23__lowest, ptr @__param_igt__24__topdown, ptr @__param_igt__25__highest, ptr @__param_igt__26__color, ptr @__param_igt__27__color_evict, ptr @__param_igt__28__color_evict_range, ptr @__param_igt__9__sanitycheck, ptr @__param_max_iterations, ptr @__param_max_prime, ptr @__param_random_seed, ptr @assert_contiguous_in_range._entry, ptr @assert_contiguous_in_range._entry.160, ptr @assert_contiguous_in_range._entry.163, ptr @assert_contiguous_in_range._entry.166, ptr @assert_contiguous_in_range._entry.169, ptr @assert_contiguous_in_range._entry.172, ptr @assert_contiguous_in_range._entry_ptr, ptr @assert_contiguous_in_range._entry_ptr.162, ptr @assert_contiguous_in_range._entry_ptr.165, ptr @assert_contiguous_in_range._entry_ptr.168, ptr @assert_contiguous_in_range._entry_ptr.171, ptr @assert_contiguous_in_range._entry_ptr.174, ptr @assert_continuous._entry, ptr @assert_continuous._entry.85, ptr @assert_continuous._entry.88, ptr @assert_continuous._entry.91, ptr @assert_continuous._entry.94, ptr @assert_continuous._entry_ptr, ptr @assert_continuous._entry_ptr.87, ptr @assert_continuous._entry_ptr.90, ptr @assert_continuous._entry_ptr.93, ptr @assert_continuous._entry_ptr.96, ptr @assert_no_holes._entry, ptr @assert_no_holes._entry.41, ptr @assert_no_holes._entry_ptr, ptr @assert_no_holes._entry_ptr.43, ptr @assert_node._entry, ptr @assert_node._entry.124, ptr @assert_node._entry.127, ptr @assert_node._entry.130, ptr @assert_node._entry_ptr, ptr @assert_node._entry_ptr.126, ptr @assert_node._entry_ptr.129, ptr @assert_node._entry_ptr.132, ptr @assert_one_hole._entry, ptr @assert_one_hole._entry.36, ptr @assert_one_hole._entry_ptr, ptr @assert_one_hole._entry_ptr.38, ptr @check_reserve_boundaries._entry, ptr @check_reserve_boundaries._entry_ptr, ptr @colors_abutt._entry, ptr @colors_abutt._entry_ptr, ptr @evict_color._entry, ptr @evict_color._entry.312, ptr @evict_color._entry.314, ptr @evict_color._entry.317, ptr @evict_color._entry_ptr, ptr @evict_color._entry_ptr.313, ptr @evict_color._entry_ptr.316, ptr @evict_color._entry_ptr.318, ptr @evict_everything._entry, ptr @evict_everything._entry.210, ptr @evict_everything._entry_ptr, ptr @evict_everything._entry_ptr.212, ptr @evict_nodes._entry, ptr @evict_nodes._entry.228, ptr @evict_nodes._entry_ptr, ptr @evict_nodes._entry_ptr.230, ptr @evict_nothing._entry, ptr @evict_nothing._entry.205, ptr @evict_nothing._entry_ptr, ptr @evict_nothing._entry_ptr.207, ptr @evict_something._entry, ptr @evict_something._entry.215, ptr @evict_something._entry.218, ptr @evict_something._entry.221, ptr @evict_something._entry.223, ptr @evict_something._entry_ptr, ptr @evict_something._entry_ptr.217, ptr @evict_something._entry_ptr.220, ptr @evict_something._entry_ptr.222, ptr @evict_something._entry_ptr.225, ptr @expect_insert._entry, ptr @expect_insert._entry_ptr, ptr @expect_insert_fail._entry, ptr @expect_insert_fail._entry.135, ptr @expect_insert_fail._entry_ptr, ptr @expect_insert_fail._entry_ptr.137, ptr @expect_insert_in_range._entry, ptr @expect_insert_in_range._entry_ptr, ptr @expect_insert_in_range_fail._entry, ptr @expect_insert_in_range_fail._entry.140, ptr @expect_insert_in_range_fail._entry_ptr, ptr @expect_insert_in_range_fail._entry_ptr.142, ptr @expect_reserve_fail._entry, ptr @expect_reserve_fail._entry.80, ptr @expect_reserve_fail._entry_ptr, ptr @expect_reserve_fail._entry_ptr.82, ptr @get_insert_time._entry, ptr @get_insert_time._entry_ptr, ptr @igt_align._entry, ptr @igt_align._entry_ptr, ptr @igt_align_pot._entry, ptr @igt_align_pot._entry_ptr, ptr @igt_bottomup._entry, ptr @igt_bottomup._entry.248, ptr @igt_bottomup._entry.251, ptr @igt_bottomup._entry_ptr, ptr @igt_bottomup._entry_ptr.250, ptr @igt_bottomup._entry_ptr.253, ptr @igt_color._entry, ptr @igt_color._entry.278, ptr @igt_color._entry.281, ptr @igt_color._entry.284, ptr @igt_color._entry.287, ptr @igt_color._entry.290, ptr @igt_color._entry.293, ptr @igt_color._entry.296, ptr @igt_color._entry_ptr, ptr @igt_color._entry_ptr.280, ptr @igt_color._entry_ptr.283, ptr @igt_color._entry_ptr.286, ptr @igt_color._entry_ptr.289, ptr @igt_color._entry_ptr.292, ptr @igt_color._entry_ptr.295, ptr @igt_color._entry_ptr.298, ptr @igt_color_evict._entry, ptr @igt_color_evict._entry.302, ptr @igt_color_evict._entry.305, ptr @igt_color_evict._entry.308, ptr @igt_color_evict._entry_ptr, ptr @igt_color_evict._entry_ptr.304, ptr @igt_color_evict._entry_ptr.307, ptr @igt_color_evict._entry_ptr.309, ptr @igt_color_evict_range._entry, ptr @igt_color_evict_range._entry.320, ptr @igt_color_evict_range._entry.323, ptr @igt_color_evict_range._entry.326, ptr @igt_color_evict_range._entry_ptr, ptr @igt_color_evict_range._entry_ptr.322, ptr @igt_color_evict_range._entry_ptr.325, ptr @igt_color_evict_range._entry_ptr.327, ptr @igt_debug._entry, ptr @igt_debug._entry.46, ptr @igt_debug._entry_ptr, ptr @igt_debug._entry_ptr.48, ptr @igt_evict._entry, ptr @igt_evict._entry.189, ptr @igt_evict._entry.192, ptr @igt_evict._entry.195, ptr @igt_evict._entry.198, ptr @igt_evict._entry.201, ptr @igt_evict._entry_ptr, ptr @igt_evict._entry_ptr.191, ptr @igt_evict._entry_ptr.194, ptr @igt_evict._entry_ptr.197, ptr @igt_evict._entry_ptr.200, ptr @igt_evict._entry_ptr.202, ptr @igt_evict_range._entry, ptr @igt_evict_range._entry.238, ptr @igt_evict_range._entry.241, ptr @igt_evict_range._entry.244, ptr @igt_evict_range._entry_ptr, ptr @igt_evict_range._entry_ptr.240, ptr @igt_evict_range._entry_ptr.243, ptr @igt_evict_range._entry_ptr.245, ptr @igt_frag._entry, ptr @igt_frag._entry.179, ptr @igt_frag._entry_ptr, ptr @igt_frag._entry_ptr.181, ptr @igt_init._entry, ptr @igt_init._entry.25, ptr @igt_init._entry.28, ptr @igt_init._entry.31, ptr @igt_init._entry_ptr, ptr @igt_init._entry_ptr.27, ptr @igt_init._entry_ptr.30, ptr @igt_init._entry_ptr.33, ptr @igt_sanitycheck._entry, ptr @igt_sanitycheck._entry_ptr, ptr @igt_topdown._entry, ptr @igt_topdown._entry.266, ptr @igt_topdown._entry.269, ptr @igt_topdown._entry.271, ptr @igt_topdown._entry.274, ptr @igt_topdown._entry_ptr, ptr @igt_topdown._entry_ptr.268, ptr @igt_topdown._entry_ptr.270, ptr @igt_topdown._entry_ptr.273, ptr @igt_topdown._entry_ptr.276, ptr @prepare_igt_frag._entry, ptr @prepare_igt_frag._entry_ptr, ptr @show_holes._entry, ptr @show_holes._entry_ptr, ptr @show_scan._entry, ptr @show_scan._entry_ptr, ptr @test_drm_mm_exit, ptr @test_drm_mm_init._entry, ptr @test_drm_mm_init._entry_ptr, ptr @selftests, ptr @random_seed, ptr @max_iterations, ptr @max_prime, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @insert_modes, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.193, ptr @evict_modes, ptr @.str.196, ptr @.str.199, ptr @.str.203, ptr @.str.204, ptr @.str.206, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.219, ptr @.str.224, ptr @.str.226, ptr @.str.227, ptr @.str.229, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.239, ptr @.str.242, ptr @.str.246, ptr @.str.247, ptr @.str.249, ptr @.str.252, ptr @.str.254, ptr @.str.255, ptr @.str.259, ptr @.str.262, ptr @.str.264, ptr @.str.265, ptr @.str.267, ptr @.str.272, ptr @.str.275, ptr @.str.277, ptr @.str.279, ptr @.str.282, ptr @.str.285, ptr @.str.288, ptr @.str.291, ptr @.str.294, ptr @.str.297, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.303, ptr @.str.306, ptr @.str.310, ptr @.str.311, ptr @.str.315, ptr @.str.319, ptr @.str.321, ptr @.str.324, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335], section "llvm.metadata"
@0 = internal global [286 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftests to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @random_seed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_iterations to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_prime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_sanitycheck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_one_hole._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_one_hole._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_no_holes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_no_holes._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_debug._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_reserve_boundaries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_reserve_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_reserve_fail._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_continuous._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_continuous._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_continuous._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_continuous._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_continuous._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @insert_modes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_insert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_node._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_node._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_node._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_insert_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_insert_fail._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_insert_in_range_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_insert_in_range_fail._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expect_insert_in_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_contiguous_in_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_contiguous_in_range._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_contiguous_in_range._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_contiguous_in_range._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_contiguous_in_range._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assert_contiguous_in_range._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_align._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_frag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_frag._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_igt_frag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_insert_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_align_pot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_evict._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_evict._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_evict._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_modes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_evict._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_evict._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_evict._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_nothing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_nothing._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_everything._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_everything._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_something._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_something._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_something._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_something._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_something._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_nodes._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_holes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_evict_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_evict_range._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_evict_range._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_evict_range._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_bottomup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_bottomup._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_bottomup._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_topdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_topdown._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_topdown._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_topdown._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_topdown._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @colors_abutt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color_evict._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color_evict._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color_evict._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color_evict._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_color._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_color._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_color._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_color._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color_evict_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color_evict_range._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color_evict_range._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_color_evict_range._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_drm_mm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_drm_mm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_drm_mm_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.pr = load i32, ptr @random_seed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not4 = icmp eq i32 %.pr, 0
  br i1 %tobool.not4, label %entry.while.body_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call.i = tail call i32 @get_random_u32() #11
  store i32 %call.i, ptr @random_seed, align 4
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.body.while.body_crit_edge, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end:                                           ; preds = %while.body.do.end_crit_edge, %entry.do.end_crit_edge
  %.lcssa = phi i32 [ %.pr, %entry.do.end_crit_edge ], [ %call.i, %while.body.do.end_crit_edge ]
  %0 = load i32, ptr @max_iterations, align 4
  %1 = load i32, ptr @max_prime, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, i32 noundef %.lcssa, i32 noundef %0, i32 noundef %1) #14
  %call2 = tail call fastcc i32 @run_selftests()
  %2 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_sanitycheck(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_init(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %mm = alloca %struct.drm_mm, align 8
  %tmp = alloca %struct.drm_mm_node, align 8
  %__p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp) #11
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 112)
  %1 = call ptr @memset(ptr %mm, i32 0, i32 152)
  %hole_stack.i = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 1
  %2 = ptrtoint ptr %hole_stack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hole_stack.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %mm, i32 255, i32 152)
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef 4096) #11
  %5 = ptrtoint ptr %hole_stack.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hole_stack.i, align 4
  %tobool.i50.not = icmp eq ptr %6, null
  br i1 %tobool.i50.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #14
  br label %do.body39

if.end10:                                         ; preds = %if.end
  %node_list.i = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %node_list.i, align 4
  %cmp.i.i = icmp eq ptr %8, %node_list.i
  br i1 %cmp.i.i, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  br label %do.body39

if.end18:                                         ; preds = %if.end10
  %cmp3.not54.i = icmp eq ptr %6, %hole_stack.i
  br i1 %cmp3.not54.i, label %if.end18.assert_one_hole.exit.thread_crit_edge, label %if.end18.cond.true.i_crit_edge

if.end18.cond.true.i_crit_edge:                   ; preds = %if.end18
  br label %cond.true.i

if.end18.assert_one_hole.exit.thread_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_one_hole.exit.thread

cond.true.i:                                      ; preds = %if.end12.i.cond.true.i_crit_edge, %if.end18.cond.true.i_crit_edge
  %.pn57.i = phi ptr [ %.pn.i, %if.end12.i.cond.true.i_crit_edge ], [ %6, %if.end18.cond.true.i_crit_edge ]
  %count.056.i = phi i32 [ %inc.i, %if.end12.i.cond.true.i_crit_edge ], [ 0, %if.end18.cond.true.i_crit_edge ]
  %ok.0.off055.i = phi i1 [ %ok.1.off0.i, %if.end12.i.cond.true.i_crit_edge ], [ true, %if.end18.cond.true.i_crit_edge ]
  %hole_size.i.i.i = getelementptr i8, ptr %.pn57.i, i32 52
  %9 = ptrtoint ptr %hole_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hole_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.i.not.i.i = icmp eq i64 %10, 0
  br i1 %tobool.i.not.i.i, label %do.body3.i.i, label %for.body.i, !prof !676

do.body3.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/drm/drm_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 316, 0\0A.popsection", ""() #11, !srcloc !677
  unreachable

for.body.i:                                       ; preds = %cond.true.i
  %start.i.i.i = getelementptr i8, ptr %.pn57.i, i32 -28
  %11 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start.i.i.i, align 8
  %size.i.i.i = getelementptr i8, ptr %.pn57.i, i32 -20
  %13 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size.i.i.i, align 8
  %add.i.i.i = add i64 %14, %12
  %add.i = add i64 %add.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i.i)
  %cmp4.not.i = icmp eq i64 %add.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %add.i)
  %cmp5.not.i = icmp eq i64 %add.i, 4096
  %or.cond.i = select i1 %cmp4.not.i, i1 %cmp5.not.i, i1 false
  %ok.0.off0.not.i = xor i1 %ok.0.off055.i, true
  %brmerge.i = select i1 %or.cond.i, i1 true, i1 %ok.0.off0.not.i
  %ok.0.off0.mux.i = select i1 %or.cond.i, i1 %ok.0.off055.i, i1 false
  br i1 %brmerge.i, label %for.body.i.if.end12.i_crit_edge, label %do.end.i

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %add.i.i.i, i64 noundef %add.i, i64 noundef 0, i64 noundef 4096) #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i, %for.body.i.if.end12.i_crit_edge
  %ok.1.off0.i = phi i1 [ %ok.0.off0.mux.i, %for.body.i.if.end12.i_crit_edge ], [ false, %do.end.i ]
  %inc.i = add i32 %count.056.i, 1
  %15 = ptrtoint ptr %.pn57.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn57.i, align 4
  %cmp3.not.i = icmp eq ptr %.pn.i, %hole_stack.i
  br i1 %cmp3.not.i, label %for.end.i, label %if.end12.i.cond.true.i_crit_edge

if.end12.i.cond.true.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true.i

for.end.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.056.i)
  %cmp18.not.i = icmp eq i32 %count.056.i, 0
  br i1 %cmp18.not.i, label %assert_one_hole.exit, label %for.end.i.assert_one_hole.exit.thread_crit_edge

for.end.i.assert_one_hole.exit.thread_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_one_hole.exit.thread

assert_one_hole.exit.thread:                      ; preds = %for.end.i.assert_one_hole.exit.thread_crit_edge, %if.end18.assert_one_hole.exit.thread_crit_edge
  %count.0.lcssa62.i = phi i32 [ %inc.i, %for.end.i.assert_one_hole.exit.thread_crit_edge ], [ 0, %if.end18.assert_one_hole.exit.thread_crit_edge ]
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %count.0.lcssa62.i) #14
  br label %do.body39

assert_one_hole.exit:                             ; preds = %for.end.i
  br i1 %ok.1.off0.i, label %if.end21, label %assert_one_hole.exit.do.body39_crit_edge

assert_one_hole.exit.do.body39_crit_edge:         ; preds = %assert_one_hole.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

if.end21:                                         ; preds = %assert_one_hole.exit
  %size22 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 2
  %16 = call ptr @memset(ptr %tmp, i32 0, i32 112)
  %17 = ptrtoint ptr %size22 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 4096, ptr %size22, align 8
  %call23 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %tmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #14
  br label %do.body39

if.end30:                                         ; preds = %if.end21
  %18 = ptrtoint ptr %hole_stack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn52.i = load ptr, ptr %hole_stack.i, align 4
  %cmp.not53.i = icmp eq ptr %.pn52.i, %hole_stack.i
  br i1 %cmp.not53.i, label %if.end30.for.cond15.i.preheader_crit_edge, label %if.end30.cond.true.i55_crit_edge

if.end30.cond.true.i55_crit_edge:                 ; preds = %if.end30
  br label %cond.true.i55

if.end30.for.cond15.i.preheader_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.i.preheader

for.cond15.i.preheader:                           ; preds = %for.end.i59.for.cond15.i.preheader_crit_edge, %if.end30.for.cond15.i.preheader_crit_edge
  br label %for.cond15.i

cond.true.i55:                                    ; preds = %drm_mm_hole_node_start.exit.i.cond.true.i55_crit_edge, %if.end30.cond.true.i55_crit_edge
  %.pn55.i = phi ptr [ %.pn.i58, %drm_mm_hole_node_start.exit.i.cond.true.i55_crit_edge ], [ %.pn52.i, %if.end30.cond.true.i55_crit_edge ]
  %count.054.i = phi i32 [ %inc.i57, %drm_mm_hole_node_start.exit.i.cond.true.i55_crit_edge ], [ 0, %if.end30.cond.true.i55_crit_edge ]
  %hole_size.i.i.i53 = getelementptr i8, ptr %.pn55.i, i32 52
  %19 = ptrtoint ptr %hole_size.i.i.i53 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %hole_size.i.i.i53, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.i.not.i.i54 = icmp eq i64 %20, 0
  br i1 %tobool.i.not.i.i54, label %do.body3.i.i56, label %drm_mm_hole_node_start.exit.i, !prof !676

do.body3.i.i56:                                   ; preds = %cond.true.i55
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/drm/drm_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 316, 0\0A.popsection", ""() #11, !srcloc !677
  unreachable

drm_mm_hole_node_start.exit.i:                    ; preds = %cond.true.i55
  %inc.i57 = add i32 %count.054.i, 1
  %21 = ptrtoint ptr %.pn55.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i58 = load ptr, ptr %.pn55.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i58, %hole_stack.i
  br i1 %cmp.not.i, label %for.end.i59, label %drm_mm_hole_node_start.exit.i.cond.true.i55_crit_edge

drm_mm_hole_node_start.exit.i.cond.true.i55_crit_edge: ; preds = %drm_mm_hole_node_start.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true.i55

for.end.i59:                                      ; preds = %drm_mm_hole_node_start.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i57)
  %tobool8.not.i = icmp eq i32 %inc.i57, 0
  br i1 %tobool8.not.i, label %for.end.i59.for.cond15.i.preheader_crit_edge, label %do.end.i61

for.end.i59.for.cond15.i.preheader_crit_edge:     ; preds = %for.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.i.preheader

do.end.i61:                                       ; preds = %for.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %inc.i57) #14
  br label %do.body39

for.cond15.i:                                     ; preds = %for.body20.i.for.cond15.i_crit_edge, %for.cond15.i.preheader
  %.pn50.in.i = phi ptr [ %.pn50.i, %for.body20.i.for.cond15.i_crit_edge ], [ %node_list.i, %for.cond15.i.preheader ]
  %22 = ptrtoint ptr %.pn50.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn50.i = load ptr, ptr %.pn50.in.i, align 4
  %cmp19.not.i = icmp eq ptr %.pn50.i, %node_list.i
  br i1 %cmp19.not.i, label %if.end33, label %for.body20.i

for.body20.i:                                     ; preds = %for.cond15.i
  %hole_size.i.i = getelementptr i8, ptr %.pn50.i, i32 60
  %23 = ptrtoint ptr %hole_size.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hole_size.i.i, align 8
  %tobool.i.not.i = icmp eq i64 %24, 0
  br i1 %tobool.i.not.i, label %for.body20.i.for.cond15.i_crit_edge, label %do.end25.i

for.body20.i.for.cond15.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.i

do.end25.i:                                       ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #13
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #14
  br label %do.body39

if.end33:                                         ; preds = %for.cond15.i
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp) #11
  %25 = ptrtoint ptr %hole_stack.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn53.i65 = load ptr, ptr %hole_stack.i, align 4
  %cmp3.not54.i66 = icmp eq ptr %.pn53.i65, %hole_stack.i
  br i1 %cmp3.not54.i66, label %if.end33.assert_one_hole.exit99.thread_crit_edge, label %if.end33.cond.true.i73_crit_edge

if.end33.cond.true.i73_crit_edge:                 ; preds = %if.end33
  br label %cond.true.i73

if.end33.assert_one_hole.exit99.thread_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_one_hole.exit99.thread

cond.true.i73:                                    ; preds = %if.end12.i92.cond.true.i73_crit_edge, %if.end33.cond.true.i73_crit_edge
  %.pn57.i68 = phi ptr [ %.pn.i90, %if.end12.i92.cond.true.i73_crit_edge ], [ %.pn53.i65, %if.end33.cond.true.i73_crit_edge ]
  %count.056.i69 = phi i32 [ %inc.i89, %if.end12.i92.cond.true.i73_crit_edge ], [ 0, %if.end33.cond.true.i73_crit_edge ]
  %ok.0.off055.i70 = phi i1 [ %ok.1.off0.i88, %if.end12.i92.cond.true.i73_crit_edge ], [ true, %if.end33.cond.true.i73_crit_edge ]
  %hole_size.i.i.i71 = getelementptr i8, ptr %.pn57.i68, i32 52
  %26 = ptrtoint ptr %hole_size.i.i.i71 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %hole_size.i.i.i71, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool.i.not.i.i72 = icmp eq i64 %27, 0
  br i1 %tobool.i.not.i.i72, label %do.body3.i.i74, label %for.body.i85, !prof !676

do.body3.i.i74:                                   ; preds = %cond.true.i73
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/drm/drm_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 316, 0\0A.popsection", ""() #11, !srcloc !677
  unreachable

for.body.i85:                                     ; preds = %cond.true.i73
  %start.i.i.i75 = getelementptr i8, ptr %.pn57.i68, i32 -28
  %28 = ptrtoint ptr %start.i.i.i75 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start.i.i.i75, align 8
  %size.i.i.i76 = getelementptr i8, ptr %.pn57.i68, i32 -20
  %30 = ptrtoint ptr %size.i.i.i76 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size.i.i.i76, align 8
  %add.i.i.i77 = add i64 %31, %29
  %add.i78 = add i64 %add.i.i.i77, %27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i.i77)
  %cmp4.not.i79 = icmp eq i64 %add.i.i.i77, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %add.i78)
  %cmp5.not.i80 = icmp eq i64 %add.i78, 4096
  %or.cond.i81 = select i1 %cmp4.not.i79, i1 %cmp5.not.i80, i1 false
  %ok.0.off0.not.i82 = xor i1 %ok.0.off055.i70, true
  %brmerge.i83 = select i1 %or.cond.i81, i1 true, i1 %ok.0.off0.not.i82
  %ok.0.off0.mux.i84 = select i1 %or.cond.i81, i1 %ok.0.off055.i70, i1 false
  br i1 %brmerge.i83, label %for.body.i85.if.end12.i92_crit_edge, label %do.end.i87

for.body.i85.if.end12.i92_crit_edge:              ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i92

do.end.i87:                                       ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %add.i.i.i77, i64 noundef %add.i78, i64 noundef 0, i64 noundef 4096) #14
  br label %if.end12.i92

if.end12.i92:                                     ; preds = %do.end.i87, %for.body.i85.if.end12.i92_crit_edge
  %ok.1.off0.i88 = phi i1 [ %ok.0.off0.mux.i84, %for.body.i85.if.end12.i92_crit_edge ], [ false, %do.end.i87 ]
  %inc.i89 = add i32 %count.056.i69, 1
  %32 = ptrtoint ptr %.pn57.i68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i90 = load ptr, ptr %.pn57.i68, align 4
  %cmp3.not.i91 = icmp eq ptr %.pn.i90, %hole_stack.i
  br i1 %cmp3.not.i91, label %for.end.i94, label %if.end12.i92.cond.true.i73_crit_edge

if.end12.i92.cond.true.i73_crit_edge:             ; preds = %if.end12.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true.i73

for.end.i94:                                      ; preds = %if.end12.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.056.i69)
  %cmp18.not.i93 = icmp eq i32 %count.056.i69, 0
  br i1 %cmp18.not.i93, label %assert_one_hole.exit99, label %for.end.i94.assert_one_hole.exit99.thread_crit_edge

for.end.i94.assert_one_hole.exit99.thread_crit_edge: ; preds = %for.end.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_one_hole.exit99.thread

assert_one_hole.exit99.thread:                    ; preds = %for.end.i94.assert_one_hole.exit99.thread_crit_edge, %if.end33.assert_one_hole.exit99.thread_crit_edge
  %count.0.lcssa62.i95 = phi i32 [ %inc.i89, %for.end.i94.assert_one_hole.exit99.thread_crit_edge ], [ 0, %if.end33.assert_one_hole.exit99.thread_crit_edge ]
  %call24.i96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %count.0.lcssa62.i95) #14
  br label %do.body39

assert_one_hole.exit99:                           ; preds = %for.end.i94
  br i1 %ok.1.off0.i88, label %assert_one_hole.exit99.if.end42_crit_edge, label %assert_one_hole.exit99.do.body39_crit_edge

assert_one_hole.exit99.do.body39_crit_edge:       ; preds = %assert_one_hole.exit99
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

assert_one_hole.exit99.if.end42_crit_edge:        ; preds = %assert_one_hole.exit99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.body39:                                        ; preds = %assert_one_hole.exit99.do.body39_crit_edge, %assert_one_hole.exit99.thread, %do.end25.i, %do.end.i61, %do.end27, %assert_one_hole.exit.do.body39_crit_edge, %assert_one_hole.exit.thread, %do.end15, %do.end7
  %ret.0.ph = phi i32 [ -22, %assert_one_hole.exit99.thread ], [ -22, %assert_one_hole.exit99.do.body39_crit_edge ], [ -22, %assert_one_hole.exit.thread ], [ -22, %assert_one_hole.exit.do.body39_crit_edge ], [ -22, %do.end7 ], [ -22, %do.end15 ], [ %call23, %do.end27 ], [ -22, %do.end.i61 ], [ -22, %do.end25.i ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %__p) #11
  %33 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 1
  %34 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 2
  %35 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 3
  %36 = ptrtoint ptr %__p to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @__drm_printfn_debug, ptr %__p, align 4, !alias.scope !678
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %33, align 4, !alias.scope !678
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %34, align 4, !alias.scope !678
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.24, ptr %35, align 4, !alias.scope !678
  call void @drm_mm_print(ptr noundef nonnull %mm, ptr noundef nonnull %__p) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %__p) #11
  br label %if.end42

if.end42:                                         ; preds = %do.body39, %assert_one_hole.exit99.if.end42_crit_edge
  %ret.0106 = phi i32 [ %ret.0.ph, %do.body39 ], [ 0, %assert_one_hole.exit99.if.end42_crit_edge ]
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0106, %if.end42 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp) #11
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_debug(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %mm = alloca %struct.drm_mm, align 8
  %nodes = alloca [2 x %struct.drm_mm_node], align 8
  %__p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %0 = call ptr @memset(ptr %mm, i32 255, i32 152)
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %nodes) #11
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef 4096) #11
  %1 = call ptr @memset(ptr %nodes, i32 0, i32 224)
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %nodes, i32 0, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 512, ptr %start, align 8
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %nodes, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1024, ptr %size, align 8
  %call = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %nodes) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i64 noundef %5, i64 noundef %7) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx8 = getelementptr inbounds [2 x %struct.drm_mm_node], ptr %nodes, i32 0, i32 1
  %size9 = getelementptr inbounds [2 x %struct.drm_mm_node], ptr %nodes, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %size9 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1024, ptr %size9, align 8
  %start13 = getelementptr inbounds [2 x %struct.drm_mm_node], ptr %nodes, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %start13 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2560, ptr %start13, align 8
  %call15 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef %arrayidx8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body28, label %do.end20

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %start13 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start13, align 8
  %12 = ptrtoint ptr %size9 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size9, align 8
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i64 noundef %11, i64 noundef %13) #14
  br label %cleanup

do.body28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %__p) #11
  %14 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 1
  %15 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 2
  %16 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 3
  %17 = ptrtoint ptr %__p to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @__drm_printfn_debug, ptr %__p, align 4, !alias.scope !681
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %14, align 4, !alias.scope !681
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %15, align 4, !alias.scope !681
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.45, ptr %16, align 4, !alias.scope !681
  call void @drm_mm_print(ptr noundef nonnull %mm, ptr noundef nonnull %__p) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %__p) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body28, %do.end20, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call15, %do.end20 ], [ 0, %do.body28 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %nodes) #11
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_reserve(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_iterations, align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 1024)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %n.032 = phi i32 [ 1, %entry ], [ %call12, %for.inc.for.body_crit_edge ]
  %sh_prom = zext i32 %n.032 to i64
  %shl = shl nuw i64 1, %sh_prom
  %sub = add i64 %shl, -1
  %call = tail call fastcc i32 @__igt_reserve(i32 noundef %1, i64 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup13_crit_edge

for.body.cleanup13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

if.end:                                           ; preds = %for.body
  %call2 = tail call fastcc i32 @__igt_reserve(i32 noundef %1, i64 noundef %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup13_crit_edge

if.end.cleanup13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

if.end5:                                          ; preds = %if.end
  %add = add nuw i64 %shl, 1
  %call6 = tail call fastcc i32 @__igt_reserve(i32 noundef %1, i64 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.inc, label %if.end5.cleanup13_crit_edge

if.end5.cleanup13_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

for.inc:                                          ; preds = %if.end5
  tail call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 520, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %call12 = tail call i32 @next_prime_number(i32 noundef %n.032) #11
  %cmp1 = icmp slt i32 %call12, 55
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup13_crit_edge

for.inc.cleanup13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup13:                                        ; preds = %for.inc.cleanup13_crit_edge, %if.end5.cleanup13_crit_edge, %if.end.cleanup13_crit_edge, %for.body.cleanup13_crit_edge
  %retval.2 = phi i32 [ 0, %for.inc.cleanup13_crit_edge ], [ %call6, %if.end5.cleanup13_crit_edge ], [ %call2, %if.end.cleanup13_crit_edge ], [ %call, %for.body.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_insert(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_iterations, align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 1024)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %n.032 = phi i32 [ 1, %entry ], [ %call12, %for.inc.for.body_crit_edge ]
  %sh_prom = zext i32 %n.032 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %sub = add nsw i64 %shl, -1
  %call = tail call fastcc i32 @__igt_insert(i32 noundef %1, i64 noundef %sub, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup13_crit_edge

for.body.cleanup13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

if.end:                                           ; preds = %for.body
  %call2 = tail call fastcc i32 @__igt_insert(i32 noundef %1, i64 noundef %shl, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup13_crit_edge

if.end.cleanup13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

if.end5:                                          ; preds = %if.end
  %add = add nuw nsw i64 %shl, 1
  %call6 = tail call fastcc i32 @__igt_insert(i32 noundef %1, i64 noundef %add, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.inc, label %if.end5.cleanup13_crit_edge

if.end5.cleanup13_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

for.inc:                                          ; preds = %if.end5
  tail call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 724, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %call12 = tail call i32 @next_prime_number(i32 noundef %n.032) #11
  %cmp1 = icmp ult i32 %call12, 55
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup13_crit_edge

for.inc.cleanup13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup13:                                        ; preds = %for.inc.cleanup13_crit_edge, %if.end5.cleanup13_crit_edge, %if.end.cleanup13_crit_edge, %for.body.cleanup13_crit_edge
  %retval.2 = phi i32 [ 0, %for.inc.cleanup13_crit_edge ], [ %call6, %if.end5.cleanup13_crit_edge ], [ %call2, %if.end.cleanup13_crit_edge ], [ %call, %for.body.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_replace(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_iterations, align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 1024)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %n.032 = phi i32 [ 1, %entry ], [ %call12, %for.inc.for.body_crit_edge ]
  %sh_prom = zext i32 %n.032 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %sub = add nsw i64 %shl, -1
  %call = tail call fastcc i32 @__igt_insert(i32 noundef %1, i64 noundef %sub, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup13_crit_edge

for.body.cleanup13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

if.end:                                           ; preds = %for.body
  %call2 = tail call fastcc i32 @__igt_insert(i32 noundef %1, i64 noundef %shl, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup13_crit_edge

if.end.cleanup13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

if.end5:                                          ; preds = %if.end
  %add = add nuw nsw i64 %shl, 1
  %call6 = tail call fastcc i32 @__igt_insert(i32 noundef %1, i64 noundef %add, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.inc, label %if.end5.cleanup13_crit_edge

if.end5.cleanup13_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

for.inc:                                          ; preds = %if.end5
  tail call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 757, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %call12 = tail call i32 @next_prime_number(i32 noundef %n.032) #11
  %cmp1 = icmp ult i32 %call12, 55
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup13_crit_edge

for.inc.cleanup13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup13:                                        ; preds = %for.inc.cleanup13_crit_edge, %if.end5.cleanup13_crit_edge, %if.end.cleanup13_crit_edge, %for.body.cleanup13_crit_edge
  %retval.2 = phi i32 [ 0, %for.inc.cleanup13_crit_edge ], [ %call6, %if.end5.cleanup13_crit_edge ], [ %call2, %if.end.cleanup13_crit_edge ], [ %call, %for.body.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_insert_range(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %tmp.i37.i = alloca %struct.drm_mm_node, align 8
  %tmp.i25.i = alloca %struct.drm_mm_node, align 8
  %tmp.i13.i = alloca %struct.drm_mm_node, align 8
  %tmp.i.i = alloca %struct.drm_mm_node, align 8
  %mm.i = alloca %struct.drm_mm, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_iterations, align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 8192)
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm.i) #11
  %2 = call ptr @memset(ptr %mm.i, i32 255, i32 152)
  call void @drm_mm_init(ptr noundef nonnull %mm.i, i64 noundef 1024, i64 noundef 1024) #11
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp.i.i) #11
  %3 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 112)
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm.i, ptr noundef nonnull %tmp.i.i, i64 noundef 1, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 1024, i32 noundef 0) #11
  %4 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %do.end9.i.i [
    i32 -28, label %if.end.i
    i32 0, label %do.end.i.i
  ], !prof !684

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %start.i.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start.i.i, align 8
  %size5.i.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %size5.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size5.i.i, align 8
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i64 noundef %6, i64 noundef %8, i64 noundef 0, i64 noundef 1024) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp.i.i) #11
  br label %expect_insert_in_range_fail.exit.thread.i

do.end9.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %call.i.i, i32 noundef -28, i64 noundef 1, i64 noundef 0, i64 noundef 1024) #14
  br label %expect_insert_in_range_fail.exit.thread.i

expect_insert_in_range_fail.exit.thread.i:        ; preds = %do.end9.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i.i) #11
  br label %insert_outside_range.exit.thread

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i.i) #11
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp.i13.i) #11
  %9 = call ptr @memset(ptr %tmp.i13.i, i32 0, i32 112)
  %call.i14.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm.i, ptr noundef nonnull %tmp.i13.i, i64 noundef 1024, i64 noundef 0, i32 noundef 0, i64 noundef 512, i64 noundef 1536, i32 noundef 0) #11
  %10 = zext i32 %call.i14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.336)
  switch i32 %call.i14.i, label %do.end9.i23.i [
    i32 -28, label %if.end3.i
    i32 0, label %do.end.i21.i
  ], !prof !684

do.end.i21.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %start.i18.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i13.i, i32 0, i32 1
  %11 = ptrtoint ptr %start.i18.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start.i18.i, align 8
  %size5.i19.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i13.i, i32 0, i32 2
  %13 = ptrtoint ptr %size5.i19.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size5.i19.i, align 8
  %call6.i20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i64 noundef %12, i64 noundef %14, i64 noundef 512, i64 noundef 1536) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp.i13.i) #11
  br label %expect_insert_in_range_fail.exit24.thread.i

do.end9.i23.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %call.i14.i, i32 noundef -28, i64 noundef 1024, i64 noundef 512, i64 noundef 1536) #14
  br label %expect_insert_in_range_fail.exit24.thread.i

expect_insert_in_range_fail.exit24.thread.i:      ; preds = %do.end9.i23.i, %do.end.i21.i
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i13.i) #11
  br label %insert_outside_range.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i13.i) #11
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp.i25.i) #11
  %15 = call ptr @memset(ptr %tmp.i25.i, i32 0, i32 112)
  %call.i26.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm.i, ptr noundef nonnull %tmp.i25.i, i64 noundef 1024, i64 noundef 0, i32 noundef 0, i64 noundef 1536, i64 noundef 2560, i32 noundef 0) #11
  %16 = zext i32 %call.i26.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.337)
  switch i32 %call.i26.i, label %do.end9.i35.i [
    i32 -28, label %if.end6.i
    i32 0, label %do.end.i33.i
  ], !prof !684

do.end.i33.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %start.i30.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i25.i, i32 0, i32 1
  %17 = ptrtoint ptr %start.i30.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start.i30.i, align 8
  %size5.i31.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i25.i, i32 0, i32 2
  %19 = ptrtoint ptr %size5.i31.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size5.i31.i, align 8
  %call6.i32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i64 noundef %18, i64 noundef %20, i64 noundef 1536, i64 noundef 2560) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp.i25.i) #11
  br label %expect_insert_in_range_fail.exit36.thread.i

do.end9.i35.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %call.i26.i, i32 noundef -28, i64 noundef 1024, i64 noundef 1536, i64 noundef 2560) #14
  br label %expect_insert_in_range_fail.exit36.thread.i

expect_insert_in_range_fail.exit36.thread.i:      ; preds = %do.end9.i35.i, %do.end.i33.i
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i25.i) #11
  br label %insert_outside_range.exit.thread

if.end6.i:                                        ; preds = %if.end3.i
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i25.i) #11
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp.i37.i) #11
  %21 = call ptr @memset(ptr %tmp.i37.i, i32 0, i32 112)
  %call.i38.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm.i, ptr noundef nonnull %tmp.i37.i, i64 noundef 1, i64 noundef 0, i32 noundef 0, i64 noundef 2048, i64 noundef 3072, i32 noundef 0) #11
  %22 = zext i32 %call.i38.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.338)
  switch i32 %call.i38.i, label %do.end9.i47.i [
    i32 -28, label %insert_outside_range.exit
    i32 0, label %do.end.i45.i
  ], !prof !684

do.end.i45.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %start.i42.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i37.i, i32 0, i32 1
  %23 = ptrtoint ptr %start.i42.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %start.i42.i, align 8
  %size5.i43.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i37.i, i32 0, i32 2
  %25 = ptrtoint ptr %size5.i43.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %size5.i43.i, align 8
  %call6.i44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i64 noundef %24, i64 noundef %26, i64 noundef 2048, i64 noundef 3072) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp.i37.i) #11
  br label %expect_insert_in_range_fail.exit48.thread.i

do.end9.i47.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %call.i38.i, i32 noundef -28, i64 noundef 1, i64 noundef 2048, i64 noundef 3072) #14
  br label %expect_insert_in_range_fail.exit48.thread.i

expect_insert_in_range_fail.exit48.thread.i:      ; preds = %do.end9.i47.i, %do.end.i45.i
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i37.i) #11
  br label %insert_outside_range.exit.thread

insert_outside_range.exit.thread:                 ; preds = %expect_insert_in_range_fail.exit48.thread.i, %expect_insert_in_range_fail.exit36.thread.i, %expect_insert_in_range_fail.exit24.thread.i, %expect_insert_in_range_fail.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm.i) #11
  br label %cleanup35

insert_outside_range.exit:                        ; preds = %if.end6.i
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i37.i) #11
  call void @drm_mm_takedown(ptr noundef nonnull %mm.i) #11
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm.i) #11
  %conv = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %insert_outside_range.exit
  %n.082 = phi i32 [ 1, %insert_outside_range.exit ], [ %call34, %for.inc.for.body_crit_edge ]
  %sh_prom = zext i32 %n.082 to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %mul = shl i64 %conv, %sh_prom
  %call2 = call fastcc i32 @__igt_insert_range(i32 noundef %1, i64 noundef %shl, i64 noundef 0, i64 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %for.body.cleanup35_crit_edge

for.body.cleanup35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

if.end5:                                          ; preds = %for.body
  %call6 = call fastcc i32 @__igt_insert_range(i32 noundef %1, i64 noundef %shl, i64 noundef 1, i64 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup35_crit_edge

if.end5.cleanup35_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

if.end9:                                          ; preds = %if.end5
  %sub = add i64 %mul, -1
  %call10 = call fastcc i32 @__igt_insert_range(i32 noundef %1, i64 noundef %shl, i64 noundef 0, i64 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup35_crit_edge

if.end9.cleanup35_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

if.end13:                                         ; preds = %if.end9
  %div75 = lshr i64 %mul, 1
  %call14 = call fastcc i32 @__igt_insert_range(i32 noundef %1, i64 noundef %shl, i64 noundef 0, i64 noundef %div75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup35_crit_edge

if.end13.cleanup35_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

if.end17:                                         ; preds = %if.end13
  %call19 = call fastcc i32 @__igt_insert_range(i32 noundef %1, i64 noundef %shl, i64 noundef %div75, i64 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup35_crit_edge

if.end17.cleanup35_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

if.end22:                                         ; preds = %if.end17
  %div2376 = lshr i64 %mul, 2
  %add = add nuw nsw i64 %div2376, 1
  %mul24 = mul i64 %mul, 3
  %div2577 = lshr i64 %mul24, 2
  %sub26 = add nsw i64 %div2577, -1
  %call27 = call fastcc i32 @__igt_insert_range(i32 noundef %1, i64 noundef %shl, i64 noundef %add, i64 noundef %sub26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.inc, label %if.end22.cleanup35_crit_edge

if.end22.cleanup35_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

for.inc:                                          ; preds = %if.end22
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 1031, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %call34 = call i32 @next_prime_number(i32 noundef %n.082) #11
  %cmp1 = icmp ult i32 %call34, 51
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup35_crit_edge

for.inc.cleanup35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup35:                                        ; preds = %for.inc.cleanup35_crit_edge, %if.end22.cleanup35_crit_edge, %if.end17.cleanup35_crit_edge, %if.end13.cleanup35_crit_edge, %if.end9.cleanup35_crit_edge, %if.end5.cleanup35_crit_edge, %for.body.cleanup35_crit_edge, %insert_outside_range.exit.thread
  %retval.2 = phi i32 [ -22, %insert_outside_range.exit.thread ], [ %call2, %for.body.cleanup35_crit_edge ], [ %call6, %if.end5.cleanup35_crit_edge ], [ %call10, %if.end9.cleanup35_crit_edge ], [ %call14, %if.end13.cleanup35_crit_edge ], [ %call19, %if.end17.cleanup35_crit_edge ], [ %call27, %if.end22.cleanup35_crit_edge ], [ 0, %for.inc.cleanup35_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_align(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %mm = alloca %struct.drm_mm, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_prime, align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 8192)
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %2 = call ptr @memset(ptr %mm, i32 255, i32 152)
  %3 = mul nuw nsw i32 %1, 112
  %call1 = tail call noalias ptr @vzalloc(i32 noundef %3) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup86_crit_edge, label %if.end

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup86

if.end:                                           ; preds = %entry
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 1, i64 noundef -3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not143 = icmp eq i32 %1, 0
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc57.for.cond3.preheader_crit_edge, %if.end
  %mode.0148 = phi ptr [ @insert_modes, %if.end ], [ %incdec.ptr, %for.inc57.for.cond3.preheader_crit_edge ]
  br i1 %cmp4.not143, label %for.cond3.preheader.for.end_crit_edge, label %for.body5.lr.ph

for.cond3.preheader.for.end_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %mode1.i = getelementptr inbounds %struct.insert_mode, ptr %mode.0148, i32 0, i32 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body5.lr.ph
  %prime.0145 = phi i32 [ 1, %for.body5.lr.ph ], [ %call14, %for.inc.for.body5_crit_edge ]
  %i.0144 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.inc.for.body5_crit_edge ]
  %call6 = call i32 @next_prime_number(i32 noundef %prime.0145) #11
  %conv = zext i32 %call6 to i64
  %arrayidx = getelementptr %struct.drm_mm_node, ptr %call1, i32 %i.0144
  %conv7 = zext i32 %prime.0145 to i64
  %4 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode1.i, align 4
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx, i64 noundef %conv, i64 noundef %conv7, i32 noundef %i.0144, i64 noundef 0, i64 noundef -1, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %mode.0148 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode.0148, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %conv, i64 noundef %conv7, i32 noundef %i.0144, ptr noundef %7, i32 noundef %call.i.i) #14
  br label %cleanup54

if.end.i:                                         ; preds = %for.body5
  %call3.i = call fastcc zeroext i1 @assert_node(ptr noundef %arrayidx, ptr noundef nonnull %mm, i64 noundef %conv, i64 noundef %conv7, i32 noundef %i.0144) #11
  br i1 %call3.i, label %for.inc, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_mm_remove_node(ptr noundef %arrayidx) #11
  br label %cleanup54

for.inc:                                          ; preds = %if.end.i
  %inc = add i32 %i.0144, 1
  %call14 = call i32 @next_prime_number(i32 noundef %prime.0145) #11
  %cmp4.not = icmp ugt i32 %call14, %1
  br i1 %cmp4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond3.preheader.for.end_crit_edge
  %8 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node_list, align 4
  %cmp26.not146 = icmp eq ptr %9, %node_list
  br i1 %cmp26.not146, label %for.end.do.body36_crit_edge, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.end.do.body36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %.pn118.in147 = phi ptr [ %.pn118, %for.body28.for.body28_crit_edge ], [ %9, %for.end.for.body28_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn118.in147, i32 -28
  %10 = ptrtoint ptr %.pn118.in147 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn118 = load ptr, ptr %.pn118.in147, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp26.not = icmp eq ptr %.pn118, %node_list
  br i1 %cmp26.not, label %for.body28.do.body36_crit_edge, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28

for.body28.do.body36_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

do.body36:                                        ; preds = %for.body28.do.body36_crit_edge, %for.end.do.body36_crit_edge
  %11 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %node_list, align 4
  %cmp.i.i = icmp eq ptr %12, %node_list
  br i1 %cmp.i.i, label %for.inc57, label %do.body43, !prof !685

do.body43:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1192, 0\0A.popsection", ""() #11, !srcloc !686
  unreachable

cleanup54:                                        ; preds = %if.then4.i, %do.end.i
  %13 = ptrtoint ptr %mode.0148 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mode.0148, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %14, i32 noundef %prime.0145) #14
  br label %out

for.inc57:                                        ; preds = %do.body36
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 1194, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %incdec.ptr = getelementptr %struct.insert_mode, ptr %mode.0148, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %incdec.ptr, align 4
  %tobool2.not = icmp eq ptr %16, null
  br i1 %tobool2.not, label %for.inc57.out_crit_edge, label %for.inc57.for.cond3.preheader_crit_edge

for.inc57.for.cond3.preheader_crit_edge:          ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader

for.inc57.out_crit_edge:                          ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc57.out_crit_edge, %cleanup54
  %ret.0 = phi i32 [ -22, %cleanup54 ], [ 0, %for.inc57.out_crit_edge ]
  %17 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %node_list, align 4
  %cmp74.not150 = icmp eq ptr %18, %node_list
  br i1 %cmp74.not150, label %out.for.end85_crit_edge, label %out.for.body78_crit_edge

out.for.body78_crit_edge:                         ; preds = %out
  br label %for.body78

out.for.end85_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end85

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %out.for.body78_crit_edge
  %.pn.in151 = phi ptr [ %.pn, %for.body78.for.body78_crit_edge ], [ %18, %out.for.body78_crit_edge ]
  %node.1 = getelementptr i8, ptr %.pn.in151, i32 -28
  %19 = ptrtoint ptr %.pn.in151 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn.in151, align 4
  call void @drm_mm_remove_node(ptr noundef %node.1) #11
  %cmp74.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp74.not, label %for.body78.for.end85_crit_edge, label %for.body78.for.body78_crit_edge

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body78

for.body78.for.end85_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end85

for.end85:                                        ; preds = %for.body78.for.end85_crit_edge, %out.for.end85_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @vfree(ptr noundef nonnull %call1) #11
  br label %cleanup86

cleanup86:                                        ; preds = %for.end85, %entry.cleanup86_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end85 ], [ -22, %entry.cleanup86_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_frag(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %mm = alloca %struct.drm_mm, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %0 = call ptr @memset(ptr %mm, i32 255, i32 152)
  %call1 = tail call noalias ptr @vzalloc(i32 noundef 4480000) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup88_crit_edge, label %if.end

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup88

if.end:                                           ; preds = %entry
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 1, i64 noundef -3) #11
  %add.ptr = getelementptr %struct.drm_mm_node, ptr %call1, i32 10000
  %add.ptr18 = getelementptr %struct.drm_mm_node, ptr %call1, i32 20000
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc60.for.body_crit_edge, %if.end
  %mode.0169 = phi ptr [ @insert_modes, %if.end ], [ %incdec.ptr, %for.inc60.for.body_crit_edge ]
  %mode3 = getelementptr inbounds %struct.insert_mode, ptr %mode.0169, i32 0, i32 1
  %1 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode3, align 4
  %.off = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %for.body.for.body.i_crit_edge, label %for.body.for.inc60_crit_edge

for.body.for.inc60_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc60

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %i.015.i
  %3 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode3, align 4
  %call.i.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx.i, i64 noundef 4096, i64 noundef 0, i32 noundef %i.015.i, i64 noundef 0, i64 noundef -1, i32 noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %mode.0169 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode.0169, align 4
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef 4096, i64 noundef 0, i32 noundef %i.015.i, ptr noundef %6, i32 noundef %call.i.i.i) #14
  br label %prepare_igt_frag.exit

if.end.i.i:                                       ; preds = %for.body.i
  %flags.i.i.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %i.015.i, i32 12
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i.do.end.i2.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.end.i2.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i2.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %mm1.i.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %i.015.i, i32 3
  %9 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mm1.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %10, %mm
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i.if.end.i3.i_crit_edge, label %lor.lhs.false.i.i.do.end.i2.i_crit_edge

lor.lhs.false.i.i.do.end.i2.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i2.i

lor.lhs.false.i.i.if.end.i3.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i3.i

do.end.i2.i:                                      ; preds = %lor.lhs.false.i.i.do.end.i2.i_crit_edge, %if.end.i.i.do.end.i2.i_crit_edge
  %call2.i1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i3.i

if.end.i3.i:                                      ; preds = %do.end.i2.i, %lor.lhs.false.i.i.if.end.i3.i_crit_edge
  %ok.0.off0.i.i = phi i1 [ false, %do.end.i2.i ], [ true, %lor.lhs.false.i.i.if.end.i3.i_crit_edge ]
  %size3.i.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %i.015.i, i32 2
  %11 = ptrtoint ptr %size3.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size3.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %12)
  %cmp4.not.i.i = icmp eq i64 %12, 4096
  br i1 %cmp4.not.i.i, label %if.end12.i.i, label %if.end12.i.thread.i

if.end12.i.i:                                     ; preds = %if.end.i3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %i.015.i)
  %cmp23.not.i.i = icmp eq i32 %14, %i.015.i
  br i1 %cmp23.not.i.i, label %assert_node.exit.i, label %if.end12.i.i.assert_node.exit.thread.i_crit_edge

if.end12.i.i.assert_node.exit.thread.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread.i

if.end12.i.thread.i:                              ; preds = %if.end.i3.i
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %12, i64 noundef 4096) #14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %i.015.i)
  %cmp23.not.i32.i = icmp eq i32 %16, %i.015.i
  br i1 %cmp23.not.i32.i, label %if.end12.i.thread.i.if.then4.i.i_crit_edge, label %if.end12.i.thread.i.assert_node.exit.thread.i_crit_edge

if.end12.i.thread.i.assert_node.exit.thread.i_crit_edge: ; preds = %if.end12.i.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread.i

if.end12.i.thread.i.if.then4.i.i_crit_edge:       ; preds = %if.end12.i.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i.i

assert_node.exit.thread.i:                        ; preds = %if.end12.i.thread.i.assert_node.exit.thread.i_crit_edge, %if.end12.i.i.assert_node.exit.thread.i_crit_edge
  %17 = phi i32 [ %16, %if.end12.i.thread.i.assert_node.exit.thread.i_crit_edge ], [ %14, %if.end12.i.i.assert_node.exit.thread.i_crit_edge ]
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %17, i32 noundef %i.015.i) #14
  br label %if.then4.i.i

assert_node.exit.i:                               ; preds = %if.end12.i.i
  br i1 %ok.0.off0.i.i, label %for.inc.i, label %assert_node.exit.i.if.then4.i.i_crit_edge

assert_node.exit.i.if.then4.i.i_crit_edge:        ; preds = %assert_node.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i.i

if.then4.i.i:                                     ; preds = %assert_node.exit.i.if.then4.i.i_crit_edge, %assert_node.exit.thread.i, %if.end12.i.thread.i.if.then4.i.i_crit_edge
  call void @drm_mm_remove_node(ptr noundef %arrayidx.i) #11
  br label %prepare_igt_frag.exit

for.inc.i:                                        ; preds = %assert_node.exit.i
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %for.inc.i.for.body7.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.body7.i_crit_edge:                  ; preds = %for.inc.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc13.i.for.body7.i_crit_edge, %for.inc.i.for.body7.i_crit_edge
  %i.116.i = phi i32 [ %inc14.i, %for.inc13.i.for.body7.i_crit_edge ], [ 0, %for.inc.i.for.body7.i_crit_edge ]
  %rem.i = and i32 %i.116.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp8.i = icmp eq i32 %rem.i, 0
  br i1 %cmp8.i, label %if.then10.i, label %for.body7.i.for.inc13.i_crit_edge

for.body7.i.for.inc13.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc13.i

if.then10.i:                                      ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx11.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %i.116.i
  call void @drm_mm_remove_node(ptr noundef %arrayidx11.i) #11
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %if.then10.i, %for.body7.i.for.inc13.i_crit_edge
  %inc14.i = add nuw nsw i32 %i.116.i, 1
  %exitcond30.not.i = icmp eq i32 %inc14.i, 10000
  br i1 %exitcond30.not.i, label %if.end11, label %for.inc13.i.for.body7.i_crit_edge

for.inc13.i.for.body7.i_crit_edge:                ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7.i

prepare_igt_frag.exit:                            ; preds = %if.then4.i.i, %do.end.i.i
  %18 = ptrtoint ptr %mode.0169 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mode.0169, align 4
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %19) #14
  br label %err

if.end11:                                         ; preds = %for.inc13.i
  %call12 = call fastcc i64 @get_insert_time(ptr noundef nonnull %mm, i32 noundef 10000, ptr noundef %add.ptr, ptr noundef %mode.0169)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call12)
  %cmp13 = icmp eq i64 %call12, 0
  br i1 %cmp13, label %if.end11.err_crit_edge, label %if.end15

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end15:                                         ; preds = %if.end11
  %call19 = call fastcc i64 @get_insert_time(ptr noundef nonnull %mm, i32 noundef 20000, ptr noundef %add.ptr18, ptr noundef %mode.0169)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call19)
  %cmp20 = icmp eq i64 %call19, 0
  br i1 %cmp20, label %if.end15.err_crit_edge, label %do.end

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

do.end:                                           ; preds = %if.end15
  %20 = ptrtoint ptr %mode.0169 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mode.0169, align 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %21, i32 noundef 10000, i32 noundef 20000, i64 noundef %call12, i64 noundef %call19) #14
  %mul26 = shl i64 %call12, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %mul26)
  %cmp27 = icmp ugt i64 %call19, %mul26
  br i1 %cmp27, label %do.end32, label %if.end38

do.end32:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %mode.0169 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mode.0169, align 4
  %sub = sub i64 %call19, %mul26
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %23, i64 noundef %sub) #14
  br label %err

if.end38:                                         ; preds = %do.end
  %24 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %node_list, align 4
  %cmp51.not167 = icmp eq ptr %25, %node_list
  br i1 %cmp51.not167, label %if.end38.for.inc60_crit_edge, label %if.end38.for.body53_crit_edge

if.end38.for.body53_crit_edge:                    ; preds = %if.end38
  br label %for.body53

if.end38.for.inc60_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc60

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %if.end38.for.body53_crit_edge
  %.pn131.in168 = phi ptr [ %.pn131, %for.body53.for.body53_crit_edge ], [ %25, %if.end38.for.body53_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn131.in168, i32 -28
  %26 = ptrtoint ptr %.pn131.in168 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn131 = load ptr, ptr %.pn131.in168, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp51.not = icmp eq ptr %.pn131, %node_list
  br i1 %cmp51.not, label %for.body53.for.inc60_crit_edge, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53

for.body53.for.inc60_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc60

for.inc60:                                        ; preds = %for.body53.for.inc60_crit_edge, %if.end38.for.inc60_crit_edge, %for.body.for.inc60_crit_edge
  %incdec.ptr = getelementptr %struct.insert_mode, ptr %mode.0169, i32 1
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %incdec.ptr, align 4
  %tobool2.not = icmp eq ptr %28, null
  br i1 %tobool2.not, label %for.inc60.err_crit_edge, label %for.inc60.for.body_crit_edge

for.inc60.for.body_crit_edge:                     ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc60.err_crit_edge:                          ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

err:                                              ; preds = %for.inc60.err_crit_edge, %do.end32, %if.end15.err_crit_edge, %if.end11.err_crit_edge, %prepare_igt_frag.exit
  %ret.2 = phi i32 [ -22, %prepare_igt_frag.exit ], [ 0, %do.end32 ], [ 0, %for.inc60.err_crit_edge ], [ 0, %if.end11.err_crit_edge ], [ 0, %if.end15.err_crit_edge ]
  %29 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %node_list, align 4
  %cmp77.not171 = icmp eq ptr %30, %node_list
  br i1 %cmp77.not171, label %err.for.end87_crit_edge, label %err.for.body80_crit_edge

err.for.body80_crit_edge:                         ; preds = %err
  br label %for.body80

err.for.end87_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end87

for.body80:                                       ; preds = %for.body80.for.body80_crit_edge, %err.for.body80_crit_edge
  %.pn.in172 = phi ptr [ %.pn, %for.body80.for.body80_crit_edge ], [ %30, %err.for.body80_crit_edge ]
  %node.1 = getelementptr i8, ptr %.pn.in172, i32 -28
  %31 = ptrtoint ptr %.pn.in172 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn.in172, align 4
  call void @drm_mm_remove_node(ptr noundef %node.1) #11
  %cmp77.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp77.not, label %for.body80.for.end87_crit_edge, label %for.body80.for.body80_crit_edge

for.body80.for.body80_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body80

for.body80.for.end87_crit_edge:                   ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end87

for.end87:                                        ; preds = %for.body80.for.end87_crit_edge, %err.for.end87_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @vfree(ptr noundef nonnull %call1) #11
  br label %cleanup88

cleanup88:                                        ; preds = %for.end87, %entry.cleanup88_crit_edge
  %retval.0 = phi i32 [ %ret.2, %for.end87 ], [ -12, %entry.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_align32(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @igt_align_pot(i32 noundef 32)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_align64(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @igt_align_pot(i32 noundef 64)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_evict(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %scan.i191 = alloca %struct.drm_mm_scan, align 8
  %evict_list.i192 = alloca %struct.list_head, align 4
  %scan.i = alloca %struct.drm_mm_scan, align 8
  %evict_list.i = alloca %struct.list_head, align 4
  %prng = alloca %struct.rnd_state, align 4
  %state__ = alloca %struct.rnd_state, align 4
  %mm = alloca %struct.drm_mm, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prng) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state__) #11
  %0 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 3
  %3 = load i32, ptr @random_seed, align 4
  %shl.i = shl i32 %3, 10
  %xor1.i = xor i32 %shl.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor1.i)
  %cmp.i.i = icmp ult i32 %xor1.i, 2
  %add.i.i = select i1 %cmp.i.i, i32 2, i32 0
  %cond.i.i = add i32 %add.i.i, %xor1.i
  %4 = ptrtoint ptr %state__ to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i.i, ptr %state__, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %xor1.i)
  %cmp.i15.i = icmp ult i32 %xor1.i, 8
  %add.i16.i = select i1 %cmp.i15.i, i32 8, i32 0
  %cond.i17.i = add i32 %add.i16.i, %xor1.i
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i17.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %xor1.i)
  %cmp.i18.i = icmp ult i32 %xor1.i, 16
  %add.i19.i = select i1 %cmp.i18.i, i32 16, i32 0
  %cond.i20.i = add i32 %add.i19.i, %xor1.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i20.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %xor1.i)
  %cmp.i21.i = icmp ult i32 %xor1.i, 128
  %add.i22.i = select i1 %cmp.i21.i, i32 128, i32 0
  %cond.i23.i = add i32 %add.i22.i, %xor1.i
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i23.i, ptr %2, align 4
  %8 = ptrtoint ptr %state__ to i32
  %9 = call i32 @llvm.read_register.i32(metadata !666) #11
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
  %add.i24.i = add i32 %14, ptrtoint (ptr @net_rand_noise to i32)
  %15 = inttoptr i32 %add.i24.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %xor.i.i = xor i32 %17, %8
  %add8.i.i = add i32 %xor.i.i, %xor1.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #11
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i1.i.i, ptr %15, align 4
  %19 = call ptr @memcpy(ptr %prng, ptr %state__, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state__) #11
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %20 = call ptr @memset(ptr %mm, i32 255, i32 152)
  %call1 = call noalias ptr @vzalloc(i32 noundef 983040) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup128_crit_edge, label %if.end

entry.cleanup128_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup128

if.end:                                           ; preds = %entry
  %call2 = call ptr @drm_random_order(i32 noundef 8192, ptr noundef nonnull %prng) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_nodes_crit_edge, label %if.end5

if.end.err_nodes_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_nodes

if.end5:                                          ; preds = %if.end
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef 8192) #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %n.0243 = phi i32 [ 0, %if.end5 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.evict_node, ptr %call1, i32 %n.0243
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx, i64 noundef 1, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %n.0243) #14
  br label %out

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %n.0243, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %scan.i) #11
  %21 = call ptr @memset(ptr %scan.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %evict_list.i) #11
  %22 = getelementptr inbounds %struct.list_head, ptr %evict_list.i, i32 0, i32 1
  %23 = ptrtoint ptr %evict_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %evict_list.i, ptr %evict_list.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %evict_list.i, ptr %22, align 4
  call void @drm_mm_scan_init_with_range(ptr noundef nonnull %scan.i, ptr noundef nonnull %mm, i64 noundef 1, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #11
  br label %for.body.i

for.cond3.preheader.i:                            ; preds = %list_add.exit.i
  %25 = ptrtoint ptr %evict_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn6.i = load ptr, ptr %evict_list.i, align 4
  %cmp5.not7.i = icmp eq ptr %.pn6.i, %evict_list.i
  br i1 %cmp5.not7.i, label %for.cond3.preheader.i.for.body18.i.preheader_crit_edge, label %for.cond3.preheader.i.for.body6.i_crit_edge

for.cond3.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body6.i

for.cond3.preheader.i.for.body18.i.preheader_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18.i.preheader

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %for.end
  %n.04.i = phi i32 [ 0, %for.end ], [ %inc.i, %list_add.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.evict_node, ptr %call1, i32 %n.04.i
  %link.i = getelementptr %struct.evict_node, ptr %call1, i32 %n.04.i, i32 1
  %26 = ptrtoint ptr %evict_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %evict_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef nonnull %evict_list.i, ptr noundef %27) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add.exit.i_crit_edge

for.body.i.list_add.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %link.i, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %link.i, align 4
  %prev3.i.i.i = getelementptr %struct.evict_node, ptr %call1, i32 %n.04.i, i32 1, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %evict_list.i, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %evict_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %link.i, ptr %evict_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_add.exit.i_crit_edge
  %call.i = call zeroext i1 @drm_mm_scan_add_block(ptr noundef nonnull %scan.i, ptr noundef %arrayidx.i) #11
  %inc.i = add nuw nsw i32 %n.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8192
  br i1 %exitcond.not.i, label %for.cond3.preheader.i, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.cond3.preheader.i.for.body6.i_crit_edge
  %.pn8.i = phi ptr [ %.pn.i, %for.body6.i.for.body6.i_crit_edge ], [ %.pn6.i, %for.cond3.preheader.i.for.body6.i_crit_edge ]
  %e.0.i = getelementptr i8, ptr %.pn8.i, i32 -112
  %call8.i = call zeroext i1 @drm_mm_scan_remove_block(ptr noundef nonnull %scan.i, ptr noundef %e.0.i) #11
  %32 = ptrtoint ptr %.pn8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i = load ptr, ptr %.pn8.i, align 4
  %cmp5.not.i = icmp eq ptr %.pn.i, %evict_list.i
  br i1 %cmp5.not.i, label %for.body6.i.for.body18.i.preheader_crit_edge, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6.i

for.body6.i.for.body18.i.preheader_crit_edge:     ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18.i.preheader

for.body18.i.preheader:                           ; preds = %for.body6.i.for.body18.i.preheader_crit_edge, %for.cond3.preheader.i.for.body18.i.preheader_crit_edge
  br label %for.body18.i

for.body18.i:                                     ; preds = %if.end.i.for.body18.i_crit_edge, %for.body18.i.preheader
  %n.19.i = phi i32 [ %inc27.i, %if.end.i.for.body18.i_crit_edge ], [ 0, %for.body18.i.preheader ]
  %flags.i.i = getelementptr %struct.evict_node, ptr %call1, i32 %n.19.i, i32 0, i32 12
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, i32 noundef %n.19.i) #14
  br label %evict_nothing.exit.thread

if.end.i:                                         ; preds = %for.body18.i
  %link24.i = getelementptr %struct.evict_node, ptr %call1, i32 %n.19.i, i32 1
  %35 = ptrtoint ptr %link24.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %link24.i, align 8
  %inc27.i = add nuw nsw i32 %n.19.i, 1
  %exitcond16.not.i = icmp eq i32 %inc27.i, 8192
  br i1 %exitcond16.not.i, label %for.end28.i, label %if.end.i.for.body18.i_crit_edge

if.end.i.for.body18.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18.i

for.end28.i:                                      ; preds = %if.end.i
  %node_list.i = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn110.i = load ptr, ptr %node_list.i, align 4
  %cmp37.not11.i = icmp eq ptr %.pn110.i, %node_list.i
  br i1 %cmp37.not11.i, label %for.end28.i.for.body55.i.preheader_crit_edge, label %for.end28.i.for.body39.i_crit_edge

for.end28.i.for.body39.i_crit_edge:               ; preds = %for.end28.i
  br label %for.body39.i

for.end28.i.for.body55.i.preheader_crit_edge:     ; preds = %for.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55.i.preheader

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %for.end28.i.for.body39.i_crit_edge
  %.pn112.i = phi ptr [ %.pn1.i, %for.body39.i.for.body39.i_crit_edge ], [ %.pn110.i, %for.end28.i.for.body39.i_crit_edge ]
  %link43.i = getelementptr i8, ptr %.pn112.i, i32 84
  %37 = ptrtoint ptr %link43.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %link43.i, ptr %link43.i, align 8
  %38 = ptrtoint ptr %.pn112.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn1.i = load ptr, ptr %.pn112.i, align 4
  %cmp37.not.i = icmp eq ptr %.pn1.i, %node_list.i
  br i1 %cmp37.not.i, label %for.body39.i.for.body55.i.preheader_crit_edge, label %for.body39.i.for.body39.i_crit_edge

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body39.i

for.body39.i.for.body55.i.preheader_crit_edge:    ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55.i.preheader

for.body55.i.preheader:                           ; preds = %for.body39.i.for.body55.i.preheader_crit_edge, %for.end28.i.for.body55.i.preheader_crit_edge
  br label %for.body55.i

for.body55.i:                                     ; preds = %for.inc66.i.for.body55.i_crit_edge, %for.body55.i.preheader
  %n.213.i = phi i32 [ %inc67.i, %for.inc66.i.for.body55.i_crit_edge ], [ 0, %for.body55.i.preheader ]
  %link57.i = getelementptr %struct.evict_node, ptr %call1, i32 %n.213.i, i32 1
  %39 = ptrtoint ptr %link57.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link57.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %do.end62.i, label %for.inc66.i

do.end62.i:                                       ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #13
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, i32 noundef %n.213.i) #14
  br label %evict_nothing.exit.thread

for.inc66.i:                                      ; preds = %for.body55.i
  %inc67.i = add nuw nsw i32 %n.213.i, 1
  %exitcond17.not.i = icmp eq i32 %inc67.i, 8192
  br i1 %exitcond17.not.i, label %evict_nothing.exit, label %for.inc66.i.for.body55.i_crit_edge

for.inc66.i.for.body55.i_crit_edge:               ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55.i

evict_nothing.exit.thread:                        ; preds = %do.end62.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %evict_list.i) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %scan.i) #11
  br label %do.end17

evict_nothing.exit:                               ; preds = %for.inc66.i
  %size.i = getelementptr inbounds %struct.drm_mm_node, ptr %call1, i32 0, i32 2
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %size.i, align 8
  %call71.i = call fastcc zeroext i1 @assert_continuous(ptr noundef nonnull %mm, i64 noundef %42) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %evict_list.i) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %scan.i) #11
  br i1 %call71.i, label %if.end20, label %evict_nothing.exit.do.end17_crit_edge

evict_nothing.exit.do.end17_crit_edge:            ; preds = %evict_nothing.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.end17:                                         ; preds = %evict_nothing.exit.do.end17_crit_edge, %evict_nothing.exit.thread
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190) #14
  br label %out

if.end20:                                         ; preds = %evict_nothing.exit
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %scan.i191) #11
  %43 = call ptr @memset(ptr %scan.i191, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %evict_list.i192) #11
  %44 = getelementptr inbounds %struct.list_head, ptr %evict_list.i192, i32 0, i32 1
  %45 = ptrtoint ptr %evict_list.i192 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %evict_list.i192, ptr %evict_list.i192, align 4
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %evict_list.i192, ptr %44, align 4
  call void @drm_mm_scan_init_with_range(ptr noundef nonnull %scan.i191, ptr noundef nonnull %mm, i64 noundef 8192, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #11
  br label %for.body.i196

for.body.i196:                                    ; preds = %list_add.exit.i203.for.body.i196_crit_edge, %if.end20
  %n.06.i = phi i32 [ 0, %if.end20 ], [ %inc.i201, %list_add.exit.i203.for.body.i196_crit_edge ]
  %arrayidx.i193 = getelementptr %struct.evict_node, ptr %call1, i32 %n.06.i
  %link.i194 = getelementptr %struct.evict_node, ptr %call1, i32 %n.06.i, i32 1
  %47 = ptrtoint ptr %evict_list.i192 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %evict_list.i192, align 4
  %call.i.i.i195 = call zeroext i1 @__list_add_valid(ptr noundef %link.i194, ptr noundef nonnull %evict_list.i192, ptr noundef %48) #11
  br i1 %call.i.i.i195, label %if.end.i.i.i199, label %for.body.i196.list_add.exit.i203_crit_edge

for.body.i196.list_add.exit.i203_crit_edge:       ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i203

if.end.i.i.i199:                                  ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i197 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i197 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %link.i194, ptr %prev1.i.i.i197, align 4
  %50 = ptrtoint ptr %link.i194 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %link.i194, align 4
  %prev3.i.i.i198 = getelementptr %struct.evict_node, ptr %call1, i32 %n.06.i, i32 1, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i198 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %evict_list.i192, ptr %prev3.i.i.i198, align 4
  %52 = ptrtoint ptr %evict_list.i192 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %link.i194, ptr %evict_list.i192, align 4
  br label %list_add.exit.i203

list_add.exit.i203:                               ; preds = %if.end.i.i.i199, %for.body.i196.list_add.exit.i203_crit_edge
  %call.i200 = call zeroext i1 @drm_mm_scan_add_block(ptr noundef nonnull %scan.i191, ptr noundef %arrayidx.i193) #11
  %inc.i201 = add nuw nsw i32 %n.06.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %inc.i201)
  %exitcond.not.i202 = icmp eq i32 %inc.i201, 8192
  %or.cond21.i = select i1 %call.i200, i1 true, i1 %exitcond.not.i202
  br i1 %or.cond21.i, label %for.end.i, label %list_add.exit.i203.for.body.i196_crit_edge

list_add.exit.i203.for.body.i196_crit_edge:       ; preds = %list_add.exit.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i196

for.end.i:                                        ; preds = %list_add.exit.i203
  %53 = ptrtoint ptr %evict_list.i192 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn8.i204 = load ptr, ptr %evict_list.i192, align 4
  %cmp5.not9.i = icmp eq ptr %.pn8.i204, %evict_list.i192
  br i1 %cmp5.not9.i, label %for.end.i.for.cond31.preheader.i_crit_edge, label %for.end.i.for.body7.i.outer_crit_edge

for.end.i.for.body7.i.outer_crit_edge:            ; preds = %for.end.i
  br label %for.body7.i.outer

for.end.i.for.cond31.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond31.preheader.i

for.body7.i.outer:                                ; preds = %for.inc17.i.thread.for.body7.i.outer_crit_edge, %for.end.i.for.body7.i.outer_crit_edge
  %.pn11.i.ph = phi ptr [ %.pn.i208218, %for.inc17.i.thread.for.body7.i.outer_crit_edge ], [ %.pn8.i204, %for.end.i.for.body7.i.outer_crit_edge ]
  %tobool.not.i206 = phi i1 [ false, %for.inc17.i.thread.for.body7.i.outer_crit_edge ], [ true, %for.end.i.for.body7.i.outer_crit_edge ]
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc17.i.for.body7.i_crit_edge, %for.body7.i.outer
  %.pn11.i = phi ptr [ %.pn.i208, %for.inc17.i.for.body7.i_crit_edge ], [ %.pn11.i.ph, %for.body7.i.outer ]
  %e.0.i205 = getelementptr i8, ptr %.pn11.i, i32 -112
  %call9.i = call zeroext i1 @drm_mm_scan_remove_block(ptr noundef nonnull %scan.i191, ptr noundef %e.0.i205) #11
  %call9.not.i = xor i1 %call9.i, true
  %or.cond.i = and i1 %tobool.not.i206, %call9.not.i
  br i1 %or.cond.i, label %for.inc17.i.thread, label %for.inc17.i

for.inc17.i:                                      ; preds = %for.body7.i
  %54 = ptrtoint ptr %.pn11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i208 = load ptr, ptr %.pn11.i, align 4
  %cmp5.not.i209 = icmp eq ptr %.pn.i208, %evict_list.i192
  br i1 %cmp5.not.i209, label %for.end23.i, label %for.inc17.i.for.body7.i_crit_edge

for.inc17.i.for.body7.i_crit_edge:                ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7.i

for.inc17.i.thread:                               ; preds = %for.body7.i
  %start.i = getelementptr i8, ptr %.pn11.i, i32 -104
  %55 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %start.i, align 8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, i64 noundef %56) #14
  %57 = ptrtoint ptr %.pn11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i208218 = load ptr, ptr %.pn11.i, align 4
  %cmp5.not.i209219 = icmp eq ptr %.pn.i208218, %evict_list.i192
  br i1 %cmp5.not.i209219, label %for.inc17.i.thread.evict_everything.exit.thread_crit_edge, label %for.inc17.i.thread.for.body7.i.outer_crit_edge

for.inc17.i.thread.for.body7.i.outer_crit_edge:   ; preds = %for.inc17.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7.i.outer

for.inc17.i.thread.evict_everything.exit.thread_crit_edge: ; preds = %for.inc17.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %evict_everything.exit.thread

for.end23.i:                                      ; preds = %for.inc17.i
  br i1 %tobool.not.i206, label %for.end23.i.for.cond31.preheader.i_crit_edge, label %for.end23.i.evict_everything.exit.thread_crit_edge

for.end23.i.evict_everything.exit.thread_crit_edge: ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evict_everything.exit.thread

for.end23.i.for.cond31.preheader.i_crit_edge:     ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond31.preheader.i

for.cond31.preheader.i:                           ; preds = %for.end23.i.for.cond31.preheader.i_crit_edge, %for.end.i.for.cond31.preheader.i_crit_edge
  %58 = ptrtoint ptr %evict_list.i192 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn112.i210 = load ptr, ptr %evict_list.i192, align 4
  %cmp33.not13.i = icmp eq ptr %.pn112.i210, %evict_list.i192
  br i1 %cmp33.not13.i, label %for.cond31.preheader.i.for.end44.i_crit_edge, label %for.cond31.preheader.i.for.body36.i_crit_edge

for.cond31.preheader.i.for.body36.i_crit_edge:    ; preds = %for.cond31.preheader.i
  br label %for.body36.i

for.cond31.preheader.i.for.end44.i_crit_edge:     ; preds = %for.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end44.i

for.body36.i:                                     ; preds = %for.body36.i.for.body36.i_crit_edge, %for.cond31.preheader.i.for.body36.i_crit_edge
  %.pn114.i = phi ptr [ %.pn1.i211, %for.body36.i.for.body36.i_crit_edge ], [ %.pn112.i210, %for.cond31.preheader.i.for.body36.i_crit_edge ]
  %e.1.i = getelementptr i8, ptr %.pn114.i, i32 -112
  call void @drm_mm_remove_node(ptr noundef %e.1.i) #11
  %59 = ptrtoint ptr %.pn114.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn1.i211 = load ptr, ptr %.pn114.i, align 4
  %cmp33.not.i = icmp eq ptr %.pn1.i211, %evict_list.i192
  br i1 %cmp33.not.i, label %for.body36.i.for.end44.i_crit_edge, label %for.body36.i.for.body36.i_crit_edge

for.body36.i.for.body36.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body36.i

for.body36.i.for.end44.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end44.i

for.end44.i:                                      ; preds = %for.body36.i.for.end44.i_crit_edge, %for.cond31.preheader.i.for.end44.i_crit_edge
  %hole_stack.i.i = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 1
  %60 = ptrtoint ptr %hole_stack.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn53.i.i = load ptr, ptr %hole_stack.i.i, align 4
  %cmp3.not54.i.i = icmp eq ptr %.pn53.i.i, %hole_stack.i.i
  br i1 %cmp3.not54.i.i, label %for.end44.i.assert_one_hole.exit.thread.i_crit_edge, label %for.end44.i.cond.true.i.i_crit_edge

for.end44.i.cond.true.i.i_crit_edge:              ; preds = %for.end44.i
  br label %cond.true.i.i

for.end44.i.assert_one_hole.exit.thread.i_crit_edge: ; preds = %for.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_one_hole.exit.thread.i

cond.true.i.i:                                    ; preds = %if.end12.i.i.cond.true.i.i_crit_edge, %for.end44.i.cond.true.i.i_crit_edge
  %.pn57.i.i = phi ptr [ %.pn.i.i, %if.end12.i.i.cond.true.i.i_crit_edge ], [ %.pn53.i.i, %for.end44.i.cond.true.i.i_crit_edge ]
  %count.056.i.i = phi i32 [ %inc.i.i, %if.end12.i.i.cond.true.i.i_crit_edge ], [ 0, %for.end44.i.cond.true.i.i_crit_edge ]
  %ok.0.off055.i.i = phi i1 [ %ok.1.off0.i.i, %if.end12.i.i.cond.true.i.i_crit_edge ], [ true, %for.end44.i.cond.true.i.i_crit_edge ]
  %hole_size.i.i.i.i = getelementptr i8, ptr %.pn57.i.i, i32 52
  %61 = ptrtoint ptr %hole_size.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %hole_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %tobool.i.not.i.i.i = icmp eq i64 %62, 0
  br i1 %tobool.i.not.i.i.i, label %do.body3.i.i.i, label %for.body.i.i, !prof !676

do.body3.i.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/drm/drm_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 316, 0\0A.popsection", ""() #11, !srcloc !677
  unreachable

for.body.i.i:                                     ; preds = %cond.true.i.i
  %start.i.i.i.i = getelementptr i8, ptr %.pn57.i.i, i32 -28
  %63 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %start.i.i.i.i, align 8
  %size.i.i.i.i = getelementptr i8, ptr %.pn57.i.i, i32 -20
  %65 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %size.i.i.i.i, align 8
  %add.i.i.i.i = add i64 %66, %64
  %add.i.i212 = add i64 %add.i.i.i.i, %62
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i.i.i)
  %cmp4.not.i.i = icmp eq i64 %add.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %add.i.i212)
  %cmp5.not.i.i = icmp eq i64 %add.i.i212, 8192
  %or.cond.i.i = select i1 %cmp4.not.i.i, i1 %cmp5.not.i.i, i1 false
  %ok.0.off0.not.i.i = xor i1 %ok.0.off055.i.i, true
  %brmerge.i.i = select i1 %or.cond.i.i, i1 true, i1 %ok.0.off0.not.i.i
  %ok.0.off0.mux.i.i = select i1 %or.cond.i.i, i1 %ok.0.off055.i.i, i1 false
  br i1 %brmerge.i.i, label %for.body.i.i.if.end12.i.i_crit_edge, label %do.end.i.i

for.body.i.i.if.end12.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %add.i.i.i.i, i64 noundef %add.i.i212, i64 noundef 0, i64 noundef 8192) #14
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %do.end.i.i, %for.body.i.i.if.end12.i.i_crit_edge
  %ok.1.off0.i.i = phi i1 [ %ok.0.off0.mux.i.i, %for.body.i.i.if.end12.i.i_crit_edge ], [ false, %do.end.i.i ]
  %inc.i.i = add i32 %count.056.i.i, 1
  %67 = ptrtoint ptr %.pn57.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.i.i = load ptr, ptr %.pn57.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %.pn.i.i, %hole_stack.i.i
  br i1 %cmp3.not.i.i, label %for.end.i.i, label %if.end12.i.i.cond.true.i.i_crit_edge

if.end12.i.i.cond.true.i.i_crit_edge:             ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true.i.i

for.end.i.i:                                      ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.056.i.i)
  %cmp18.not.i.i = icmp eq i32 %count.056.i.i, 0
  br i1 %cmp18.not.i.i, label %assert_one_hole.exit.i, label %for.end.i.i.assert_one_hole.exit.thread.i_crit_edge

for.end.i.i.assert_one_hole.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_one_hole.exit.thread.i

assert_one_hole.exit.thread.i:                    ; preds = %for.end.i.i.assert_one_hole.exit.thread.i_crit_edge, %for.end44.i.assert_one_hole.exit.thread.i_crit_edge
  %count.0.lcssa62.i.i = phi i32 [ %inc.i.i, %for.end.i.i.assert_one_hole.exit.thread.i_crit_edge ], [ 0, %for.end44.i.assert_one_hole.exit.thread.i_crit_edge ]
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %count.0.lcssa62.i.i) #14
  br label %evict_everything.exit.thread

assert_one_hole.exit.i:                           ; preds = %for.end.i.i
  br i1 %ok.1.off0.i.i, label %assert_one_hole.exit.i.for.cond53.i_crit_edge, label %assert_one_hole.exit.i.evict_everything.exit.thread_crit_edge

assert_one_hole.exit.i.evict_everything.exit.thread_crit_edge: ; preds = %assert_one_hole.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evict_everything.exit.thread

assert_one_hole.exit.i.for.cond53.i_crit_edge:    ; preds = %assert_one_hole.exit.i
  br label %for.cond53.i

for.cond53.i:                                     ; preds = %for.body58.i.for.cond53.i_crit_edge, %assert_one_hole.exit.i.for.cond53.i_crit_edge
  %.pn2.in.i = phi ptr [ %.pn2.i, %for.body58.i.for.cond53.i_crit_edge ], [ %evict_list.i192, %assert_one_hole.exit.i.for.cond53.i_crit_edge ]
  %68 = ptrtoint ptr %.pn2.in.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn2.i = load ptr, ptr %.pn2.in.i, align 4
  %cmp55.not.i = icmp eq ptr %.pn2.i, %evict_list.i192
  br i1 %cmp55.not.i, label %evict_everything.exit, label %for.body58.i

for.body58.i:                                     ; preds = %for.cond53.i
  %e.2.i = getelementptr i8, ptr %.pn2.i, i32 -112
  %call60.i = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef %e.2.i) #11
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %for.body58.i.for.cond53.i_crit_edge, label %do.end65.i

for.body58.i.for.cond53.i_crit_edge:              ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond53.i

do.end65.i:                                       ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #13
  %start68.i = getelementptr i8, ptr %.pn2.i, i32 -104
  %69 = ptrtoint ptr %start68.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %start68.i, align 8
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i64 noundef %70) #14
  br label %evict_everything.exit.thread

evict_everything.exit.thread:                     ; preds = %do.end65.i, %assert_one_hole.exit.i.evict_everything.exit.thread_crit_edge, %assert_one_hole.exit.thread.i, %for.end23.i.evict_everything.exit.thread_crit_edge, %for.inc17.i.thread.evict_everything.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %evict_list.i192) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %scan.i191) #11
  br label %do.end25

evict_everything.exit:                            ; preds = %for.cond53.i
  %71 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %size.i, align 8
  %call80.i = call fastcc zeroext i1 @assert_continuous(ptr noundef nonnull %mm, i64 noundef %72) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %evict_list.i192) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %scan.i191) #11
  br i1 %call80.i, label %evict_everything.exit.for.cond32.preheader_crit_edge, label %evict_everything.exit.do.end25_crit_edge

evict_everything.exit.do.end25_crit_edge:         ; preds = %evict_everything.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

evict_everything.exit.for.cond32.preheader_crit_edge: ; preds = %evict_everything.exit
  br label %for.cond32.preheader

do.end25:                                         ; preds = %evict_everything.exit.do.end25_crit_edge, %evict_everything.exit.thread
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193) #14
  br label %out

for.cond32.preheader:                             ; preds = %for.end99.for.cond32.preheader_crit_edge, %evict_everything.exit.for.cond32.preheader_crit_edge
  %mode.0248 = phi ptr [ %incdec.ptr, %for.end99.for.cond32.preheader_crit_edge ], [ @evict_modes, %evict_everything.exit.for.cond32.preheader_crit_edge ]
  br label %for.body35

for.body35:                                       ; preds = %for.inc46.for.body35_crit_edge, %for.cond32.preheader
  %n.1244 = phi i32 [ 1, %for.cond32.preheader ], [ %shl, %for.inc46.for.body35_crit_edge ]
  call void @drm_random_reorder(ptr noundef nonnull %call2, i32 noundef 8192, ptr noundef nonnull %prng) #11
  %call36 = call fastcc i32 @evict_something(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef -1, ptr noundef nonnull %call1, ptr noundef nonnull %call2, i32 noundef %n.1244, i32 noundef 1, ptr noundef %mode.0248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.inc46, label %do.end41

do.end41:                                         ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %mode.0248 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mode.0248, align 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %74, i32 noundef %n.1244) #14
  br label %out

for.inc46:                                        ; preds = %for.body35
  %shl = shl nuw nsw i32 %n.1244, 1
  %cmp33 = icmp ult i32 %n.1244, 4097
  br i1 %cmp33, label %for.inc46.for.body35_crit_edge, label %for.inc46.for.body51_crit_edge

for.inc46.for.body51_crit_edge:                   ; preds = %for.inc46
  br label %for.body51

for.inc46.for.body35_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body35

for.cond65.preheader:                             ; preds = %for.inc62
  %75 = load i32, ptr @max_prime, align 4
  %76 = call i32 @llvm.umin.i32(i32 %75, i32 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp69.not246 = icmp eq i32 %76, 0
  br i1 %cmp69.not246, label %for.cond65.preheader.for.end99_crit_edge, label %for.cond65.preheader.for.body71_crit_edge

for.cond65.preheader.for.body71_crit_edge:        ; preds = %for.cond65.preheader
  br label %for.body71

for.cond65.preheader.for.end99_crit_edge:         ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end99

for.body51:                                       ; preds = %for.inc62.for.body51_crit_edge, %for.inc46.for.body51_crit_edge
  %n.2245 = phi i32 [ %shl63, %for.inc62.for.body51_crit_edge ], [ 1, %for.inc46.for.body51_crit_edge ]
  call void @drm_random_reorder(ptr noundef nonnull %call2, i32 noundef 8192, ptr noundef nonnull %prng) #11
  %call52 = call fastcc i32 @evict_something(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef -1, ptr noundef nonnull %call1, ptr noundef nonnull %call2, i32 noundef 4096, i32 noundef %n.2245, ptr noundef %mode.0248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.inc62, label %do.end57

do.end57:                                         ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %mode.0248 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mode.0248, align 4
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %78, i32 noundef 4096, i32 noundef %n.2245) #14
  br label %out

for.inc62:                                        ; preds = %for.body51
  %shl63 = shl nuw nsw i32 %n.2245, 1
  %cmp49 = icmp ult i32 %n.2245, 4096
  br i1 %cmp49, label %for.inc62.for.body51_crit_edge, label %for.cond65.preheader

for.inc62.for.body51_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body51

for.body71:                                       ; preds = %for.inc97.for.body71_crit_edge, %for.cond65.preheader.for.body71_crit_edge
  %n.3247 = phi i32 [ %call98, %for.inc97.for.body71_crit_edge ], [ 1, %for.cond65.preheader.for.body71_crit_edge ]
  %add = sub i32 8193, %n.3247
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %tobool73.not = icmp ult i32 %add, 2
  br i1 %tobool73.not, label %do.body78, label %do.end86, !prof !676

do.body78:                                        ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1598, 0\0A.popsection", ""() #11, !srcloc !687
  unreachable

do.end86:                                         ; preds = %for.body71
  %div189 = lshr i32 %add, 1
  call void @drm_random_reorder(ptr noundef nonnull %call2, i32 noundef 8192, ptr noundef nonnull %prng) #11
  %call87 = call fastcc i32 @evict_something(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef -1, ptr noundef nonnull %call1, ptr noundef nonnull %call2, i32 noundef %div189, i32 noundef %n.3247, ptr noundef %mode.0248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %for.inc97, label %cleanup

cleanup:                                          ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %mode.0248 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mode.0248, align 4
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %80, i32 noundef %div189, i32 noundef %n.3247) #14
  br label %out

for.inc97:                                        ; preds = %do.end86
  %call98 = call i32 @next_prime_number(i32 noundef %n.3247) #11
  %81 = load i32, ptr @max_prime, align 4
  %82 = call i32 @llvm.umin.i32(i32 %81, i32 8192)
  %cmp69.not = icmp ugt i32 %call98, %82
  br i1 %cmp69.not, label %for.inc97.for.end99_crit_edge, label %for.inc97.for.body71_crit_edge

for.inc97.for.body71_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body71

for.inc97.for.end99_crit_edge:                    ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end99

for.end99:                                        ; preds = %for.inc97.for.end99_crit_edge, %for.cond65.preheader.for.end99_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 1613, i32 noundef 0) #11
  %call.i215 = call i32 @__cond_resched() #11
  %incdec.ptr = getelementptr %struct.insert_mode, ptr %mode.0248, i32 1
  %83 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %incdec.ptr, align 4
  %tobool30.not = icmp eq ptr %84, null
  br i1 %tobool30.not, label %for.end99.out_crit_edge, label %for.end99.for.cond32.preheader_crit_edge

for.end99.for.cond32.preheader_crit_edge:         ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond32.preheader

for.end99.out_crit_edge:                          ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.end99.out_crit_edge, %cleanup, %do.end57, %do.end41, %do.end25, %do.end17, %do.end
  %ret.3 = phi i32 [ %call.i.i, %do.end ], [ %call36, %do.end41 ], [ %call52, %do.end57 ], [ %call87, %cleanup ], [ -22, %do.end25 ], [ -22, %do.end17 ], [ 0, %for.end99.out_crit_edge ]
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %85 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %node_list, align 4
  %cmp115.not250 = icmp eq ptr %86, %node_list
  br i1 %cmp115.not250, label %out.for.end126_crit_edge, label %out.for.body119_crit_edge

out.for.body119_crit_edge:                        ; preds = %out
  br label %for.body119

out.for.end126_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end126

for.body119:                                      ; preds = %for.body119.for.body119_crit_edge, %out.for.body119_crit_edge
  %.pn.in251 = phi ptr [ %.pn, %for.body119.for.body119_crit_edge ], [ %86, %out.for.body119_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn.in251, i32 -28
  %87 = ptrtoint ptr %.pn.in251 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn = load ptr, ptr %.pn.in251, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp115.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp115.not, label %for.body119.for.end126_crit_edge, label %for.body119.for.body119_crit_edge

for.body119.for.body119_crit_edge:                ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body119

for.body119.for.end126_crit_edge:                 ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end126

for.end126:                                       ; preds = %for.body119.for.end126_crit_edge, %out.for.end126_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @kfree(ptr noundef nonnull %call2) #11
  br label %err_nodes

err_nodes:                                        ; preds = %for.end126, %if.end.err_nodes_crit_edge
  %ret.4 = phi i32 [ %ret.3, %for.end126 ], [ -12, %if.end.err_nodes_crit_edge ]
  call void @vfree(ptr noundef nonnull %call1) #11
  br label %cleanup128

cleanup128:                                       ; preds = %err_nodes, %entry.cleanup128_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_nodes ], [ -12, %entry.cleanup128_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prng) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_evict_range(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %prng = alloca %struct.rnd_state, align 4
  %state__ = alloca %struct.rnd_state, align 4
  %mm = alloca %struct.drm_mm, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prng) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state__) #11
  %0 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 3
  %3 = load i32, ptr @random_seed, align 4
  %shl.i = shl i32 %3, 10
  %xor1.i = xor i32 %shl.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor1.i)
  %cmp.i.i = icmp ult i32 %xor1.i, 2
  %add.i.i = select i1 %cmp.i.i, i32 2, i32 0
  %cond.i.i = add i32 %add.i.i, %xor1.i
  %4 = ptrtoint ptr %state__ to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i.i, ptr %state__, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %xor1.i)
  %cmp.i15.i = icmp ult i32 %xor1.i, 8
  %add.i16.i = select i1 %cmp.i15.i, i32 8, i32 0
  %cond.i17.i = add i32 %add.i16.i, %xor1.i
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i17.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %xor1.i)
  %cmp.i18.i = icmp ult i32 %xor1.i, 16
  %add.i19.i = select i1 %cmp.i18.i, i32 16, i32 0
  %cond.i20.i = add i32 %add.i19.i, %xor1.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i20.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %xor1.i)
  %cmp.i21.i = icmp ult i32 %xor1.i, 128
  %add.i22.i = select i1 %cmp.i21.i, i32 128, i32 0
  %cond.i23.i = add i32 %add.i22.i, %xor1.i
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i23.i, ptr %2, align 4
  %8 = ptrtoint ptr %state__ to i32
  %9 = call i32 @llvm.read_register.i32(metadata !666) #11
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
  %add.i24.i = add i32 %14, ptrtoint (ptr @net_rand_noise to i32)
  %15 = inttoptr i32 %add.i24.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %xor.i.i = xor i32 %17, %8
  %add8.i.i = add i32 %xor.i.i, %xor1.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #11
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i1.i.i, ptr %15, align 4
  %19 = call ptr @memcpy(ptr %prng, ptr %state__, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state__) #11
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %20 = call ptr @memset(ptr %mm, i32 255, i32 152)
  %call1 = call noalias ptr @vzalloc(i32 noundef 983040) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup112_crit_edge, label %if.end

entry.cleanup112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

if.end:                                           ; preds = %entry
  %call2 = call ptr @drm_random_order(i32 noundef 8192, ptr noundef nonnull %prng) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_nodes_crit_edge, label %if.end5

if.end.err_nodes_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_nodes

if.end5:                                          ; preds = %if.end
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef 8192) #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %n.0184 = phi i32 [ 0, %if.end5 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.evict_node, ptr %call1, i32 %n.0184
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx, i64 noundef 1, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %n.0184) #14
  br label %out

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %n.0184, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %for.inc.for.cond16.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.cond16.preheader_crit_edge:           ; preds = %for.inc
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.end83.for.cond16.preheader_crit_edge, %for.inc.for.cond16.preheader_crit_edge
  %mode.0189 = phi ptr [ %incdec.ptr, %for.end83.for.cond16.preheader_crit_edge ], [ @evict_modes, %for.inc.for.cond16.preheader_crit_edge ]
  br label %for.body19

for.body19:                                       ; preds = %for.inc30.for.body19_crit_edge, %for.cond16.preheader
  %n.1185 = phi i32 [ 1, %for.cond16.preheader ], [ %shl, %for.inc30.for.body19_crit_edge ]
  call void @drm_random_reorder(ptr noundef nonnull %call2, i32 noundef 8192, ptr noundef nonnull %prng) #11
  %call20 = call fastcc i32 @evict_something(ptr noundef nonnull %mm, i64 noundef 2048, i64 noundef 6144, ptr noundef nonnull %call1, ptr noundef nonnull %call2, i32 noundef %n.1185, i32 noundef 1, ptr noundef %mode.0189)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.inc30, label %do.end25

do.end25:                                         ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %mode.0189 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mode.0189, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef %22, i32 noundef %n.1185, i32 noundef 2048, i32 noundef 6144) #14
  br label %out

for.inc30:                                        ; preds = %for.body19
  %shl = shl nuw nsw i32 %n.1185, 1
  %cmp17 = icmp ult i32 %n.1185, 2049
  br i1 %cmp17, label %for.inc30.for.body19_crit_edge, label %for.inc30.for.body35_crit_edge

for.inc30.for.body35_crit_edge:                   ; preds = %for.inc30
  br label %for.body35

for.inc30.for.body19_crit_edge:                   ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

for.cond49.preheader:                             ; preds = %for.inc46
  %23 = load i32, ptr @max_prime, align 4
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp53.not187 = icmp eq i32 %24, 0
  br i1 %cmp53.not187, label %for.cond49.preheader.for.end83_crit_edge, label %for.cond49.preheader.for.body55_crit_edge

for.cond49.preheader.for.body55_crit_edge:        ; preds = %for.cond49.preheader
  br label %for.body55

for.cond49.preheader.for.end83_crit_edge:         ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end83

for.body35:                                       ; preds = %for.inc46.for.body35_crit_edge, %for.inc30.for.body35_crit_edge
  %n.2186 = phi i32 [ %shl47, %for.inc46.for.body35_crit_edge ], [ 1, %for.inc30.for.body35_crit_edge ]
  call void @drm_random_reorder(ptr noundef nonnull %call2, i32 noundef 8192, ptr noundef nonnull %prng) #11
  %call36 = call fastcc i32 @evict_something(ptr noundef nonnull %mm, i64 noundef 2048, i64 noundef 6144, ptr noundef nonnull %call1, ptr noundef nonnull %call2, i32 noundef 2048, i32 noundef %n.2186, ptr noundef %mode.0189)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.inc46, label %do.end41

do.end41:                                         ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %mode.0189 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mode.0189, align 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef %26, i32 noundef 2048, i32 noundef %n.2186, i32 noundef 2048, i32 noundef 6144) #14
  br label %out

for.inc46:                                        ; preds = %for.body35
  %shl47 = shl nuw nsw i32 %n.2186, 1
  %cmp33 = icmp ult i32 %n.2186, 2049
  br i1 %cmp33, label %for.inc46.for.body35_crit_edge, label %for.cond49.preheader

for.inc46.for.body35_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body35

for.body55:                                       ; preds = %for.inc81.for.body55_crit_edge, %for.cond49.preheader.for.body55_crit_edge
  %n.3188 = phi i32 [ %call82, %for.inc81.for.body55_crit_edge ], [ 1, %for.cond49.preheader.for.body55_crit_edge ]
  %add = sub i32 4097, %n.3188
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %tobool57.not = icmp ult i32 %add, 2
  br i1 %tobool57.not, label %do.body62, label %do.end70, !prof !676

do.body62:                                        ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1696, 0\0A.popsection", ""() #11, !srcloc !688
  unreachable

do.end70:                                         ; preds = %for.body55
  %div171 = lshr i32 %add, 1
  call void @drm_random_reorder(ptr noundef nonnull %call2, i32 noundef 8192, ptr noundef nonnull %prng) #11
  %call71 = call fastcc i32 @evict_something(ptr noundef nonnull %mm, i64 noundef 2048, i64 noundef 6144, ptr noundef nonnull %call1, ptr noundef nonnull %call2, i32 noundef %div171, i32 noundef %n.3188, ptr noundef %mode.0189)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %for.inc81, label %cleanup

cleanup:                                          ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %mode.0189 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mode.0189, align 4
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef %28, i32 noundef %div171, i32 noundef %n.3188, i32 noundef 2048, i32 noundef 6144) #14
  br label %out

for.inc81:                                        ; preds = %do.end70
  %call82 = call i32 @next_prime_number(i32 noundef %n.3188) #11
  %29 = load i32, ptr @max_prime, align 4
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 4096)
  %cmp53.not = icmp ugt i32 %call82, %30
  br i1 %cmp53.not, label %for.inc81.for.end83_crit_edge, label %for.inc81.for.body55_crit_edge

for.inc81.for.body55_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55

for.inc81.for.end83_crit_edge:                    ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end83

for.end83:                                        ; preds = %for.inc81.for.end83_crit_edge, %for.cond49.preheader.for.end83_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 1710, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %incdec.ptr = getelementptr %struct.insert_mode, ptr %mode.0189, i32 1
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %incdec.ptr, align 4
  %tobool14.not = icmp eq ptr %32, null
  br i1 %tobool14.not, label %for.end83.out_crit_edge, label %for.end83.for.cond16.preheader_crit_edge

for.end83.for.cond16.preheader_crit_edge:         ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond16.preheader

for.end83.out_crit_edge:                          ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.end83.out_crit_edge, %cleanup, %do.end41, %do.end25, %do.end
  %ret.0 = phi i32 [ %call.i.i, %do.end ], [ -22, %do.end25 ], [ -22, %do.end41 ], [ -22, %cleanup ], [ 0, %for.end83.out_crit_edge ]
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %node_list, align 4
  %cmp99.not191 = icmp eq ptr %34, %node_list
  br i1 %cmp99.not191, label %out.for.end110_crit_edge, label %out.for.body103_crit_edge

out.for.body103_crit_edge:                        ; preds = %out
  br label %for.body103

out.for.end110_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end110

for.body103:                                      ; preds = %for.body103.for.body103_crit_edge, %out.for.body103_crit_edge
  %.pn.in192 = phi ptr [ %.pn, %for.body103.for.body103_crit_edge ], [ %34, %out.for.body103_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn.in192, i32 -28
  %35 = ptrtoint ptr %.pn.in192 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn.in192, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp99.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp99.not, label %for.body103.for.end110_crit_edge, label %for.body103.for.body103_crit_edge

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body103

for.body103.for.end110_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end110

for.end110:                                       ; preds = %for.body103.for.end110_crit_edge, %out.for.end110_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @kfree(ptr noundef nonnull %call2) #11
  br label %err_nodes

err_nodes:                                        ; preds = %for.end110, %if.end.err_nodes_crit_edge
  %ret.1 = phi i32 [ %ret.0, %for.end110 ], [ -12, %if.end.err_nodes_crit_edge ]
  call void @vfree(ptr noundef nonnull %call1) #11
  br label %cleanup112

cleanup112:                                       ; preds = %err_nodes, %entry.cleanup112_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_nodes ], [ -12, %entry.cleanup112_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prng) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_bottomup(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %prng = alloca %struct.rnd_state, align 4
  %state__ = alloca %struct.rnd_state, align 4
  %mm = alloca %struct.drm_mm, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prng) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state__) #11
  %0 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 3
  %3 = load i32, ptr @random_seed, align 4
  %shl.i256 = shl i32 %3, 10
  %xor1.i = xor i32 %shl.i256, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor1.i)
  %cmp.i.i = icmp ult i32 %xor1.i, 2
  %add.i.i = select i1 %cmp.i.i, i32 2, i32 0
  %cond.i.i = add i32 %add.i.i, %xor1.i
  %4 = ptrtoint ptr %state__ to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i.i, ptr %state__, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %xor1.i)
  %cmp.i15.i = icmp ult i32 %xor1.i, 8
  %add.i16.i = select i1 %cmp.i15.i, i32 8, i32 0
  %cond.i17.i = add i32 %add.i16.i, %xor1.i
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i17.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %xor1.i)
  %cmp.i18.i = icmp ult i32 %xor1.i, 16
  %add.i19.i = select i1 %cmp.i18.i, i32 16, i32 0
  %cond.i20.i = add i32 %add.i19.i, %xor1.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i20.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %xor1.i)
  %cmp.i21.i = icmp ult i32 %xor1.i, 128
  %add.i22.i = select i1 %cmp.i21.i, i32 128, i32 0
  %cond.i23.i = add i32 %add.i22.i, %xor1.i
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i23.i, ptr %2, align 4
  %8 = ptrtoint ptr %state__ to i32
  %9 = call i32 @llvm.read_register.i32(metadata !666) #11
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
  %add.i24.i = add i32 %14, ptrtoint (ptr @net_rand_noise to i32)
  %15 = inttoptr i32 %add.i24.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %xor.i.i = xor i32 %17, %8
  %add8.i.i = add i32 %xor.i.i, %xor1.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #11
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i1.i.i, ptr %15, align 4
  %19 = call ptr @memcpy(ptr %prng, ptr %state__, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state__) #11
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %20 = call ptr @memset(ptr %mm, i32 255, i32 152)
  %call1 = call noalias ptr @vzalloc(i32 noundef 917504) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup176_crit_edge, label %if.end

entry.cleanup176_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup176

if.end:                                           ; preds = %entry
  %call2 = call ptr @bitmap_zalloc(i32 noundef 8192, i32 noundef 3264) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_nodes_crit_edge, label %if.end5

if.end.err_nodes_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_nodes

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @drm_random_order(i32 noundef 8192, ptr noundef nonnull %prng) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.err_bitmap_crit_edge, label %for.cond.preheader

if.end5.err_bitmap_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_bitmap

for.cond.preheader:                               ; preds = %if.end5
  %hole_stack.i = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 1
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end144.for.body_crit_edge, %for.cond.preheader
  %size.0404 = phi i32 [ 1, %for.cond.preheader ], [ %shl, %do.end144.for.body_crit_edge ]
  %o.0403 = phi i32 [ 0, %for.cond.preheader ], [ %o.1.lcssa, %do.end144.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %size.0404, 13
  %conv11 = zext i32 %mul to i64
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef %conv11) #11
  %conv16 = zext i32 %size.0404 to i64
  br label %for.body15

for.body15:                                       ; preds = %for.cond12.backedge.for.body15_crit_edge, %for.body
  %n.0392 = phi i32 [ 0, %for.body ], [ %add, %for.cond12.backedge.for.body15_crit_edge ]
  %arrayidx = getelementptr %struct.drm_mm_node, ptr %call1, i32 %n.0392
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx, i64 noundef %conv16, i64 noundef 0, i32 noundef %n.0392, i64 noundef 0, i64 noundef -1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %conv16, i64 noundef 0, i32 noundef %n.0392, ptr noundef nonnull @.str.118, i32 noundef %call.i.i) #14
  br label %do.end

if.end.i:                                         ; preds = %for.body15
  %flags.i.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %n.0392, i32 12
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.do.end.i282_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i282_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i282

lor.lhs.false.i:                                  ; preds = %if.end.i
  %mm1.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %n.0392, i32 3
  %23 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mm1.i, align 8
  %cmp.not.i280 = icmp eq ptr %24, %mm
  br i1 %cmp.not.i280, label %lor.lhs.false.i.if.end.i284_crit_edge, label %lor.lhs.false.i.do.end.i282_crit_edge

lor.lhs.false.i.do.end.i282_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i282

lor.lhs.false.i.if.end.i284_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i284

do.end.i282:                                      ; preds = %lor.lhs.false.i.do.end.i282_crit_edge, %if.end.i.do.end.i282_crit_edge
  %call2.i281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i284

if.end.i284:                                      ; preds = %do.end.i282, %lor.lhs.false.i.if.end.i284_crit_edge
  %ok.0.off0.i = phi i1 [ false, %do.end.i282 ], [ true, %lor.lhs.false.i.if.end.i284_crit_edge ]
  %size3.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %n.0392, i32 2
  %25 = ptrtoint ptr %size3.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %size3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv16)
  %cmp4.not.i283 = icmp eq i64 %26, %conv16
  br i1 %cmp4.not.i283, label %if.end12.i286, label %if.end12.i286.thread

if.end12.i286:                                    ; preds = %if.end.i284
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %n.0392)
  %cmp23.not.i = icmp eq i32 %28, %n.0392
  br i1 %cmp23.not.i, label %assert_node.exit, label %if.end12.i286.assert_node.exit.thread_crit_edge

if.end12.i286.assert_node.exit.thread_crit_edge:  ; preds = %if.end12.i286
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i286.thread:                             ; preds = %if.end.i284
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %26, i64 noundef %conv16) #14
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %n.0392)
  %cmp23.not.i499 = icmp eq i32 %30, %n.0392
  br i1 %cmp23.not.i499, label %if.end12.i286.thread.if.then4.i_crit_edge, label %if.end12.i286.thread.assert_node.exit.thread_crit_edge

if.end12.i286.thread.assert_node.exit.thread_crit_edge: ; preds = %if.end12.i286.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i286.thread.if.then4.i_crit_edge:        ; preds = %if.end12.i286.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

assert_node.exit.thread:                          ; preds = %if.end12.i286.thread.assert_node.exit.thread_crit_edge, %if.end12.i286.assert_node.exit.thread_crit_edge
  %31 = phi i32 [ %30, %if.end12.i286.thread.assert_node.exit.thread_crit_edge ], [ %28, %if.end12.i286.assert_node.exit.thread_crit_edge ]
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %31, i32 noundef %n.0392) #14
  br label %if.then4.i

assert_node.exit:                                 ; preds = %if.end12.i286
  br i1 %ok.0.off0.i, label %if.end20, label %assert_node.exit.if.then4.i_crit_edge

assert_node.exit.if.then4.i_crit_edge:            ; preds = %assert_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %assert_node.exit.if.then4.i_crit_edge, %assert_node.exit.thread, %if.end12.i286.thread.if.then4.i_crit_edge
  call void @drm_mm_remove_node(ptr noundef %arrayidx) #11
  br label %do.end

do.end:                                           ; preds = %if.then4.i, %do.end.i
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246, i32 noundef %size.0404, i32 noundef %n.0392) #14
  br label %out

if.end20:                                         ; preds = %assert_node.exit
  %add = add nuw nsw i32 %n.0392, 1
  %mul21 = mul nsw i32 %add, %size.0404
  %conv22 = zext i32 %mul21 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul21)
  %cmp.not.i = icmp ugt i32 %mul, %mul21
  br i1 %cmp.not.i, label %if.end.i257, label %if.end20.for.cond12.backedge_crit_edge

if.end20.for.cond12.backedge_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond12.backedge

if.end.i257:                                      ; preds = %if.end20
  %32 = ptrtoint ptr %hole_stack.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn53.i = load ptr, ptr %hole_stack.i, align 4
  %cmp3.not54.i = icmp eq ptr %.pn53.i, %hole_stack.i
  br i1 %cmp3.not54.i, label %if.end.i257.assert_one_hole.exit.thread_crit_edge, label %if.end.i257.cond.true.i_crit_edge

if.end.i257.cond.true.i_crit_edge:                ; preds = %if.end.i257
  br label %cond.true.i

if.end.i257.assert_one_hole.exit.thread_crit_edge: ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_one_hole.exit.thread

cond.true.i:                                      ; preds = %if.end12.i.cond.true.i_crit_edge, %if.end.i257.cond.true.i_crit_edge
  %.pn57.i = phi ptr [ %.pn.i, %if.end12.i.cond.true.i_crit_edge ], [ %.pn53.i, %if.end.i257.cond.true.i_crit_edge ]
  %count.056.i = phi i32 [ %inc.i, %if.end12.i.cond.true.i_crit_edge ], [ 0, %if.end.i257.cond.true.i_crit_edge ]
  %ok.0.off055.i = phi i1 [ %ok.1.off0.i, %if.end12.i.cond.true.i_crit_edge ], [ true, %if.end.i257.cond.true.i_crit_edge ]
  %hole_size.i.i.i = getelementptr i8, ptr %.pn57.i, i32 52
  %33 = ptrtoint ptr %hole_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %hole_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool.i.not.i.i = icmp eq i64 %34, 0
  br i1 %tobool.i.not.i.i, label %do.body3.i.i, label %for.body.i, !prof !676

do.body3.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/drm/drm_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 316, 0\0A.popsection", ""() #11, !srcloc !677
  unreachable

for.body.i:                                       ; preds = %cond.true.i
  %start.i.i.i = getelementptr i8, ptr %.pn57.i, i32 -28
  %35 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %start.i.i.i, align 8
  %size.i.i.i = getelementptr i8, ptr %.pn57.i, i32 -20
  %37 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %size.i.i.i, align 8
  %add.i.i.i = add i64 %38, %36
  %add.i = add i64 %add.i.i.i, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %conv22)
  %cmp4.not.i = icmp eq i64 %add.i.i.i, %conv22
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv11)
  %cmp5.not.i = icmp eq i64 %add.i, %conv11
  %or.cond.i = select i1 %cmp4.not.i, i1 %cmp5.not.i, i1 false
  %ok.0.off0.not.i = xor i1 %ok.0.off055.i, true
  %brmerge.i = select i1 %or.cond.i, i1 true, i1 %ok.0.off0.not.i
  %ok.0.off0.mux.i = select i1 %or.cond.i, i1 %ok.0.off055.i, i1 false
  br i1 %brmerge.i, label %for.body.i.if.end12.i_crit_edge, label %do.end.i258

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

do.end.i258:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %add.i.i.i, i64 noundef %add.i, i64 noundef %conv22, i64 noundef %conv11) #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i258, %for.body.i.if.end12.i_crit_edge
  %ok.1.off0.i = phi i1 [ %ok.0.off0.mux.i, %for.body.i.if.end12.i_crit_edge ], [ false, %do.end.i258 ]
  %inc.i = add i32 %count.056.i, 1
  %39 = ptrtoint ptr %.pn57.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load ptr, ptr %.pn57.i, align 4
  %cmp3.not.i = icmp eq ptr %.pn.i, %hole_stack.i
  br i1 %cmp3.not.i, label %for.end.i, label %if.end12.i.cond.true.i_crit_edge

if.end12.i.cond.true.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true.i

for.end.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.056.i)
  %cmp18.not.i = icmp eq i32 %count.056.i, 0
  br i1 %cmp18.not.i, label %assert_one_hole.exit, label %for.end.i.assert_one_hole.exit.thread_crit_edge

for.end.i.assert_one_hole.exit.thread_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_one_hole.exit.thread

assert_one_hole.exit.thread:                      ; preds = %for.end.i.assert_one_hole.exit.thread_crit_edge, %if.end.i257.assert_one_hole.exit.thread_crit_edge
  %count.0.lcssa62.i = phi i32 [ %inc.i, %for.end.i.assert_one_hole.exit.thread_crit_edge ], [ 0, %if.end.i257.assert_one_hole.exit.thread_crit_edge ]
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %count.0.lcssa62.i) #14
  br label %out

assert_one_hole.exit:                             ; preds = %for.end.i
  br i1 %ok.1.off0.i, label %assert_one_hole.exit.for.cond12.backedge_crit_edge, label %assert_one_hole.exit.out_crit_edge

assert_one_hole.exit.out_crit_edge:               ; preds = %assert_one_hole.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

assert_one_hole.exit.for.cond12.backedge_crit_edge: ; preds = %assert_one_hole.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond12.backedge

for.cond12.backedge:                              ; preds = %assert_one_hole.exit.for.cond12.backedge_crit_edge, %if.end20.for.cond12.backedge_crit_edge
  %exitcond.not = icmp eq i32 %add, 8192
  br i1 %exitcond.not, label %for.end, label %for.cond12.backedge.for.body15_crit_edge

for.cond12.backedge.for.body15_crit_edge:         ; preds = %for.cond12.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15

for.end:                                          ; preds = %for.cond12.backedge
  %call29 = call fastcc zeroext i1 @assert_continuous(ptr noundef nonnull %mm, i64 noundef %conv16)
  br i1 %call29, label %if.end31, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end31:                                         ; preds = %for.end
  call void @drm_random_reorder(ptr noundef nonnull %call6, i32 noundef 8192, ptr noundef nonnull %prng) #11
  %40 = load i32, ptr @max_prime, align 4
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp36.not397 = icmp eq i32 %41, 0
  br i1 %cmp36.not397, label %if.end31.for.end101_crit_edge, label %if.end31.for.cond39.preheader_crit_edge

if.end31.for.cond39.preheader_crit_edge:          ; preds = %if.end31
  br label %for.cond39.preheader

if.end31.for.end101_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101

for.cond39.preheader:                             ; preds = %do.end97.for.cond39.preheader_crit_edge, %if.end31.for.cond39.preheader_crit_edge
  %n.1399 = phi i32 [ %call100, %do.end97.for.cond39.preheader_crit_edge ], [ 1, %if.end31.for.cond39.preheader_crit_edge ]
  %o.1398 = phi i32 [ %add98, %do.end97.for.cond39.preheader_crit_edge ], [ %o.0403, %if.end31.for.cond39.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1399)
  %cmp40393.not = icmp eq i32 %n.1399, 0
  br i1 %cmp40393.not, label %for.cond39.preheader.do.body82_crit_edge, label %for.cond39.preheader.for.body42_crit_edge

for.cond39.preheader.for.body42_crit_edge:        ; preds = %for.cond39.preheader
  br label %for.body42

for.cond39.preheader.do.body82_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

for.cond50.preheader:                             ; preds = %for.body42
  br i1 %cmp40393.not, label %for.cond50.preheader.do.body82_crit_edge, label %for.cond50.preheader.for.body53_crit_edge

for.cond50.preheader.for.body53_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body53

for.cond50.preheader.do.body82_crit_edge:         ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.cond39.preheader.for.body42_crit_edge
  %m.0394 = phi i32 [ %inc48, %for.body42.for.body42_crit_edge ], [ 0, %for.cond39.preheader.for.body42_crit_edge ]
  %add43 = add i32 %m.0394, %o.1398
  %rem = and i32 %add43, 8191
  %arrayidx44 = getelementptr i32, ptr %call6, i32 %rem
  %42 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx44, align 4
  %arrayidx45 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %43
  call void @drm_mm_remove_node(ptr noundef %arrayidx45) #11
  %start.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %43, i32 1
  %44 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %start.i, align 8
  %size.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %43, i32 2
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %size.i, align 8
  %call.i = call i64 @div64_u64(i64 noundef %45, i64 noundef %47) #11
  %conv.i260 = trunc i64 %call.i to i32
  %rem.i = and i32 %conv.i260, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv.i260, 5
  %add.ptr.i = getelementptr i32, ptr %call2, i32 %div2.i
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %49
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc48 = add nuw i32 %m.0394, 1
  %exitcond496.not = icmp eq i32 %inc48, %n.1399
  br i1 %exitcond496.not, label %for.cond50.preheader, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body42

for.body53:                                       ; preds = %for.inc79.for.body53_crit_edge, %for.cond50.preheader.for.body53_crit_edge
  %m.1396 = phi i32 [ %inc80, %for.inc79.for.body53_crit_edge ], [ 0, %for.cond50.preheader.for.body53_crit_edge ]
  %add54 = add i32 %m.1396, %o.1398
  %rem55 = and i32 %add54, 8191
  %arrayidx56 = getelementptr i32, ptr %call6, i32 %rem55
  %50 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx56, align 4
  %arrayidx57 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %51
  %call.i.i261 = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx57, i64 noundef %conv16, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i261)
  %tobool.not.i262 = icmp eq i32 %call.i.i261, 0
  br i1 %tobool.not.i262, label %if.end.i266, label %do.end.i264

do.end.i264:                                      ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %conv16, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.118, i32 noundef %call.i.i261) #14
  br label %do.end63

if.end.i266:                                      ; preds = %for.body53
  %flags.i.i288 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %51, i32 12
  %52 = ptrtoint ptr %flags.i.i288 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i.i288, align 4
  %and1.i.i.i289 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i289)
  %tobool.i.not.i290 = icmp eq i32 %and1.i.i.i289, 0
  br i1 %tobool.i.not.i290, label %if.end.i266.do.end.i295_crit_edge, label %lor.lhs.false.i293

if.end.i266.do.end.i295_crit_edge:                ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i295

lor.lhs.false.i293:                               ; preds = %if.end.i266
  %mm1.i291 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %51, i32 3
  %54 = ptrtoint ptr %mm1.i291 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mm1.i291, align 8
  %cmp.not.i292 = icmp eq ptr %55, %mm
  br i1 %cmp.not.i292, label %lor.lhs.false.i293.if.end.i299_crit_edge, label %lor.lhs.false.i293.do.end.i295_crit_edge

lor.lhs.false.i293.do.end.i295_crit_edge:         ; preds = %lor.lhs.false.i293
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i295

lor.lhs.false.i293.if.end.i299_crit_edge:         ; preds = %lor.lhs.false.i293
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i299

do.end.i295:                                      ; preds = %lor.lhs.false.i293.do.end.i295_crit_edge, %if.end.i266.do.end.i295_crit_edge
  %call2.i294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i299

if.end.i299:                                      ; preds = %do.end.i295, %lor.lhs.false.i293.if.end.i299_crit_edge
  %ok.0.off0.i296 = phi i1 [ false, %do.end.i295 ], [ true, %lor.lhs.false.i293.if.end.i299_crit_edge ]
  %size3.i297 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %51, i32 2
  %56 = ptrtoint ptr %size3.i297 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %size3.i297, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %conv16)
  %cmp4.not.i298 = icmp eq i64 %57, %conv16
  br i1 %cmp4.not.i298, label %if.end12.i303, label %if.end12.i303.thread

if.end12.i303:                                    ; preds = %if.end.i299
  %58 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp23.not.i304 = icmp eq i32 %59, 0
  br i1 %cmp23.not.i304, label %assert_node.exit308, label %if.end12.i303.assert_node.exit308.thread_crit_edge

if.end12.i303.assert_node.exit308.thread_crit_edge: ; preds = %if.end12.i303
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit308.thread

if.end12.i303.thread:                             ; preds = %if.end.i299
  %call11.i300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %57, i64 noundef %conv16) #14
  %60 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp23.not.i304504 = icmp eq i32 %61, 0
  br i1 %cmp23.not.i304504, label %if.end12.i303.thread.if.then4.i267_crit_edge, label %if.end12.i303.thread.assert_node.exit308.thread_crit_edge

if.end12.i303.thread.assert_node.exit308.thread_crit_edge: ; preds = %if.end12.i303.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit308.thread

if.end12.i303.thread.if.then4.i267_crit_edge:     ; preds = %if.end12.i303.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i267

assert_node.exit308.thread:                       ; preds = %if.end12.i303.thread.assert_node.exit308.thread_crit_edge, %if.end12.i303.assert_node.exit308.thread_crit_edge
  %62 = phi i32 [ %61, %if.end12.i303.thread.assert_node.exit308.thread_crit_edge ], [ %59, %if.end12.i303.assert_node.exit308.thread_crit_edge ]
  %call30.i305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %62, i32 noundef 0) #14
  br label %if.then4.i267

assert_node.exit308:                              ; preds = %if.end12.i303
  br i1 %ok.0.off0.i296, label %if.end66, label %assert_node.exit308.if.then4.i267_crit_edge

assert_node.exit308.if.then4.i267_crit_edge:      ; preds = %assert_node.exit308
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i267

if.then4.i267:                                    ; preds = %assert_node.exit308.if.then4.i267_crit_edge, %assert_node.exit308.thread, %if.end12.i303.thread.if.then4.i267_crit_edge
  call void @drm_mm_remove_node(ptr noundef %arrayidx57) #11
  br label %do.end63

do.end63:                                         ; preds = %if.then4.i267, %do.end.i264
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, i32 noundef %m.1396, i32 noundef %n.1399) #14
  br label %out

if.end66:                                         ; preds = %assert_node.exit308
  %call67 = call i32 @_find_first_bit_be(ptr noundef nonnull %call2, i32 noundef 8192) #11
  %start.i270 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %51, i32 1
  %63 = ptrtoint ptr %start.i270 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %start.i270, align 8
  %65 = ptrtoint ptr %size3.i297 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %size3.i297, align 8
  %call.i272 = call i64 @div64_u64(i64 noundef %64, i64 noundef %66) #11
  %conv.i273 = trunc i64 %call.i272 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call67, i32 %conv.i273)
  %cmp69.not = icmp eq i32 %call67, %conv.i273
  br i1 %cmp69.not, label %for.inc79, label %do.end74

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %start.i270 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %start.i270, align 8
  %69 = ptrtoint ptr %size3.i297 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %size3.i297, align 8
  %call.i276 = call i64 @div64_u64(i64 noundef %68, i64 noundef %70) #11
  %conv.i277 = trunc i64 %call.i276 to i32
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, i32 noundef %m.1396, i32 noundef %n.1399, i32 noundef %call67, i32 noundef %conv.i277) #14
  br label %out

for.inc79:                                        ; preds = %if.end66
  %rem.i252 = and i32 %call67, 31
  %shl.i253 = shl nuw i32 1, %rem.i252
  %div2.i254 = lshr i32 %call67, 5
  %add.ptr.i255 = getelementptr i32, ptr %call2, i32 %div2.i254
  %neg.i = xor i32 %shl.i253, -1
  %71 = ptrtoint ptr %add.ptr.i255 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i255, align 4
  %and.i = and i32 %72, %neg.i
  store i32 %and.i, ptr %add.ptr.i255, align 4
  %inc80 = add nuw i32 %m.1396, 1
  %exitcond497.not = icmp eq i32 %inc80, %n.1399
  br i1 %exitcond497.not, label %for.inc79.do.body82_crit_edge, label %for.inc79.for.body53_crit_edge

for.inc79.for.body53_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53

for.inc79.do.body82_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82

do.body82:                                        ; preds = %for.inc79.do.body82_crit_edge, %for.cond50.preheader.do.body82_crit_edge, %for.cond39.preheader.do.body82_crit_edge
  %call83 = call i32 @_find_first_bit_be(ptr noundef nonnull %call2, i32 noundef 8192) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %call83)
  %cmp84.not = icmp eq i32 %call83, 8192
  br i1 %cmp84.not, label %do.end97, label %do.body89, !prof !685

do.body89:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1919, 0\0A.popsection", ""() #11, !srcloc !689
  unreachable

do.end97:                                         ; preds = %do.body82
  %add98 = add i32 %n.1399, %o.1398
  %call100 = call i32 @next_prime_number(i32 noundef %n.1399) #11
  %73 = load i32, ptr @max_prime, align 4
  %74 = call i32 @llvm.umin.i32(i32 %73, i32 8192)
  %cmp36.not = icmp ugt i32 %call100, %74
  br i1 %cmp36.not, label %do.end97.for.end101_crit_edge, label %do.end97.for.cond39.preheader_crit_edge

do.end97.for.cond39.preheader_crit_edge:          ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond39.preheader

do.end97.for.end101_crit_edge:                    ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101

for.end101:                                       ; preds = %do.end97.for.end101_crit_edge, %if.end31.for.end101_crit_edge
  %o.1.lcssa = phi i32 [ %o.0403, %if.end31.for.end101_crit_edge ], [ %add98, %do.end97.for.end101_crit_edge ]
  %75 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %node_list, align 4
  %cmp113.not401 = icmp eq ptr %76, %node_list
  br i1 %cmp113.not401, label %for.end101.do.body125_crit_edge, label %for.end101.for.body117_crit_edge

for.end101.for.body117_crit_edge:                 ; preds = %for.end101
  br label %for.body117

for.end101.do.body125_crit_edge:                  ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body125

for.body117:                                      ; preds = %for.body117.for.body117_crit_edge, %for.end101.for.body117_crit_edge
  %.pn249.in402 = phi ptr [ %.pn249, %for.body117.for.body117_crit_edge ], [ %76, %for.end101.for.body117_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn249.in402, i32 -28
  %77 = ptrtoint ptr %.pn249.in402 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn249 = load ptr, ptr %.pn249.in402, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp113.not = icmp eq ptr %.pn249, %node_list
  br i1 %cmp113.not, label %for.body117.do.body125_crit_edge, label %for.body117.for.body117_crit_edge

for.body117.for.body117_crit_edge:                ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body117

for.body117.do.body125_crit_edge:                 ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body125

do.body125:                                       ; preds = %for.body117.do.body125_crit_edge, %for.end101.do.body125_crit_edge
  %78 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %node_list, align 4
  %cmp.i.i278 = icmp eq ptr %79, %node_list
  br i1 %cmp.i.i278, label %do.end144, label %do.body136, !prof !685

do.body136:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1926, 0\0A.popsection", ""() #11, !srcloc !690
  unreachable

do.end144:                                        ; preds = %do.body125
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 1927, i32 noundef 0) #11
  %call.i279 = call i32 @__cond_resched() #11
  %shl = shl i32 %size.0404, 1
  %cmp = icmp ult i32 %shl, 65
  br i1 %cmp, label %do.end144.for.body_crit_edge, label %do.end144.out_crit_edge

do.end144.out_crit_edge:                          ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end144.for.body_crit_edge:                     ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

out:                                              ; preds = %do.end144.out_crit_edge, %do.end74, %do.end63, %for.end.out_crit_edge, %assert_one_hole.exit.out_crit_edge, %assert_one_hole.exit.thread, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ -22, %assert_one_hole.exit.thread ], [ -22, %do.end74 ], [ -22, %do.end63 ], [ -22, %assert_one_hole.exit.out_crit_edge ], [ 0, %do.end144.out_crit_edge ], [ -22, %for.end.out_crit_edge ]
  %80 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %node_list, align 4
  %cmp164.not405 = icmp eq ptr %81, %node_list
  br i1 %cmp164.not405, label %out.for.end175_crit_edge, label %out.for.body168_crit_edge

out.for.body168_crit_edge:                        ; preds = %out
  br label %for.body168

out.for.end175_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end175

for.body168:                                      ; preds = %for.body168.for.body168_crit_edge, %out.for.body168_crit_edge
  %.pn.in406 = phi ptr [ %.pn, %for.body168.for.body168_crit_edge ], [ %81, %out.for.body168_crit_edge ]
  %node.1 = getelementptr i8, ptr %.pn.in406, i32 -28
  %82 = ptrtoint ptr %.pn.in406 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn = load ptr, ptr %.pn.in406, align 4
  call void @drm_mm_remove_node(ptr noundef %node.1) #11
  %cmp164.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp164.not, label %for.body168.for.end175_crit_edge, label %for.body168.for.body168_crit_edge

for.body168.for.body168_crit_edge:                ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body168

for.body168.for.end175_crit_edge:                 ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end175

for.end175:                                       ; preds = %for.body168.for.end175_crit_edge, %out.for.end175_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @kfree(ptr noundef nonnull %call6) #11
  br label %err_bitmap

err_bitmap:                                       ; preds = %for.end175, %if.end5.err_bitmap_crit_edge
  %ret.1 = phi i32 [ %ret.0, %for.end175 ], [ -12, %if.end5.err_bitmap_crit_edge ]
  call void @bitmap_free(ptr noundef nonnull %call2) #11
  br label %err_nodes

err_nodes:                                        ; preds = %err_bitmap, %if.end.err_nodes_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_bitmap ], [ -12, %if.end.err_nodes_crit_edge ]
  call void @vfree(ptr noundef nonnull %call1) #11
  br label %cleanup176

cleanup176:                                       ; preds = %err_nodes, %entry.cleanup176_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_nodes ], [ -12, %entry.cleanup176_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prng) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_lowest(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__igt_once(i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_topdown(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %prng = alloca %struct.rnd_state, align 4
  %state__ = alloca %struct.rnd_state, align 4
  %mm = alloca %struct.drm_mm, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prng) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state__) #11
  %0 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 3
  %3 = load i32, ptr @random_seed, align 4
  %shl.i283 = shl i32 %3, 10
  %xor1.i = xor i32 %shl.i283, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor1.i)
  %cmp.i.i = icmp ult i32 %xor1.i, 2
  %add.i.i = select i1 %cmp.i.i, i32 2, i32 0
  %cond.i.i = add i32 %add.i.i, %xor1.i
  %4 = ptrtoint ptr %state__ to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i.i, ptr %state__, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %xor1.i)
  %cmp.i15.i = icmp ult i32 %xor1.i, 8
  %add.i16.i = select i1 %cmp.i15.i, i32 8, i32 0
  %cond.i17.i = add i32 %add.i16.i, %xor1.i
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i17.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %xor1.i)
  %cmp.i18.i = icmp ult i32 %xor1.i, 16
  %add.i19.i = select i1 %cmp.i18.i, i32 16, i32 0
  %cond.i20.i = add i32 %add.i19.i, %xor1.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i20.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %xor1.i)
  %cmp.i21.i = icmp ult i32 %xor1.i, 128
  %add.i22.i = select i1 %cmp.i21.i, i32 128, i32 0
  %cond.i23.i = add i32 %add.i22.i, %xor1.i
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i23.i, ptr %2, align 4
  %8 = ptrtoint ptr %state__ to i32
  %9 = call i32 @llvm.read_register.i32(metadata !666) #11
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
  %add.i24.i = add i32 %14, ptrtoint (ptr @net_rand_noise to i32)
  %15 = inttoptr i32 %add.i24.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %xor.i.i = xor i32 %17, %8
  %add8.i.i = add i32 %xor.i.i, %xor1.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #11
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i1.i.i, ptr %15, align 4
  %19 = call ptr @memcpy(ptr %prng, ptr %state__, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state__) #11
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %20 = call ptr @memset(ptr %mm, i32 255, i32 152)
  %call1 = call noalias ptr @vzalloc(i32 noundef 917504) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup193_crit_edge, label %if.end

entry.cleanup193_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup193

if.end:                                           ; preds = %entry
  %call2 = call ptr @bitmap_zalloc(i32 noundef 8192, i32 noundef 3264) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_nodes_crit_edge, label %if.end5

if.end.err_nodes_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_nodes

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @drm_random_order(i32 noundef 8192, ptr noundef nonnull %prng) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.err_bitmap_crit_edge, label %for.cond.preheader

if.end5.err_bitmap_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_bitmap

for.cond.preheader:                               ; preds = %if.end5
  %hole_stack.i = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 1
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end161.for.body_crit_edge, %for.cond.preheader
  %size.0454 = phi i32 [ 1, %for.cond.preheader ], [ %shl, %do.end161.for.body_crit_edge ]
  %o.0453 = phi i32 [ 0, %for.cond.preheader ], [ %o.1.lcssa, %do.end161.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %size.0454, 13
  %conv11 = zext i32 %mul to i64
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef %conv11) #11
  %conv16 = zext i32 %size.0454 to i64
  br label %for.body15

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body
  %n.0442 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body15_crit_edge ]
  %arrayidx = getelementptr %struct.drm_mm_node, ptr %call1, i32 %n.0442
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx, i64 noundef %conv16, i64 noundef 0, i32 noundef %n.0442, i64 noundef 0, i64 noundef -1, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %conv16, i64 noundef 0, i32 noundef %n.0442, ptr noundef nonnull @.str.119, i32 noundef %call.i.i) #14
  br label %do.end

if.end.i:                                         ; preds = %for.body15
  %flags.i.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %n.0442, i32 12
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.do.end.i311_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i311_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i311

lor.lhs.false.i:                                  ; preds = %if.end.i
  %mm1.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %n.0442, i32 3
  %23 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mm1.i, align 8
  %cmp.not.i309 = icmp eq ptr %24, %mm
  br i1 %cmp.not.i309, label %lor.lhs.false.i.if.end.i313_crit_edge, label %lor.lhs.false.i.do.end.i311_crit_edge

lor.lhs.false.i.do.end.i311_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i311

lor.lhs.false.i.if.end.i313_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i313

do.end.i311:                                      ; preds = %lor.lhs.false.i.do.end.i311_crit_edge, %if.end.i.do.end.i311_crit_edge
  %call2.i310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i313

if.end.i313:                                      ; preds = %do.end.i311, %lor.lhs.false.i.if.end.i313_crit_edge
  %ok.0.off0.i = phi i1 [ false, %do.end.i311 ], [ true, %lor.lhs.false.i.if.end.i313_crit_edge ]
  %size3.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %n.0442, i32 2
  %25 = ptrtoint ptr %size3.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %size3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv16)
  %cmp4.not.i312 = icmp eq i64 %26, %conv16
  br i1 %cmp4.not.i312, label %if.end12.i315, label %if.end12.i315.thread

if.end12.i315:                                    ; preds = %if.end.i313
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %n.0442)
  %cmp23.not.i = icmp eq i32 %28, %n.0442
  br i1 %cmp23.not.i, label %assert_node.exit, label %if.end12.i315.assert_node.exit.thread_crit_edge

if.end12.i315.assert_node.exit.thread_crit_edge:  ; preds = %if.end12.i315
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i315.thread:                             ; preds = %if.end.i313
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %26, i64 noundef %conv16) #14
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %n.0442)
  %cmp23.not.i570 = icmp eq i32 %30, %n.0442
  br i1 %cmp23.not.i570, label %if.end12.i315.thread.if.then4.i_crit_edge, label %if.end12.i315.thread.assert_node.exit.thread_crit_edge

if.end12.i315.thread.assert_node.exit.thread_crit_edge: ; preds = %if.end12.i315.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i315.thread.if.then4.i_crit_edge:        ; preds = %if.end12.i315.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

assert_node.exit.thread:                          ; preds = %if.end12.i315.thread.assert_node.exit.thread_crit_edge, %if.end12.i315.assert_node.exit.thread_crit_edge
  %31 = phi i32 [ %30, %if.end12.i315.thread.assert_node.exit.thread_crit_edge ], [ %28, %if.end12.i315.assert_node.exit.thread_crit_edge ]
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %31, i32 noundef %n.0442) #14
  br label %if.then4.i

assert_node.exit:                                 ; preds = %if.end12.i315
  br i1 %ok.0.off0.i, label %if.end20, label %assert_node.exit.if.then4.i_crit_edge

assert_node.exit.if.then4.i_crit_edge:            ; preds = %assert_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %assert_node.exit.if.then4.i_crit_edge, %assert_node.exit.thread, %if.end12.i315.thread.if.then4.i_crit_edge
  call void @drm_mm_remove_node(ptr noundef %arrayidx) #11
  br label %do.end

do.end:                                           ; preds = %if.then4.i, %do.end.i
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, i32 noundef %size.0454, i32 noundef %n.0442) #14
  br label %out

if.end20:                                         ; preds = %assert_node.exit
  %hole_size.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %n.0442, i32 10
  %32 = ptrtoint ptr %hole_size.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %hole_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool.i.not = icmp eq i64 %33, 0
  br i1 %tobool.i.not, label %if.end30, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %start = getelementptr %struct.drm_mm_node, ptr %call1, i32 %n.0442, i32 1
  %34 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %start, align 8
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, i32 noundef %n.0442, i64 noundef %35, i32 noundef %size.0454) #14
  br label %out

if.end30:                                         ; preds = %if.end20
  %sub31 = sub nuw nsw i32 8191, %n.0442
  %mul32 = mul i32 %sub31, %size.0454
  %conv33 = zext i32 %mul32 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul32)
  %cmp.not.i.not = icmp eq i32 %mul32, 0
  br i1 %cmp.not.i.not, label %if.end30.for.inc_crit_edge, label %if.end.i284

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i284:                                      ; preds = %if.end30
  %36 = ptrtoint ptr %hole_stack.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn53.i = load ptr, ptr %hole_stack.i, align 4
  %cmp3.not54.i = icmp eq ptr %.pn53.i, %hole_stack.i
  br i1 %cmp3.not54.i, label %if.end.i284.assert_one_hole.exit.thread341_crit_edge, label %if.end.i284.cond.true.i_crit_edge

if.end.i284.cond.true.i_crit_edge:                ; preds = %if.end.i284
  br label %cond.true.i

if.end.i284.assert_one_hole.exit.thread341_crit_edge: ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_one_hole.exit.thread341

cond.true.i:                                      ; preds = %if.end12.i.cond.true.i_crit_edge, %if.end.i284.cond.true.i_crit_edge
  %.pn57.i = phi ptr [ %.pn.i, %if.end12.i.cond.true.i_crit_edge ], [ %.pn53.i, %if.end.i284.cond.true.i_crit_edge ]
  %count.056.i = phi i32 [ %inc.i, %if.end12.i.cond.true.i_crit_edge ], [ 0, %if.end.i284.cond.true.i_crit_edge ]
  %ok.0.off055.i = phi i1 [ %ok.1.off0.i, %if.end12.i.cond.true.i_crit_edge ], [ true, %if.end.i284.cond.true.i_crit_edge ]
  %hole_size.i.i.i = getelementptr i8, ptr %.pn57.i, i32 52
  %37 = ptrtoint ptr %hole_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %hole_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool.i.not.i.i = icmp eq i64 %38, 0
  br i1 %tobool.i.not.i.i, label %do.body3.i.i, label %for.body.i, !prof !676

do.body3.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/drm/drm_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 316, 0\0A.popsection", ""() #11, !srcloc !677
  unreachable

for.body.i:                                       ; preds = %cond.true.i
  %start.i.i.i = getelementptr i8, ptr %.pn57.i, i32 -28
  %39 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %start.i.i.i, align 8
  %size.i.i.i = getelementptr i8, ptr %.pn57.i, i32 -20
  %41 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %size.i.i.i, align 8
  %add.i.i.i = add i64 %42, %40
  %add.i = add i64 %add.i.i.i, %38
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i.i.i)
  %cmp4.not.i = icmp eq i64 %add.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv33)
  %cmp5.not.i = icmp eq i64 %add.i, %conv33
  %or.cond.i = select i1 %cmp4.not.i, i1 %cmp5.not.i, i1 false
  %ok.0.off0.not.i = xor i1 %ok.0.off055.i, true
  %brmerge.i = select i1 %or.cond.i, i1 true, i1 %ok.0.off0.not.i
  %ok.0.off0.mux.i = select i1 %or.cond.i, i1 %ok.0.off055.i, i1 false
  br i1 %brmerge.i, label %for.body.i.if.end12.i_crit_edge, label %do.end.i285

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

do.end.i285:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %add.i.i.i, i64 noundef %add.i, i64 noundef 0, i64 noundef %conv33) #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i285, %for.body.i.if.end12.i_crit_edge
  %ok.1.off0.i = phi i1 [ %ok.0.off0.mux.i, %for.body.i.if.end12.i_crit_edge ], [ false, %do.end.i285 ]
  %inc.i = add i32 %count.056.i, 1
  %43 = ptrtoint ptr %.pn57.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn57.i, align 4
  %cmp3.not.i = icmp eq ptr %.pn.i, %hole_stack.i
  br i1 %cmp3.not.i, label %for.end.i, label %if.end12.i.cond.true.i_crit_edge

if.end12.i.cond.true.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true.i

for.end.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.056.i)
  %cmp18.not.i = icmp eq i32 %count.056.i, 0
  br i1 %cmp18.not.i, label %assert_one_hole.exit, label %for.end.i.assert_one_hole.exit.thread341_crit_edge

for.end.i.assert_one_hole.exit.thread341_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_one_hole.exit.thread341

assert_one_hole.exit.thread341:                   ; preds = %for.end.i.assert_one_hole.exit.thread341_crit_edge, %if.end.i284.assert_one_hole.exit.thread341_crit_edge
  %count.0.lcssa62.i = phi i32 [ %inc.i, %for.end.i.assert_one_hole.exit.thread341_crit_edge ], [ 0, %if.end.i284.assert_one_hole.exit.thread341_crit_edge ]
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %count.0.lcssa62.i) #14
  br label %out

assert_one_hole.exit:                             ; preds = %for.end.i
  br i1 %ok.1.off0.i, label %assert_one_hole.exit.for.inc_crit_edge, label %assert_one_hole.exit.out_crit_edge

assert_one_hole.exit.out_crit_edge:               ; preds = %assert_one_hole.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

assert_one_hole.exit.for.inc_crit_edge:           ; preds = %assert_one_hole.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %assert_one_hole.exit.for.inc_crit_edge, %if.end30.for.inc_crit_edge
  %inc = add nuw nsw i32 %n.0442, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body15_crit_edge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15

for.end:                                          ; preds = %for.inc
  %call38 = call fastcc zeroext i1 @assert_continuous(ptr noundef nonnull %mm, i64 noundef %conv16)
  br i1 %call38, label %if.end40, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end40:                                         ; preds = %for.end
  call void @drm_random_reorder(ptr noundef nonnull %call6, i32 noundef 8192, ptr noundef nonnull %prng) #11
  %44 = load i32, ptr @max_prime, align 4
  %45 = call i32 @llvm.umin.i32(i32 %44, i32 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp45.not447 = icmp eq i32 %45, 0
  br i1 %cmp45.not447, label %if.end40.for.end118_crit_edge, label %if.end40.for.cond48.preheader_crit_edge

if.end40.for.cond48.preheader_crit_edge:          ; preds = %if.end40
  br label %for.cond48.preheader

if.end40.for.end118_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end118

for.cond48.preheader:                             ; preds = %do.end114.for.cond48.preheader_crit_edge, %if.end40.for.cond48.preheader_crit_edge
  %n.1449 = phi i32 [ %call117, %do.end114.for.cond48.preheader_crit_edge ], [ 1, %if.end40.for.cond48.preheader_crit_edge ]
  %o.1448 = phi i32 [ %add115, %do.end114.for.cond48.preheader_crit_edge ], [ %o.0453, %if.end40.for.cond48.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1449)
  %cmp49443.not = icmp eq i32 %n.1449, 0
  br i1 %cmp49443.not, label %for.cond48.preheader.do.body99_crit_edge, label %for.cond48.preheader.for.body51_crit_edge

for.cond48.preheader.for.body51_crit_edge:        ; preds = %for.cond48.preheader
  br label %for.body51

for.cond48.preheader.do.body99_crit_edge:         ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body99

for.cond58.preheader:                             ; preds = %for.body51
  br i1 %cmp49443.not, label %for.cond58.preheader.do.body99_crit_edge, label %for.cond58.preheader.for.body61_crit_edge

for.cond58.preheader.for.body61_crit_edge:        ; preds = %for.cond58.preheader
  br label %for.body61

for.cond58.preheader.do.body99_crit_edge:         ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body99

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.cond48.preheader.for.body51_crit_edge
  %m.0444 = phi i32 [ %inc56, %for.body51.for.body51_crit_edge ], [ 0, %for.cond48.preheader.for.body51_crit_edge ]
  %add = add i32 %m.0444, %o.1448
  %rem = and i32 %add, 8191
  %arrayidx52 = getelementptr i32, ptr %call6, i32 %rem
  %46 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx52, align 4
  %arrayidx53 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %47
  call void @drm_mm_remove_node(ptr noundef %arrayidx53) #11
  %start.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %47, i32 1
  %48 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %start.i, align 8
  %size.i = getelementptr %struct.drm_mm_node, ptr %call1, i32 %47, i32 2
  %50 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %size.i, align 8
  %call.i = call i64 @div64_u64(i64 noundef %49, i64 noundef %51) #11
  %conv.i287 = trunc i64 %call.i to i32
  %rem.i = and i32 %conv.i287, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv.i287, 5
  %add.ptr.i = getelementptr i32, ptr %call2, i32 %div2.i
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %53
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc56 = add nuw i32 %m.0444, 1
  %exitcond567.not = icmp eq i32 %inc56, %n.1449
  br i1 %exitcond567.not, label %for.cond58.preheader, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body51

for.body61:                                       ; preds = %for.inc96.for.body61_crit_edge, %for.cond58.preheader.for.body61_crit_edge
  %m.1446 = phi i32 [ %inc97, %for.inc96.for.body61_crit_edge ], [ 0, %for.cond58.preheader.for.body61_crit_edge ]
  %add62 = add i32 %m.1446, %o.1448
  %rem63 = and i32 %add62, 8191
  %arrayidx64 = getelementptr i32, ptr %call6, i32 %rem63
  %54 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx64, align 4
  %arrayidx65 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %55
  %call.i.i288 = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx65, i64 noundef %conv16, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i288)
  %tobool.not.i289 = icmp eq i32 %call.i.i288, 0
  br i1 %tobool.not.i289, label %if.end.i293, label %do.end.i291

do.end.i291:                                      ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %conv16, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.119, i32 noundef %call.i.i288) #14
  br label %do.end71

if.end.i293:                                      ; preds = %for.body61
  %flags.i.i317 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %55, i32 12
  %56 = ptrtoint ptr %flags.i.i317 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags.i.i317, align 4
  %and1.i.i.i318 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i318)
  %tobool.i.not.i319 = icmp eq i32 %and1.i.i.i318, 0
  br i1 %tobool.i.not.i319, label %if.end.i293.do.end.i324_crit_edge, label %lor.lhs.false.i322

if.end.i293.do.end.i324_crit_edge:                ; preds = %if.end.i293
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i324

lor.lhs.false.i322:                               ; preds = %if.end.i293
  %mm1.i320 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %55, i32 3
  %58 = ptrtoint ptr %mm1.i320 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mm1.i320, align 8
  %cmp.not.i321 = icmp eq ptr %59, %mm
  br i1 %cmp.not.i321, label %lor.lhs.false.i322.if.end.i328_crit_edge, label %lor.lhs.false.i322.do.end.i324_crit_edge

lor.lhs.false.i322.do.end.i324_crit_edge:         ; preds = %lor.lhs.false.i322
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i324

lor.lhs.false.i322.if.end.i328_crit_edge:         ; preds = %lor.lhs.false.i322
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i328

do.end.i324:                                      ; preds = %lor.lhs.false.i322.do.end.i324_crit_edge, %if.end.i293.do.end.i324_crit_edge
  %call2.i323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i328

if.end.i328:                                      ; preds = %do.end.i324, %lor.lhs.false.i322.if.end.i328_crit_edge
  %ok.0.off0.i325 = phi i1 [ false, %do.end.i324 ], [ true, %lor.lhs.false.i322.if.end.i328_crit_edge ]
  %size3.i326 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %55, i32 2
  %60 = ptrtoint ptr %size3.i326 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %size3.i326, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %conv16)
  %cmp4.not.i327 = icmp eq i64 %61, %conv16
  br i1 %cmp4.not.i327, label %if.end12.i332, label %if.end12.i332.thread

if.end12.i332:                                    ; preds = %if.end.i328
  %62 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp23.not.i333 = icmp eq i32 %63, 0
  br i1 %cmp23.not.i333, label %assert_node.exit337, label %if.end12.i332.assert_node.exit337.thread_crit_edge

if.end12.i332.assert_node.exit337.thread_crit_edge: ; preds = %if.end12.i332
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit337.thread

if.end12.i332.thread:                             ; preds = %if.end.i328
  %call11.i329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %61, i64 noundef %conv16) #14
  %64 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp23.not.i333575 = icmp eq i32 %65, 0
  br i1 %cmp23.not.i333575, label %if.end12.i332.thread.if.then4.i294_crit_edge, label %if.end12.i332.thread.assert_node.exit337.thread_crit_edge

if.end12.i332.thread.assert_node.exit337.thread_crit_edge: ; preds = %if.end12.i332.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit337.thread

if.end12.i332.thread.if.then4.i294_crit_edge:     ; preds = %if.end12.i332.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i294

assert_node.exit337.thread:                       ; preds = %if.end12.i332.thread.assert_node.exit337.thread_crit_edge, %if.end12.i332.assert_node.exit337.thread_crit_edge
  %66 = phi i32 [ %65, %if.end12.i332.thread.assert_node.exit337.thread_crit_edge ], [ %63, %if.end12.i332.assert_node.exit337.thread_crit_edge ]
  %call30.i334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %66, i32 noundef 0) #14
  br label %if.then4.i294

assert_node.exit337:                              ; preds = %if.end12.i332
  br i1 %ok.0.off0.i325, label %if.end74, label %assert_node.exit337.if.then4.i294_crit_edge

assert_node.exit337.if.then4.i294_crit_edge:      ; preds = %assert_node.exit337
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i294

if.then4.i294:                                    ; preds = %assert_node.exit337.if.then4.i294_crit_edge, %assert_node.exit337.thread, %if.end12.i332.thread.if.then4.i294_crit_edge
  call void @drm_mm_remove_node(ptr noundef %arrayidx65) #11
  br label %do.end71

do.end71:                                         ; preds = %if.then4.i294, %do.end.i291
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, i32 noundef %m.1446, i32 noundef %n.1449) #14
  br label %out

if.end74:                                         ; preds = %assert_node.exit337
  %hole_size.i297 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %55, i32 10
  %67 = ptrtoint ptr %hole_size.i297 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %hole_size.i297, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %tobool.i298.not = icmp eq i64 %68, 0
  br i1 %tobool.i298.not, label %if.end83, label %do.end79

do.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %start81 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %55, i32 1
  %69 = ptrtoint ptr %start81 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %start81, align 8
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, i32 noundef %m.1446, i32 noundef %n.1449, i64 noundef %70) #14
  br label %out

if.end83:                                         ; preds = %if.end74
  %call5.i = call i32 @_find_last_bit(ptr noundef nonnull %call2, i32 noundef 8192) #11
  %start.i299 = getelementptr %struct.drm_mm_node, ptr %call1, i32 %55, i32 1
  %71 = ptrtoint ptr %start.i299 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %start.i299, align 8
  %73 = ptrtoint ptr %size3.i326 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %size3.i326, align 8
  %call.i301 = call i64 @div64_u64(i64 noundef %72, i64 noundef %74) #11
  %conv.i302 = trunc i64 %call.i301 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %conv.i302)
  %cmp86.not = icmp eq i32 %call5.i, %conv.i302
  br i1 %cmp86.not, label %for.inc96, label %do.end91

do.end91:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %start.i299 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %start.i299, align 8
  %77 = ptrtoint ptr %size3.i326 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %size3.i326, align 8
  %call.i305 = call i64 @div64_u64(i64 noundef %76, i64 noundef %78) #11
  %conv.i306 = trunc i64 %call.i305 to i32
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, i32 noundef %m.1446, i32 noundef %n.1449, i32 noundef %size.0454, i32 noundef %call5.i, i32 noundef %conv.i306) #14
  br label %out

for.inc96:                                        ; preds = %if.end83
  %rem.i279 = and i32 %call5.i, 31
  %shl.i280 = shl nuw i32 1, %rem.i279
  %div2.i281 = lshr i32 %call5.i, 5
  %add.ptr.i282 = getelementptr i32, ptr %call2, i32 %div2.i281
  %neg.i = xor i32 %shl.i280, -1
  %79 = ptrtoint ptr %add.ptr.i282 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i282, align 4
  %and.i = and i32 %80, %neg.i
  store i32 %and.i, ptr %add.ptr.i282, align 4
  %inc97 = add nuw i32 %m.1446, 1
  %exitcond568.not = icmp eq i32 %inc97, %n.1449
  br i1 %exitcond568.not, label %for.inc96.do.body99_crit_edge, label %for.inc96.for.body61_crit_edge

for.inc96.for.body61_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body61

for.inc96.do.body99_crit_edge:                    ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body99

do.body99:                                        ; preds = %for.inc96.do.body99_crit_edge, %for.cond58.preheader.do.body99_crit_edge, %for.cond48.preheader.do.body99_crit_edge
  %call100 = call i32 @_find_first_bit_be(ptr noundef nonnull %call2, i32 noundef 8192) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %call100)
  %cmp101.not = icmp eq i32 %call100, 8192
  br i1 %cmp101.not, label %do.end114, label %do.body106, !prof !685

do.body106:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1819, 0\0A.popsection", ""() #11, !srcloc !691
  unreachable

do.end114:                                        ; preds = %do.body99
  %add115 = add i32 %n.1449, %o.1448
  %call117 = call i32 @next_prime_number(i32 noundef %n.1449) #11
  %81 = load i32, ptr @max_prime, align 4
  %82 = call i32 @llvm.umin.i32(i32 %81, i32 8192)
  %cmp45.not = icmp ugt i32 %call117, %82
  br i1 %cmp45.not, label %do.end114.for.end118_crit_edge, label %do.end114.for.cond48.preheader_crit_edge

do.end114.for.cond48.preheader_crit_edge:         ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond48.preheader

do.end114.for.end118_crit_edge:                   ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end118

for.end118:                                       ; preds = %do.end114.for.end118_crit_edge, %if.end40.for.end118_crit_edge
  %o.1.lcssa = phi i32 [ %o.0453, %if.end40.for.end118_crit_edge ], [ %add115, %do.end114.for.end118_crit_edge ]
  %83 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %node_list, align 4
  %cmp130.not451 = icmp eq ptr %84, %node_list
  br i1 %cmp130.not451, label %for.end118.do.body142_crit_edge, label %for.end118.for.body134_crit_edge

for.end118.for.body134_crit_edge:                 ; preds = %for.end118
  br label %for.body134

for.end118.do.body142_crit_edge:                  ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body142

for.body134:                                      ; preds = %for.body134.for.body134_crit_edge, %for.end118.for.body134_crit_edge
  %.pn276.in452 = phi ptr [ %.pn276, %for.body134.for.body134_crit_edge ], [ %84, %for.end118.for.body134_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn276.in452, i32 -28
  %85 = ptrtoint ptr %.pn276.in452 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn276 = load ptr, ptr %.pn276.in452, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp130.not = icmp eq ptr %.pn276, %node_list
  br i1 %cmp130.not, label %for.body134.do.body142_crit_edge, label %for.body134.for.body134_crit_edge

for.body134.for.body134_crit_edge:                ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body134

for.body134.do.body142_crit_edge:                 ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body142

do.body142:                                       ; preds = %for.body134.do.body142_crit_edge, %for.end118.do.body142_crit_edge
  %86 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %node_list, align 4
  %cmp.i.i307 = icmp eq ptr %87, %node_list
  br i1 %cmp.i.i307, label %do.end161, label %do.body153, !prof !685

do.body153:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1826, 0\0A.popsection", ""() #11, !srcloc !692
  unreachable

do.end161:                                        ; preds = %do.body142
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 1827, i32 noundef 0) #11
  %call.i308 = call i32 @__cond_resched() #11
  %shl = shl i32 %size.0454, 1
  %cmp = icmp ult i32 %shl, 65
  br i1 %cmp, label %do.end161.for.body_crit_edge, label %do.end161.out_crit_edge

do.end161.out_crit_edge:                          ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end161.for.body_crit_edge:                     ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

out:                                              ; preds = %do.end161.out_crit_edge, %do.end91, %do.end79, %do.end71, %for.end.out_crit_edge, %assert_one_hole.exit.out_crit_edge, %assert_one_hole.exit.thread341, %do.end26, %do.end
  %ret.0 = phi i32 [ -22, %do.end26 ], [ -22, %do.end ], [ -22, %assert_one_hole.exit.thread341 ], [ -22, %do.end79 ], [ -22, %do.end91 ], [ -22, %do.end71 ], [ -22, %assert_one_hole.exit.out_crit_edge ], [ 0, %do.end161.out_crit_edge ], [ -22, %for.end.out_crit_edge ]
  %88 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %node_list, align 4
  %cmp181.not456 = icmp eq ptr %89, %node_list
  br i1 %cmp181.not456, label %out.for.end192_crit_edge, label %out.for.body185_crit_edge

out.for.body185_crit_edge:                        ; preds = %out
  br label %for.body185

out.for.end192_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end192

for.body185:                                      ; preds = %for.body185.for.body185_crit_edge, %out.for.body185_crit_edge
  %.pn.in457 = phi ptr [ %.pn, %for.body185.for.body185_crit_edge ], [ %89, %out.for.body185_crit_edge ]
  %node.1 = getelementptr i8, ptr %.pn.in457, i32 -28
  %90 = ptrtoint ptr %.pn.in457 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn = load ptr, ptr %.pn.in457, align 4
  call void @drm_mm_remove_node(ptr noundef %node.1) #11
  %cmp181.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp181.not, label %for.body185.for.end192_crit_edge, label %for.body185.for.body185_crit_edge

for.body185.for.body185_crit_edge:                ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body185

for.body185.for.end192_crit_edge:                 ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end192

for.end192:                                       ; preds = %for.body185.for.end192_crit_edge, %out.for.end192_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @kfree(ptr noundef nonnull %call6) #11
  br label %err_bitmap

err_bitmap:                                       ; preds = %for.end192, %if.end5.err_bitmap_crit_edge
  %ret.1 = phi i32 [ %ret.0, %for.end192 ], [ -12, %if.end5.err_bitmap_crit_edge ]
  call void @bitmap_free(ptr noundef nonnull %call2) #11
  br label %err_nodes

err_nodes:                                        ; preds = %err_bitmap, %if.end.err_nodes_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_bitmap ], [ -12, %if.end.err_nodes_crit_edge ]
  call void @vfree(ptr noundef nonnull %call1) #11
  br label %cleanup193

cleanup193:                                       ; preds = %err_nodes, %entry.cleanup193_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_nodes ], [ -12, %entry.cleanup193_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prng) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_highest(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__igt_once(i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_color(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %rem.i = alloca i64, align 8
  %mm = alloca %struct.drm_mm, align 8
  %rem155 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_iterations, align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 4096)
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %2 = call ptr @memset(ptr %mm, i32 255, i32 152)
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not446 = icmp eq i32 %1, 0
  br i1 %cmp1.not446, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %n.0447 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 112) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.out_crit_edge, label %if.end

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %for.body
  %conv = zext i32 %n.0447 to i64
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef nonnull %call7.i.i, i64 noundef %conv, i64 noundef 0, i32 noundef %n.0447, i64 noundef 0, i64 noundef -1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %conv, i64 noundef 0, i32 noundef %n.0447, ptr noundef nonnull @.str.117, i32 noundef %call.i.i) #14
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %flags.i.i361 = getelementptr inbounds %struct.drm_mm_node, ptr %call7.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %flags.i.i361 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i361, align 8
  %and1.i.i.i362 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i362)
  %tobool.i.not.i363 = icmp eq i32 %and1.i.i.i362, 0
  br i1 %tobool.i.not.i363, label %if.end.i.do.end.i365_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i365_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i365

lor.lhs.false.i:                                  ; preds = %if.end.i
  %mm1.i = getelementptr inbounds %struct.drm_mm_node, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm1.i, align 8
  %cmp.not.i = icmp eq ptr %7, %mm
  br i1 %cmp.not.i, label %lor.lhs.false.i.if.end.i366_crit_edge, label %lor.lhs.false.i.do.end.i365_crit_edge

lor.lhs.false.i.do.end.i365_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i365

lor.lhs.false.i.if.end.i366_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i366

do.end.i365:                                      ; preds = %lor.lhs.false.i.do.end.i365_crit_edge, %if.end.i.do.end.i365_crit_edge
  %call2.i364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i366

if.end.i366:                                      ; preds = %do.end.i365, %lor.lhs.false.i.if.end.i366_crit_edge
  %ok.0.off0.i = phi i1 [ false, %do.end.i365 ], [ true, %lor.lhs.false.i.if.end.i366_crit_edge ]
  %size3.i = getelementptr inbounds %struct.drm_mm_node, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %size3.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp4.not.i = icmp eq i64 %9, %conv
  br i1 %cmp4.not.i, label %if.end12.i, label %if.end12.i.thread

if.end12.i:                                       ; preds = %if.end.i366
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %n.0447)
  %cmp23.not.i = icmp eq i32 %11, %n.0447
  br i1 %cmp23.not.i, label %assert_node.exit, label %if.end12.i.assert_node.exit.thread_crit_edge

if.end12.i.assert_node.exit.thread_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i.thread:                                ; preds = %if.end.i366
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %9, i64 noundef %conv) #14
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %n.0447)
  %cmp23.not.i554 = icmp eq i32 %13, %n.0447
  br i1 %cmp23.not.i554, label %if.end12.i.thread.if.then4.i_crit_edge, label %if.end12.i.thread.assert_node.exit.thread_crit_edge

if.end12.i.thread.assert_node.exit.thread_crit_edge: ; preds = %if.end12.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i.thread.if.then4.i_crit_edge:           ; preds = %if.end12.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

assert_node.exit.thread:                          ; preds = %if.end12.i.thread.assert_node.exit.thread_crit_edge, %if.end12.i.assert_node.exit.thread_crit_edge
  %14 = phi i32 [ %13, %if.end12.i.thread.assert_node.exit.thread_crit_edge ], [ %11, %if.end12.i.assert_node.exit.thread_crit_edge ]
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %14, i32 noundef %n.0447) #14
  br label %if.then4.i

assert_node.exit:                                 ; preds = %if.end12.i
  br i1 %ok.0.off0.i, label %for.inc, label %assert_node.exit.if.then4.i_crit_edge

assert_node.exit.if.then4.i_crit_edge:            ; preds = %assert_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %assert_node.exit.if.then4.i_crit_edge, %assert_node.exit.thread, %if.end12.i.thread.if.then4.i_crit_edge
  call void @drm_mm_remove_node(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then4.i, %do.end.i
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %n.0447) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %out

for.inc:                                          ; preds = %assert_node.exit
  %inc = add nuw nsw i32 %n.0447, 1
  %exitcond = icmp eq i32 %n.0447, %1
  br i1 %exitcond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node_list, align 4
  %cmp17.not450 = icmp eq ptr %16, %node_list
  br i1 %cmp17.not450, label %for.end.for.end38_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end38

for.body19:                                       ; preds = %if.end31.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %.pn.in451 = phi ptr [ %.pn453, %if.end31.for.body19_crit_edge ], [ %16, %for.end.for.body19_crit_edge ]
  %node.0452 = getelementptr i8, ptr %.pn.in451, i32 -28
  %17 = ptrtoint ptr %node.0452 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node.0452, align 8
  %conv20 = zext i32 %18 to i64
  %size = getelementptr i8, ptr %.pn.in451, i32 -12
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %conv20)
  %cmp21.not = icmp eq i64 %20, %conv20
  br i1 %cmp21.not, label %if.end31, label %do.end26

do.end26:                                         ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, i64 noundef %20, i32 noundef %18) #14
  br label %out

if.end31:                                         ; preds = %for.body19
  %21 = ptrtoint ptr %.pn.in451 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn453 = load ptr, ptr %.pn.in451, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0452) #11
  call void @kfree(ptr noundef %node.0452) #11
  %cmp17.not = icmp eq ptr %.pn453, %node_list
  br i1 %cmp17.not, label %if.end31.for.end38_crit_edge, label %if.end31.for.body19_crit_edge

if.end31.for.body19_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

if.end31.for.end38_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end38

for.end38:                                        ; preds = %if.end31.for.end38_crit_edge, %for.end.for.end38_crit_edge
  %22 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @separate_adjacent_colors, ptr %mm, align 8
  %mul = shl nuw nsw i32 %1, 1
  %add = or i32 %mul, 1
  %conv46 = zext i32 %add to i64
  br label %for.body41

for.body41:                                       ; preds = %for.inc203.for.body41_crit_edge, %for.end38
  %mode.0465 = phi ptr [ @insert_modes, %for.end38 ], [ %incdec.ptr, %for.inc203.for.body41_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i342 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 112) #16
  %tobool43.not = icmp eq ptr %call7.i.i342, null
  br i1 %tobool43.not, label %for.body41.out_crit_edge, label %if.end45

for.body41.out_crit_edge:                         ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end45:                                         ; preds = %for.body41
  %size47 = getelementptr inbounds %struct.drm_mm_node, ptr %call7.i.i342, i32 0, i32 2
  %24 = ptrtoint ptr %size47 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv46, ptr %size47, align 8
  %25 = ptrtoint ptr %call7.i.i342 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %call7.i.i342, align 8
  %call51 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %call7.i.i342) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end59, label %do.end56

do.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282) #14
  br label %out

if.end59:                                         ; preds = %if.end45
  br i1 %cmp1.not446, label %if.end59.for.end135_crit_edge, label %for.body65.preheader

if.end59.for.end135_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end135

for.body65.preheader:                             ; preds = %if.end59
  %26 = ptrtoint ptr %size47 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size47, align 8
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %call7.i.i342, i32 0, i32 1
  %28 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start, align 8
  %add61 = add i64 %27, %29
  br label %for.body65

for.cond114.preheader:                            ; preds = %for.inc111
  br i1 %cmp1.not446, label %for.cond114.preheader.for.end135_crit_edge, label %for.body117.lr.ph

for.cond114.preheader.for.end135_crit_edge:       ; preds = %for.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end135

for.body117.lr.ph:                                ; preds = %for.cond114.preheader
  %mode1.i = getelementptr inbounds %struct.insert_mode, ptr %mode.0465, i32 0, i32 1
  br label %for.body117

for.body65:                                       ; preds = %for.inc111.for.body65_crit_edge, %for.body65.preheader
  %n.1456 = phi i32 [ %add87, %for.inc111.for.body65_crit_edge ], [ 1, %for.body65.preheader ]
  %last.0455 = phi i64 [ %add110, %for.inc111.for.body65_crit_edge ], [ %add61, %for.body65.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i343 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 112) #16
  %tobool67.not = icmp eq ptr %call7.i.i343, null
  br i1 %tobool67.not, label %for.body65.out_crit_edge, label %if.end69

for.body65.out_crit_edge:                         ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end69:                                         ; preds = %for.body65
  %start70 = getelementptr inbounds %struct.drm_mm_node, ptr %call7.i.i343, i32 0, i32 1
  %31 = ptrtoint ptr %start70 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %last.0455, ptr %start70, align 8
  %add71 = add nuw nsw i32 %n.1456, %1
  %conv72 = zext i32 %add71 to i64
  %size73 = getelementptr inbounds %struct.drm_mm_node, ptr %call7.i.i343, i32 0, i32 2
  %32 = ptrtoint ptr %size73 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv72, ptr %size73, align 8
  %33 = ptrtoint ptr %call7.i.i343 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add71, ptr %call7.i.i343, align 8
  %call77 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %call7.i.i343) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call77)
  %cmp78.not = icmp eq i32 %call77, -28
  br i1 %cmp78.not, label %misalignment.exit, label %do.end83

do.end83:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, i32 noundef %n.1456, i32 noundef %call77) #14
  br label %out

misalignment.exit:                                ; preds = %if.end69
  %add87 = add nuw nsw i32 %n.1456, 1
  %conv88 = zext i32 %add87 to i64
  %34 = ptrtoint ptr %start70 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %start70, align 8
  %add90 = add i64 %35, %conv88
  store i64 %add90, ptr %start70, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i) #11
  %36 = ptrtoint ptr %rem.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %rem.i, align 8, !annotation !693
  %call.i = call i64 @div64_u64_rem(i64 noundef %add90, i64 noundef %conv72, ptr noundef nonnull %rem.i) #11
  %37 = ptrtoint ptr %rem.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rem.i, align 8
  %extract.t = trunc i64 %38 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i) #11
  %sub = sub i32 %add71, %extract.t
  %conv96 = zext i32 %sub to i64
  %39 = ptrtoint ptr %start70 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %start70, align 8
  %add98 = add i64 %40, %conv96
  store i64 %add98, ptr %start70, align 8
  %call99 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %call7.i.i343) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %for.inc111, label %do.end104

do.end104:                                        ; preds = %misalignment.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, i32 noundef %n.1456, i32 noundef %call99) #14
  br label %out

for.inc111:                                       ; preds = %misalignment.exit
  %41 = ptrtoint ptr %start70 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %start70, align 8
  %43 = ptrtoint ptr %size73 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size73, align 8
  %add110 = add i64 %44, %42
  %exitcond551 = icmp eq i32 %n.1456, %1
  br i1 %exitcond551, label %for.cond114.preheader, label %for.inc111.for.body65_crit_edge

for.inc111.for.body65_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body65

for.body117:                                      ; preds = %for.inc133.for.body117_crit_edge, %for.body117.lr.ph
  %n.2458 = phi i32 [ 1, %for.body117.lr.ph ], [ %inc134, %for.inc133.for.body117_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i347 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 112) #16
  %tobool119.not = icmp eq ptr %call7.i.i347, null
  br i1 %tobool119.not, label %for.body117.out_crit_edge, label %if.end121

for.body117.out_crit_edge:                        ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end121:                                        ; preds = %for.body117
  %conv122 = zext i32 %n.2458 to i64
  %46 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mode1.i, align 4
  %call.i.i348 = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef nonnull %call7.i.i347, i64 noundef %conv122, i64 noundef %conv122, i32 noundef %n.2458, i64 noundef 0, i64 noundef -1, i32 noundef %47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i348)
  %tobool.not.i349 = icmp eq i32 %call.i.i348, 0
  br i1 %tobool.not.i349, label %if.end.i353, label %do.end.i351

do.end.i351:                                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %mode.0465 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mode.0465, align 4
  %call2.i350 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %conv122, i64 noundef %conv122, i32 noundef %n.2458, ptr noundef %49, i32 noundef %call.i.i348) #14
  br label %do.end128

if.end.i353:                                      ; preds = %if.end121
  %call3.i352 = call fastcc zeroext i1 @assert_node(ptr noundef nonnull %call7.i.i347, ptr noundef nonnull %mm, i64 noundef %conv122, i64 noundef %conv122, i32 noundef %n.2458) #11
  br i1 %call3.i352, label %for.inc133, label %if.then4.i354

if.then4.i354:                                    ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_mm_remove_node(ptr noundef nonnull %call7.i.i347) #11
  br label %do.end128

do.end128:                                        ; preds = %if.then4.i354, %do.end.i351
  %50 = ptrtoint ptr %mode.0465 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mode.0465, align 4
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, ptr noundef %51, i32 noundef %n.2458) #14
  call void @kfree(ptr noundef nonnull %call7.i.i347) #11
  br label %out

for.inc133:                                       ; preds = %if.end.i353
  %inc134 = add nuw nsw i32 %n.2458, 1
  %exitcond552 = icmp eq i32 %n.2458, %1
  br i1 %exitcond552, label %for.inc133.for.end135_crit_edge, label %for.inc133.for.body117_crit_edge

for.inc133.for.body117_crit_edge:                 ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body117

for.inc133.for.end135_crit_edge:                  ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end135

for.end135:                                       ; preds = %for.inc133.for.end135_crit_edge, %for.cond114.preheader.for.end135_crit_edge, %if.end59.for.end135_crit_edge
  %52 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %node_list, align 4
  %cmp151.not461 = icmp eq ptr %53, %node_list
  br i1 %cmp151.not461, label %for.end135.for.inc203_crit_edge, label %for.end135.for.body154_crit_edge

for.end135.for.body154_crit_edge:                 ; preds = %for.end135
  br label %for.body154

for.end135.for.inc203_crit_edge:                  ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc203

for.body154:                                      ; preds = %cleanup188.for.body154_crit_edge, %for.end135.for.body154_crit_edge
  %.pn338.in462 = phi ptr [ %.pn338464, %cleanup188.for.body154_crit_edge ], [ %53, %for.end135.for.body154_crit_edge ]
  %node.1463 = getelementptr i8, ptr %.pn338.in462, i32 -28
  %54 = ptrtoint ptr %.pn338.in462 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn338464 = load ptr, ptr %.pn338.in462, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem155) #11
  %55 = ptrtoint ptr %rem155 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 -1, ptr %rem155, align 8, !annotation !693
  %56 = ptrtoint ptr %node.1463 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %node.1463, align 8
  %conv157 = zext i32 %57 to i64
  %size158 = getelementptr i8, ptr %.pn338.in462, i32 -12
  %58 = ptrtoint ptr %size158 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %size158, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %conv157)
  %cmp159.not = icmp eq i64 %59, %conv157
  br i1 %cmp159.not, label %if.end170, label %do.end164

do.end164:                                        ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %mode.0465 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mode.0465, align 4
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef %61, i64 noundef %59, i32 noundef %57) #14
  br label %cleanup188.thread

if.end170:                                        ; preds = %for.body154
  %hole_size.i.i = getelementptr i8, ptr %.pn338.in462, i32 60
  %62 = ptrtoint ptr %hole_size.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %hole_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool.i.not.i = icmp eq i64 %63, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %if.end170.if.end173_crit_edge

if.end170.if.end173_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

land.lhs.true.i:                                  ; preds = %if.end170
  %64 = ptrtoint ptr %.pn338.in462 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %.pn338.in462, align 4
  %flags.i.i = getelementptr i8, ptr %65, i32 76
  %66 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i29.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i29.not.i, label %land.lhs.true.i.if.end173_crit_edge, label %colors_abutt.exit

land.lhs.true.i.if.end173_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

colors_abutt.exit:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %65, i32 -28
  %start.i357 = getelementptr i8, ptr %.pn338.in462, i32 -20
  %68 = ptrtoint ptr %start.i357 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %start.i357, align 8
  %70 = ptrtoint ptr %size158 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %size158, align 8
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i, align 8
  %start14.i = getelementptr i8, ptr %65, i32 -20
  %74 = ptrtoint ptr %start14.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %start14.i, align 8
  %size20.i = getelementptr i8, ptr %65, i32 -12
  %76 = ptrtoint ptr %size20.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %size20.i, align 8
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, i32 noundef %57, i64 noundef %69, i64 noundef %71, i32 noundef %73, i64 noundef %75, i64 noundef %77) #14
  br label %cleanup188.thread

if.end173:                                        ; preds = %land.lhs.true.i.if.end173_crit_edge, %if.end170.if.end173_crit_edge
  %start174 = getelementptr i8, ptr %.pn338.in462, i32 -20
  %78 = ptrtoint ptr %start174 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %start174, align 8
  %80 = ptrtoint ptr %size158 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %size158, align 8
  %call176 = call i64 @div64_u64_rem(i64 noundef %79, i64 noundef %81, ptr noundef nonnull %rem155) #11
  %82 = ptrtoint ptr %rem155 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rem155, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %83)
  %tobool177.not = icmp eq i64 %83, 0
  br i1 %tobool177.not, label %cleanup188, label %do.end181

do.end181:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %start174.le = getelementptr i8, ptr %.pn338.in462, i32 -20
  %84 = ptrtoint ptr %mode.0465 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mode.0465, align 4
  %86 = ptrtoint ptr %start174.le to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %start174.le, align 8
  %88 = ptrtoint ptr %size158 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %size158, align 8
  %call186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, ptr noundef %85, i64 noundef %87, i64 noundef %89, i64 noundef %83) #14
  br label %cleanup188.thread

cleanup188.thread:                                ; preds = %do.end181, %colors_abutt.exit, %do.end164
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem155) #11
  br label %out

cleanup188:                                       ; preds = %if.end173
  call void @drm_mm_remove_node(ptr noundef %node.1463) #11
  call void @kfree(ptr noundef %node.1463) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem155) #11
  %cmp151.not = icmp eq ptr %.pn338464, %node_list
  br i1 %cmp151.not, label %cleanup188.for.inc203_crit_edge, label %cleanup188.for.body154_crit_edge

cleanup188.for.body154_crit_edge:                 ; preds = %cleanup188
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body154

cleanup188.for.inc203_crit_edge:                  ; preds = %cleanup188
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc203

for.inc203:                                       ; preds = %cleanup188.for.inc203_crit_edge, %for.end135.for.inc203_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 2176, i32 noundef 0) #11
  %call.i360 = call i32 @__cond_resched() #11
  %incdec.ptr = getelementptr %struct.insert_mode, ptr %mode.0465, i32 1
  %90 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %incdec.ptr, align 4
  %tobool40.not = icmp eq ptr %91, null
  br i1 %tobool40.not, label %for.inc203.out_crit_edge, label %for.inc203.for.body41_crit_edge

for.inc203.for.body41_crit_edge:                  ; preds = %for.inc203
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41

for.inc203.out_crit_edge:                         ; preds = %for.inc203
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc203.out_crit_edge, %cleanup188.thread, %do.end128, %for.body117.out_crit_edge, %do.end104, %do.end83, %for.body65.out_crit_edge, %do.end56, %for.body41.out_crit_edge, %do.end26, %do.end, %for.body.out_crit_edge
  %ret.4 = phi i32 [ -22, %do.end ], [ -22, %do.end26 ], [ -22, %cleanup188.thread ], [ -22, %do.end128 ], [ %call51, %do.end56 ], [ -22, %do.end83 ], [ %call99, %do.end104 ], [ -12, %for.body117.out_crit_edge ], [ -12, %for.body65.out_crit_edge ], [ -12, %for.body41.out_crit_edge ], [ 0, %for.inc203.out_crit_edge ], [ -12, %for.body.out_crit_edge ]
  %node_list207 = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %node_list207 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %node_list207, align 4
  %cmp220.not467 = icmp eq ptr %93, %node_list207
  br i1 %cmp220.not467, label %out.cleanup231_crit_edge, label %out.for.body223_crit_edge

out.for.body223_crit_edge:                        ; preds = %out
  br label %for.body223

out.cleanup231_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup231

for.body223:                                      ; preds = %for.body223.for.body223_crit_edge, %out.for.body223_crit_edge
  %.pn337.in468 = phi ptr [ %.pn337, %for.body223.for.body223_crit_edge ], [ %93, %out.for.body223_crit_edge ]
  %node.2 = getelementptr i8, ptr %.pn337.in468, i32 -28
  %94 = ptrtoint ptr %.pn337.in468 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pn337 = load ptr, ptr %.pn337.in468, align 4
  call void @drm_mm_remove_node(ptr noundef %node.2) #11
  call void @kfree(ptr noundef %node.2) #11
  %cmp220.not = icmp eq ptr %.pn337, %node_list207
  br i1 %cmp220.not, label %for.body223.cleanup231_crit_edge, label %for.body223.for.body223_crit_edge

for.body223.for.body223_crit_edge:                ; preds = %for.body223
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body223

for.body223.cleanup231_crit_edge:                 ; preds = %for.body223
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup231

cleanup231:                                       ; preds = %for.body223.cleanup231_crit_edge, %out.cleanup231_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_color_evict(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %prng = alloca %struct.rnd_state, align 4
  %state__ = alloca %struct.rnd_state, align 4
  %mm = alloca %struct.drm_mm, align 8
  %__p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prng) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state__) #11
  %0 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 3
  %3 = load i32, ptr @random_seed, align 4
  %shl.i = shl i32 %3, 10
  %xor1.i = xor i32 %shl.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor1.i)
  %cmp.i.i = icmp ult i32 %xor1.i, 2
  %add.i.i = select i1 %cmp.i.i, i32 2, i32 0
  %cond.i.i = add i32 %add.i.i, %xor1.i
  %4 = ptrtoint ptr %state__ to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i.i, ptr %state__, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %xor1.i)
  %cmp.i15.i = icmp ult i32 %xor1.i, 8
  %add.i16.i = select i1 %cmp.i15.i, i32 8, i32 0
  %cond.i17.i = add i32 %add.i16.i, %xor1.i
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i17.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %xor1.i)
  %cmp.i18.i = icmp ult i32 %xor1.i, 16
  %add.i19.i = select i1 %cmp.i18.i, i32 16, i32 0
  %cond.i20.i = add i32 %add.i19.i, %xor1.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i20.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %xor1.i)
  %cmp.i21.i = icmp ult i32 %xor1.i, 128
  %add.i22.i = select i1 %cmp.i21.i, i32 128, i32 0
  %cond.i23.i = add i32 %add.i22.i, %xor1.i
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i23.i, ptr %2, align 4
  %8 = ptrtoint ptr %state__ to i32
  %9 = call i32 @llvm.read_register.i32(metadata !666) #11
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
  %add.i24.i = add i32 %14, ptrtoint (ptr @net_rand_noise to i32)
  %15 = inttoptr i32 %add.i24.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %xor.i.i = xor i32 %17, %8
  %add8.i.i = add i32 %xor.i.i, %xor1.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #11
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i1.i.i, ptr %15, align 4
  %19 = call ptr @memcpy(ptr %prng, ptr %state__, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state__) #11
  %20 = load i32, ptr @max_iterations, align 4
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 8192)
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %22 = call ptr @memset(ptr %mm, i32 255, i32 152)
  %23 = mul nuw nsw i32 %21, 120
  %call2 = call noalias ptr @vzalloc(i32 noundef %23) #15
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup132_crit_edge, label %if.end

entry.cleanup132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup132

if.end:                                           ; preds = %entry
  %call3 = call ptr @drm_random_order(i32 noundef %21, ptr noundef nonnull %prng) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.err_nodes_crit_edge, label %if.end6

if.end.err_nodes_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_nodes

if.end6:                                          ; preds = %if.end
  %mul = shl nuw nsw i32 %21, 1
  %sub = add nsw i32 %mul, -1
  %conv7 = zext i32 %sub to i64
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef %conv7) #11
  %24 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @separate_adjacent_colors, ptr %mm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8251.not = icmp eq i32 %21, 0
  br i1 %cmp8251.not, label %if.end6.for.cond17.preheader_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.cond17.preheader_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.inc.for.cond17.preheader_crit_edge, %if.end6.for.cond17.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp38258 = icmp ugt i32 %21, 1
  %div211 = lshr i32 %21, 1
  br label %for.cond20.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %color.0253 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.evict_node, ptr %call2, i32 %color.0253
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx, i64 noundef 1, i64 noundef 0, i32 noundef %color.0253, i64 noundef 0, i64 noundef -1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef 1, i64 noundef 0, i32 noundef %color.0253, ptr noundef nonnull @.str.117, i32 noundef %call.i.i) #14
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.drm_mm_node, ptr %arrayidx, i32 0, i32 12
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.do.end.i215_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i215_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i215

lor.lhs.false.i:                                  ; preds = %if.end.i
  %mm1.i = getelementptr inbounds %struct.drm_mm_node, ptr %arrayidx, i32 0, i32 3
  %27 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mm1.i, align 8
  %cmp.not.i = icmp eq ptr %28, %mm
  br i1 %cmp.not.i, label %lor.lhs.false.i.if.end.i216_crit_edge, label %lor.lhs.false.i.do.end.i215_crit_edge

lor.lhs.false.i.do.end.i215_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i215

lor.lhs.false.i.if.end.i216_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i216

do.end.i215:                                      ; preds = %lor.lhs.false.i.do.end.i215_crit_edge, %if.end.i.do.end.i215_crit_edge
  %call2.i214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i216

if.end.i216:                                      ; preds = %do.end.i215, %lor.lhs.false.i.if.end.i216_crit_edge
  %ok.0.off0.i = phi i1 [ false, %do.end.i215 ], [ true, %lor.lhs.false.i.if.end.i216_crit_edge ]
  %size3.i = getelementptr inbounds %struct.drm_mm_node, ptr %arrayidx, i32 0, i32 2
  %29 = ptrtoint ptr %size3.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %size3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %30)
  %cmp4.not.i = icmp eq i64 %30, 1
  br i1 %cmp4.not.i, label %if.end12.i, label %if.end12.i.thread

if.end12.i:                                       ; preds = %if.end.i216
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %color.0253)
  %cmp23.not.i = icmp eq i32 %32, %color.0253
  br i1 %cmp23.not.i, label %assert_node.exit, label %if.end12.i.assert_node.exit.thread_crit_edge

if.end12.i.assert_node.exit.thread_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i.thread:                                ; preds = %if.end.i216
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %30, i64 noundef 1) #14
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %color.0253)
  %cmp23.not.i299 = icmp eq i32 %34, %color.0253
  br i1 %cmp23.not.i299, label %if.end12.i.thread.if.then4.i_crit_edge, label %if.end12.i.thread.assert_node.exit.thread_crit_edge

if.end12.i.thread.assert_node.exit.thread_crit_edge: ; preds = %if.end12.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i.thread.if.then4.i_crit_edge:           ; preds = %if.end12.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

assert_node.exit.thread:                          ; preds = %if.end12.i.thread.assert_node.exit.thread_crit_edge, %if.end12.i.assert_node.exit.thread_crit_edge
  %35 = phi i32 [ %34, %if.end12.i.thread.assert_node.exit.thread_crit_edge ], [ %32, %if.end12.i.assert_node.exit.thread_crit_edge ]
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %35, i32 noundef %color.0253) #14
  br label %if.then4.i

assert_node.exit:                                 ; preds = %if.end12.i
  br i1 %ok.0.off0.i, label %for.inc, label %assert_node.exit.if.then4.i_crit_edge

assert_node.exit.if.then4.i_crit_edge:            ; preds = %assert_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %assert_node.exit.if.then4.i_crit_edge, %assert_node.exit.thread, %if.end12.i.thread.if.then4.i_crit_edge
  call void @drm_mm_remove_node(ptr noundef %arrayidx) #11
  br label %do.end

do.end:                                           ; preds = %if.then4.i, %do.end.i
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %color.0253) #14
  br label %do.body104

for.inc:                                          ; preds = %assert_node.exit
  %inc = add nuw nsw i32 %color.0253, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.inc.for.cond17.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.cond17.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond17.preheader

for.cond20.preheader:                             ; preds = %for.end97.for.cond20.preheader_crit_edge, %for.cond17.preheader
  %mode.0267 = phi ptr [ @evict_modes, %for.cond17.preheader ], [ %incdec.ptr, %for.end97.for.cond20.preheader_crit_edge ]
  %color.1266 = phi i32 [ %21, %for.cond17.preheader ], [ %color.4.lcssa, %for.end97.for.cond20.preheader_crit_edge ]
  br i1 %cmp8251.not, label %for.cond20.preheader.for.cond37.preheader_crit_edge, label %for.cond20.preheader.for.body23_crit_edge

for.cond20.preheader.for.body23_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body23

for.cond20.preheader.for.cond37.preheader_crit_edge: ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.inc35.for.cond37.preheader_crit_edge, %for.cond20.preheader.for.cond37.preheader_crit_edge
  %color.2.lcssa = phi i32 [ %color.1266, %for.cond20.preheader.for.cond37.preheader_crit_edge ], [ %inc24, %for.inc35.for.cond37.preheader_crit_edge ]
  br i1 %cmp38258, label %for.cond37.preheader.for.body40_crit_edge, label %for.cond37.preheader.for.cond56.preheader_crit_edge

for.cond37.preheader.for.cond56.preheader_crit_edge: ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond56.preheader

for.cond37.preheader.for.body40_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body40

for.body23:                                       ; preds = %for.inc35.for.body23_crit_edge, %for.cond20.preheader.for.body23_crit_edge
  %color.2256 = phi i32 [ %inc24, %for.inc35.for.body23_crit_edge ], [ %color.1266, %for.cond20.preheader.for.body23_crit_edge ]
  %n.1255 = phi i32 [ %shl, %for.inc35.for.body23_crit_edge ], [ 1, %for.cond20.preheader.for.body23_crit_edge ]
  call void @drm_random_reorder(ptr noundef nonnull %call3, i32 noundef %21, ptr noundef nonnull %prng) #11
  %call25 = call fastcc i32 @evict_color(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef -1, ptr noundef nonnull %call2, ptr noundef nonnull %call3, i32 noundef %21, i32 noundef %n.1255, i32 noundef 1, i32 noundef %color.2256, ptr noundef %mode.0267)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.inc35, label %do.end30

do.end30:                                         ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %mode.0267 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mode.0267, align 4
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.303, ptr noundef %37, i32 noundef %n.1255) #14
  br label %do.body104

for.inc35:                                        ; preds = %for.body23
  %inc24 = add i32 %color.2256, 1
  %shl = shl i32 %n.1255, 1
  %cmp21.not = icmp ugt i32 %shl, %21
  br i1 %cmp21.not, label %for.inc35.for.cond37.preheader_crit_edge, label %for.inc35.for.body23_crit_edge

for.inc35.for.body23_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.inc35.for.cond37.preheader_crit_edge:         ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond37.preheader

for.cond56.preheader:                             ; preds = %for.inc53.for.cond56.preheader_crit_edge, %for.cond37.preheader.for.cond56.preheader_crit_edge
  %color.3.lcssa = phi i32 [ %color.2.lcssa, %for.cond37.preheader.for.cond56.preheader_crit_edge ], [ %inc41, %for.inc53.for.cond56.preheader_crit_edge ]
  %38 = load i32, ptr @max_prime, align 4
  %39 = call i32 @llvm.umin.i32(i32 %21, i32 %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp64.not262 = icmp eq i32 %39, 0
  br i1 %cmp64.not262, label %for.cond56.preheader.for.end97_crit_edge, label %for.cond56.preheader.for.body66_crit_edge

for.cond56.preheader.for.body66_crit_edge:        ; preds = %for.cond56.preheader
  br label %for.body66

for.cond56.preheader.for.end97_crit_edge:         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end97

for.body40:                                       ; preds = %for.inc53.for.body40_crit_edge, %for.cond37.preheader.for.body40_crit_edge
  %color.3260 = phi i32 [ %inc41, %for.inc53.for.body40_crit_edge ], [ %color.2.lcssa, %for.cond37.preheader.for.body40_crit_edge ]
  %n.2259 = phi i32 [ %shl54, %for.inc53.for.body40_crit_edge ], [ 1, %for.cond37.preheader.for.body40_crit_edge ]
  call void @drm_random_reorder(ptr noundef nonnull %call3, i32 noundef %21, ptr noundef nonnull %prng) #11
  %call42 = call fastcc i32 @evict_color(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef -1, ptr noundef nonnull %call2, ptr noundef nonnull %call3, i32 noundef %21, i32 noundef %div211, i32 noundef %n.2259, i32 noundef %color.3260, ptr noundef %mode.0267)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %for.inc53, label %do.end47

do.end47:                                         ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %mode.0267 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mode.0267, align 4
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef %41, i32 noundef %div211, i32 noundef %n.2259) #14
  br label %do.body104

for.inc53:                                        ; preds = %for.body40
  %inc41 = add i32 %color.3260, 1
  %shl54 = shl i32 %n.2259, 1
  %cmp38 = icmp ult i32 %shl54, %21
  br i1 %cmp38, label %for.inc53.for.body40_crit_edge, label %for.inc53.for.cond56.preheader_crit_edge

for.inc53.for.cond56.preheader_crit_edge:         ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond56.preheader

for.inc53.for.body40_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40

for.body66:                                       ; preds = %for.inc95.for.body66_crit_edge, %for.cond56.preheader.for.body66_crit_edge
  %color.4264 = phi i32 [ %inc84, %for.inc95.for.body66_crit_edge ], [ %color.3.lcssa, %for.cond56.preheader.for.body66_crit_edge ]
  %n.3263 = phi i32 [ %call96, %for.inc95.for.body66_crit_edge ], [ 1, %for.cond56.preheader.for.body66_crit_edge ]
  %sub67 = sub i32 %21, %n.3263
  %add = add i32 %sub67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %tobool70.not = icmp ult i32 %add, 2
  br i1 %tobool70.not, label %do.body75, label %do.end83, !prof !676

do.body75:                                        ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2327, 0\0A.popsection", ""() #11, !srcloc !694
  unreachable

do.end83:                                         ; preds = %for.body66
  %div68210 = lshr i32 %add, 1
  call void @drm_random_reorder(ptr noundef nonnull %call3, i32 noundef %21, ptr noundef nonnull %prng) #11
  %call85 = call fastcc i32 @evict_color(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef -1, ptr noundef nonnull %call2, ptr noundef nonnull %call3, i32 noundef %21, i32 noundef %div68210, i32 noundef %n.3263, i32 noundef %color.4264, ptr noundef %mode.0267)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %for.inc95, label %cleanup

cleanup:                                          ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %mode.0267 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mode.0267, align 4
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef %43, i32 noundef %div68210, i32 noundef %n.3263) #14
  br label %do.body104

for.inc95:                                        ; preds = %do.end83
  %inc84 = add i32 %color.4264, 1
  %call96 = call i32 @next_prime_number(i32 noundef %n.3263) #11
  %44 = load i32, ptr @max_prime, align 4
  %45 = call i32 @llvm.umin.i32(i32 %21, i32 %44)
  %cmp64.not = icmp ugt i32 %call96, %45
  br i1 %cmp64.not, label %for.inc95.for.end97_crit_edge, label %for.inc95.for.body66_crit_edge

for.inc95.for.body66_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body66

for.inc95.for.end97_crit_edge:                    ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end97

for.end97:                                        ; preds = %for.inc95.for.end97_crit_edge, %for.cond56.preheader.for.end97_crit_edge
  %color.4.lcssa = phi i32 [ %color.3.lcssa, %for.cond56.preheader.for.end97_crit_edge ], [ %inc84, %for.inc95.for.end97_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 2341, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %incdec.ptr = getelementptr %struct.insert_mode, ptr %mode.0267, i32 1
  %46 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %incdec.ptr, align 4
  %tobool18.not = icmp eq ptr %47, null
  br i1 %tobool18.not, label %for.end97.if.end107_crit_edge, label %for.end97.for.cond20.preheader_crit_edge

for.end97.for.cond20.preheader_crit_edge:         ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond20.preheader

for.end97.if.end107_crit_edge:                    ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

do.body104:                                       ; preds = %cleanup, %do.end47, %do.end30, %do.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %__p) #11
  %48 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 1
  %49 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 2
  %50 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 3
  %51 = ptrtoint ptr %__p to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @__drm_printfn_debug, ptr %__p, align 4, !alias.scope !695
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %48, align 4, !alias.scope !695
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %49, align 4, !alias.scope !695
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.301, ptr %50, align 4, !alias.scope !695
  call void @drm_mm_print(ptr noundef nonnull %mm, ptr noundef nonnull %__p) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %__p) #11
  br label %if.end107

if.end107:                                        ; preds = %do.body104, %for.end97.if.end107_crit_edge
  %ret.0223 = phi i32 [ -22, %do.body104 ], [ 0, %for.end97.if.end107_crit_edge ]
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %node_list, align 4
  %cmp119.not270 = icmp eq ptr %56, %node_list
  br i1 %cmp119.not270, label %if.end107.for.end130_crit_edge, label %if.end107.for.body123_crit_edge

if.end107.for.body123_crit_edge:                  ; preds = %if.end107
  br label %for.body123

if.end107.for.end130_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end130

for.body123:                                      ; preds = %for.body123.for.body123_crit_edge, %if.end107.for.body123_crit_edge
  %.pn.in271 = phi ptr [ %.pn, %for.body123.for.body123_crit_edge ], [ %56, %if.end107.for.body123_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn.in271, i32 -28
  %57 = ptrtoint ptr %.pn.in271 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn = load ptr, ptr %.pn.in271, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp119.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp119.not, label %for.body123.for.end130_crit_edge, label %for.body123.for.body123_crit_edge

for.body123.for.body123_crit_edge:                ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body123

for.body123.for.end130_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end130

for.end130:                                       ; preds = %for.body123.for.end130_crit_edge, %if.end107.for.end130_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @kfree(ptr noundef nonnull %call3) #11
  br label %err_nodes

err_nodes:                                        ; preds = %for.end130, %if.end.err_nodes_crit_edge
  %ret.1 = phi i32 [ %ret.0223, %for.end130 ], [ -12, %if.end.err_nodes_crit_edge ]
  call void @vfree(ptr noundef nonnull %call2) #11
  br label %cleanup132

cleanup132:                                       ; preds = %err_nodes, %entry.cleanup132_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_nodes ], [ -12, %entry.cleanup132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prng) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igt_color_evict_range(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %prng = alloca %struct.rnd_state, align 4
  %state__ = alloca %struct.rnd_state, align 4
  %mm = alloca %struct.drm_mm, align 8
  %__p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prng) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state__) #11
  %0 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 3
  %3 = load i32, ptr @random_seed, align 4
  %shl.i = shl i32 %3, 10
  %xor1.i = xor i32 %shl.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor1.i)
  %cmp.i.i = icmp ult i32 %xor1.i, 2
  %add.i.i = select i1 %cmp.i.i, i32 2, i32 0
  %cond.i.i = add i32 %add.i.i, %xor1.i
  %4 = ptrtoint ptr %state__ to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i.i, ptr %state__, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %xor1.i)
  %cmp.i15.i = icmp ult i32 %xor1.i, 8
  %add.i16.i = select i1 %cmp.i15.i, i32 8, i32 0
  %cond.i17.i = add i32 %add.i16.i, %xor1.i
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i17.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %xor1.i)
  %cmp.i18.i = icmp ult i32 %xor1.i, 16
  %add.i19.i = select i1 %cmp.i18.i, i32 16, i32 0
  %cond.i20.i = add i32 %add.i19.i, %xor1.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i20.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %xor1.i)
  %cmp.i21.i = icmp ult i32 %xor1.i, 128
  %add.i22.i = select i1 %cmp.i21.i, i32 128, i32 0
  %cond.i23.i = add i32 %add.i22.i, %xor1.i
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i23.i, ptr %2, align 4
  %8 = ptrtoint ptr %state__ to i32
  %9 = call i32 @llvm.read_register.i32(metadata !666) #11
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
  %add.i24.i = add i32 %14, ptrtoint (ptr @net_rand_noise to i32)
  %15 = inttoptr i32 %add.i24.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %xor.i.i = xor i32 %17, %8
  %add8.i.i = add i32 %xor.i.i, %xor1.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #11
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i1.i.i, ptr %15, align 4
  %19 = call ptr @memcpy(ptr %prng, ptr %state__, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state__) #11
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %20 = call ptr @memset(ptr %mm, i32 255, i32 152)
  %call1 = call noalias ptr @vzalloc(i32 noundef 983040) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup121_crit_edge, label %if.end

entry.cleanup121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

if.end:                                           ; preds = %entry
  %call2 = call ptr @drm_random_order(i32 noundef 8192, ptr noundef nonnull %prng) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_nodes_crit_edge, label %if.end5

if.end.err_nodes_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_nodes

if.end5:                                          ; preds = %if.end
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef 16383) #11
  %21 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @separate_adjacent_colors, ptr %mm, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %color.0223 = phi i32 [ 0, %if.end5 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.evict_node, ptr %call1, i32 %color.0223
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx, i64 noundef 1, i64 noundef 0, i32 noundef %color.0223, i64 noundef 0, i64 noundef -1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef 1, i64 noundef 0, i32 noundef %color.0223, ptr noundef nonnull @.str.117, i32 noundef %call.i.i) #14
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.drm_mm_node, ptr %arrayidx, i32 0, i32 12
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.do.end.i186_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i186_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i186

lor.lhs.false.i:                                  ; preds = %if.end.i
  %mm1.i = getelementptr inbounds %struct.drm_mm_node, ptr %arrayidx, i32 0, i32 3
  %24 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mm1.i, align 8
  %cmp.not.i = icmp eq ptr %25, %mm
  br i1 %cmp.not.i, label %lor.lhs.false.i.if.end.i187_crit_edge, label %lor.lhs.false.i.do.end.i186_crit_edge

lor.lhs.false.i.do.end.i186_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i186

lor.lhs.false.i.if.end.i187_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i187

do.end.i186:                                      ; preds = %lor.lhs.false.i.do.end.i186_crit_edge, %if.end.i.do.end.i186_crit_edge
  %call2.i185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i187

if.end.i187:                                      ; preds = %do.end.i186, %lor.lhs.false.i.if.end.i187_crit_edge
  %ok.0.off0.i = phi i1 [ false, %do.end.i186 ], [ true, %lor.lhs.false.i.if.end.i187_crit_edge ]
  %size3.i = getelementptr inbounds %struct.drm_mm_node, ptr %arrayidx, i32 0, i32 2
  %26 = ptrtoint ptr %size3.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %27)
  %cmp4.not.i = icmp eq i64 %27, 1
  br i1 %cmp4.not.i, label %if.end12.i, label %if.end12.i.thread

if.end12.i:                                       ; preds = %if.end.i187
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %color.0223)
  %cmp23.not.i = icmp eq i32 %29, %color.0223
  br i1 %cmp23.not.i, label %assert_node.exit, label %if.end12.i.assert_node.exit.thread_crit_edge

if.end12.i.assert_node.exit.thread_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i.thread:                                ; preds = %if.end.i187
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %27, i64 noundef 1) #14
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %color.0223)
  %cmp23.not.i263 = icmp eq i32 %31, %color.0223
  br i1 %cmp23.not.i263, label %if.end12.i.thread.if.then4.i_crit_edge, label %if.end12.i.thread.assert_node.exit.thread_crit_edge

if.end12.i.thread.assert_node.exit.thread_crit_edge: ; preds = %if.end12.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i.thread.if.then4.i_crit_edge:           ; preds = %if.end12.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

assert_node.exit.thread:                          ; preds = %if.end12.i.thread.assert_node.exit.thread_crit_edge, %if.end12.i.assert_node.exit.thread_crit_edge
  %32 = phi i32 [ %31, %if.end12.i.thread.assert_node.exit.thread_crit_edge ], [ %29, %if.end12.i.assert_node.exit.thread_crit_edge ]
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %32, i32 noundef %color.0223) #14
  br label %if.then4.i

assert_node.exit:                                 ; preds = %if.end12.i
  br i1 %ok.0.off0.i, label %for.inc, label %assert_node.exit.if.then4.i_crit_edge

assert_node.exit.if.then4.i_crit_edge:            ; preds = %assert_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %assert_node.exit.if.then4.i_crit_edge, %assert_node.exit.thread, %if.end12.i.thread.if.then4.i_crit_edge
  call void @drm_mm_remove_node(ptr noundef %arrayidx) #11
  br label %do.end

do.end:                                           ; preds = %if.then4.i, %do.end.i
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %color.0223) #14
  br label %do.body93

for.inc:                                          ; preds = %assert_node.exit
  %inc = add nuw nsw i32 %color.0223, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %for.inc.for.cond16.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.cond16.preheader_crit_edge:           ; preds = %for.inc
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.end86.for.cond16.preheader_crit_edge, %for.inc.for.cond16.preheader_crit_edge
  %mode.0232 = phi ptr [ %incdec.ptr, %for.end86.for.cond16.preheader_crit_edge ], [ @evict_modes, %for.inc.for.cond16.preheader_crit_edge ]
  %color.1231 = phi i32 [ %color.4.lcssa, %for.end86.for.cond16.preheader_crit_edge ], [ 8192, %for.inc.for.cond16.preheader_crit_edge ]
  br label %for.body19

for.body19:                                       ; preds = %for.inc31.for.body19_crit_edge, %for.cond16.preheader
  %color.2225 = phi i32 [ %color.1231, %for.cond16.preheader ], [ %inc20, %for.inc31.for.body19_crit_edge ]
  %n.1224 = phi i32 [ 1, %for.cond16.preheader ], [ %shl, %for.inc31.for.body19_crit_edge ]
  call void @drm_random_reorder(ptr noundef nonnull %call2, i32 noundef 4096, ptr noundef nonnull %prng) #11
  %call21 = call fastcc i32 @evict_color(ptr noundef nonnull %mm, i64 noundef 2048, i64 noundef 6144, ptr noundef nonnull %call1, ptr noundef nonnull %call2, i32 noundef 8192, i32 noundef %n.1224, i32 noundef 1, i32 noundef %color.2225, ptr noundef %mode.0232)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.inc31, label %do.end26

do.end26:                                         ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %mode.0232 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mode.0232, align 4
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.321, ptr noundef %34, i32 noundef %n.1224, i32 noundef 2048, i32 noundef 6144) #14
  br label %do.body93

for.inc31:                                        ; preds = %for.body19
  %inc20 = add i32 %color.2225, 1
  %shl = shl nuw nsw i32 %n.1224, 1
  %cmp17 = icmp ult i32 %n.1224, 2049
  br i1 %cmp17, label %for.inc31.for.body19_crit_edge, label %for.inc31.for.body36_crit_edge

for.inc31.for.body36_crit_edge:                   ; preds = %for.inc31
  br label %for.body36

for.inc31.for.body19_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

for.cond51.preheader:                             ; preds = %for.inc48
  %35 = load i32, ptr @max_prime, align 4
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp55.not228 = icmp eq i32 %36, 0
  br i1 %cmp55.not228, label %for.cond51.preheader.for.end86_crit_edge, label %for.cond51.preheader.for.body57_crit_edge

for.cond51.preheader.for.body57_crit_edge:        ; preds = %for.cond51.preheader
  br label %for.body57

for.cond51.preheader.for.end86_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end86

for.body36:                                       ; preds = %for.inc48.for.body36_crit_edge, %for.inc31.for.body36_crit_edge
  %color.3227 = phi i32 [ %inc37, %for.inc48.for.body36_crit_edge ], [ %inc20, %for.inc31.for.body36_crit_edge ]
  %n.2226 = phi i32 [ %shl49, %for.inc48.for.body36_crit_edge ], [ 1, %for.inc31.for.body36_crit_edge ]
  call void @drm_random_reorder(ptr noundef nonnull %call2, i32 noundef 8192, ptr noundef nonnull %prng) #11
  %call38 = call fastcc i32 @evict_color(ptr noundef nonnull %mm, i64 noundef 2048, i64 noundef 6144, ptr noundef nonnull %call1, ptr noundef nonnull %call2, i32 noundef 8192, i32 noundef 2048, i32 noundef %n.2226, i32 noundef %color.3227, ptr noundef %mode.0232)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.inc48, label %do.end43

do.end43:                                         ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %mode.0232 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mode.0232, align 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef %38, i32 noundef 4096, i32 noundef %n.2226, i32 noundef 2048, i32 noundef 6144) #14
  br label %do.body93

for.inc48:                                        ; preds = %for.body36
  %inc37 = add i32 %color.3227, 1
  %shl49 = shl nuw nsw i32 %n.2226, 1
  %cmp34 = icmp ult i32 %n.2226, 2048
  br i1 %cmp34, label %for.inc48.for.body36_crit_edge, label %for.cond51.preheader

for.inc48.for.body36_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body36

for.body57:                                       ; preds = %for.inc84.for.body57_crit_edge, %for.cond51.preheader.for.body57_crit_edge
  %color.4230 = phi i32 [ %inc73, %for.inc84.for.body57_crit_edge ], [ %inc37, %for.cond51.preheader.for.body57_crit_edge ]
  %n.3229 = phi i32 [ %call85, %for.inc84.for.body57_crit_edge ], [ 1, %for.cond51.preheader.for.body57_crit_edge ]
  %add = sub i32 4097, %n.3229
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %tobool59.not = icmp ult i32 %add, 2
  br i1 %tobool59.not, label %do.body64, label %do.end72, !prof !676

do.body64:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2428, 0\0A.popsection", ""() #11, !srcloc !698
  unreachable

do.end72:                                         ; preds = %for.body57
  %div183 = lshr i32 %add, 1
  call void @drm_random_reorder(ptr noundef nonnull %call2, i32 noundef 8192, ptr noundef nonnull %prng) #11
  %call74 = call fastcc i32 @evict_color(ptr noundef nonnull %mm, i64 noundef 2048, i64 noundef 6144, ptr noundef nonnull %call1, ptr noundef nonnull %call2, i32 noundef 8192, i32 noundef %div183, i32 noundef %n.3229, i32 noundef %color.4230, ptr noundef %mode.0232)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %for.inc84, label %cleanup

cleanup:                                          ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %mode.0232 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mode.0232, align 4
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef %40, i32 noundef %div183, i32 noundef %n.3229, i32 noundef 2048, i32 noundef 6144) #14
  br label %do.body93

for.inc84:                                        ; preds = %do.end72
  %inc73 = add i32 %color.4230, 1
  %call85 = call i32 @next_prime_number(i32 noundef %n.3229) #11
  %41 = load i32, ptr @max_prime, align 4
  %42 = call i32 @llvm.umin.i32(i32 %41, i32 4096)
  %cmp55.not = icmp ugt i32 %call85, %42
  br i1 %cmp55.not, label %for.inc84.for.end86_crit_edge, label %for.inc84.for.body57_crit_edge

for.inc84.for.body57_crit_edge:                   ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body57

for.inc84.for.end86_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end86

for.end86:                                        ; preds = %for.inc84.for.end86_crit_edge, %for.cond51.preheader.for.end86_crit_edge
  %color.4.lcssa = phi i32 [ %inc37, %for.cond51.preheader.for.end86_crit_edge ], [ %inc73, %for.inc84.for.end86_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 2442, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %incdec.ptr = getelementptr %struct.insert_mode, ptr %mode.0232, i32 1
  %43 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %incdec.ptr, align 4
  %tobool14.not = icmp eq ptr %44, null
  br i1 %tobool14.not, label %for.end86.if.end96_crit_edge, label %for.end86.for.cond16.preheader_crit_edge

for.end86.for.cond16.preheader_crit_edge:         ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond16.preheader

for.end86.if.end96_crit_edge:                     ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

do.body93:                                        ; preds = %cleanup, %do.end43, %do.end26, %do.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %__p) #11
  %45 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 1
  %46 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 2
  %47 = getelementptr inbounds %struct.drm_printer, ptr %__p, i32 0, i32 3
  %48 = ptrtoint ptr %__p to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @__drm_printfn_debug, ptr %__p, align 4, !alias.scope !699
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %45, align 4, !alias.scope !699
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %46, align 4, !alias.scope !699
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.319, ptr %47, align 4, !alias.scope !699
  call void @drm_mm_print(ptr noundef nonnull %mm, ptr noundef nonnull %__p) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %__p) #11
  br label %if.end96

if.end96:                                         ; preds = %do.body93, %for.end86.if.end96_crit_edge
  %ret.0194 = phi i32 [ -22, %do.body93 ], [ 0, %for.end86.if.end96_crit_edge ]
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %52 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %node_list, align 4
  %cmp108.not234 = icmp eq ptr %53, %node_list
  br i1 %cmp108.not234, label %if.end96.for.end119_crit_edge, label %if.end96.for.body112_crit_edge

if.end96.for.body112_crit_edge:                   ; preds = %if.end96
  br label %for.body112

if.end96.for.end119_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end119

for.body112:                                      ; preds = %for.body112.for.body112_crit_edge, %if.end96.for.body112_crit_edge
  %.pn.in235 = phi ptr [ %.pn, %for.body112.for.body112_crit_edge ], [ %53, %if.end96.for.body112_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn.in235, i32 -28
  %54 = ptrtoint ptr %.pn.in235 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn = load ptr, ptr %.pn.in235, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp108.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp108.not, label %for.body112.for.end119_crit_edge, label %for.body112.for.body112_crit_edge

for.body112.for.body112_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body112

for.body112.for.end119_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end119

for.end119:                                       ; preds = %for.body112.for.end119_crit_edge, %if.end96.for.end119_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @kfree(ptr noundef nonnull %call2) #11
  br label %err_nodes

err_nodes:                                        ; preds = %for.end119, %if.end.err_nodes_crit_edge
  %ret.1 = phi i32 [ %ret.0194, %for.end119 ], [ -12, %if.end.err_nodes_crit_edge ]
  call void @vfree(ptr noundef nonnull %call1) #11
  br label %cleanup121

cleanup121:                                       ; preds = %err_nodes, %entry.cleanup121_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_nodes ], [ -12, %entry.cleanup121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prng) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_reserve_node(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_print(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_debug(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__igt_reserve(i32 noundef %count, i64 noundef %size) unnamed_addr #2 align 64 {
entry:
  %boundaries.i = alloca [17 x %struct.boundary], align 8
  %tmp.i = alloca %struct.drm_mm_node, align 8
  %prng = alloca %struct.rnd_state, align 4
  %state__ = alloca %struct.rnd_state, align 4
  %mm = alloca %struct.drm_mm, align 8
  %tmp = alloca %struct.drm_mm_node, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prng) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state__) #11
  %0 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 3
  %3 = load i32, ptr @random_seed, align 4
  %shl.i = shl i32 %3, 10
  %xor1.i = xor i32 %shl.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor1.i)
  %cmp.i.i = icmp ult i32 %xor1.i, 2
  %add.i.i = select i1 %cmp.i.i, i32 2, i32 0
  %cond.i.i = add i32 %add.i.i, %xor1.i
  %4 = ptrtoint ptr %state__ to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i.i, ptr %state__, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %xor1.i)
  %cmp.i15.i = icmp ult i32 %xor1.i, 8
  %add.i16.i = select i1 %cmp.i15.i, i32 8, i32 0
  %cond.i17.i = add i32 %add.i16.i, %xor1.i
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i17.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %xor1.i)
  %cmp.i18.i = icmp ult i32 %xor1.i, 16
  %add.i19.i = select i1 %cmp.i18.i, i32 16, i32 0
  %cond.i20.i = add i32 %add.i19.i, %xor1.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i20.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %xor1.i)
  %cmp.i21.i = icmp ult i32 %xor1.i, 128
  %add.i22.i = select i1 %cmp.i21.i, i32 128, i32 0
  %cond.i23.i = add i32 %add.i22.i, %xor1.i
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i23.i, ptr %2, align 4
  %8 = ptrtoint ptr %state__ to i32
  %9 = call i32 @llvm.read_register.i32(metadata !666) #11
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
  %add.i24.i = add i32 %14, ptrtoint (ptr @net_rand_noise to i32)
  %15 = inttoptr i32 %add.i24.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %xor.i.i = xor i32 %17, %8
  %add8.i.i = add i32 %xor.i.i, %xor1.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #11
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i1.i.i, ptr %15, align 4
  %19 = call ptr @memcpy(ptr %prng, ptr %state__, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state__) #11
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %20 = call ptr @memset(ptr %mm, i32 255, i32 152)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp) #11
  %21 = call ptr @memset(ptr %tmp, i32 255, i32 112)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !676

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 386, 0\0A.popsection", ""() #11, !srcloc !702
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool11.not = icmp eq i64 %size, 0
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !676

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 387, 0\0A.popsection", ""() #11, !srcloc !703
  unreachable

do.end29:                                         ; preds = %do.body10
  %call = call ptr @drm_random_order(i32 noundef %count, ptr noundef nonnull %prng) #11
  %tobool30.not = icmp eq ptr %call, null
  br i1 %tobool30.not, label %do.end29.err205_crit_edge, label %if.end32

do.end29.err205_crit_edge:                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %err205

if.end32:                                         ; preds = %do.end29
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 112) #11
  %23 = extractvalue { i32, i1 } %22, 1
  %24 = extractvalue { i32, i1 } %22, 0
  %retval.0.i = select i1 %23, i32 -1, i32 %24
  %call34 = call noalias ptr @vzalloc(i32 noundef %retval.0.i) #15
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end32.err_order_crit_edge, label %if.end37

if.end32.err_order_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_order

if.end37:                                         ; preds = %if.end32
  %conv38 = zext i32 %count to i64
  %mul = mul i64 %conv38, %size
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef %mul) #11
  call void @llvm.lifetime.start.p0(i64 408, ptr nonnull %boundaries.i) #11
  %25 = getelementptr inbounds i8, ptr %boundaries.i, i32 40
  %26 = call ptr @memset(ptr %25, i32 255, i32 368)
  %27 = call ptr @memset(ptr %boundaries.i, i32 0, i32 24)
  %name.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 0, i32 2
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.59, ptr %name.i, align 8
  %arrayinit.element.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 1
  %sub.i = sub i64 0, %size
  %29 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sub.i, ptr %arrayinit.element.i, align 8
  %size2.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 1, i32 1
  %30 = ptrtoint ptr %size2.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %size2.i, align 8
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.60, ptr %25, align 8
  %arrayinit.element4.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 2
  %32 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %size, ptr %arrayinit.element4.i, align 8
  %size6.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 2, i32 1
  %33 = ptrtoint ptr %size6.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %size6.i, align 8
  %name7.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 2, i32 2
  %34 = ptrtoint ptr %name7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.61, ptr %name7.i, align 8
  %arrayinit.element8.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 3
  %35 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %mul, ptr %arrayinit.element8.i, align 8
  %size10.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 3, i32 1
  %36 = ptrtoint ptr %size10.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %size10.i, align 8
  %name11.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 3, i32 2
  %37 = ptrtoint ptr %name11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.62, ptr %name11.i, align 8
  %arrayinit.element12.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 4
  %38 = ptrtoint ptr %arrayinit.element12.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %sub.i, ptr %arrayinit.element12.i, align 8
  %size15.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 4, i32 1
  %39 = ptrtoint ptr %size15.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %size, ptr %size15.i, align 8
  %name16.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 4, i32 2
  %40 = ptrtoint ptr %name16.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.63, ptr %name16.i, align 8
  %arrayinit.element17.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 5
  %41 = ptrtoint ptr %arrayinit.element17.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %sub.i, ptr %arrayinit.element17.i, align 8
  %size20.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 5, i32 1
  %42 = ptrtoint ptr %size20.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %sub.i, ptr %size20.i, align 8
  %name22.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 5, i32 2
  %43 = ptrtoint ptr %name22.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.64, ptr %name22.i, align 8
  %arrayinit.element23.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 6
  %44 = ptrtoint ptr %arrayinit.element23.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %sub.i, ptr %arrayinit.element23.i, align 8
  %size26.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 6, i32 1
  %mul27.i = shl i64 %size, 1
  %45 = ptrtoint ptr %size26.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %mul27.i, ptr %size26.i, align 8
  %name28.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 6, i32 2
  %46 = ptrtoint ptr %name28.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.65, ptr %name28.i, align 8
  %arrayinit.element29.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 7
  %47 = ptrtoint ptr %arrayinit.element29.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %arrayinit.element29.i, align 8
  %size31.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 7, i32 1
  %48 = ptrtoint ptr %size31.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %sub.i, ptr %size31.i, align 8
  %name33.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 7, i32 2
  %49 = ptrtoint ptr %name33.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.66, ptr %name33.i, align 8
  %arrayinit.element34.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 8
  %50 = ptrtoint ptr %arrayinit.element34.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %size, ptr %arrayinit.element34.i, align 8
  %size36.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 8, i32 1
  %51 = ptrtoint ptr %size36.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %sub.i, ptr %size36.i, align 8
  %name38.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 8, i32 2
  %52 = ptrtoint ptr %name38.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.67, ptr %name38.i, align 8
  %arrayinit.element39.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 9
  %53 = ptrtoint ptr %arrayinit.element39.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %mul, ptr %arrayinit.element39.i, align 8
  %size43.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 9, i32 1
  %54 = ptrtoint ptr %size43.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %size, ptr %size43.i, align 8
  %name44.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 9, i32 2
  %55 = ptrtoint ptr %name44.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.68, ptr %name44.i, align 8
  %arrayinit.element45.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 10
  %56 = ptrtoint ptr %arrayinit.element45.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %mul, ptr %arrayinit.element45.i, align 8
  %size49.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 10, i32 1
  %57 = ptrtoint ptr %size49.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %sub.i, ptr %size49.i, align 8
  %name51.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 10, i32 2
  %58 = ptrtoint ptr %name51.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.69, ptr %name51.i, align 8
  %arrayinit.element52.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 11
  %59 = ptrtoint ptr %arrayinit.element52.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %mul, ptr %arrayinit.element52.i, align 8
  %size56.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 11, i32 1
  %60 = ptrtoint ptr %size56.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %mul, ptr %size56.i, align 8
  %name59.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 11, i32 2
  %61 = ptrtoint ptr %name59.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.70, ptr %name59.i, align 8
  %arrayinit.element60.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 12
  %62 = ptrtoint ptr %arrayinit.element60.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %mul, ptr %arrayinit.element60.i, align 8
  %size64.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 12, i32 1
  %sub65.i = sub i32 0, %count
  %conv66.i = zext i32 %sub65.i to i64
  %mul67.i = mul i64 %conv66.i, %size
  %63 = ptrtoint ptr %size64.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %mul67.i, ptr %size64.i, align 8
  %name68.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 12, i32 2
  %64 = ptrtoint ptr %name68.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.71, ptr %name68.i, align 8
  %arrayinit.element69.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 13
  %65 = ptrtoint ptr %arrayinit.element69.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %mul, ptr %arrayinit.element69.i, align 8
  %size73.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 13, i32 1
  %add.i = add i32 %count, 1
  %sub74.i = xor i32 %count, -1
  %conv75.i = zext i32 %sub74.i to i64
  %mul76.i = mul i64 %conv75.i, %size
  %66 = ptrtoint ptr %size73.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %mul76.i, ptr %size73.i, align 8
  %name77.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 13, i32 2
  %67 = ptrtoint ptr %name77.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.72, ptr %name77.i, align 8
  %arrayinit.element78.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 14
  %conv81.i = zext i32 %add.i to i64
  %mul82.i = mul i64 %conv81.i, %size
  %68 = ptrtoint ptr %arrayinit.element78.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %mul82.i, ptr %arrayinit.element78.i, align 8
  %size83.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 14, i32 1
  %69 = ptrtoint ptr %size83.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %size, ptr %size83.i, align 8
  %name84.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 14, i32 2
  %70 = ptrtoint ptr %name84.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.73, ptr %name84.i, align 8
  %arrayinit.element85.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 15
  %71 = ptrtoint ptr %arrayinit.element85.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %mul82.i, ptr %arrayinit.element85.i, align 8
  %size90.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 15, i32 1
  %72 = ptrtoint ptr %size90.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %sub.i, ptr %size90.i, align 8
  %name92.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 15, i32 2
  %73 = ptrtoint ptr %name92.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.74, ptr %name92.i, align 8
  %arrayinit.element93.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 16
  %74 = ptrtoint ptr %arrayinit.element93.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %mul82.i, ptr %arrayinit.element93.i, align 8
  %size98.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 16, i32 1
  %mul99.i = mul i64 %size, -2
  %75 = ptrtoint ptr %size98.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %mul99.i, ptr %size98.i, align 8
  %name100.i = getelementptr inbounds %struct.boundary, ptr %boundaries.i, i32 16, i32 2
  %76 = ptrtoint ptr %name100.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.75, ptr %name100.i, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp.i) #11
  %77 = call ptr @memset(ptr %tmp.i, i32 0, i32 112)
  %start1.i.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i, i32 0, i32 1
  %size2.i.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i, i32 0, i32 2
  %78 = ptrtoint ptr %boundaries.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %boundaries.i, align 8
  %size104.i365 = getelementptr inbounds [17 x %struct.boundary], ptr %boundaries.i, i32 0, i32 0, i32 1
  %80 = ptrtoint ptr %size104.i365 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %size104.i365, align 8
  %82 = ptrtoint ptr %start1.i.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %79, ptr %start1.i.i, align 8
  %83 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %81, ptr %size2.i.i, align 8
  %call.i.i366 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i.i366)
  %cmp.i.i305367 = icmp eq i32 %call.i.i366, -28
  br i1 %cmp.i.i305367, label %if.end37.for.inc.i_crit_edge, label %if.end37.if.end.i.i_crit_edge, !prof !685

if.end37.if.end.i.i_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end37.for.inc.i_crit_edge:                     ; preds = %if.end37
  br label %for.inc.i

for.body.i:                                       ; preds = %for.inc.i
  %arrayidx.i = getelementptr [17 x %struct.boundary], ptr %boundaries.i, i32 0, i32 %inc.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx.i, align 8
  %size104.i = getelementptr [17 x %struct.boundary], ptr %boundaries.i, i32 0, i32 %inc.i, i32 1
  %86 = ptrtoint ptr %size104.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %size104.i, align 8
  %88 = ptrtoint ptr %start1.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %85, ptr %start1.i.i, align 8
  %89 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %87, ptr %size2.i.i, align 8
  %call.i.i = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %tmp.i) #11
  %cmp.i.i305 = icmp eq i32 %call.i.i, -28
  br i1 %cmp.i.i305, label %for.body.i.for.inc.i_crit_edge, label %if.end.i.i.loopexit, !prof !685

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i.loopexit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %n.0160.i368)
  %cmp.i.le = icmp ult i32 %n.0160.i368, 16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.loopexit, %if.end37.if.end.i.i_crit_edge
  %cmp161.i.lcssa = phi i1 [ true, %if.end37.if.end.i.i_crit_edge ], [ %cmp.i.le, %if.end.i.i.loopexit ]
  %n.0160.i.lcssa = phi i32 [ 0, %if.end37.if.end.i.i_crit_edge ], [ %inc.i, %if.end.i.i.loopexit ]
  %call.i.i.lcssa = phi i32 [ %call.i.i366, %if.end37.if.end.i.i_crit_edge ], [ %call.i.i, %if.end.i.i.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.lcssa)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.lcssa, 0
  %90 = ptrtoint ptr %start1.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %start1.i.i, align 8
  %92 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %size2.i.i, align 8
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %do.end7.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i64 noundef %91, i64 noundef %93) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp.i) #11
  br label %do.end.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %call.i.i.lcssa, i32 noundef -28, i64 noundef %91, i64 noundef %93) #14
  br label %do.end.i

do.end.i:                                         ; preds = %do.end7.i.i, %do.end.i.i
  %name108.i = getelementptr [17 x %struct.boundary], ptr %boundaries.i, i32 0, i32 %n.0160.i.lcssa, i32 2
  %94 = ptrtoint ptr %name108.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name108.i, align 8
  %call109.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %n.0160.i.lcssa, ptr noundef %95, i32 noundef %count, i64 noundef %size) #14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 408, ptr nonnull %boundaries.i) #11
  br i1 %cmp161.i.lcssa, label %do.end.i.out_crit_edge, label %do.end.i.for.body.preheader_crit_edge

do.end.i.for.body.preheader_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

do.end.i.out_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %if.end37.for.inc.i_crit_edge
  %n.0160.i368 = phi i32 [ %inc.i, %for.body.i.for.inc.i_crit_edge ], [ 0, %if.end37.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %n.0160.i368, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %check_reserve_boundaries.exit, label %for.body.i

check_reserve_boundaries.exit:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %n.0160.i368)
  %cmp.i.le456 = icmp ult i32 %n.0160.i368, 16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 408, ptr nonnull %boundaries.i) #11
  br i1 %cmp.i.le456, label %check_reserve_boundaries.exit.out_crit_edge, label %check_reserve_boundaries.exit.for.body.preheader_crit_edge

check_reserve_boundaries.exit.for.body.preheader_crit_edge: ; preds = %check_reserve_boundaries.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

check_reserve_boundaries.exit.out_crit_edge:      ; preds = %check_reserve_boundaries.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body.preheader:                               ; preds = %check_reserve_boundaries.exit.for.body.preheader_crit_edge, %do.end.i.for.body.preheader_crit_edge
  %umax = call i32 @llvm.umax.i32(i32 %count, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %n.0372 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %call, i32 %n.0372
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx, align 4
  %conv43 = zext i32 %97 to i64
  %mul44 = mul i64 %conv43, %size
  %arrayidx45 = getelementptr %struct.drm_mm_node, ptr %call34, i32 %n.0372
  %start = getelementptr %struct.drm_mm_node, ptr %call34, i32 %n.0372, i32 1
  %98 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %mul44, ptr %start, align 8
  %size47 = getelementptr %struct.drm_mm_node, ptr %call34, i32 %n.0372, i32 2
  %99 = ptrtoint ptr %size47 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %size, ptr %size47, align 8
  %call49 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef %arrayidx45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end59, label %do.end54

do.end54:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %start, align 8
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %n.0372, i64 noundef %101) #14
  br label %out

if.end59:                                         ; preds = %for.body
  %flags.i = getelementptr %struct.drm_mm_node, ptr %call34, i32 %n.0372, i32 12
  %102 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end65, label %if.end70

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %start, align 8
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %n.0372, i64 noundef %105) #14
  br label %out

if.end70:                                         ; preds = %if.end59
  %call.i = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef %arrayidx45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp.i306 = icmp eq i32 %call.i, -28
  br i1 %cmp.i306, label %for.inc, label %if.end.i, !prof !685

if.end.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  %106 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %start, align 8
  %108 = ptrtoint ptr %size47 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %size47, align 8
  br i1 %tobool2.not.i, label %do.end.i307, label %do.end7.i

do.end.i307:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i64 noundef %107, i64 noundef %109) #14
  call void @drm_mm_remove_node(ptr noundef %arrayidx45) #11
  br label %out

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %call.i, i32 noundef -28, i64 noundef %107, i64 noundef %109) #14
  br label %out

for.inc:                                          ; preds = %if.end70
  %inc = add nuw i32 %n.0372, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call75 = call fastcc zeroext i1 @assert_continuous(ptr noundef nonnull %mm, i64 noundef %size)
  br i1 %call75, label %for.body81.preheader, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body81.preheader:                             ; preds = %for.end
  call void @drm_random_reorder(ptr noundef nonnull %call, i32 noundef %count, ptr noundef nonnull %prng) #11
  %start1.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 1
  %size2.i308 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 2
  %umax418 = call i32 @llvm.umax.i32(i32 %count, i32 1)
  br label %for.body81

for.body81:                                       ; preds = %for.inc104.for.body81_crit_edge, %for.body81.preheader
  %n.1374 = phi i32 [ %inc105, %for.inc104.for.body81_crit_edge ], [ 0, %for.body81.preheader ]
  %arrayidx82 = getelementptr i32, ptr %call, i32 %n.1374
  %110 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx82, align 4
  %conv83 = zext i32 %111 to i64
  %mul84 = mul i64 %conv83, %size
  %112 = ptrtoint ptr %start1.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %mul84, ptr %start1.i, align 8
  %113 = ptrtoint ptr %size2.i308 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 1, ptr %size2.i308, align 8
  %call.i309 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %tmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i309)
  %cmp.i310 = icmp eq i32 %call.i309, -28
  br i1 %cmp.i310, label %if.end88, label %if.end.i314, !prof !685

if.end.i314:                                      ; preds = %for.body81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i309)
  %tobool2.not.i311 = icmp eq i32 %call.i309, 0
  %114 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %start1.i, align 8
  %116 = ptrtoint ptr %size2.i308 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %size2.i308, align 8
  br i1 %tobool2.not.i311, label %do.end.i316, label %do.end7.i318

do.end.i316:                                      ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i64 noundef %115, i64 noundef %117) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp) #11
  br label %out

do.end7.i318:                                     ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %call.i309, i32 noundef -28, i64 noundef %115, i64 noundef %117) #14
  br label %out

if.end88:                                         ; preds = %for.body81
  %118 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx82, align 4
  %arrayidx90 = getelementptr %struct.drm_mm_node, ptr %call34, i32 %119
  call void @drm_mm_remove_node(ptr noundef %arrayidx90) #11
  %120 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx82, align 4
  %arrayidx92 = getelementptr %struct.drm_mm_node, ptr %call34, i32 %121
  %call93 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef %arrayidx92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %for.inc104, label %do.end98

do.end98:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %start101 = getelementptr %struct.drm_mm_node, ptr %call34, i32 %n.1374, i32 1
  %122 = ptrtoint ptr %start101 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %start101, align 8
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %n.1374, i64 noundef %123) #14
  br label %out

for.inc104:                                       ; preds = %if.end88
  %inc105 = add nuw i32 %n.1374, 1
  %exitcond419.not = icmp eq i32 %inc105, %umax418
  br i1 %exitcond419.not, label %for.end106, label %for.inc104.for.body81_crit_edge

for.inc104.for.body81_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body81

for.end106:                                       ; preds = %for.inc104
  %call107 = call fastcc zeroext i1 @assert_continuous(ptr noundef nonnull %mm, i64 noundef %size)
  br i1 %call107, label %for.body113.preheader, label %for.end106.out_crit_edge

for.end106.out_crit_edge:                         ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body113.preheader:                            ; preds = %for.end106
  %umax420 = call i32 @llvm.umax.i32(i32 %count, i32 1)
  br label %for.body113

for.cond110:                                      ; preds = %for.body113
  %inc121 = add nuw i32 %n.2376, 1
  %exitcond421.not = icmp eq i32 %inc121, %umax420
  br i1 %exitcond421.not, label %for.body126.preheader, label %for.cond110.for.body113_crit_edge

for.cond110.for.body113_crit_edge:                ; preds = %for.cond110
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body113

for.body126.preheader:                            ; preds = %for.cond110
  %umax422 = call i32 @llvm.umax.i32(i32 %count, i32 1)
  br label %for.body126

for.body113:                                      ; preds = %for.cond110.for.body113_crit_edge, %for.body113.preheader
  %n.2376 = phi i32 [ %inc121, %for.cond110.for.body113_crit_edge ], [ 0, %for.body113.preheader ]
  %124 = ptrtoint ptr %start1.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 0, ptr %start1.i, align 8
  %125 = ptrtoint ptr %size2.i308 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %mul, ptr %size2.i308, align 8
  %call.i322 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %tmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i322)
  %cmp.i323 = icmp eq i32 %call.i322, -28
  br i1 %cmp.i323, label %for.cond110, label %if.end.i327, !prof !685

if.end.i327:                                      ; preds = %for.body113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i322)
  %tobool2.not.i324 = icmp eq i32 %call.i322, 0
  %126 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %start1.i, align 8
  %128 = ptrtoint ptr %size2.i308 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %size2.i308, align 8
  br i1 %tobool2.not.i324, label %do.end.i329, label %do.end7.i331

do.end.i329:                                      ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i64 noundef %127, i64 noundef %129) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp) #11
  br label %out

do.end7.i331:                                     ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %call.i322, i32 noundef -28, i64 noundef %127, i64 noundef %129) #14
  br label %out

for.cond123:                                      ; preds = %for.body126
  %inc136 = add nuw i32 %n.3378, 1
  %exitcond423.not = icmp eq i32 %inc136, %umax422
  br i1 %exitcond423.not, label %for.cond138.preheader, label %for.cond123.for.body126_crit_edge

for.cond123.for.body126_crit_edge:                ; preds = %for.cond123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body126

for.cond138.preheader:                            ; preds = %for.cond123
  %130 = load i32, ptr @max_prime, align 4
  %131 = call i32 @llvm.umin.i32(i32 %130, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %131)
  %cmp142.not383 = icmp ult i32 %131, 2
  br i1 %cmp142.not383, label %for.cond138.preheader.out_crit_edge, label %for.cond138.preheader.for.cond145.preheader_crit_edge

for.cond138.preheader.for.cond145.preheader_crit_edge: ; preds = %for.cond138.preheader
  br label %for.cond145.preheader

for.cond138.preheader.out_crit_edge:              ; preds = %for.cond138.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body126:                                      ; preds = %for.cond123.for.body126_crit_edge, %for.body126.preheader
  %n.3378 = phi i32 [ %inc136, %for.cond123.for.body126_crit_edge ], [ 0, %for.body126.preheader ]
  %conv127 = zext i32 %n.3378 to i64
  %mul128 = mul i64 %conv127, %size
  %sub = sub i32 %count, %n.3378
  %conv129 = zext i32 %sub to i64
  %mul130 = mul i64 %conv129, %size
  %132 = ptrtoint ptr %start1.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %mul128, ptr %start1.i, align 8
  %133 = ptrtoint ptr %size2.i308 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %mul130, ptr %size2.i308, align 8
  %call.i335 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %tmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i335)
  %cmp.i336 = icmp eq i32 %call.i335, -28
  br i1 %cmp.i336, label %for.cond123, label %if.end.i340, !prof !685

if.end.i340:                                      ; preds = %for.body126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool2.not.i337 = icmp eq i32 %call.i335, 0
  %134 = ptrtoint ptr %start1.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %start1.i, align 8
  %136 = ptrtoint ptr %size2.i308 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %size2.i308, align 8
  br i1 %tobool2.not.i337, label %do.end.i342, label %do.end7.i344

do.end.i342:                                      ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i64 noundef %135, i64 noundef %137) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp) #11
  br label %out

do.end7.i344:                                     ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %call.i335, i32 noundef -28, i64 noundef %135, i64 noundef %137) #14
  br label %out

for.cond145.preheader:                            ; preds = %for.inc179.for.cond145.preheader_crit_edge, %for.cond138.preheader.for.cond145.preheader_crit_edge
  %n.4385 = phi i32 [ %call180, %for.inc179.for.cond145.preheader_crit_edge ], [ 2, %for.cond138.preheader.for.cond145.preheader_crit_edge ]
  %o.0384 = phi i32 [ %add175, %for.inc179.for.cond145.preheader_crit_edge ], [ 0, %for.cond138.preheader.for.cond145.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.4385)
  %cmp146379.not = icmp eq i32 %n.4385, 0
  br i1 %cmp146379.not, label %for.cond145.preheader.for.end174_crit_edge, label %for.cond145.preheader.for.body148_crit_edge

for.cond145.preheader.for.body148_crit_edge:      ; preds = %for.cond145.preheader
  br label %for.body148

for.cond145.preheader.for.end174_crit_edge:       ; preds = %for.cond145.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end174

for.cond154.preheader:                            ; preds = %for.body148
  br i1 %cmp146379.not, label %for.cond154.preheader.for.end174_crit_edge, label %for.cond154.preheader.for.body157_crit_edge

for.cond154.preheader.for.body157_crit_edge:      ; preds = %for.cond154.preheader
  br label %for.body157

for.cond154.preheader.for.end174_crit_edge:       ; preds = %for.cond154.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end174

for.body148:                                      ; preds = %for.body148.for.body148_crit_edge, %for.cond145.preheader.for.body148_crit_edge
  %m.0380 = phi i32 [ %inc152, %for.body148.for.body148_crit_edge ], [ 0, %for.cond145.preheader.for.body148_crit_edge ]
  %add = add i32 %m.0380, %o.0384
  %rem = urem i32 %add, %count
  %arrayidx149 = getelementptr i32, ptr %call, i32 %rem
  %138 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx149, align 4
  %arrayidx150 = getelementptr %struct.drm_mm_node, ptr %call34, i32 %139
  call void @drm_mm_remove_node(ptr noundef %arrayidx150) #11
  %inc152 = add nuw i32 %m.0380, 1
  %exitcond424.not = icmp eq i32 %inc152, %n.4385
  br i1 %exitcond424.not, label %for.cond154.preheader, label %for.body148.for.body148_crit_edge

for.body148.for.body148_crit_edge:                ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body148

for.body157:                                      ; preds = %for.inc172.for.body157_crit_edge, %for.cond154.preheader.for.body157_crit_edge
  %m.1382 = phi i32 [ %inc173, %for.inc172.for.body157_crit_edge ], [ 0, %for.cond154.preheader.for.body157_crit_edge ]
  %add158 = add i32 %m.1382, %o.0384
  %rem159 = urem i32 %add158, %count
  %arrayidx160 = getelementptr i32, ptr %call, i32 %rem159
  %140 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx160, align 4
  %arrayidx161 = getelementptr %struct.drm_mm_node, ptr %call34, i32 %141
  %call162 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef %arrayidx161) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %for.inc172, label %do.end167

do.end167:                                        ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #13
  %start169 = getelementptr %struct.drm_mm_node, ptr %call34, i32 %141, i32 1
  %142 = ptrtoint ptr %start169 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %start169, align 8
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %m.1382, i32 noundef %n.4385, i64 noundef %143) #14
  br label %out

for.inc172:                                       ; preds = %for.body157
  %inc173 = add nuw i32 %m.1382, 1
  %exitcond425.not = icmp eq i32 %inc173, %n.4385
  br i1 %exitcond425.not, label %for.inc172.for.end174_crit_edge, label %for.inc172.for.body157_crit_edge

for.inc172.for.body157_crit_edge:                 ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body157

for.inc172.for.end174_crit_edge:                  ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end174

for.end174:                                       ; preds = %for.inc172.for.end174_crit_edge, %for.cond154.preheader.for.end174_crit_edge, %for.cond145.preheader.for.end174_crit_edge
  %call176 = call fastcc zeroext i1 @assert_continuous(ptr noundef nonnull %mm, i64 noundef %size)
  br i1 %call176, label %for.inc179, label %for.end174.out_crit_edge

for.end174.out_crit_edge:                         ; preds = %for.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc179:                                       ; preds = %for.end174
  %add175 = add i32 %n.4385, %o.0384
  %call180 = call i32 @next_prime_number(i32 noundef %n.4385) #11
  %144 = load i32, ptr @max_prime, align 4
  %145 = call i32 @llvm.umin.i32(i32 %144, i32 %count)
  %cmp142.not = icmp ugt i32 %call180, %145
  br i1 %cmp142.not, label %for.inc179.out_crit_edge, label %for.inc179.for.cond145.preheader_crit_edge

for.inc179.for.cond145.preheader_crit_edge:       ; preds = %for.inc179
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond145.preheader

for.inc179.out_crit_edge:                         ; preds = %for.inc179
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc179.out_crit_edge, %for.end174.out_crit_edge, %do.end167, %do.end7.i344, %do.end.i342, %for.cond138.preheader.out_crit_edge, %do.end7.i331, %do.end.i329, %for.end106.out_crit_edge, %do.end98, %do.end7.i318, %do.end.i316, %for.end.out_crit_edge, %do.end7.i, %do.end.i307, %do.end65, %do.end54, %check_reserve_boundaries.exit.out_crit_edge, %do.end.i.out_crit_edge
  %ret.0 = phi i32 [ %call49, %do.end54 ], [ -22, %do.end65 ], [ %call93, %do.end98 ], [ %call162, %do.end167 ], [ -22, %for.end106.out_crit_edge ], [ -22, %for.end.out_crit_edge ], [ -22, %check_reserve_boundaries.exit.out_crit_edge ], [ -22, %do.end.i307 ], [ -22, %do.end7.i ], [ -22, %do.end.i316 ], [ -22, %do.end7.i318 ], [ -22, %do.end.i329 ], [ -22, %do.end7.i331 ], [ -22, %do.end.i342 ], [ -22, %do.end7.i344 ], [ 0, %for.cond138.preheader.out_crit_edge ], [ -22, %do.end.i.out_crit_edge ], [ -22, %for.end174.out_crit_edge ], [ 0, %for.inc179.out_crit_edge ]
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %146 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %node_list, align 4
  %cmp193.not389 = icmp eq ptr %147, %node_list
  br i1 %cmp193.not389, label %out.for.end204_crit_edge, label %out.for.body197_crit_edge

out.for.body197_crit_edge:                        ; preds = %out
  br label %for.body197

out.for.end204_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end204

for.body197:                                      ; preds = %for.body197.for.body197_crit_edge, %out.for.body197_crit_edge
  %.pn.in390 = phi ptr [ %.pn, %for.body197.for.body197_crit_edge ], [ %147, %out.for.body197_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn.in390, i32 -28
  %148 = ptrtoint ptr %.pn.in390 to i32
  call void @__asan_load4_noabort(i32 %148)
  %.pn = load ptr, ptr %.pn.in390, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp193.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp193.not, label %for.body197.for.end204_crit_edge, label %for.body197.for.body197_crit_edge

for.body197.for.body197_crit_edge:                ; preds = %for.body197
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body197

for.body197.for.end204_crit_edge:                 ; preds = %for.body197
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end204

for.end204:                                       ; preds = %for.body197.for.end204_crit_edge, %out.for.end204_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @vfree(ptr noundef nonnull %call34) #11
  br label %err_order

err_order:                                        ; preds = %for.end204, %if.end32.err_order_crit_edge
  %ret.1 = phi i32 [ %ret.0, %for.end204 ], [ -12, %if.end32.err_order_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #11
  br label %err205

err205:                                           ; preds = %err_order, %do.end29.err205_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_order ], [ -12, %do.end29.err205_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp) #11
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prng) #11
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @next_prime_number(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_random_order(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @assert_continuous(ptr noundef %mm, i64 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hole_stack.i = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 1
  %0 = ptrtoint ptr %hole_stack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn52.i = load ptr, ptr %hole_stack.i, align 4
  %cmp.not53.i = icmp eq ptr %.pn52.i, %hole_stack.i
  br i1 %cmp.not53.i, label %entry.if.end.i_crit_edge, label %entry.cond.true.i_crit_edge

entry.cond.true.i_crit_edge:                      ; preds = %entry
  br label %cond.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

cond.true.i:                                      ; preds = %drm_mm_hole_node_start.exit.i.cond.true.i_crit_edge, %entry.cond.true.i_crit_edge
  %.pn55.i = phi ptr [ %.pn.i, %drm_mm_hole_node_start.exit.i.cond.true.i_crit_edge ], [ %.pn52.i, %entry.cond.true.i_crit_edge ]
  %count.054.i = phi i32 [ %inc.i, %drm_mm_hole_node_start.exit.i.cond.true.i_crit_edge ], [ 0, %entry.cond.true.i_crit_edge ]
  %hole_size.i.i.i = getelementptr i8, ptr %.pn55.i, i32 52
  %1 = ptrtoint ptr %hole_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %hole_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.i.not.i.i = icmp eq i64 %2, 0
  br i1 %tobool.i.not.i.i, label %do.body3.i.i, label %drm_mm_hole_node_start.exit.i, !prof !676

do.body3.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/drm/drm_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 316, 0\0A.popsection", ""() #11, !srcloc !677
  unreachable

drm_mm_hole_node_start.exit.i:                    ; preds = %cond.true.i
  %inc.i = add i32 %count.054.i, 1
  %3 = ptrtoint ptr %.pn55.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn55.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %hole_stack.i
  br i1 %cmp.not.i, label %for.end.i, label %drm_mm_hole_node_start.exit.i.cond.true.i_crit_edge

drm_mm_hole_node_start.exit.i.cond.true.i_crit_edge: ; preds = %drm_mm_hole_node_start.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true.i

for.end.i:                                        ; preds = %drm_mm_hole_node_start.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool8.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool8.not.i, label %for.end.i.if.end.i_crit_edge, label %do.end.i

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %inc.i) #14
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %node_list.i = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  br label %for.cond15.i

for.cond15.i:                                     ; preds = %for.body20.i.for.cond15.i_crit_edge, %if.end.i
  %.pn50.in.i = phi ptr [ %node_list.i, %if.end.i ], [ %.pn50.i, %for.body20.i.for.cond15.i_crit_edge ]
  %4 = ptrtoint ptr %.pn50.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn50.i = load ptr, ptr %.pn50.in.i, align 4
  %cmp19.not.i = icmp eq ptr %.pn50.i, %node_list.i
  br i1 %cmp19.not.i, label %if.end, label %for.body20.i

for.body20.i:                                     ; preds = %for.cond15.i
  %hole_size.i.i = getelementptr i8, ptr %.pn50.i, i32 60
  %5 = ptrtoint ptr %hole_size.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %hole_size.i.i, align 8
  %tobool.i.not.i = icmp eq i64 %6, 0
  br i1 %tobool.i.not.i, label %for.body20.i.for.cond15.i_crit_edge, label %do.end25.i

for.body20.i.for.cond15.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.i

do.end25.i:                                       ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #13
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #14
  br label %cleanup

if.end:                                           ; preds = %for.cond15.i
  %7 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn127 = load ptr, ptr %node_list.i, align 4
  %cmp.not129 = icmp eq ptr %.pn127, %node_list.i
  br i1 %cmp.not129, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %if.end55.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn132 = phi ptr [ %.pn, %if.end55.for.body_crit_edge ], [ %.pn127, %if.end.for.body_crit_edge ]
  %n.0131 = phi i32 [ %inc, %if.end55.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %addr.0130 = phi i64 [ %add, %if.end55.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %node.0133 = getelementptr i8, ptr %.pn132, i32 -28
  %start = getelementptr i8, ptr %.pn132, i32 -20
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %addr.0130)
  %cmp4.not = icmp eq i64 %9, %addr.0130
  br i1 %cmp4.not, label %if.end9, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %n.0131, i64 noundef %addr.0130, i64 noundef %9) #14
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %size10 = getelementptr i8, ptr %.pn132, i32 -12
  %10 = ptrtoint ptr %size10 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %size)
  %cmp11.not = icmp eq i64 %11, %size
  br i1 %cmp11.not, label %if.end19, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %n.0131, i64 noundef %size, i64 noundef %11) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %hole_size.i = getelementptr i8, ptr %.pn132, i32 60
  %12 = ptrtoint ptr %hole_size.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %hole_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.i.not = icmp eq i64 %13, 0
  br i1 %tobool.i.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %n.0131) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %add = add i64 %addr.0130, %size
  %sub = add i64 %add, -1
  %call28 = tail call ptr @__drm_mm_interval_first(ptr noundef %mm, i64 noundef %addr.0130, i64 noundef %sub) #11
  %start30124 = getelementptr inbounds %struct.drm_mm_node, ptr %call28, i32 0, i32 1
  %14 = ptrtoint ptr %start30124 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start30124, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %add)
  %cmp32125 = icmp ult i64 %15, %add
  br i1 %cmp32125, label %for.body33.preheader, label %if.end27.do.end52_crit_edge

if.end27.do.end52_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

for.body33.preheader:                             ; preds = %if.end27
  %cmp34.not218 = icmp eq ptr %node.0133, %call28
  br i1 %cmp34.not218, label %if.end43.preheader, label %for.body33.preheader.do.end38_crit_edge

for.body33.preheader.do.end38_crit_edge:          ; preds = %for.body33.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

if.end43.preheader:                               ; preds = %for.body33.preheader
  %16 = ptrtoint ptr %.pn132 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn132, align 4
  %start30 = getelementptr i8, ptr %17, i32 -20
  %18 = ptrtoint ptr %start30 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start30, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %add)
  %cmp32 = icmp ult i64 %19, %add
  %cmp34.not = icmp eq ptr %.pn132, %17
  br i1 %cmp32, label %if.end43.preheader.for.body33_crit_edge, label %for.end

if.end43.preheader.for.body33_crit_edge:          ; preds = %if.end43.preheader
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %if.end43.preheader.for.body33_crit_edge
  br i1 %cmp34.not, label %for.body33.for.body33_crit_edge, label %for.body33.do.end38_crit_edge

for.body33.do.end38_crit_edge:                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body33

do.end38:                                         ; preds = %for.body33.do.end38_crit_edge, %for.body33.preheader.do.end38_crit_edge
  %.lcssa = phi i64 [ %19, %for.body33.do.end38_crit_edge ], [ %15, %for.body33.preheader.do.end38_crit_edge ]
  %start.le = getelementptr i8, ptr %.pn132, i32 -20
  %20 = ptrtoint ptr %start.le to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start.le, align 8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i64 noundef %21, i64 noundef %.lcssa) #14
  br label %cleanup

for.end:                                          ; preds = %if.end43.preheader
  %tobool.not = icmp eq ptr %node.0133, null
  br i1 %tobool.not, label %for.end.do.end52_crit_edge, label %if.end55

for.end.do.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

do.end52:                                         ; preds = %for.end.do.end52_crit_edge, %if.end27.do.end52_crit_edge
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i64 noundef %addr.0130, i64 noundef %size) #14
  br label %cleanup

if.end55:                                         ; preds = %for.end
  %inc = add i32 %n.0131, 1
  %22 = ptrtoint ptr %.pn132 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn132, align 4
  %cmp.not = icmp eq ptr %.pn, %node_list.i
  br i1 %cmp.not, label %if.end55.cleanup_crit_edge, label %if.end55.for.body_crit_edge

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end55.cleanup_crit_edge, %do.end52, %do.end38, %do.end24, %do.end15, %do.end, %if.end.cleanup_crit_edge, %do.end25.i, %do.end.i
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end15 ], [ false, %do.end24 ], [ false, %do.end38 ], [ false, %do.end52 ], [ false, %do.end.i ], [ false, %do.end25.i ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.end55.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_random_reorder(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drm_mm_interval_first(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__igt_insert(i32 noundef %count, i64 noundef %size, i1 noundef zeroext %replace) unnamed_addr #2 align 64 {
entry:
  %tmp.i407 = alloca %struct.drm_mm_node, align 8
  %tmp.i = alloca %struct.drm_mm_node, align 8
  %prng = alloca %struct.rnd_state, align 4
  %state__ = alloca %struct.rnd_state, align 4
  %mm = alloca %struct.drm_mm, align 8
  %tmp = alloca %struct.drm_mm_node, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prng) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state__) #11
  %0 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rnd_state, ptr %state__, i32 0, i32 3
  %3 = load i32, ptr @random_seed, align 4
  %shl.i = shl i32 %3, 10
  %xor1.i = xor i32 %shl.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor1.i)
  %cmp.i.i = icmp ult i32 %xor1.i, 2
  %add.i.i = select i1 %cmp.i.i, i32 2, i32 0
  %cond.i.i = add i32 %add.i.i, %xor1.i
  %4 = ptrtoint ptr %state__ to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i.i, ptr %state__, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %xor1.i)
  %cmp.i15.i = icmp ult i32 %xor1.i, 8
  %add.i16.i = select i1 %cmp.i15.i, i32 8, i32 0
  %cond.i17.i = add i32 %add.i16.i, %xor1.i
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i17.i, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %xor1.i)
  %cmp.i18.i = icmp ult i32 %xor1.i, 16
  %add.i19.i = select i1 %cmp.i18.i, i32 16, i32 0
  %cond.i20.i = add i32 %add.i19.i, %xor1.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i20.i, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %xor1.i)
  %cmp.i21.i = icmp ult i32 %xor1.i, 128
  %add.i22.i = select i1 %cmp.i21.i, i32 128, i32 0
  %cond.i23.i = add i32 %add.i22.i, %xor1.i
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i23.i, ptr %2, align 4
  %8 = ptrtoint ptr %state__ to i32
  %9 = call i32 @llvm.read_register.i32(metadata !666) #11
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
  %add.i24.i = add i32 %14, ptrtoint (ptr @net_rand_noise to i32)
  %15 = inttoptr i32 %add.i24.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %xor.i.i = xor i32 %17, %8
  %add8.i.i = add i32 %xor.i.i, %xor1.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #11
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i1.i.i, ptr %15, align 4
  %19 = call ptr @memcpy(ptr %prng, ptr %state__, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state__) #11
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %20 = call ptr @memset(ptr %mm, i32 255, i32 152)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !676

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 580, 0\0A.popsection", ""() #11, !srcloc !704
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %tobool11.not = icmp eq i64 %size, 0
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !676

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 581, 0\0A.popsection", ""() #11, !srcloc !705
  unreachable

do.end29:                                         ; preds = %do.body10
  %21 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 112) #11
  %22 = extractvalue { i32, i1 } %21, 1
  %23 = extractvalue { i32, i1 } %21, 0
  %retval.0.i = select i1 %22, i32 -1, i32 %23
  %call30 = call noalias ptr @vmalloc(i32 noundef %retval.0.i) #15
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %do.end29.cleanup261_crit_edge, label %if.end33

do.end29.cleanup261_crit_edge:                    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup261

if.end33:                                         ; preds = %do.end29
  %call34 = call ptr @drm_random_order(i32 noundef %count, ptr noundef nonnull %prng) #11
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.err_nodes_crit_edge, label %if.end37

if.end33.err_nodes_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_nodes

if.end37:                                         ; preds = %if.end33
  %conv38 = zext i32 %count to i64
  %mul = mul i64 %conv38, %size
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef %mul) #11
  %tmp.sroa.gep = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 12
  %tmp.sroa.gep486 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 3
  %tmp.sroa.gep489 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 2
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 1
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %do.end229.for.cond40.preheader_crit_edge, %if.end37
  %mode.0641 = phi ptr [ @insert_modes, %if.end37 ], [ %incdec.ptr, %do.end229.for.cond40.preheader_crit_edge ]
  %o.0640 = phi i32 [ 0, %if.end37 ], [ %o.1.lcssa, %do.end229.for.cond40.preheader_crit_edge ]
  %mode1.i = getelementptr inbounds %struct.insert_mode, ptr %mode.0641, i32 0, i32 1
  br label %for.body42

for.body42:                                       ; preds = %for.inc.for.body42_crit_edge, %for.cond40.preheader
  %n.0626 = phi i32 [ 0, %for.cond40.preheader ], [ %inc, %for.inc.for.body42_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp) #11
  %24 = call ptr @memset(ptr %tmp, i32 255, i32 112)
  %arrayidx = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.0626
  %spec.select = select i1 %replace, ptr %tmp, ptr %arrayidx
  %25 = call ptr @memset(ptr %spec.select, i32 0, i32 112)
  %26 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode1.i, align 4
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %spec.select, i64 noundef %size, i64 noundef 0, i32 noundef %n.0626, i64 noundef 0, i64 noundef -1, i32 noundef %27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %mode.0641 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mode.0641, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %size, i64 noundef 0, i32 noundef %n.0626, ptr noundef %29, i32 noundef %call.i.i) #14
  br label %do.end49

if.end.i:                                         ; preds = %for.body42
  %arrayidx.sroa.gep = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.0626, i32 12
  %spec.select.sroa.sel = select i1 %replace, ptr %tmp.sroa.gep, ptr %arrayidx.sroa.gep
  %30 = ptrtoint ptr %spec.select.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %spec.select.sroa.sel, align 4
  %and1.i.i.i422 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i422)
  %tobool.i.not.i423 = icmp eq i32 %and1.i.i.i422, 0
  br i1 %tobool.i.not.i423, label %if.end.i.do.end.i428_crit_edge, label %lor.lhs.false.i426

if.end.i.do.end.i428_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i428

lor.lhs.false.i426:                               ; preds = %if.end.i
  %arrayidx.sroa.gep487 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.0626, i32 3
  %spec.select.sroa.sel488 = select i1 %replace, ptr %tmp.sroa.gep486, ptr %arrayidx.sroa.gep487
  %32 = ptrtoint ptr %spec.select.sroa.sel488 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spec.select.sroa.sel488, align 8
  %cmp.not.i425 = icmp eq ptr %33, %mm
  br i1 %cmp.not.i425, label %lor.lhs.false.i426.if.end.i432_crit_edge, label %lor.lhs.false.i426.do.end.i428_crit_edge

lor.lhs.false.i426.do.end.i428_crit_edge:         ; preds = %lor.lhs.false.i426
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i428

lor.lhs.false.i426.if.end.i432_crit_edge:         ; preds = %lor.lhs.false.i426
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i432

do.end.i428:                                      ; preds = %lor.lhs.false.i426.do.end.i428_crit_edge, %if.end.i.do.end.i428_crit_edge
  %call2.i427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i432

if.end.i432:                                      ; preds = %do.end.i428, %lor.lhs.false.i426.if.end.i432_crit_edge
  %ok.0.off0.i429 = phi i1 [ false, %do.end.i428 ], [ true, %lor.lhs.false.i426.if.end.i432_crit_edge ]
  %arrayidx.sroa.gep490 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.0626, i32 2
  %spec.select.sroa.sel491 = select i1 %replace, ptr %tmp.sroa.gep489, ptr %arrayidx.sroa.gep490
  %34 = ptrtoint ptr %spec.select.sroa.sel491 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %spec.select.sroa.sel491, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %size)
  %cmp4.not.i431 = icmp eq i64 %35, %size
  br i1 %cmp4.not.i431, label %if.end12.i436, label %if.end12.i436.thread

if.end12.i436:                                    ; preds = %if.end.i432
  %36 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %spec.select, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %n.0626)
  %cmp23.not.i437 = icmp eq i32 %37, %n.0626
  br i1 %cmp23.not.i437, label %assert_node.exit441, label %if.end12.i436.assert_node.exit441.thread_crit_edge

if.end12.i436.assert_node.exit441.thread_crit_edge: ; preds = %if.end12.i436
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit441.thread

if.end12.i436.thread:                             ; preds = %if.end.i432
  %call11.i433 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %35, i64 noundef %size) #14
  %38 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %spec.select, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %n.0626)
  %cmp23.not.i437782 = icmp eq i32 %39, %n.0626
  br i1 %cmp23.not.i437782, label %if.end12.i436.thread.if.then4.i_crit_edge, label %if.end12.i436.thread.assert_node.exit441.thread_crit_edge

if.end12.i436.thread.assert_node.exit441.thread_crit_edge: ; preds = %if.end12.i436.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit441.thread

if.end12.i436.thread.if.then4.i_crit_edge:        ; preds = %if.end12.i436.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

assert_node.exit441.thread:                       ; preds = %if.end12.i436.thread.assert_node.exit441.thread_crit_edge, %if.end12.i436.assert_node.exit441.thread_crit_edge
  %40 = phi i32 [ %39, %if.end12.i436.thread.assert_node.exit441.thread_crit_edge ], [ %37, %if.end12.i436.assert_node.exit441.thread_crit_edge ]
  %call30.i438 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %40, i32 noundef %n.0626) #14
  br label %if.then4.i

assert_node.exit441:                              ; preds = %if.end12.i436
  br i1 %ok.0.off0.i429, label %if.end53, label %assert_node.exit441.if.then4.i_crit_edge

assert_node.exit441.if.then4.i_crit_edge:         ; preds = %assert_node.exit441
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %assert_node.exit441.if.then4.i_crit_edge, %assert_node.exit441.thread, %if.end12.i436.thread.if.then4.i_crit_edge
  call void @drm_mm_remove_node(ptr noundef %spec.select) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then4.i, %do.end.i
  %41 = ptrtoint ptr %mode.0641 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mode.0641, align 4
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %42, i64 noundef %size, i32 noundef %n.0626) #14
  br label %cleanup.thread

if.end53:                                         ; preds = %assert_node.exit441
  br i1 %replace, label %if.then55, label %if.end53.for.inc_crit_edge

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then55:                                        ; preds = %if.end53
  call void @drm_mm_replace_node(ptr noundef nonnull %tmp, ptr noundef %arrayidx) #11
  %43 = ptrtoint ptr %tmp.sroa.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %tmp.sroa.gep, align 8
  %and1.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %n.0626) #14
  br label %cleanup.thread

if.end64:                                         ; preds = %if.then55
  %45 = ptrtoint ptr %arrayidx.sroa.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.sroa.gep, align 4
  %and1.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end64.do.end.i382_crit_edge, label %lor.lhs.false.i

if.end64.do.end.i382_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i382

lor.lhs.false.i:                                  ; preds = %if.end64
  %mm1.i = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.0626, i32 3
  %47 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mm1.i, align 8
  %cmp.not.i = icmp eq ptr %48, %mm
  br i1 %cmp.not.i, label %lor.lhs.false.i.if.end.i383_crit_edge, label %lor.lhs.false.i.do.end.i382_crit_edge

lor.lhs.false.i.do.end.i382_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i382

lor.lhs.false.i.if.end.i383_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i383

do.end.i382:                                      ; preds = %lor.lhs.false.i.do.end.i382_crit_edge, %if.end64.do.end.i382_crit_edge
  %call2.i381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i383

if.end.i383:                                      ; preds = %do.end.i382, %lor.lhs.false.i.if.end.i383_crit_edge
  %ok.0.off0.i = phi i1 [ false, %do.end.i382 ], [ true, %lor.lhs.false.i.if.end.i383_crit_edge ]
  %49 = ptrtoint ptr %arrayidx.sroa.gep490 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.sroa.gep490, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %size)
  %cmp4.not.i = icmp eq i64 %50, %size
  br i1 %cmp4.not.i, label %if.end12.i, label %if.end12.i.thread

if.end12.i:                                       ; preds = %if.end.i383
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %n.0626)
  %cmp23.not.i = icmp eq i32 %52, %n.0626
  br i1 %cmp23.not.i, label %assert_node.exit, label %if.end12.i.assert_node.exit.thread_crit_edge

if.end12.i.assert_node.exit.thread_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i.thread:                                ; preds = %if.end.i383
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %50, i64 noundef %size) #14
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %n.0626)
  %cmp23.not.i787 = icmp eq i32 %54, %n.0626
  br i1 %cmp23.not.i787, label %if.end12.i.thread.do.end70_crit_edge, label %if.end12.i.thread.assert_node.exit.thread_crit_edge

if.end12.i.thread.assert_node.exit.thread_crit_edge: ; preds = %if.end12.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i.thread.do.end70_crit_edge:             ; preds = %if.end12.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

assert_node.exit.thread:                          ; preds = %if.end12.i.thread.assert_node.exit.thread_crit_edge, %if.end12.i.assert_node.exit.thread_crit_edge
  %55 = phi i32 [ %54, %if.end12.i.thread.assert_node.exit.thread_crit_edge ], [ %52, %if.end12.i.assert_node.exit.thread_crit_edge ]
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %55, i32 noundef %n.0626) #14
  br label %do.end70

assert_node.exit:                                 ; preds = %if.end12.i
  br i1 %ok.0.off0.i, label %if.end73, label %assert_node.exit.do.end70_crit_edge

assert_node.exit.do.end70_crit_edge:              ; preds = %assert_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

do.end70:                                         ; preds = %assert_node.exit.do.end70_crit_edge, %assert_node.exit.thread, %if.end12.i.thread.do.end70_crit_edge
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i64 noundef %size, i32 noundef %n.0626) #14
  br label %cleanup.thread

if.end73:                                         ; preds = %assert_node.exit
  %56 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %start, align 8
  %start75 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.0626, i32 1
  %58 = ptrtoint ptr %start75 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %start75, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %59)
  %cmp76.not = icmp eq i64 %57, %59
  br i1 %cmp76.not, label %if.end73.for.inc_crit_edge, label %do.end81

if.end73.for.inc_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %arrayidx.sroa.gep490 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx.sroa.gep490, align 8
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i64 noundef %57, i64 noundef %size, i64 noundef %59, i64 noundef %61) #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end81, %do.end70, %do.end61, %do.end49
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp) #11
  br label %out

for.inc:                                          ; preds = %if.end73.for.inc_crit_edge, %if.end53.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp) #11
  %inc = add nuw i32 %n.0626, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.cond40.for.end_crit_edge, label %for.inc.for.body42_crit_edge

for.inc.for.body42_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body42

for.cond40.for.end_crit_edge:                     ; preds = %for.inc
  %call91 = call fastcc zeroext i1 @assert_continuous(ptr noundef nonnull %mm, i64 noundef %size)
  br i1 %call91, label %if.end93, label %for.cond40.for.end_crit_edge.out_crit_edge

for.cond40.for.end_crit_edge.out_crit_edge:       ; preds = %for.cond40.for.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end93:                                         ; preds = %for.cond40.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp.i) #11
  %62 = call ptr @memset(ptr %tmp.i, i32 0, i32 112)
  %call.i.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef nonnull %tmp.i, i64 noundef %size, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #11
  %63 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.339)
  switch i32 %call.i.i.i, label %do.end9.i [
    i32 -28, label %expect_insert_fail.exit
    i32 0, label %do.end.i385
  ], !prof !684

do.end.i385:                                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %start.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i, i32 0, i32 1
  %64 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %start.i, align 8
  %size5.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i, i32 0, i32 2
  %66 = ptrtoint ptr %size5.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %size5.i, align 8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i64 noundef %65, i64 noundef %67) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp.i) #11
  br label %expect_insert_fail.exit.thread

do.end9.i:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %call.i.i.i, i32 noundef -28, i64 noundef %size) #14
  br label %expect_insert_fail.exit.thread

expect_insert_fail.exit.thread:                   ; preds = %do.end9.i, %do.end.i385
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i) #11
  br label %out

expect_insert_fail.exit:                          ; preds = %if.end93
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i) #11
  br label %for.body100

for.cond97.for.cond137.preheader_crit_edge:       ; preds = %for.inc134
  %68 = load i32, ptr @max_prime, align 4
  %69 = call i32 @llvm.umin.i32(i32 %68, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp145.not634 = icmp ult i32 %69, 2
  br i1 %cmp145.not634, label %for.cond97.for.cond137.preheader_crit_edge.for.end186_crit_edge, label %for.cond97.for.cond137.preheader_crit_edge.for.cond148.preheader_crit_edge

for.cond97.for.cond137.preheader_crit_edge.for.cond148.preheader_crit_edge: ; preds = %for.cond97.for.cond137.preheader_crit_edge
  br label %for.cond148.preheader

for.cond97.for.cond137.preheader_crit_edge.for.end186_crit_edge: ; preds = %for.cond97.for.cond137.preheader_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end186

for.body100:                                      ; preds = %for.inc134.for.body100_crit_edge, %expect_insert_fail.exit
  %n.1629 = phi i32 [ 0, %expect_insert_fail.exit ], [ %inc135, %for.inc134.for.body100_crit_edge ]
  %arrayidx101 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.1629
  %start102 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.1629, i32 1
  %70 = ptrtoint ptr %start102 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %start102, align 8
  call void @drm_mm_remove_node(ptr noundef %arrayidx101) #11
  %72 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mode1.i, align 4
  %call.i.i388 = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx101, i64 noundef %size, i64 noundef 0, i32 noundef %n.1629, i64 noundef 0, i64 noundef -1, i32 noundef %73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i388)
  %tobool.not.i389 = icmp eq i32 %call.i.i388, 0
  br i1 %tobool.not.i389, label %if.end.i393, label %do.end.i391

do.end.i391:                                      ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %mode.0641 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mode.0641, align 4
  %call2.i390 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %size, i64 noundef 0, i32 noundef %n.1629, ptr noundef %75, i32 noundef %call.i.i388) #14
  br label %do.end109

if.end.i393:                                      ; preds = %for.body100
  %flags.i.i443 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.1629, i32 12
  %76 = ptrtoint ptr %flags.i.i443 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags.i.i443, align 4
  %and1.i.i.i444 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i444)
  %tobool.i.not.i445 = icmp eq i32 %and1.i.i.i444, 0
  br i1 %tobool.i.not.i445, label %if.end.i393.do.end.i450_crit_edge, label %lor.lhs.false.i448

if.end.i393.do.end.i450_crit_edge:                ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i450

lor.lhs.false.i448:                               ; preds = %if.end.i393
  %mm1.i446 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.1629, i32 3
  %78 = ptrtoint ptr %mm1.i446 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mm1.i446, align 8
  %cmp.not.i447 = icmp eq ptr %79, %mm
  br i1 %cmp.not.i447, label %lor.lhs.false.i448.if.end.i454_crit_edge, label %lor.lhs.false.i448.do.end.i450_crit_edge

lor.lhs.false.i448.do.end.i450_crit_edge:         ; preds = %lor.lhs.false.i448
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i450

lor.lhs.false.i448.if.end.i454_crit_edge:         ; preds = %lor.lhs.false.i448
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i454

do.end.i450:                                      ; preds = %lor.lhs.false.i448.do.end.i450_crit_edge, %if.end.i393.do.end.i450_crit_edge
  %call2.i449 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i454

if.end.i454:                                      ; preds = %do.end.i450, %lor.lhs.false.i448.if.end.i454_crit_edge
  %ok.0.off0.i451 = phi i1 [ false, %do.end.i450 ], [ true, %lor.lhs.false.i448.if.end.i454_crit_edge ]
  %size3.i452 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %n.1629, i32 2
  %80 = ptrtoint ptr %size3.i452 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %size3.i452, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %size)
  %cmp4.not.i453 = icmp eq i64 %81, %size
  br i1 %cmp4.not.i453, label %if.end12.i458, label %if.end12.i458.thread

if.end12.i458:                                    ; preds = %if.end.i454
  %82 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx101, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %n.1629)
  %cmp23.not.i459 = icmp eq i32 %83, %n.1629
  br i1 %cmp23.not.i459, label %assert_node.exit463, label %if.end12.i458.assert_node.exit463.thread_crit_edge

if.end12.i458.assert_node.exit463.thread_crit_edge: ; preds = %if.end12.i458
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit463.thread

if.end12.i458.thread:                             ; preds = %if.end.i454
  %call11.i455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %81, i64 noundef %size) #14
  %84 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx101, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %n.1629)
  %cmp23.not.i459792 = icmp eq i32 %85, %n.1629
  br i1 %cmp23.not.i459792, label %if.end12.i458.thread.if.then4.i394_crit_edge, label %if.end12.i458.thread.assert_node.exit463.thread_crit_edge

if.end12.i458.thread.assert_node.exit463.thread_crit_edge: ; preds = %if.end12.i458.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit463.thread

if.end12.i458.thread.if.then4.i394_crit_edge:     ; preds = %if.end12.i458.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i394

assert_node.exit463.thread:                       ; preds = %if.end12.i458.thread.assert_node.exit463.thread_crit_edge, %if.end12.i458.assert_node.exit463.thread_crit_edge
  %86 = phi i32 [ %85, %if.end12.i458.thread.assert_node.exit463.thread_crit_edge ], [ %83, %if.end12.i458.assert_node.exit463.thread_crit_edge ]
  %call30.i460 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %86, i32 noundef %n.1629) #14
  br label %if.then4.i394

assert_node.exit463:                              ; preds = %if.end12.i458
  br i1 %ok.0.off0.i451, label %if.end113, label %assert_node.exit463.if.then4.i394_crit_edge

assert_node.exit463.if.then4.i394_crit_edge:      ; preds = %assert_node.exit463
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i394

if.then4.i394:                                    ; preds = %assert_node.exit463.if.then4.i394_crit_edge, %assert_node.exit463.thread, %if.end12.i458.thread.if.then4.i394_crit_edge
  call void @drm_mm_remove_node(ptr noundef %arrayidx101) #11
  br label %do.end109

do.end109:                                        ; preds = %if.then4.i394, %do.end.i391
  %87 = ptrtoint ptr %mode.0641 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mode.0641, align 4
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %88, i64 noundef %size, i32 noundef %n.1629) #14
  br label %out

if.end113:                                        ; preds = %assert_node.exit463
  %89 = ptrtoint ptr %start102 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %start102, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %71)
  %cmp116.not = icmp eq i64 %90, %71
  br i1 %cmp116.not, label %if.end127, label %do.end121

do.end121:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %mode.0641 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mode.0641, align 4
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %92, i32 noundef %n.1629, i64 noundef %71, i64 noundef %90) #14
  br label %out

if.end127:                                        ; preds = %if.end113
  %call128 = call fastcc zeroext i1 @assert_continuous(ptr noundef nonnull %mm, i64 noundef %size)
  br i1 %call128, label %for.inc134, label %if.end127.out_crit_edge

if.end127.out_crit_edge:                          ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc134:                                       ; preds = %if.end127
  %inc135 = add nuw i32 %n.1629, 1
  %exitcond778.not = icmp eq i32 %inc135, %count
  br i1 %exitcond778.not, label %for.cond97.for.cond137.preheader_crit_edge, label %for.inc134.for.body100_crit_edge

for.inc134.for.body100_crit_edge:                 ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body100

for.cond148.preheader:                            ; preds = %for.inc184.for.cond148.preheader_crit_edge, %for.cond97.for.cond137.preheader_crit_edge.for.cond148.preheader_crit_edge
  %n.2636 = phi i32 [ %call185, %for.inc184.for.cond148.preheader_crit_edge ], [ 2, %for.cond97.for.cond137.preheader_crit_edge.for.cond148.preheader_crit_edge ]
  %o.1635 = phi i32 [ %add177, %for.inc184.for.cond148.preheader_crit_edge ], [ %o.0640, %for.cond97.for.cond137.preheader_crit_edge.for.cond148.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.2636)
  %cmp149630.not = icmp eq i32 %n.2636, 0
  br i1 %cmp149630.not, label %for.cond148.preheader.for.end176_crit_edge, label %for.cond148.preheader.for.body151_crit_edge

for.cond148.preheader.for.body151_crit_edge:      ; preds = %for.cond148.preheader
  br label %for.body151

for.cond148.preheader.for.end176_crit_edge:       ; preds = %for.cond148.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end176

for.cond157.preheader:                            ; preds = %for.body151
  br i1 %cmp149630.not, label %for.cond157.preheader.for.end176_crit_edge, label %for.cond157.preheader.for.body160_crit_edge

for.cond157.preheader.for.body160_crit_edge:      ; preds = %for.cond157.preheader
  br label %for.body160

for.cond157.preheader.for.end176_crit_edge:       ; preds = %for.cond157.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end176

for.body151:                                      ; preds = %for.body151.for.body151_crit_edge, %for.cond148.preheader.for.body151_crit_edge
  %m.0631 = phi i32 [ %inc155, %for.body151.for.body151_crit_edge ], [ 0, %for.cond148.preheader.for.body151_crit_edge ]
  %add = add i32 %m.0631, %o.1635
  %rem = urem i32 %add, %count
  %arrayidx152 = getelementptr i32, ptr %call34, i32 %rem
  %93 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx152, align 4
  %arrayidx153 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %94
  call void @drm_mm_remove_node(ptr noundef %arrayidx153) #11
  %inc155 = add nuw i32 %m.0631, 1
  %exitcond779.not = icmp eq i32 %inc155, %n.2636
  br i1 %exitcond779.not, label %for.cond157.preheader, label %for.body151.for.body151_crit_edge

for.body151.for.body151_crit_edge:                ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body151

for.cond157:                                      ; preds = %assert_node.exit485
  %inc175 = add nuw i32 %m.1633, 1
  %exitcond780.not = icmp eq i32 %inc175, %n.2636
  br i1 %exitcond780.not, label %for.cond157.for.end176_crit_edge, label %for.cond157.for.body160_crit_edge

for.cond157.for.body160_crit_edge:                ; preds = %for.cond157
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body160

for.cond157.for.end176_crit_edge:                 ; preds = %for.cond157
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end176

for.body160:                                      ; preds = %for.cond157.for.body160_crit_edge, %for.cond157.preheader.for.body160_crit_edge
  %m.1633 = phi i32 [ %inc175, %for.cond157.for.body160_crit_edge ], [ 0, %for.cond157.preheader.for.body160_crit_edge ]
  %add161 = add i32 %m.1633, %o.1635
  %rem162 = urem i32 %add161, %count
  %arrayidx163 = getelementptr i32, ptr %call34, i32 %rem162
  %95 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx163, align 4
  %arrayidx164 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %96
  %97 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mode1.i, align 4
  %call.i.i398 = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx164, i64 noundef %size, i64 noundef 0, i32 noundef %n.2636, i64 noundef 0, i64 noundef -1, i32 noundef %98) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i398)
  %tobool.not.i399 = icmp eq i32 %call.i.i398, 0
  br i1 %tobool.not.i399, label %if.end.i403, label %do.end.i401

do.end.i401:                                      ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %mode.0641 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mode.0641, align 4
  %call2.i400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %size, i64 noundef 0, i32 noundef %n.2636, ptr noundef %100, i32 noundef %call.i.i398) #14
  br label %do.end169

if.end.i403:                                      ; preds = %for.body160
  %flags.i.i465 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %96, i32 12
  %101 = ptrtoint ptr %flags.i.i465 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %flags.i.i465, align 4
  %and1.i.i.i466 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i466)
  %tobool.i.not.i467 = icmp eq i32 %and1.i.i.i466, 0
  br i1 %tobool.i.not.i467, label %if.end.i403.do.end.i472_crit_edge, label %lor.lhs.false.i470

if.end.i403.do.end.i472_crit_edge:                ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i472

lor.lhs.false.i470:                               ; preds = %if.end.i403
  %mm1.i468 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %96, i32 3
  %103 = ptrtoint ptr %mm1.i468 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mm1.i468, align 8
  %cmp.not.i469 = icmp eq ptr %104, %mm
  br i1 %cmp.not.i469, label %lor.lhs.false.i470.if.end.i476_crit_edge, label %lor.lhs.false.i470.do.end.i472_crit_edge

lor.lhs.false.i470.do.end.i472_crit_edge:         ; preds = %lor.lhs.false.i470
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i472

lor.lhs.false.i470.if.end.i476_crit_edge:         ; preds = %lor.lhs.false.i470
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i476

do.end.i472:                                      ; preds = %lor.lhs.false.i470.do.end.i472_crit_edge, %if.end.i403.do.end.i472_crit_edge
  %call2.i471 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i476

if.end.i476:                                      ; preds = %do.end.i472, %lor.lhs.false.i470.if.end.i476_crit_edge
  %ok.0.off0.i473 = phi i1 [ false, %do.end.i472 ], [ true, %lor.lhs.false.i470.if.end.i476_crit_edge ]
  %size3.i474 = getelementptr %struct.drm_mm_node, ptr %call30, i32 %96, i32 2
  %105 = ptrtoint ptr %size3.i474 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %size3.i474, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %106, i64 %size)
  %cmp4.not.i475 = icmp eq i64 %106, %size
  br i1 %cmp4.not.i475, label %if.end12.i480, label %if.end12.i480.thread

if.end12.i480:                                    ; preds = %if.end.i476
  %107 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx164, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %n.2636)
  %cmp23.not.i481 = icmp eq i32 %108, %n.2636
  br i1 %cmp23.not.i481, label %assert_node.exit485, label %if.end12.i480.assert_node.exit485.thread_crit_edge

if.end12.i480.assert_node.exit485.thread_crit_edge: ; preds = %if.end12.i480
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit485.thread

if.end12.i480.thread:                             ; preds = %if.end.i476
  %call11.i477 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %106, i64 noundef %size) #14
  %109 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx164, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %n.2636)
  %cmp23.not.i481797 = icmp eq i32 %110, %n.2636
  br i1 %cmp23.not.i481797, label %if.end12.i480.thread.if.then4.i404_crit_edge, label %if.end12.i480.thread.assert_node.exit485.thread_crit_edge

if.end12.i480.thread.assert_node.exit485.thread_crit_edge: ; preds = %if.end12.i480.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit485.thread

if.end12.i480.thread.if.then4.i404_crit_edge:     ; preds = %if.end12.i480.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i404

assert_node.exit485.thread:                       ; preds = %if.end12.i480.thread.assert_node.exit485.thread_crit_edge, %if.end12.i480.assert_node.exit485.thread_crit_edge
  %111 = phi i32 [ %110, %if.end12.i480.thread.assert_node.exit485.thread_crit_edge ], [ %108, %if.end12.i480.assert_node.exit485.thread_crit_edge ]
  %call30.i482 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %111, i32 noundef %n.2636) #14
  br label %if.then4.i404

assert_node.exit485:                              ; preds = %if.end12.i480
  br i1 %ok.0.off0.i473, label %for.cond157, label %assert_node.exit485.if.then4.i404_crit_edge

assert_node.exit485.if.then4.i404_crit_edge:      ; preds = %assert_node.exit485
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i404

if.then4.i404:                                    ; preds = %assert_node.exit485.if.then4.i404_crit_edge, %assert_node.exit485.thread, %if.end12.i480.thread.if.then4.i404_crit_edge
  call void @drm_mm_remove_node(ptr noundef %arrayidx164) #11
  br label %do.end169

do.end169:                                        ; preds = %if.then4.i404, %do.end.i401
  %112 = ptrtoint ptr %mode.0641 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mode.0641, align 4
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %113, i64 noundef %size, i32 noundef %n.2636) #14
  br label %out

for.end176:                                       ; preds = %for.cond157.for.end176_crit_edge, %for.cond157.preheader.for.end176_crit_edge, %for.cond148.preheader.for.end176_crit_edge
  %add177 = add i32 %n.2636, %o.1635
  %call178 = call fastcc zeroext i1 @assert_continuous(ptr noundef nonnull %mm, i64 noundef %size)
  br i1 %call178, label %if.end180, label %for.end176.out_crit_edge

for.end176.out_crit_edge:                         ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end180:                                        ; preds = %for.end176
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp.i407) #11
  %114 = call ptr @memset(ptr %tmp.i407, i32 0, i32 112)
  %call.i.i.i408 = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef nonnull %tmp.i407, i64 noundef %size, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #11
  %115 = zext i32 %call.i.i.i408 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.340)
  switch i32 %call.i.i.i408, label %do.end9.i417 [
    i32 -28, label %for.inc184
    i32 0, label %do.end.i415
  ], !prof !684

do.end.i415:                                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  %start.i412 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i407, i32 0, i32 1
  %116 = ptrtoint ptr %start.i412 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %start.i412, align 8
  %size5.i413 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i407, i32 0, i32 2
  %118 = ptrtoint ptr %size5.i413 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %size5.i413, align 8
  %call6.i414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i64 noundef %117, i64 noundef %119) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp.i407) #11
  br label %expect_insert_fail.exit418.thread

do.end9.i417:                                     ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %call.i.i.i408, i32 noundef -28, i64 noundef %size) #14
  br label %expect_insert_fail.exit418.thread

expect_insert_fail.exit418.thread:                ; preds = %do.end9.i417, %do.end.i415
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i407) #11
  br label %out

for.inc184:                                       ; preds = %if.end180
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i407) #11
  %call185 = call i32 @next_prime_number(i32 noundef %n.2636) #11
  %120 = load i32, ptr @max_prime, align 4
  %121 = call i32 @llvm.umin.i32(i32 %120, i32 %count)
  %cmp145.not = icmp ugt i32 %call185, %121
  br i1 %cmp145.not, label %for.inc184.for.end186_crit_edge, label %for.inc184.for.cond148.preheader_crit_edge

for.inc184.for.cond148.preheader_crit_edge:       ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond148.preheader

for.inc184.for.end186_crit_edge:                  ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end186

for.end186:                                       ; preds = %for.inc184.for.end186_crit_edge, %for.cond97.for.cond137.preheader_crit_edge.for.end186_crit_edge
  %o.1.lcssa = phi i32 [ %o.0640, %for.cond97.for.cond137.preheader_crit_edge.for.end186_crit_edge ], [ %add177, %for.inc184.for.end186_crit_edge ]
  %122 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %node_list, align 4
  %cmp198.not638 = icmp eq ptr %123, %node_list
  br i1 %cmp198.not638, label %for.end186.do.body210_crit_edge, label %for.end186.for.body202_crit_edge

for.end186.for.body202_crit_edge:                 ; preds = %for.end186
  br label %for.body202

for.end186.do.body210_crit_edge:                  ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body210

for.body202:                                      ; preds = %for.body202.for.body202_crit_edge, %for.end186.for.body202_crit_edge
  %.pn377.in639 = phi ptr [ %.pn377, %for.body202.for.body202_crit_edge ], [ %123, %for.end186.for.body202_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn377.in639, i32 -28
  %124 = ptrtoint ptr %.pn377.in639 to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pn377 = load ptr, ptr %.pn377.in639, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp198.not = icmp eq ptr %.pn377, %node_list
  br i1 %cmp198.not, label %for.body202.do.body210_crit_edge, label %for.body202.for.body202_crit_edge

for.body202.for.body202_crit_edge:                ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body202

for.body202.do.body210_crit_edge:                 ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body210

do.body210:                                       ; preds = %for.body202.do.body210_crit_edge, %for.end186.do.body210_crit_edge
  %125 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile ptr, ptr %node_list, align 4
  %cmp.i.i419 = icmp eq ptr %126, %node_list
  br i1 %cmp.i.i419, label %do.end229, label %do.body221, !prof !685

do.body221:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 686, 0\0A.popsection", ""() #11, !srcloc !706
  unreachable

do.end229:                                        ; preds = %do.body210
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 688, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %incdec.ptr = getelementptr %struct.insert_mode, ptr %mode.0641, i32 1
  %127 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %incdec.ptr, align 4
  %tobool39.not = icmp eq ptr %128, null
  br i1 %tobool39.not, label %do.end229.out_crit_edge, label %do.end229.for.cond40.preheader_crit_edge

do.end229.for.cond40.preheader_crit_edge:         ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond40.preheader

do.end229.out_crit_edge:                          ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %do.end229.out_crit_edge, %expect_insert_fail.exit418.thread, %for.end176.out_crit_edge, %do.end169, %if.end127.out_crit_edge, %do.end121, %do.end109, %expect_insert_fail.exit.thread, %for.cond40.for.end_crit_edge.out_crit_edge, %cleanup.thread
  %ret.0 = phi i32 [ -22, %do.end169 ], [ -22, %cleanup.thread ], [ -22, %expect_insert_fail.exit.thread ], [ -22, %expect_insert_fail.exit418.thread ], [ -22, %do.end121 ], [ -22, %do.end109 ], [ -22, %for.end176.out_crit_edge ], [ -22, %if.end127.out_crit_edge ], [ 0, %do.end229.out_crit_edge ], [ -22, %for.cond40.for.end_crit_edge.out_crit_edge ]
  %129 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %node_list, align 4
  %cmp249.not643 = icmp eq ptr %130, %node_list
  br i1 %cmp249.not643, label %out.for.end260_crit_edge, label %out.for.body253_crit_edge

out.for.body253_crit_edge:                        ; preds = %out
  br label %for.body253

out.for.end260_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end260

for.body253:                                      ; preds = %for.body253.for.body253_crit_edge, %out.for.body253_crit_edge
  %.pn.in644 = phi ptr [ %.pn, %for.body253.for.body253_crit_edge ], [ %130, %out.for.body253_crit_edge ]
  %node.1 = getelementptr i8, ptr %.pn.in644, i32 -28
  %131 = ptrtoint ptr %.pn.in644 to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pn = load ptr, ptr %.pn.in644, align 4
  call void @drm_mm_remove_node(ptr noundef %node.1) #11
  %cmp249.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp249.not, label %for.body253.for.end260_crit_edge, label %for.body253.for.body253_crit_edge

for.body253.for.body253_crit_edge:                ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body253

for.body253.for.end260_crit_edge:                 ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end260

for.end260:                                       ; preds = %for.body253.for.end260_crit_edge, %out.for.end260_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @kfree(ptr noundef nonnull %call34) #11
  br label %err_nodes

err_nodes:                                        ; preds = %for.end260, %if.end33.err_nodes_crit_edge
  %ret.1 = phi i32 [ %ret.0, %for.end260 ], [ -12, %if.end33.err_nodes_crit_edge ]
  call void @vfree(ptr noundef nonnull %call30) #11
  br label %cleanup261

cleanup261:                                       ; preds = %err_nodes, %do.end29.cleanup261_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_nodes ], [ -12, %do.end29.cleanup261_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prng) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_replace_node(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @assert_node(ptr noundef %node, ptr noundef readnone %mm, i64 noundef %size, i64 noundef %alignment, i32 noundef %color) unnamed_addr #2 align 64 {
entry:
  %rem.i48 = alloca i64, align 8
  %rem.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.drm_mm_node, ptr %node, i32 0, i32 12
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %mm1 = getelementptr inbounds %struct.drm_mm_node, ptr %node, i32 0, i32 3
  %2 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm1, align 8
  %cmp.not = icmp eq ptr %3, %mm
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.if.end_crit_edge
  %ok.0.off0 = phi i1 [ false, %do.end ], [ true, %lor.lhs.false.if.end_crit_edge ]
  %size3 = getelementptr inbounds %struct.drm_mm_node, ptr %node, i32 0, i32 2
  %4 = ptrtoint ptr %size3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %size)
  %cmp4.not = icmp eq i64 %5, %size
  br i1 %cmp4.not, label %if.end.if.end12_crit_edge, label %do.end8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %5, i64 noundef %size) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end8, %if.end.if.end12_crit_edge
  %ok.1.off0 = phi i1 [ false, %do.end8 ], [ %ok.0.off0, %if.end.if.end12_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i) #11
  %6 = ptrtoint ptr %rem.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %rem.i, align 8, !annotation !693
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %alignment)
  %tobool.not.i = icmp eq i64 %alignment, 0
  br i1 %tobool.not.i, label %misalignment.exit.thread, label %misalignment.exit

misalignment.exit.thread:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i) #11
  br label %if.end21

misalignment.exit:                                ; preds = %if.end12
  %start.i = getelementptr inbounds %struct.drm_mm_node, ptr %node, i32 0, i32 1
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start.i, align 8
  %call.i = call i64 @div64_u64_rem(i64 noundef %8, i64 noundef %alignment, ptr noundef nonnull %rem.i) #11
  %9 = ptrtoint ptr %rem.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rem.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not = icmp eq i64 %10, 0
  br i1 %tobool.not, label %misalignment.exit.if.end21_crit_edge, label %misalignment.exit54

misalignment.exit.if.end21_crit_edge:             ; preds = %misalignment.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

misalignment.exit54:                              ; preds = %misalignment.exit
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i48) #11
  %13 = ptrtoint ptr %rem.i48 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %rem.i48, align 8, !annotation !693
  %call.i51 = call i64 @div64_u64_rem(i64 noundef %12, i64 noundef %alignment, ptr noundef nonnull %rem.i48) #11
  %14 = ptrtoint ptr %rem.i48 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rem.i48, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i48) #11
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i64 noundef %12, i64 noundef %15, i64 noundef %alignment) #14
  br label %if.end21

if.end21:                                         ; preds = %misalignment.exit54, %misalignment.exit.if.end21_crit_edge, %misalignment.exit.thread
  %ok.2.off0 = phi i1 [ false, %misalignment.exit54 ], [ %ok.1.off0, %misalignment.exit.if.end21_crit_edge ], [ %ok.1.off0, %misalignment.exit.thread ]
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %color)
  %cmp23.not = icmp eq i32 %17, %color
  br i1 %cmp23.not, label %if.end21.if.end31_crit_edge, label %do.end27

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %17, i32 noundef %color) #14
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %if.end21.if.end31_crit_edge
  %ok.3.off0 = phi i1 [ false, %do.end27 ], [ %ok.2.off0, %if.end21.if.end31_crit_edge ]
  ret i1 %ok.3.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__igt_insert_range(i32 noundef %count, i64 noundef %size, i64 noundef %start, i64 noundef %end) unnamed_addr #2 align 64 {
entry:
  %mm = alloca %struct.drm_mm, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %0 = call ptr @memset(ptr %mm, i32 255, i32 152)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %do.body4, label %do.body30, !prof !676

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 885, 0\0A.popsection", ""() #11, !srcloc !707
  unreachable

do.body30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %end, i64 %start)
  %cmp.not = icmp ugt i64 %end, %start
  br i1 %cmp.not, label %do.end46, label %do.body38, !prof !685

do.body38:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 887, 0\0A.popsection", ""() #11, !srcloc !708
  unreachable

do.end46:                                         ; preds = %do.body30
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 112) #11
  %2 = extractvalue { i32, i1 } %1, 1
  %3 = extractvalue { i32, i1 } %1, 0
  %retval.0.i = select i1 %2, i32 -1, i32 %3
  %call47 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #15
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %do.end46.cleanup195_crit_edge, label %if.end50

do.end46.cleanup195_crit_edge:                    ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup195

if.end50:                                         ; preds = %do.end46
  %conv = zext i32 %count to i64
  %mul = mul i64 %conv, %size
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef %mul) #11
  %add = add i64 %size, -1
  %sub = add i64 %add, %start
  %call51 = call i64 @div64_u64(i64 noundef %sub, i64 noundef %size) #11
  %conv52 = trunc i64 %call51 to i32
  %sub53 = sub i64 %end, %size
  %call54 = call i64 @div64_u64(i64 noundef %sub53, i64 noundef %size) #11
  %conv55 = trunc i64 %call54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %conv55)
  %cmp58.not323 = icmp ugt i32 %conv52, %conv55
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  br label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %do.end163.for.cond57.preheader_crit_edge, %if.end50
  %mode.0329 = phi ptr [ @insert_modes, %if.end50 ], [ %incdec.ptr, %do.end163.for.cond57.preheader_crit_edge ]
  br i1 %cmp58.not323, label %for.end.thread, label %for.body60.lr.ph

for.body60.lr.ph:                                 ; preds = %for.cond57.preheader
  %mode1.i = getelementptr inbounds %struct.insert_mode, ptr %mode.0329, i32 0, i32 1
  br label %for.body60

for.body60:                                       ; preds = %for.inc.for.body60_crit_edge, %for.body60.lr.ph
  %n.0324 = phi i32 [ %conv52, %for.body60.lr.ph ], [ %inc, %for.inc.for.body60_crit_edge ]
  %arrayidx = getelementptr %struct.drm_mm_node, ptr %call47, i32 %n.0324
  %4 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode1.i, align 4
  %call.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx, i64 noundef %size, i64 noundef %size, i32 noundef %n.0324, i64 noundef %start, i64 noundef %end, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %mode.0329 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode.0329, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i64 noundef %size, i64 noundef %size, i32 noundef %n.0324, ptr noundef %7, i64 noundef %start, i64 noundef %end, i32 noundef %call.i) #14
  br label %do.end65

if.end.i:                                         ; preds = %for.body60
  %call3.i = call fastcc zeroext i1 @assert_node(ptr noundef %arrayidx, ptr noundef nonnull %mm, i64 noundef %size, i64 noundef %size, i32 noundef %n.0324) #11
  br i1 %call3.i, label %for.inc, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_mm_remove_node(ptr noundef %arrayidx) #11
  br label %do.end65

do.end65:                                         ; preds = %if.then4.i, %do.end.i
  %8 = ptrtoint ptr %mode.0329 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode.0329, align 4
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %9, i64 noundef %size, i32 noundef %n.0324, i32 noundef %conv52, i32 noundef %conv55, i64 noundef %start, i64 noundef %end) #14
  br label %out

for.inc:                                          ; preds = %if.end.i
  %inc = add i32 %n.0324, 1
  %cmp58.not = icmp ugt i32 %inc, %conv55
  br i1 %cmp58.not, label %for.end, label %for.inc.for.body60_crit_edge

for.inc.for.body60_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body60

for.end:                                          ; preds = %for.inc
  %call69 = call fastcc zeroext i1 @assert_contiguous_in_range(ptr noundef nonnull %mm, i64 noundef %size, i64 noundef %start, i64 noundef %end)
  br i1 %call69, label %for.cond78.preheader, label %for.end.do.end73_crit_edge

for.end.do.end73_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

for.end.thread:                                   ; preds = %for.cond57.preheader
  %call69364 = call fastcc zeroext i1 @assert_contiguous_in_range(ptr noundef nonnull %mm, i64 noundef %size, i64 noundef %start, i64 noundef %end)
  br i1 %call69364, label %for.end.thread.for.end111_crit_edge, label %for.end.thread.do.end73_crit_edge

for.end.thread.do.end73_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

for.end.thread.for.end111_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end111

for.cond78.preheader:                             ; preds = %for.end
  br i1 %cmp58.not323, label %for.cond78.preheader.for.end111_crit_edge, label %for.body81.lr.ph

for.cond78.preheader.for.end111_crit_edge:        ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end111

for.body81.lr.ph:                                 ; preds = %for.cond78.preheader
  %mode1.i283 = getelementptr inbounds %struct.insert_mode, ptr %mode.0329, i32 0, i32 1
  br label %for.body81

do.end73:                                         ; preds = %for.end.thread.do.end73_crit_edge, %for.end.do.end73_crit_edge
  %10 = ptrtoint ptr %mode.0329 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode.0329, align 4
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %11, i64 noundef %start, i64 noundef %end, i64 noundef %size) #14
  br label %out

for.body81:                                       ; preds = %for.inc109.for.body81_crit_edge, %for.body81.lr.ph
  %n.1326 = phi i32 [ %conv52, %for.body81.lr.ph ], [ %inc110, %for.inc109.for.body81_crit_edge ]
  %arrayidx82 = getelementptr %struct.drm_mm_node, ptr %call47, i32 %n.1326
  %start83 = getelementptr %struct.drm_mm_node, ptr %call47, i32 %n.1326, i32 1
  %12 = ptrtoint ptr %start83 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start83, align 8
  call void @drm_mm_remove_node(ptr noundef %arrayidx82) #11
  %14 = ptrtoint ptr %mode1.i283 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode1.i283, align 4
  %call.i284 = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef %arrayidx82, i64 noundef %size, i64 noundef %size, i32 noundef %n.1326, i64 noundef %start, i64 noundef %end, i32 noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %tobool.not.i285 = icmp eq i32 %call.i284, 0
  br i1 %tobool.not.i285, label %if.end.i289, label %do.end.i287

do.end.i287:                                      ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %mode.0329 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mode.0329, align 4
  %call2.i286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i64 noundef %size, i64 noundef %size, i32 noundef %n.1326, ptr noundef %17, i64 noundef %start, i64 noundef %end, i32 noundef %call.i284) #14
  br label %do.end90

if.end.i289:                                      ; preds = %for.body81
  %call3.i288 = call fastcc zeroext i1 @assert_node(ptr noundef %arrayidx82, ptr noundef nonnull %mm, i64 noundef %size, i64 noundef %size, i32 noundef %n.1326) #11
  br i1 %call3.i288, label %if.end94, label %if.then4.i290

if.then4.i290:                                    ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_mm_remove_node(ptr noundef %arrayidx82) #11
  br label %do.end90

do.end90:                                         ; preds = %if.then4.i290, %do.end.i287
  %18 = ptrtoint ptr %mode.0329 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mode.0329, align 4
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %19, i32 noundef %n.1326) #14
  br label %out

if.end94:                                         ; preds = %if.end.i289
  %20 = ptrtoint ptr %start83 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start83, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %13)
  %cmp97.not = icmp eq i64 %21, %13
  br i1 %cmp97.not, label %for.inc109, label %do.end102

do.end102:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %mode.0329 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mode.0329, align 4
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %23, i32 noundef %n.1326, i64 noundef %13, i64 noundef %21) #14
  br label %out

for.inc109:                                       ; preds = %if.end94
  %inc110 = add i32 %n.1326, 1
  %cmp79.not = icmp ugt i32 %inc110, %conv55
  br i1 %cmp79.not, label %for.inc109.for.end111_crit_edge, label %for.inc109.for.body81_crit_edge

for.inc109.for.body81_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body81

for.inc109.for.end111_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end111

for.end111:                                       ; preds = %for.inc109.for.end111_crit_edge, %for.cond78.preheader.for.end111_crit_edge, %for.end.thread.for.end111_crit_edge
  %call112 = call fastcc zeroext i1 @assert_contiguous_in_range(ptr noundef nonnull %mm, i64 noundef %size, i64 noundef %start, i64 noundef %end)
  br i1 %call112, label %if.end120, label %do.end116

do.end116:                                        ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %mode.0329 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mode.0329, align 4
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %25, i64 noundef %start, i64 noundef %end, i64 noundef %size) #14
  br label %out

if.end120:                                        ; preds = %for.end111
  %26 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node_list, align 4
  %cmp132.not327 = icmp eq ptr %27, %node_list
  br i1 %cmp132.not327, label %if.end120.do.body144_crit_edge, label %if.end120.for.body136_crit_edge

if.end120.for.body136_crit_edge:                  ; preds = %if.end120
  br label %for.body136

if.end120.do.body144_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body144

for.body136:                                      ; preds = %for.body136.for.body136_crit_edge, %if.end120.for.body136_crit_edge
  %.pn279.in328 = phi ptr [ %.pn279, %for.body136.for.body136_crit_edge ], [ %27, %if.end120.for.body136_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn279.in328, i32 -28
  %28 = ptrtoint ptr %.pn279.in328 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn279 = load ptr, ptr %.pn279.in328, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  %cmp132.not = icmp eq ptr %.pn279, %node_list
  br i1 %cmp132.not, label %for.body136.do.body144_crit_edge, label %for.body136.for.body136_crit_edge

for.body136.for.body136_crit_edge:                ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body136

for.body136.do.body144_crit_edge:                 ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body144

do.body144:                                       ; preds = %for.body136.do.body144_crit_edge, %if.end120.do.body144_crit_edge
  %29 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %node_list, align 4
  %cmp.i.i = icmp eq ptr %30, %node_list
  br i1 %cmp.i.i, label %do.end163, label %do.body155, !prof !685

do.body155:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/selftests/test-drm_mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 950, 0\0A.popsection", ""() #11, !srcloc !709
  unreachable

do.end163:                                        ; preds = %do.body144
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 952, i32 noundef 0) #11
  %call.i293 = call i32 @__cond_resched() #11
  %incdec.ptr = getelementptr %struct.insert_mode, ptr %mode.0329, i32 1
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %incdec.ptr, align 4
  %tobool56.not = icmp eq ptr %32, null
  br i1 %tobool56.not, label %do.end163.out_crit_edge, label %do.end163.for.cond57.preheader_crit_edge

do.end163.for.cond57.preheader_crit_edge:         ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond57.preheader

do.end163.out_crit_edge:                          ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %do.end163.out_crit_edge, %do.end116, %do.end102, %do.end90, %do.end73, %do.end65
  %ret.0 = phi i32 [ -22, %do.end65 ], [ -22, %do.end116 ], [ -22, %do.end73 ], [ -22, %do.end102 ], [ -22, %do.end90 ], [ 0, %do.end163.out_crit_edge ]
  %33 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %node_list, align 4
  %cmp183.not330 = icmp eq ptr %34, %node_list
  br i1 %cmp183.not330, label %out.for.end194_crit_edge, label %out.for.body187_crit_edge

out.for.body187_crit_edge:                        ; preds = %out
  br label %for.body187

out.for.end194_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end194

for.body187:                                      ; preds = %for.body187.for.body187_crit_edge, %out.for.body187_crit_edge
  %.pn.in331 = phi ptr [ %.pn, %for.body187.for.body187_crit_edge ], [ %34, %out.for.body187_crit_edge ]
  %node.1 = getelementptr i8, ptr %.pn.in331, i32 -28
  %35 = ptrtoint ptr %.pn.in331 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn.in331, align 4
  call void @drm_mm_remove_node(ptr noundef %node.1) #11
  %cmp183.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp183.not, label %for.body187.for.end194_crit_edge, label %for.body187.for.body187_crit_edge

for.body187.for.body187_crit_edge:                ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body187

for.body187.for.end194_crit_edge:                 ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end194

for.end194:                                       ; preds = %for.body187.for.end194_crit_edge, %out.for.end194_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @vfree(ptr noundef nonnull %call47) #11
  br label %cleanup195

cleanup195:                                       ; preds = %for.end194, %do.end46.cleanup195_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end194 ], [ -12, %do.end46.cleanup195_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @assert_contiguous_in_range(ptr noundef %mm, i64 noundef %size, i64 noundef %start, i64 noundef %end) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca %struct.drm_mm_node, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp.i) #11
  %0 = call ptr @memset(ptr %tmp.i, i32 0, i32 112)
  %call.i = call i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef nonnull %tmp.i, i64 noundef %size, i64 noundef 0, i32 noundef 0, i64 noundef %start, i64 noundef %end, i32 noundef 0) #11
  %1 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.341)
  switch i32 %call.i, label %do.end9.i [
    i32 -28, label %if.end
    i32 0, label %do.end.i
  ], !prof !684

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %start.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i, i32 0, i32 1
  %2 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start.i, align 8
  %size5.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp.i, i32 0, i32 2
  %4 = ptrtoint ptr %size5.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size5.i, align 8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i64 noundef %3, i64 noundef %5, i64 noundef %start, i64 noundef %end) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp.i) #11
  br label %expect_insert_in_range_fail.exit.thread

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %call.i, i32 noundef -28, i64 noundef %size, i64 noundef %start, i64 noundef %end) #14
  br label %expect_insert_in_range_fail.exit.thread

expect_insert_in_range_fail.exit.thread:          ; preds = %do.end9.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i) #11
  %add = add i64 %start, -1
  %sub = add i64 %add, %size
  %call1 = call i64 @div64_u64(i64 noundef %sub, i64 noundef %size) #11
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn164 = load ptr, ptr %node_list, align 4
  %cmp.not165 = icmp eq ptr %.pn164, %node_list
  br i1 %cmp.not165, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %conv = trunc i64 %call1 to i32
  br label %for.body

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %for.body.preheader
  %.pn168 = phi ptr [ %.pn, %if.end58.for.body_crit_edge ], [ %.pn164, %for.body.preheader ]
  %n.0166 = phi i32 [ %inc, %if.end58.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %start6 = getelementptr i8, ptr %.pn168, i32 -20
  %7 = ptrtoint ptr %start6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %start)
  %cmp7 = icmp ult i64 %8, %start
  br i1 %cmp7, label %for.body.do.end_crit_edge, label %lor.lhs.false

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %for.body
  %size10 = getelementptr i8, ptr %.pn168, i32 -12
  %9 = ptrtoint ptr %size10 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size10, align 8
  %add11 = add i64 %10, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %add11, i64 %end)
  %cmp12 = icmp ugt i64 %add11, %end
  br i1 %cmp12, label %lor.lhs.false.do.end_crit_edge, label %if.end21

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %for.body.do.end_crit_edge
  %size18 = getelementptr i8, ptr %.pn168, i32 -12
  %11 = ptrtoint ptr %size18 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size18, align 8
  %add19 = add i64 %12, %8
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %n.0166, i64 noundef %8, i64 noundef %add19, i64 noundef %start, i64 noundef %end) #14
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %conv23 = zext i32 %n.0166 to i64
  %mul = mul i64 %conv23, %size
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %mul)
  %cmp24.not = icmp eq i64 %8, %mul
  br i1 %cmp24.not, label %if.end35, label %do.end29

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %n.0166, i64 noundef %mul, i64 noundef %8) #14
  br label %cleanup

if.end35:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %size)
  %cmp37.not = icmp eq i64 %10, %size
  br i1 %cmp37.not, label %if.end46, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %n.0166, i64 noundef %size, i64 noundef %10) #14
  br label %cleanup

if.end46:                                         ; preds = %if.end35
  %hole_size.i = getelementptr i8, ptr %.pn168, i32 60
  %13 = ptrtoint ptr %hole_size.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %hole_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.i.not = icmp eq i64 %14, 0
  br i1 %tobool.i.not, label %if.end46.if.end58_crit_edge, label %land.lhs.true

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end46
  %15 = ptrtoint ptr %.pn168 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn168, align 4
  %start.i.i = getelementptr i8, ptr %16, i32 -20
  %17 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %end)
  %cmp50 = icmp ult i64 %18, %end
  br i1 %cmp50, label %do.end55, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.end55:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %n.0166) #14
  br label %cleanup

if.end58:                                         ; preds = %land.lhs.true.if.end58_crit_edge, %if.end46.if.end58_crit_edge
  %inc = add i32 %n.0166, 1
  %19 = ptrtoint ptr %.pn168 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn168, align 4
  %cmp.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp.not, label %if.end58.for.end_crit_edge, label %if.end58.for.body_crit_edge

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end58.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start)
  %cmp64.not = icmp eq i64 %start, 0
  br i1 %cmp64.not, label %for.end.if.end79_crit_edge, label %if.then66

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then66:                                        ; preds = %for.end
  %call68 = call ptr @__drm_mm_interval_first(ptr noundef %mm, i64 noundef 0, i64 noundef %add) #11
  %flags.i = getelementptr inbounds %struct.drm_mm_node, ptr %call68, i32 0, i32 12
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i144.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i144.not, label %if.then66.if.end79_crit_edge, label %do.end73

if.then66.if.end79_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

do.end73:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  %start75 = getelementptr inbounds %struct.drm_mm_node, ptr %call68, i32 0, i32 1
  %22 = ptrtoint ptr %start75 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %start75, align 8
  %size76 = getelementptr inbounds %struct.drm_mm_node, ptr %call68, i32 0, i32 2
  %24 = ptrtoint ptr %size76 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size76, align 8
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, i64 noundef %23, i64 noundef %25, i64 noundef %start) #14
  br label %cleanup

if.end79:                                         ; preds = %if.then66.if.end79_crit_edge, %for.end.if.end79_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %end)
  %cmp80.not = icmp eq i64 %end, -1
  br i1 %cmp80.not, label %if.end79.cleanup_crit_edge, label %if.then82

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then82:                                        ; preds = %if.end79
  %call83 = call ptr @__drm_mm_interval_first(ptr noundef %mm, i64 noundef %end, i64 noundef -1) #11
  %flags.i145 = getelementptr inbounds %struct.drm_mm_node, ptr %call83, i32 0, i32 12
  %26 = ptrtoint ptr %flags.i145 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i145, align 4
  %and1.i.i146 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i146)
  %tobool.i147.not = icmp eq i32 %and1.i.i146, 0
  br i1 %tobool.i147.not, label %if.then82.cleanup_crit_edge, label %do.end88

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end88:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  %start90 = getelementptr inbounds %struct.drm_mm_node, ptr %call83, i32 0, i32 1
  %28 = ptrtoint ptr %start90 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start90, align 8
  %size91 = getelementptr inbounds %struct.drm_mm_node, ptr %call83, i32 0, i32 2
  %30 = ptrtoint ptr %size91 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size91, align 8
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, i64 noundef %29, i64 noundef %31, i64 noundef %end) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %if.then82.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %do.end73, %do.end55, %do.end42, %do.end29, %do.end, %expect_insert_in_range_fail.exit.thread
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end29 ], [ false, %do.end42 ], [ false, %do.end55 ], [ false, %do.end73 ], [ false, %do.end88 ], [ true, %if.then82.cleanup_crit_edge ], [ true, %if.end79.cleanup_crit_edge ], [ false, %expect_insert_in_range_fail.exit.thread ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @get_insert_time(ptr noundef %mm, i32 noundef %num_insert, ptr noundef %nodes, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_insert)
  %cmp27.not = icmp eq i32 %num_insert, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mode1.i = getelementptr inbounds %struct.insert_mode, ptr %mode, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_mm_node, ptr %nodes, i32 %i.028
  %0 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode1.i, align 4
  %call.i.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef %arrayidx, i64 noundef 8192, i64 noundef 0, i32 noundef %i.028, i64 noundef 0, i64 noundef -1, i32 noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef 8192, i64 noundef 0, i32 noundef %i.028, ptr noundef %3, i32 noundef %call.i.i) #14
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %flags.i.i = getelementptr %struct.drm_mm_node, ptr %nodes, i32 %i.028, i32 12
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i.do.end.i14_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i14_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i14

lor.lhs.false.i:                                  ; preds = %if.end.i
  %mm1.i = getelementptr %struct.drm_mm_node, ptr %nodes, i32 %i.028, i32 3
  %6 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm1.i, align 8
  %cmp.not.i = icmp eq ptr %7, %mm
  br i1 %cmp.not.i, label %lor.lhs.false.i.if.end.i15_crit_edge, label %lor.lhs.false.i.do.end.i14_crit_edge

lor.lhs.false.i.do.end.i14_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i14

lor.lhs.false.i.if.end.i15_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i15

do.end.i14:                                       ; preds = %lor.lhs.false.i.do.end.i14_crit_edge, %if.end.i.do.end.i14_crit_edge
  %call2.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #14
  br label %if.end.i15

if.end.i15:                                       ; preds = %do.end.i14, %lor.lhs.false.i.if.end.i15_crit_edge
  %ok.0.off0.i = phi i1 [ false, %do.end.i14 ], [ true, %lor.lhs.false.i.if.end.i15_crit_edge ]
  %size3.i = getelementptr %struct.drm_mm_node, ptr %nodes, i32 %i.028, i32 2
  %8 = ptrtoint ptr %size3.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %9)
  %cmp4.not.i = icmp eq i64 %9, 8192
  br i1 %cmp4.not.i, label %if.end12.i, label %if.end12.i.thread

if.end12.i:                                       ; preds = %if.end.i15
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %i.028)
  %cmp23.not.i = icmp eq i32 %11, %i.028
  br i1 %cmp23.not.i, label %assert_node.exit, label %if.end12.i.assert_node.exit.thread_crit_edge

if.end12.i.assert_node.exit.thread_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i.thread:                                ; preds = %if.end.i15
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %9, i64 noundef 8192) #14
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %i.028)
  %cmp23.not.i42 = icmp eq i32 %13, %i.028
  br i1 %cmp23.not.i42, label %if.end12.i.thread.if.then4.i_crit_edge, label %if.end12.i.thread.assert_node.exit.thread_crit_edge

if.end12.i.thread.assert_node.exit.thread_crit_edge: ; preds = %if.end12.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %assert_node.exit.thread

if.end12.i.thread.if.then4.i_crit_edge:           ; preds = %if.end12.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

assert_node.exit.thread:                          ; preds = %if.end12.i.thread.assert_node.exit.thread_crit_edge, %if.end12.i.assert_node.exit.thread_crit_edge
  %14 = phi i32 [ %13, %if.end12.i.thread.assert_node.exit.thread_crit_edge ], [ %11, %if.end12.i.assert_node.exit.thread_crit_edge ]
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %14, i32 noundef %i.028) #14
  br label %if.then4.i

assert_node.exit:                                 ; preds = %if.end12.i
  br i1 %ok.0.off0.i, label %for.inc, label %assert_node.exit.if.then4.i_crit_edge

assert_node.exit.if.then4.i_crit_edge:            ; preds = %assert_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %assert_node.exit.if.then4.i_crit_edge, %assert_node.exit.thread, %if.end12.i.thread.if.then4.i_crit_edge
  tail call void @drm_mm_remove_node(ptr noundef %arrayidx) #11
  br label %do.end

do.end:                                           ; preds = %if.then4.i, %do.end.i
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mode, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %16) #14
  br label %cleanup

for.inc:                                          ; preds = %assert_node.exit
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %num_insert
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call5 = tail call i64 @ktime_get() #11
  %sub = sub i64 %call5, %call
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i64 [ 0, %do.end ], [ %sub, %for.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igt_align_pot(i32 noundef %max) unnamed_addr #2 align 64 {
entry:
  %mm = alloca %struct.drm_mm, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %0 = call ptr @memset(ptr %mm, i32 255, i32 152)
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 1, i64 noundef -3) #11
  %bit.060 = add i32 %max, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bit.060)
  %tobool.not61 = icmp eq i32 %bit.060, 0
  br i1 %tobool.not61, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %bit.063 = phi i32 [ %bit.0, %cleanup.for.body_crit_edge ], [ %bit.060, %entry.for.body_crit_edge ]
  %bit.0.in62 = phi i32 [ %bit.063, %cleanup.for.body_crit_edge ], [ %max, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 112) #16
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %for.body.out_crit_edge, label %if.end

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %for.body
  %sh_prom = zext i32 %bit.063 to i64
  %shl = shl nuw i64 1, %sh_prom
  %sub2 = add i32 %bit.0.in62, -2
  %sh_prom3 = zext i32 %sub2 to i64
  %shl4 = shl nuw i64 1, %sh_prom3
  %add = add nuw i64 %shl4, 1
  %call.i.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef nonnull %call7.i.i, i64 noundef %add, i64 noundef %shl, i32 noundef %bit.063, i64 noundef 0, i64 noundef -1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %add, i64 noundef %shl, i32 noundef %bit.063, ptr noundef nonnull @.str.117, i32 noundef %call.i.i) #14
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call3.i = call fastcc zeroext i1 @assert_node(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %mm, i64 noundef %add, i64 noundef %shl, i32 noundef %bit.063) #11
  br i1 %call3.i, label %cleanup, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_mm_remove_node(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then4.i, %do.end.i
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, i64 noundef %shl, i32 noundef %bit.063) #14
  br label %out

cleanup:                                          ; preds = %if.end.i
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 1237, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %bit.0 = add i32 %bit.063, -1
  %tobool.not = icmp eq i32 %bit.0, 0
  br i1 %tobool.not, label %cleanup.out_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %do.end, %for.body.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ -22, %do.end ], [ 0, %entry.out_crit_edge ], [ 0, %cleanup.out_crit_edge ], [ -12, %for.body.out_crit_edge ]
  %node_list = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node_list, align 4
  %cmp.not65 = icmp eq ptr %3, %node_list
  br i1 %cmp.not65, label %out.cleanup31_crit_edge, label %out.for.body23_crit_edge

out.for.body23_crit_edge:                         ; preds = %out
  br label %for.body23

out.cleanup31_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %out.for.body23_crit_edge
  %.pn.in66 = phi ptr [ %.pn, %for.body23.for.body23_crit_edge ], [ %3, %out.for.body23_crit_edge ]
  %node.0 = getelementptr i8, ptr %.pn.in66, i32 -28
  %4 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in66, align 4
  call void @drm_mm_remove_node(ptr noundef %node.0) #11
  call void @kfree(ptr noundef %node.0) #11
  %cmp.not = icmp eq ptr %.pn, %node_list
  br i1 %cmp.not, label %for.body23.cleanup31_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.body23.cleanup31_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31

cleanup31:                                        ; preds = %for.body23.cleanup31_crit_edge, %out.cleanup31_crit_edge
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evict_something(ptr noundef %mm, i64 noundef %range_start, i64 noundef %range_end, ptr noundef %nodes, ptr noundef %order, i32 noundef %size, i32 noundef %alignment, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  %rem.i = alloca i64, align 8
  %scan = alloca %struct.drm_mm_scan, align 8
  %evict_list = alloca %struct.list_head, align 4
  %tmp = alloca %struct.drm_mm_node, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %scan) #11
  %0 = call ptr @memset(ptr %scan, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %evict_list) #11
  %1 = getelementptr inbounds %struct.list_head, ptr %evict_list, i32 0, i32 1
  %2 = ptrtoint ptr %evict_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %evict_list, ptr %evict_list, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %evict_list, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp) #11
  %conv = zext i32 %size to i64
  %conv1 = zext i32 %alignment to i64
  %mode2 = getelementptr inbounds %struct.insert_mode, ptr %mode, i32 0, i32 1
  %4 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode2, align 4
  call void @drm_mm_scan_init_with_range(ptr noundef nonnull %scan, ptr noundef %mm, i64 noundef %conv, i64 noundef %conv1, i32 noundef 0, i64 noundef %range_start, i64 noundef %range_end, i32 noundef %5) #11
  %call = call fastcc zeroext i1 @evict_nodes(ptr noundef nonnull %scan, ptr noundef %nodes, ptr noundef %order, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull %evict_list)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @memset(ptr %tmp, i32 0, i32 112)
  %call.i = call i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef nonnull %tmp, i64 noundef %conv, i64 noundef %conv1, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %size, i32 noundef %alignment) #14
  %hit_start.i = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 6
  %7 = ptrtoint ptr %hit_start.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hit_start.i, align 8
  %hit_end.i = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 7
  %9 = ptrtoint ptr %hit_end.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hit_end.i, align 8
  %size.i = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 1
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i, align 8
  %alignment.i = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 2
  %13 = ptrtoint ptr %alignment.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %alignment.i, align 8
  %color.i = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 8
  %15 = ptrtoint ptr %color.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %color.i, align 8
  %call.i1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, i64 noundef %8, i64 noundef %10, i64 noundef %12, i64 noundef %14, i32 noundef %16) #14
  call fastcc void @show_holes(ptr noundef %mm)
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 1
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %range_start)
  %cmp = icmp ult i64 %18, %range_start
  br i1 %cmp, label %if.end9.do.end18_crit_edge, label %lor.lhs.false

if.end9.do.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

lor.lhs.false:                                    ; preds = %if.end9
  %size12 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 2
  %19 = ptrtoint ptr %size12 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size12, align 8
  %add = add i64 %20, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %range_end)
  %cmp13 = icmp ugt i64 %add, %range_end
  br i1 %cmp13, label %lor.lhs.false.do.end18_crit_edge, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false.do.end18_crit_edge, %if.end9.do.end18_crit_edge
  %size21 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 2
  %21 = ptrtoint ptr %size21 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %size21, align 8
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i64 noundef %18, i64 noundef %22, i64 noundef %range_start, i64 noundef %range_end) #14
  br label %if.end23

if.end23:                                         ; preds = %do.end18, %lor.lhs.false.if.end23_crit_edge
  %tobool43.not = phi i1 [ false, %do.end18 ], [ true, %lor.lhs.false.if.end23_crit_edge ]
  %err.0 = phi i32 [ -22, %do.end18 ], [ 0, %lor.lhs.false.if.end23_crit_edge ]
  %call26 = call fastcc zeroext i1 @assert_node(ptr noundef nonnull %tmp, ptr noundef %mm, i64 noundef %conv, i64 noundef %conv1, i32 noundef 0)
  br i1 %call26, label %lor.lhs.false27, label %if.end23.do.end33_crit_edge

if.end23.do.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

lor.lhs.false27:                                  ; preds = %if.end23
  %hole_size.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 10
  %23 = ptrtoint ptr %hole_size.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hole_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool.i.not = icmp eq i64 %24, 0
  br i1 %tobool.i.not, label %if.end42, label %lor.lhs.false27.do.end33_crit_edge

lor.lhs.false27.do.end33_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33

do.end33:                                         ; preds = %lor.lhs.false27.do.end33_crit_edge, %if.end23.do.end33_crit_edge
  %size35 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 2
  %25 = ptrtoint ptr %size35 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %size35, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i) #11
  %27 = ptrtoint ptr %rem.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 -1, ptr %rem.i, align 8, !annotation !693
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alignment)
  %tobool.not.i = icmp eq i32 %alignment, 0
  br i1 %tobool.not.i, label %do.end33.if.end42.thread_crit_edge, label %if.end.i

do.end33.if.end42.thread_crit_edge:               ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.thread

if.end.i:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start, align 8
  %call.i2 = call i64 @div64_u64_rem(i64 noundef %29, i64 noundef %conv1, ptr noundef nonnull %rem.i) #11
  %30 = ptrtoint ptr %rem.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rem.i, align 8
  br label %if.end42.thread

if.end42.thread:                                  ; preds = %if.end.i, %do.end33.if.end42.thread_crit_edge
  %retval.0.i = phi i64 [ %31, %if.end.i ], [ 0, %do.end33.if.end42.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i) #11
  %32 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %start, align 8
  %hole_size.i3 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 10
  %34 = ptrtoint ptr %hole_size.i3 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %hole_size.i3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool.i4 = icmp ne i64 %35, 0
  %conv40 = zext i1 %tobool.i4 to i32
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i64 noundef %26, i32 noundef %size, i32 noundef %alignment, i64 noundef %retval.0.i, i64 noundef %33, i32 noundef %conv40) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp) #11
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false27
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp) #11
  br i1 %tobool43.not, label %if.end42.for.cond_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end42.for.cond_crit_edge:                      ; preds = %if.end42
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end42.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %evict_list, %if.end42.for.cond_crit_edge ]
  %36 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp48.not = icmp eq ptr %.pn, %evict_list
  br i1 %cmp48.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %e.0 = getelementptr i8, ptr %.pn, i32 -112
  %call50 = call i32 @drm_mm_reserve_node(ptr noundef %mm, ptr noundef %e.0) #11
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.body.for.cond_crit_edge, label %do.end55

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

do.end55:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %start58 = getelementptr i8, ptr %.pn, i32 -104
  %37 = ptrtoint ptr %start58 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start58, align 8
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i64 noundef %38) #14
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %size67 = getelementptr inbounds %struct.drm_mm_node, ptr %nodes, i32 0, i32 2
  %39 = ptrtoint ptr %size67 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %size67, align 8
  %call68 = call fastcc zeroext i1 @assert_continuous(ptr noundef %mm, i64 noundef %40)
  br i1 %call68, label %for.end.cleanup_crit_edge, label %do.end72

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end72:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %for.end.cleanup_crit_edge, %do.end55, %if.end42.cleanup_crit_edge, %if.end42.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call50, %do.end55 ], [ -22, %do.end72 ], [ -22, %entry.cleanup_crit_edge ], [ %err.0, %if.end42.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %if.end42.thread ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %evict_list) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %scan) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mm_scan_add_block(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mm_scan_remove_block(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_scan_init_with_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @evict_nodes(ptr noundef %scan, ptr noundef %nodes, ptr noundef readonly %order, i32 noundef %count, i1 noundef zeroext %use_color, ptr noundef %evict_list) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp105.not = icmp eq i32 %count, 0
  br i1 %cmp105.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %order, null
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add.exit.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i32, ptr %order, i32 %i.0106
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ %i.0106, %for.body.cond.end_crit_edge ]
  %arrayidx1 = getelementptr %struct.evict_node, ptr %nodes, i32 %cond
  %link = getelementptr %struct.evict_node, ptr %nodes, i32 %cond, i32 1
  %2 = ptrtoint ptr %evict_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %evict_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %evict_list, ptr noundef %3) #11
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_add.exit_crit_edge

cond.end.list_add.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %link, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %link, align 4
  %prev3.i.i = getelementptr %struct.evict_node, ptr %nodes, i32 %cond, i32 1, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %evict_list, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %evict_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %link, ptr %evict_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %cond.end.list_add.exit_crit_edge
  %call = tail call zeroext i1 @drm_mm_scan_add_block(ptr noundef %scan, ptr noundef %arrayidx1) #11
  %inc = add nuw i32 %i.0106, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %count)
  %exitcond.not = icmp eq i32 %inc, %count
  %or.cond = select i1 %call, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %list_add.exit.for.end_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %evict_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %evict_list, align 4
  %cmp9.not109 = icmp eq ptr %9, %evict_list
  br i1 %cmp9.not109, label %for.end.for.end22_crit_edge, label %for.end.for.body10_crit_edge

for.end.for.body10_crit_edge:                     ; preds = %for.end
  br label %for.body10

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end22

for.body10:                                       ; preds = %for.inc16.for.body10_crit_edge, %for.end.for.body10_crit_edge
  %.pn.in110 = phi ptr [ %.pn112, %for.inc16.for.body10_crit_edge ], [ %9, %for.end.for.body10_crit_edge ]
  %10 = ptrtoint ptr %.pn.in110 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn112 = load ptr, ptr %.pn.in110, align 8
  %e.0 = getelementptr i8, ptr %.pn.in110, i32 -112
  %call12 = tail call zeroext i1 @drm_mm_scan_remove_block(ptr noundef %scan, ptr noundef %e.0) #11
  br i1 %call12, label %for.body10.for.inc16_crit_edge, label %if.then13

for.body10.for.inc16_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc16

if.then13:                                        ; preds = %for.body10
  %call.i.i98 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in110) #11
  br i1 %call.i.i98, label %if.end.i.i99, label %if.then13.list_del.exit_crit_edge

if.then13.list_del.exit_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i99:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in110, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in110 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in110, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i99, %if.then13.list_del.exit_crit_edge
  %17 = ptrtoint ptr %.pn.in110 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in110, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in110, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.inc16

for.inc16:                                        ; preds = %list_del.exit, %for.body10.for.inc16_crit_edge
  %cmp9.not = icmp eq ptr %.pn112, %evict_list
  br i1 %cmp9.not, label %for.inc16.for.end22_crit_edge, label %for.inc16.for.body10_crit_edge

for.inc16.for.body10_crit_edge:                   ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10

for.inc16.for.end22_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end22

for.end22:                                        ; preds = %for.inc16.for.end22_crit_edge, %for.end.for.end22_crit_edge
  %19 = ptrtoint ptr %evict_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %evict_list, align 4
  %cmp.i.not = icmp eq ptr %20, %evict_list
  br i1 %cmp.i.not, label %do.end, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.end22
  %21 = ptrtoint ptr %evict_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn96113 = load ptr, ptr %evict_list, align 4
  %cmp35.not114 = icmp eq ptr %.pn96113, %evict_list
  br i1 %cmp35.not114, label %for.cond33.preheader.for.end45_crit_edge, label %for.cond33.preheader.for.body37_crit_edge

for.cond33.preheader.for.body37_crit_edge:        ; preds = %for.cond33.preheader
  br label %for.body37

for.cond33.preheader.for.end45_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end45

do.end:                                           ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #13
  %size = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 1
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size, align 8
  %alignment = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 2
  %24 = ptrtoint ptr %alignment to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %alignment, align 8
  %color = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 8
  %26 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %color, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, i64 noundef %23, i32 noundef %count, i64 noundef %25, i32 noundef %27) #14
  br label %cleanup

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.cond33.preheader.for.body37_crit_edge
  %.pn96115 = phi ptr [ %.pn96, %for.body37.for.body37_crit_edge ], [ %.pn96113, %for.cond33.preheader.for.body37_crit_edge ]
  %e.1 = getelementptr i8, ptr %.pn96115, i32 -112
  tail call void @drm_mm_remove_node(ptr noundef %e.1) #11
  %28 = ptrtoint ptr %.pn96115 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn96 = load ptr, ptr %.pn96115, align 4
  %cmp35.not = icmp eq ptr %.pn96, %evict_list
  br i1 %cmp35.not, label %for.body37.for.end45_crit_edge, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body37

for.body37.for.end45_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end45

for.end45:                                        ; preds = %for.body37.for.end45_crit_edge, %for.cond33.preheader.for.end45_crit_edge
  %call49116 = tail call ptr @drm_mm_scan_color_evict(ptr noundef %scan) #11
  %tobool50.not117 = icmp eq ptr %call49116, null
  br i1 %use_color, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %for.end45
  br i1 %tobool50.not117, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %list_add.exit104.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call49118 = phi ptr [ %call49, %list_add.exit104.while.body_crit_edge ], [ %call49116, %while.cond.preheader.while.body_crit_edge ]
  tail call void @drm_mm_remove_node(ptr noundef nonnull %call49118) #11
  %link55 = getelementptr inbounds %struct.evict_node, ptr %call49118, i32 0, i32 1
  %29 = ptrtoint ptr %evict_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %evict_list, align 4
  %call.i.i100 = tail call zeroext i1 @__list_add_valid(ptr noundef %link55, ptr noundef %evict_list, ptr noundef %30) #11
  br i1 %call.i.i100, label %if.end.i.i103, label %while.body.list_add.exit104_crit_edge

while.body.list_add.exit104_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit104

if.end.i.i103:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i101 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i101 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %link55, ptr %prev1.i.i101, align 4
  %32 = ptrtoint ptr %link55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %link55, align 4
  %prev3.i.i102 = getelementptr inbounds %struct.evict_node, ptr %call49118, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev3.i.i102 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %evict_list, ptr %prev3.i.i102, align 4
  %34 = ptrtoint ptr %evict_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %link55, ptr %evict_list, align 4
  br label %list_add.exit104

list_add.exit104:                                 ; preds = %if.end.i.i103, %while.body.list_add.exit104_crit_edge
  %call49 = tail call ptr @drm_mm_scan_color_evict(ptr noundef %scan) #11
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %list_add.exit104.cleanup_crit_edge, label %list_add.exit104.while.body_crit_edge

list_add.exit104.while.body_crit_edge:            ; preds = %list_add.exit104
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_add.exit104.cleanup_crit_edge:               ; preds = %list_add.exit104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %for.end45
  br i1 %tobool50.not117, label %if.else.cleanup_crit_edge, label %do.end61

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %if.else.cleanup_crit_edge, %list_add.exit104.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end61 ], [ true, %if.else.cleanup_crit_edge ], [ true, %while.cond.preheader.cleanup_crit_edge ], [ true, %list_add.exit104.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @show_holes(ptr noundef readonly %mm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hole_stack = getelementptr inbounds %struct.drm_mm, ptr %mm, i32 0, i32 1
  %0 = ptrtoint ptr %hole_stack to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %hole_stack, align 4
  %hole.0 = getelementptr i8, ptr %.pn, i32 -36
  %cmp.not = icmp eq ptr %.pn, %hole_stack
  br i1 %cmp.not, label %entry.for.end_crit_edge, label %cond.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.true:                                        ; preds = %entry
  %hole_size.i.i = getelementptr i8, ptr %.pn, i32 52
  %1 = ptrtoint ptr %hole_size.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %hole_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.i.not.i = icmp eq i64 %2, 0
  br i1 %tobool.i.not.i, label %cond.true.do.body3.i_crit_edge, label %for.body, !prof !676

cond.true.do.body3.i_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3.i

do.body3.i:                                       ; preds = %cond.true.2.do.body3.i_crit_edge, %cond.true.1.do.body3.i_crit_edge, %cond.true.do.body3.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/drm/drm_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 316, 0\0A.popsection", ""() #11, !srcloc !677
  unreachable

for.body:                                         ; preds = %cond.true
  %start.i.i = getelementptr i8, ptr %.pn, i32 -28
  %3 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start.i.i, align 8
  %size.i.i = getelementptr i8, ptr %.pn, i32 -20
  %5 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size.i.i, align 8
  %add.i.i = add i64 %6, %4
  %7 = ptrtoint ptr %hole_size.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hole_size.i.i, align 8
  %add = add i64 %add.i.i, %8
  %node_list = getelementptr i8, ptr %.pn, i32 -8
  %9 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node_list, align 4
  %add.ptr7 = getelementptr i8, ptr %10, i32 -28
  %flags.i = getelementptr i8, ptr %.pn, i32 68
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start.i.i, align 8
  %15 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size.i.i, align 8
  %17 = ptrtoint ptr %hole.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hole.0, align 8
  %call9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.233, i64 noundef %14, i64 noundef %16, i32 noundef %18) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %node1.0 = phi ptr [ %call9, %if.then ], [ null, %for.body.if.end_crit_edge ]
  %flags.i1 = getelementptr i8, ptr %10, i32 76
  %19 = ptrtoint ptr %flags.i1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i1, align 4
  %and1.i.i2 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i2)
  %tobool.i3.not = icmp eq i32 %and1.i.i2, 0
  br i1 %tobool.i3.not, label %if.end.do.end_crit_edge, label %if.then11

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %start12 = getelementptr i8, ptr %10, i32 -20
  %21 = ptrtoint ptr %start12 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start12, align 8
  %size13 = getelementptr i8, ptr %10, i32 -12
  %23 = ptrtoint ptr %size13 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %size13, align 8
  %25 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr7, align 8
  %call15 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.234, i64 noundef %22, i64 noundef %24, i32 noundef %26) #11
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end.do.end_crit_edge
  %node2.0 = phi ptr [ %call15, %if.then11 ], [ null, %if.end.do.end_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %node1.0, i64 noundef %add.i.i, i64 noundef %add, i64 noundef %8, ptr noundef %node2.0) #14
  tail call void @kfree(ptr noundef %node2.0) #11
  tail call void @kfree(ptr noundef %node1.0) #11
  %27 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.1 = load ptr, ptr %.pn, align 4
  %hole.0.1 = getelementptr i8, ptr %.pn.1, i32 -36
  %cmp.not.1 = icmp eq ptr %.pn.1, %hole_stack
  br i1 %cmp.not.1, label %do.end.for.end_crit_edge, label %cond.true.1

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.true.1:                                      ; preds = %do.end
  %hole_size.i.i.1 = getelementptr i8, ptr %.pn.1, i32 52
  %28 = ptrtoint ptr %hole_size.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %hole_size.i.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool.i.not.i.1 = icmp eq i64 %29, 0
  br i1 %tobool.i.not.i.1, label %cond.true.1.do.body3.i_crit_edge, label %for.body.1, !prof !676

cond.true.1.do.body3.i_crit_edge:                 ; preds = %cond.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3.i

for.body.1:                                       ; preds = %cond.true.1
  %start.i.i.1 = getelementptr i8, ptr %.pn.1, i32 -28
  %30 = ptrtoint ptr %start.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %start.i.i.1, align 8
  %size.i.i.1 = getelementptr i8, ptr %.pn.1, i32 -20
  %32 = ptrtoint ptr %size.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %size.i.i.1, align 8
  %add.i.i.1 = add i64 %33, %31
  %34 = ptrtoint ptr %hole_size.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %hole_size.i.i.1, align 8
  %add.1 = add i64 %add.i.i.1, %35
  %node_list.1 = getelementptr i8, ptr %.pn.1, i32 -8
  %36 = ptrtoint ptr %node_list.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %node_list.1, align 4
  %add.ptr7.1 = getelementptr i8, ptr %37, i32 -28
  %flags.i.1 = getelementptr i8, ptr %.pn.1, i32 68
  %38 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags.i.1, align 4
  %and1.i.i.1 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.1)
  %tobool.i.not.1 = icmp eq i32 %and1.i.i.1, 0
  br i1 %tobool.i.not.1, label %for.body.1.if.end.1_crit_edge, label %if.then.1

for.body.1.if.end.1_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

if.then.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %start.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %start.i.i.1, align 8
  %42 = ptrtoint ptr %size.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %size.i.i.1, align 8
  %44 = ptrtoint ptr %hole.0.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hole.0.1, align 8
  %call9.1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.233, i64 noundef %41, i64 noundef %43, i32 noundef %45) #11
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %for.body.1.if.end.1_crit_edge
  %node1.0.1 = phi ptr [ %call9.1, %if.then.1 ], [ null, %for.body.1.if.end.1_crit_edge ]
  %flags.i1.1 = getelementptr i8, ptr %37, i32 76
  %46 = ptrtoint ptr %flags.i1.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i1.1, align 4
  %and1.i.i2.1 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i2.1)
  %tobool.i3.not.1 = icmp eq i32 %and1.i.i2.1, 0
  br i1 %tobool.i3.not.1, label %if.end.1.do.end.1_crit_edge, label %if.then11.1

if.end.1.do.end.1_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.1

if.then11.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  %start12.1 = getelementptr i8, ptr %37, i32 -20
  %48 = ptrtoint ptr %start12.1 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %start12.1, align 8
  %size13.1 = getelementptr i8, ptr %37, i32 -12
  %50 = ptrtoint ptr %size13.1 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %size13.1, align 8
  %52 = ptrtoint ptr %add.ptr7.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr7.1, align 8
  %call15.1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.234, i64 noundef %49, i64 noundef %51, i32 noundef %53) #11
  br label %do.end.1

do.end.1:                                         ; preds = %if.then11.1, %if.end.1.do.end.1_crit_edge
  %node2.0.1 = phi ptr [ %call15.1, %if.then11.1 ], [ null, %if.end.1.do.end.1_crit_edge ]
  %call18.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %node1.0.1, i64 noundef %add.i.i.1, i64 noundef %add.1, i64 noundef %35, ptr noundef %node2.0.1) #14
  tail call void @kfree(ptr noundef %node2.0.1) #11
  tail call void @kfree(ptr noundef %node1.0.1) #11
  %54 = ptrtoint ptr %.pn.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.2 = load ptr, ptr %.pn.1, align 4
  %hole.0.2 = getelementptr i8, ptr %.pn.2, i32 -36
  %cmp.not.2 = icmp eq ptr %.pn.2, %hole_stack
  br i1 %cmp.not.2, label %do.end.1.for.end_crit_edge, label %cond.true.2

do.end.1.for.end_crit_edge:                       ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.true.2:                                      ; preds = %do.end.1
  %hole_size.i.i.2 = getelementptr i8, ptr %.pn.2, i32 52
  %55 = ptrtoint ptr %hole_size.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %hole_size.i.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool.i.not.i.2 = icmp eq i64 %56, 0
  br i1 %tobool.i.not.i.2, label %cond.true.2.do.body3.i_crit_edge, label %for.body.2, !prof !676

cond.true.2.do.body3.i_crit_edge:                 ; preds = %cond.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3.i

for.body.2:                                       ; preds = %cond.true.2
  %start.i.i.2 = getelementptr i8, ptr %.pn.2, i32 -28
  %57 = ptrtoint ptr %start.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %start.i.i.2, align 8
  %size.i.i.2 = getelementptr i8, ptr %.pn.2, i32 -20
  %59 = ptrtoint ptr %size.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %size.i.i.2, align 8
  %add.i.i.2 = add i64 %60, %58
  %61 = ptrtoint ptr %hole_size.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %hole_size.i.i.2, align 8
  %add.2 = add i64 %add.i.i.2, %62
  %node_list.2 = getelementptr i8, ptr %.pn.2, i32 -8
  %63 = ptrtoint ptr %node_list.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %node_list.2, align 4
  %add.ptr7.2 = getelementptr i8, ptr %64, i32 -28
  %flags.i.2 = getelementptr i8, ptr %.pn.2, i32 68
  %65 = ptrtoint ptr %flags.i.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags.i.2, align 4
  %and1.i.i.2 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.2)
  %tobool.i.not.2 = icmp eq i32 %and1.i.i.2, 0
  br i1 %tobool.i.not.2, label %for.body.2.if.end.2_crit_edge, label %if.then.2

for.body.2.if.end.2_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.2

if.then.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %start.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %start.i.i.2, align 8
  %69 = ptrtoint ptr %size.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %size.i.i.2, align 8
  %71 = ptrtoint ptr %hole.0.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hole.0.2, align 8
  %call9.2 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.233, i64 noundef %68, i64 noundef %70, i32 noundef %72) #11
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %for.body.2.if.end.2_crit_edge
  %node1.0.2 = phi ptr [ %call9.2, %if.then.2 ], [ null, %for.body.2.if.end.2_crit_edge ]
  %flags.i1.2 = getelementptr i8, ptr %64, i32 76
  %73 = ptrtoint ptr %flags.i1.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags.i1.2, align 4
  %and1.i.i2.2 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i2.2)
  %tobool.i3.not.2 = icmp eq i32 %and1.i.i2.2, 0
  br i1 %tobool.i3.not.2, label %if.end.2.do.end.2_crit_edge, label %if.then11.2

if.end.2.do.end.2_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.2

if.then11.2:                                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  %start12.2 = getelementptr i8, ptr %64, i32 -20
  %75 = ptrtoint ptr %start12.2 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %start12.2, align 8
  %size13.2 = getelementptr i8, ptr %64, i32 -12
  %77 = ptrtoint ptr %size13.2 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %size13.2, align 8
  %79 = ptrtoint ptr %add.ptr7.2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr7.2, align 8
  %call15.2 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.234, i64 noundef %76, i64 noundef %78, i32 noundef %80) #11
  br label %do.end.2

do.end.2:                                         ; preds = %if.then11.2, %if.end.2.do.end.2_crit_edge
  %node2.0.2 = phi ptr [ %call15.2, %if.then11.2 ], [ null, %if.end.2.do.end.2_crit_edge ]
  %call18.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %node1.0.2, i64 noundef %add.i.i.2, i64 noundef %add.2, i64 noundef %62, ptr noundef %node2.0.2) #14
  tail call void @kfree(ptr noundef %node2.0.2) #11
  tail call void @kfree(ptr noundef %node1.0.2) #11
  br label %for.end

for.end:                                          ; preds = %do.end.2, %do.end.1.for.end_crit_edge, %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mm_scan_color_evict(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__igt_once(i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  %mm = alloca %struct.drm_mm, align 8
  %rsvd_lo = alloca %struct.drm_mm_node, align 8
  %rsvd_hi = alloca %struct.drm_mm_node, align 8
  %node = alloca %struct.drm_mm_node, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %mm) #11
  %0 = call ptr @memset(ptr %mm, i32 255, i32 152)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %rsvd_lo) #11
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %rsvd_hi) #11
  %1 = call ptr @memset(ptr %rsvd_hi, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %node) #11
  %2 = call ptr @memset(ptr %node, i32 255, i32 112)
  call void @drm_mm_init(ptr noundef nonnull %mm, i64 noundef 0, i64 noundef 7) #11
  %3 = call ptr @memset(ptr %rsvd_lo, i32 0, i32 112)
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %rsvd_lo, i32 0, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %start, align 8
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %rsvd_lo, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1, ptr %size, align 8
  %call = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %rsvd_lo) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254) #14
  br label %err31

if.end:                                           ; preds = %entry
  %6 = call ptr @memset(ptr %rsvd_hi, i32 0, i32 112)
  %start2 = getelementptr inbounds %struct.drm_mm_node, ptr %rsvd_hi, i32 0, i32 1
  %7 = ptrtoint ptr %start2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 5, ptr %start2, align 8
  %size3 = getelementptr inbounds %struct.drm_mm_node, ptr %rsvd_hi, i32 0, i32 2
  %8 = ptrtoint ptr %size3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1, ptr %size3, align 8
  %call4 = call i32 @drm_mm_reserve_node(ptr noundef nonnull %mm, ptr noundef nonnull %rsvd_hi) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254) #14
  br label %err_lo

if.end12:                                         ; preds = %if.end
  %hole_size.i = getelementptr inbounds %struct.drm_mm_node, ptr %rsvd_lo, i32 0, i32 10
  %9 = ptrtoint ptr %hole_size.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hole_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.i.not = icmp eq i64 %10, 0
  br i1 %tobool.i.not, label %if.end12.do.end18_crit_edge, label %lor.lhs.false

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

lor.lhs.false:                                    ; preds = %if.end12
  %hole_size.i35 = getelementptr inbounds %struct.drm_mm_node, ptr %rsvd_hi, i32 0, i32 10
  %11 = ptrtoint ptr %hole_size.i35 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hole_size.i35, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.i36.not = icmp eq i64 %12, 0
  br i1 %tobool.i36.not, label %lor.lhs.false.do.end18_crit_edge, label %if.end21

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false.do.end18_crit_edge, %if.end12.do.end18_crit_edge
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259) #14
  br label %err_hi

if.end21:                                         ; preds = %lor.lhs.false
  %13 = call ptr @memset(ptr %node, i32 0, i32 112)
  %call.i = call i32 @drm_mm_insert_node_in_range(ptr noundef nonnull %mm, ptr noundef nonnull %node, i64 noundef 2, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262) #14
  br label %err_hi

if.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_mm_remove_node(ptr noundef nonnull %node) #11
  br label %err_hi

err_hi:                                           ; preds = %if.end30, %do.end27, %do.end18
  %err.0 = phi i32 [ -22, %do.end27 ], [ 0, %if.end30 ], [ -22, %do.end18 ]
  call void @drm_mm_remove_node(ptr noundef nonnull %rsvd_hi) #11
  br label %err_lo

err_lo:                                           ; preds = %err_hi, %do.end9
  %err.1 = phi i32 [ %call4, %do.end9 ], [ %err.0, %err_hi ]
  call void @drm_mm_remove_node(ptr noundef nonnull %rsvd_lo) #11
  br label %err31

err31:                                            ; preds = %err_lo, %do.end
  %err.2 = phi i32 [ %call, %do.end ], [ %err.1, %err_lo ]
  call void @drm_mm_takedown(ptr noundef nonnull %mm) #11
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %node) #11
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %rsvd_hi) #11
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %rsvd_lo) #11
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %mm) #11
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @separate_adjacent_colors(ptr noundef %node, i32 noundef %color, ptr nocapture noundef %start, ptr nocapture noundef %end) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.drm_mm_node, ptr %node, i32 0, i32 12
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %color)
  %cmp.not = icmp eq i32 %3, %color
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %node_list = getelementptr inbounds %struct.drm_mm_node, ptr %node, i32 0, i32 4
  %6 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node_list, align 4
  %flags.i13 = getelementptr i8, ptr %7, i32 76
  %8 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i13, align 4
  %and1.i.i14 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i14)
  %tobool.i15.not = icmp eq i32 %and1.i.i14, 0
  br i1 %tobool.i15.not, label %if.end.if.end7_crit_edge, label %land.lhs.true3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true3:                                   ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %7, i32 -28
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %color)
  %cmp5.not = icmp eq i32 %11, %color
  br i1 %cmp5.not, label %land.lhs.true3.if.end7_crit_edge, label %if.then6

land.lhs.true3.if.end7_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %end, align 8
  %dec = add i64 %13, -1
  store i64 %dec, ptr %end, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evict_color(ptr noundef %mm, i64 noundef %range_start, i64 noundef %range_end, ptr noundef %nodes, ptr noundef %order, i32 noundef %count, i32 noundef %size, i32 noundef %alignment, i32 noundef %color, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  %rem.i = alloca i64, align 8
  %scan = alloca %struct.drm_mm_scan, align 8
  %evict_list = alloca %struct.list_head, align 4
  %tmp = alloca %struct.drm_mm_node, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %scan) #11
  %0 = call ptr @memset(ptr %scan, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %evict_list) #11
  %1 = getelementptr inbounds %struct.list_head, ptr %evict_list, i32 0, i32 1
  %2 = ptrtoint ptr %evict_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %evict_list, ptr %evict_list, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %evict_list, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp) #11
  %conv = zext i32 %size to i64
  %conv1 = zext i32 %alignment to i64
  %mode2 = getelementptr inbounds %struct.insert_mode, ptr %mode, i32 0, i32 1
  %4 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode2, align 4
  call void @drm_mm_scan_init_with_range(ptr noundef nonnull %scan, ptr noundef %mm, i64 noundef %conv, i64 noundef %conv1, i32 noundef %color, i64 noundef %range_start, i64 noundef %range_end, i32 noundef %5) #11
  %call = call fastcc zeroext i1 @evict_nodes(ptr noundef nonnull %scan, ptr noundef %nodes, ptr noundef %order, i32 noundef %count, i1 noundef zeroext true, ptr noundef nonnull %evict_list)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @memset(ptr %tmp, i32 0, i32 112)
  %call.i = call i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef nonnull %tmp, i64 noundef %conv, i64 noundef %conv1, i32 noundef %color, i64 noundef 0, i64 noundef -1, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.310, i32 noundef %size, i32 noundef %alignment, i32 noundef %color, i32 noundef %call.i) #14
  %hit_start.i = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 6
  %7 = ptrtoint ptr %hit_start.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hit_start.i, align 8
  %hit_end.i = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 7
  %9 = ptrtoint ptr %hit_end.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hit_end.i, align 8
  %size.i = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 1
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i, align 8
  %alignment.i = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 2
  %13 = ptrtoint ptr %alignment.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %alignment.i, align 8
  %color.i = getelementptr inbounds %struct.drm_mm_scan, ptr %scan, i32 0, i32 8
  %15 = ptrtoint ptr %color.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %color.i, align 8
  %call.i99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, i64 noundef %8, i64 noundef %10, i64 noundef %12, i64 noundef %14, i32 noundef %16) #14
  call fastcc void @show_holes(ptr noundef %mm)
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 1
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %range_start)
  %cmp = icmp ult i64 %18, %range_start
  br i1 %cmp, label %if.end9.do.end18_crit_edge, label %lor.lhs.false

if.end9.do.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

lor.lhs.false:                                    ; preds = %if.end9
  %size12 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 2
  %19 = ptrtoint ptr %size12 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size12, align 8
  %add = add i64 %20, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %range_end)
  %cmp13 = icmp ugt i64 %add, %range_end
  br i1 %cmp13, label %lor.lhs.false.do.end18_crit_edge, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false.do.end18_crit_edge, %if.end9.do.end18_crit_edge
  %size21 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 2
  %21 = ptrtoint ptr %size21 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %size21, align 8
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i64 noundef %18, i64 noundef %22, i64 noundef %range_start, i64 noundef %range_end) #14
  br label %if.end23

if.end23:                                         ; preds = %do.end18, %lor.lhs.false.if.end23_crit_edge
  %err.0 = phi i32 [ -22, %do.end18 ], [ 0, %lor.lhs.false.if.end23_crit_edge ]
  %hole_size.i.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 10
  %23 = ptrtoint ptr %hole_size.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hole_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool.i.not.i = icmp eq i64 %24, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %if.end23.colors_abutt.exit.thread_crit_edge

if.end23.colors_abutt.exit.thread_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %colors_abutt.exit.thread

land.lhs.true.i:                                  ; preds = %if.end23
  %node_list.i = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 4
  %25 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node_list.i, align 4
  %flags.i.i = getelementptr i8, ptr %26, i32 76
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i29.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i29.not.i, label %land.lhs.true.i.colors_abutt.exit.thread_crit_edge, label %29

land.lhs.true.i.colors_abutt.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %colors_abutt.exit.thread

29:                                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %26, i32 -28
  %30 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp, align 8
  %32 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %start, align 8
  %size.i100 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 2
  %34 = ptrtoint ptr %size.i100 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %size.i100, align 8
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i, align 8
  %start14.i = getelementptr i8, ptr %26, i32 -20
  %38 = ptrtoint ptr %start14.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %start14.i, align 8
  %size20.i = getelementptr i8, ptr %26, i32 -12
  %40 = ptrtoint ptr %size20.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %size20.i, align 8
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, i32 noundef %31, i64 noundef %33, i64 noundef %35, i32 noundef %37, i64 noundef %39, i64 noundef %41) #14
  br label %colors_abutt.exit.thread

colors_abutt.exit.thread:                         ; preds = %29, %land.lhs.true.i.colors_abutt.exit.thread_crit_edge, %if.end23.colors_abutt.exit.thread_crit_edge
  %42 = phi i32 [ -22, %29 ], [ %err.0, %land.lhs.true.i.colors_abutt.exit.thread_crit_edge ], [ %err.0, %if.end23.colors_abutt.exit.thread_crit_edge ]
  %call29 = call fastcc zeroext i1 @assert_node(ptr noundef nonnull %tmp, ptr noundef %mm, i64 noundef %conv, i64 noundef %conv1, i32 noundef %color)
  br i1 %call29, label %if.end40, label %do.end33

do.end33:                                         ; preds = %colors_abutt.exit.thread
  %size35 = getelementptr inbounds %struct.drm_mm_node, ptr %tmp, i32 0, i32 2
  %43 = ptrtoint ptr %size35 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size35, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i) #11
  %45 = ptrtoint ptr %rem.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 -1, ptr %rem.i, align 8, !annotation !693
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alignment)
  %tobool.not.i = icmp eq i32 %alignment, 0
  br i1 %tobool.not.i, label %do.end33.if.end40.thread_crit_edge, label %if.end.i

do.end33.if.end40.thread_crit_edge:               ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.thread

if.end.i:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %start, align 8
  %call.i102 = call i64 @div64_u64_rem(i64 noundef %47, i64 noundef %conv1, ptr noundef nonnull %rem.i) #11
  %48 = ptrtoint ptr %rem.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %rem.i, align 8
  br label %if.end40.thread

if.end40.thread:                                  ; preds = %if.end.i, %do.end33.if.end40.thread_crit_edge
  %retval.0.i103 = phi i64 [ %49, %if.end.i ], [ 0, %do.end33.if.end40.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i) #11
  %50 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %start, align 8
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, i64 noundef %44, i32 noundef %size, i32 noundef %alignment, i64 noundef %retval.0.i103, i64 noundef %51) #14
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp) #11
  br label %cleanup

if.end40:                                         ; preds = %colors_abutt.exit.thread
  call void @drm_mm_remove_node(ptr noundef nonnull %tmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool41.not = icmp eq i32 %42, 0
  br i1 %tobool41.not, label %if.end40.for.cond_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40.for.cond_crit_edge:                      ; preds = %if.end40
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end40.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %evict_list, %if.end40.for.cond_crit_edge ]
  %52 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp46.not = icmp eq ptr %.pn, %evict_list
  br i1 %cmp46.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %e.0 = getelementptr i8, ptr %.pn, i32 -112
  %call48 = call i32 @drm_mm_reserve_node(ptr noundef %mm, ptr noundef %e.0) #11
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %for.body.for.cond_crit_edge, label %do.end53

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

do.end53:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %start56 = getelementptr i8, ptr %.pn, i32 -104
  %53 = ptrtoint ptr %start56 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %start56, align 8
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i64 noundef %54) #14
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  call void @__might_resched(ptr noundef nonnull @.str.22, i32 noundef 2254, i32 noundef 0) #11
  %call.i104 = call i32 @__cond_resched() #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end53, %if.end40.cleanup_crit_edge, %if.end40.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call48, %do.end53 ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ %42, %if.end40.cleanup_crit_edge ], [ -22, %if.end40.thread ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %evict_list) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %scan) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_selftests() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @selftests, align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.i:                                       ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 1), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.1.i = icmp eq i8 %1, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.for.body.preheader_crit_edge

for.cond.i.for.body.preheader_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.1.i:                                     ; preds = %for.cond.i
  %2 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 2), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.2.i = icmp eq i8 %2, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.for.body.preheader_crit_edge

for.cond.1.i.for.body.preheader_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %3 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 3), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.3.i = icmp eq i8 %3, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.for.body.preheader_crit_edge

for.cond.2.i.for.body.preheader_crit_edge:        ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %4 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 4), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.4.i = icmp eq i8 %4, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.for.body.preheader_crit_edge

for.cond.3.i.for.body.preheader_crit_edge:        ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %5 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 5), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.5.i = icmp eq i8 %5, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.for.body.preheader_crit_edge

for.cond.4.i.for.body.preheader_crit_edge:        ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %6 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 6), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.6.i = icmp eq i8 %6, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.for.body.preheader_crit_edge

for.cond.5.i.for.body.preheader_crit_edge:        ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %7 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 7), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.7.i = icmp eq i8 %7, 0
  br i1 %tobool.not.7.i, label %for.cond.7.i, label %for.cond.6.i.for.body.preheader_crit_edge

for.cond.6.i.for.body.preheader_crit_edge:        ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %8 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 8), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.8.i = icmp eq i8 %8, 0
  br i1 %tobool.not.8.i, label %for.cond.8.i, label %for.cond.7.i.for.body.preheader_crit_edge

for.cond.7.i.for.body.preheader_crit_edge:        ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %9 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 9), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.9.i = icmp eq i8 %9, 0
  br i1 %tobool.not.9.i, label %for.cond.9.i, label %for.cond.8.i.for.body.preheader_crit_edge

for.cond.8.i.for.body.preheader_crit_edge:        ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %10 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 10), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.10.i = icmp eq i8 %10, 0
  br i1 %tobool.not.10.i, label %for.cond.10.i, label %for.cond.9.i.for.body.preheader_crit_edge

for.cond.9.i.for.body.preheader_crit_edge:        ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %11 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 11), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.11.i = icmp eq i8 %11, 0
  br i1 %tobool.not.11.i, label %for.cond.11.i, label %for.cond.10.i.for.body.preheader_crit_edge

for.cond.10.i.for.body.preheader_crit_edge:       ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %12 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 12), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.12.i = icmp eq i8 %12, 0
  br i1 %tobool.not.12.i, label %for.cond.12.i, label %for.cond.11.i.for.body.preheader_crit_edge

for.cond.11.i.for.body.preheader_crit_edge:       ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %13 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 13), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.13.i = icmp eq i8 %13, 0
  br i1 %tobool.not.13.i, label %for.cond.13.i, label %for.cond.12.i.for.body.preheader_crit_edge

for.cond.12.i.for.body.preheader_crit_edge:       ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %14 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 14), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.14.i = icmp eq i8 %14, 0
  br i1 %tobool.not.14.i, label %for.cond.14.i, label %for.cond.13.i.for.body.preheader_crit_edge

for.cond.13.i.for.body.preheader_crit_edge:       ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %15 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 15), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.15.i = icmp eq i8 %15, 0
  br i1 %tobool.not.15.i, label %for.cond.15.i, label %for.cond.14.i.for.body.preheader_crit_edge

for.cond.14.i.for.body.preheader_crit_edge:       ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.15.i:                                    ; preds = %for.cond.14.i
  %16 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 16), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.16.i = icmp eq i8 %16, 0
  br i1 %tobool.not.16.i, label %for.cond.16.i, label %for.cond.15.i.for.body.preheader_crit_edge

for.cond.15.i.for.body.preheader_crit_edge:       ; preds = %for.cond.15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.16.i:                                    ; preds = %for.cond.15.i
  %17 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 17), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.17.i = icmp eq i8 %17, 0
  br i1 %tobool.not.17.i, label %for.cond.17.i, label %for.cond.16.i.for.body.preheader_crit_edge

for.cond.16.i.for.body.preheader_crit_edge:       ; preds = %for.cond.16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.17.i:                                    ; preds = %for.cond.16.i
  %18 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 18), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.18.i = icmp eq i8 %18, 0
  br i1 %tobool.not.18.i, label %for.cond.18.i, label %for.cond.17.i.for.body.preheader_crit_edge

for.cond.17.i.for.body.preheader_crit_edge:       ; preds = %for.cond.17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.18.i:                                    ; preds = %for.cond.17.i
  %19 = load i8, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 19), align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.19.i = icmp eq i8 %19, 0
  br i1 %tobool.not.19.i, label %for.cond.19.i, label %for.cond.18.i.for.body.preheader_crit_edge

for.cond.18.i.for.body.preheader_crit_edge:       ; preds = %for.cond.18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.cond.19.i:                                    ; preds = %for.cond.18.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @selftests, align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 1), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 2), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 3), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 4), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 5), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 6), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 7), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 8), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 9), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 10), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 11), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 12), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 13), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 14), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 15), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 16), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 17), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 18), align 4
  store i8 1, ptr getelementptr inbounds ([20 x %struct.drm_selftest], ptr @selftests, i32 0, i32 19), align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.19.i, %for.cond.18.i.for.body.preheader_crit_edge, %for.cond.17.i.for.body.preheader_crit_edge, %for.cond.16.i.for.body.preheader_crit_edge, %for.cond.15.i.for.body.preheader_crit_edge, %for.cond.14.i.for.body.preheader_crit_edge, %for.cond.13.i.for.body.preheader_crit_edge, %for.cond.12.i.for.body.preheader_crit_edge, %for.cond.11.i.for.body.preheader_crit_edge, %for.cond.10.i.for.body.preheader_crit_edge, %for.cond.9.i.for.body.preheader_crit_edge, %for.cond.8.i.for.body.preheader_crit_edge, %for.cond.7.i.for.body.preheader_crit_edge, %for.cond.6.i.for.body.preheader_crit_edge, %for.cond.5.i.for.body.preheader_crit_edge, %for.cond.4.i.for.body.preheader_crit_edge, %for.cond.3.i.for.body.preheader_crit_edge, %for.cond.2.i.for.body.preheader_crit_edge, %for.cond.1.i.for.body.preheader_crit_edge, %for.cond.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %dec5 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ 19, %for.body.preheader ]
  %st.addr.03 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @selftests, %for.body.preheader ]
  %20 = ptrtoint ptr %st.addr.03 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %st.addr.03, align 4, !range !710
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not = icmp eq i8 %21, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_selftests.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_selftests, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !711

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.drm_selftest, ptr %st.addr.03, i32 0, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_selftests.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.334, ptr noundef %23) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %func = getelementptr inbounds %struct.drm_selftest, ptr %st.addr.03, i32 0, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %func, align 4
  %call7 = tail call i32 %25(ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end.for.inc_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %do.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.drm_selftest, ptr %st.addr.03, i32 1
  %dec = add nsw i32 %dec5, -1
  %tobool.not = icmp eq i32 %dec5, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %st.addr.0.lcssa = phi ptr [ %st.addr.03, %do.end.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %err.2 = phi i32 [ %call7, %do.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp = icmp sgt i32 %err.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.2)
  %cmp11 = icmp eq i32 %err.2, -25
  %spec.select = or i1 %cmp, %cmp11
  br i1 %spec.select, label %do.end27, label %for.end.if.end34_crit_edge, !prof !676

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.end27:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %name28 = getelementptr inbounds %struct.drm_selftest, ptr %st.addr.0.lcssa, i32 0, i32 1
  %26 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name28, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.332, i32 noundef 83, i32 noundef 9, ptr noundef nonnull @.str.335, ptr noundef %27, i32 noundef %err.2) #11
  br label %if.end34

if.end34:                                         ; preds = %do.end27, %for.end.if.end34_crit_edge
  %spec.select1 = phi i32 [ -1, %do.end27 ], [ %err.2, %for.end.if.end34_crit_edge ]
  tail call void @rcu_barrier() #11
  ret i32 %spec.select1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 286)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 286)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !64, !66, !67, !69, !70, !72, !73, !75, !77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !103, !105, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !271, !273, !275, !277, !278, !279, !280, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !333, !334, !335, !337, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !370, !372, !373, !374, !375, !377, !378, !379, !381, !382, !383, !384, !386, !387, !388, !390, !391, !392, !393, !395, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !409, !410, !412, !413, !414, !416, !417, !419, !420, !421, !422, !424, !425, !426, !428, !429, !430, !431, !433, !434, !435, !437, !439, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !455, !456, !457, !459, !460, !461, !462, !464, !465, !466, !468, !469, !470, !471, !473, !475, !477, !478, !479, !480, !482, !483, !484, !486, !487, !488, !490, !491, !492, !494, !495, !497, !498, !499, !500, !502, !503, !504, !506, !507, !508, !510, !511, !512, !513, !515, !516, !518, !519, !520, !522, !523, !524, !526, !527, !528, !529, !531, !532, !533, !535, !536, !538, !539, !540, !542, !543, !544, !546, !547, !548, !550, !551, !552, !554, !555, !556, !558, !559, !560, !562, !563, !564, !566, !567, !568, !570, !571, !572, !574, !575, !576, !578, !579, !580, !581, !583, !584, !585, !587, !588, !589, !591, !592, !593, !595, !596, !598, !599, !600, !601, !603, !604, !606, !607, !608, !610, !611, !613, !614, !615, !617, !618, !619, !621, !622, !623, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !647, !648, !649, !650, !652, !653, !654, !655, !656, !657, !659, !660, !661, !663, !664}
!llvm.named.register.sp = !{!666}
!llvm.module.flags = !{!667, !668, !669, !670, !671, !672, !673, !674}
!llvm.ident = !{!675}

!0 = !{ptr @__param_igt__9__sanitycheck, !1, !"__param_igt__9__sanitycheck", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 9, i32 1}
!2 = !{ptr @__UNIQUE_ID_igt__9__sanitychecktype254, !1, !"__UNIQUE_ID_igt__9__sanitychecktype254", i1 false, i1 false}
!3 = !{ptr @__param_igt__10__init, !4, !"__param_igt__10__init", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 10, i32 1}
!5 = !{ptr @__UNIQUE_ID_igt__10__inittype255, !4, !"__UNIQUE_ID_igt__10__inittype255", i1 false, i1 false}
!6 = !{ptr @__param_igt__11__debug, !7, !"__param_igt__11__debug", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 11, i32 1}
!8 = !{ptr @__UNIQUE_ID_igt__11__debugtype256, !7, !"__UNIQUE_ID_igt__11__debugtype256", i1 false, i1 false}
!9 = !{ptr @__param_igt__12__reserve, !10, !"__param_igt__12__reserve", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 12, i32 1}
!11 = !{ptr @__UNIQUE_ID_igt__12__reservetype257, !10, !"__UNIQUE_ID_igt__12__reservetype257", i1 false, i1 false}
!12 = !{ptr @__param_igt__13__insert, !13, !"__param_igt__13__insert", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 13, i32 1}
!14 = !{ptr @__UNIQUE_ID_igt__13__inserttype258, !13, !"__UNIQUE_ID_igt__13__inserttype258", i1 false, i1 false}
!15 = !{ptr @__param_igt__14__replace, !16, !"__param_igt__14__replace", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 14, i32 1}
!17 = !{ptr @__UNIQUE_ID_igt__14__replacetype259, !16, !"__UNIQUE_ID_igt__14__replacetype259", i1 false, i1 false}
!18 = !{ptr @__param_igt__15__insert_range, !19, !"__param_igt__15__insert_range", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 15, i32 1}
!20 = !{ptr @__UNIQUE_ID_igt__15__insert_rangetype260, !19, !"__UNIQUE_ID_igt__15__insert_rangetype260", i1 false, i1 false}
!21 = !{ptr @__param_igt__16__align, !22, !"__param_igt__16__align", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 16, i32 1}
!23 = !{ptr @__UNIQUE_ID_igt__16__aligntype261, !22, !"__UNIQUE_ID_igt__16__aligntype261", i1 false, i1 false}
!24 = !{ptr @__param_igt__17__frag, !25, !"__param_igt__17__frag", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 17, i32 1}
!26 = !{ptr @__UNIQUE_ID_igt__17__fragtype262, !25, !"__UNIQUE_ID_igt__17__fragtype262", i1 false, i1 false}
!27 = !{ptr @__param_igt__18__align32, !28, !"__param_igt__18__align32", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 18, i32 1}
!29 = !{ptr @__UNIQUE_ID_igt__18__align32type263, !28, !"__UNIQUE_ID_igt__18__align32type263", i1 false, i1 false}
!30 = !{ptr @__param_igt__19__align64, !31, !"__param_igt__19__align64", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 19, i32 1}
!32 = !{ptr @__UNIQUE_ID_igt__19__align64type264, !31, !"__UNIQUE_ID_igt__19__align64type264", i1 false, i1 false}
!33 = !{ptr @__param_igt__20__evict, !34, !"__param_igt__20__evict", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 20, i32 1}
!35 = !{ptr @__UNIQUE_ID_igt__20__evicttype265, !34, !"__UNIQUE_ID_igt__20__evicttype265", i1 false, i1 false}
!36 = !{ptr @__param_igt__21__evict_range, !37, !"__param_igt__21__evict_range", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 21, i32 1}
!38 = !{ptr @__UNIQUE_ID_igt__21__evict_rangetype266, !37, !"__UNIQUE_ID_igt__21__evict_rangetype266", i1 false, i1 false}
!39 = !{ptr @__param_igt__22__bottomup, !40, !"__param_igt__22__bottomup", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 22, i32 1}
!41 = !{ptr @__UNIQUE_ID_igt__22__bottomuptype267, !40, !"__UNIQUE_ID_igt__22__bottomuptype267", i1 false, i1 false}
!42 = !{ptr @__param_igt__23__lowest, !43, !"__param_igt__23__lowest", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 23, i32 1}
!44 = !{ptr @__UNIQUE_ID_igt__23__lowesttype268, !43, !"__UNIQUE_ID_igt__23__lowesttype268", i1 false, i1 false}
!45 = !{ptr @__param_igt__24__topdown, !46, !"__param_igt__24__topdown", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 24, i32 1}
!47 = !{ptr @__UNIQUE_ID_igt__24__topdowntype269, !46, !"__UNIQUE_ID_igt__24__topdowntype269", i1 false, i1 false}
!48 = !{ptr @__param_igt__25__highest, !49, !"__param_igt__25__highest", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 25, i32 1}
!50 = !{ptr @__UNIQUE_ID_igt__25__highesttype270, !49, !"__UNIQUE_ID_igt__25__highesttype270", i1 false, i1 false}
!51 = !{ptr @__param_igt__26__color, !52, !"__param_igt__26__color", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 26, i32 1}
!53 = !{ptr @__UNIQUE_ID_igt__26__colortype271, !52, !"__UNIQUE_ID_igt__26__colortype271", i1 false, i1 false}
!54 = !{ptr @__param_igt__27__color_evict, !55, !"__param_igt__27__color_evict", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 27, i32 1}
!56 = !{ptr @__UNIQUE_ID_igt__27__color_evicttype272, !55, !"__UNIQUE_ID_igt__27__color_evicttype272", i1 false, i1 false}
!57 = !{ptr @__param_igt__28__color_evict_range, !58, !"__param_igt__28__color_evict_range", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/selftests/drm_mm_selftests.h", i32 28, i32 1}
!59 = !{ptr @__UNIQUE_ID_igt__28__color_evict_rangetype273, !58, !"__UNIQUE_ID_igt__28__color_evict_rangetype273", i1 false, i1 false}
!60 = !{ptr @__initcall__kmod_test_drm_mm__276_2479_test_drm_mm_init6, !61, !"__initcall__kmod_test_drm_mm__276_2479_test_drm_mm_init6", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2479, i32 1}
!62 = !{ptr @__exitcall_test_drm_mm_exit, !63, !"__exitcall_test_drm_mm_exit", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2480, i32 1}
!64 = !{ptr @__param_random_seed, !65, !"__param_random_seed", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2482, i32 1}
!66 = !{ptr @__UNIQUE_ID_random_seedtype277, !65, !"__UNIQUE_ID_random_seedtype277", i1 false, i1 false}
!67 = !{ptr @__param_max_iterations, !68, !"__param_max_iterations", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2483, i32 1}
!69 = !{ptr @__UNIQUE_ID_max_iterationstype278, !68, !"__UNIQUE_ID_max_iterationstype278", i1 false, i1 false}
!70 = !{ptr @__param_max_prime, !71, !"__param_max_prime", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2484, i32 1}
!72 = !{ptr @__UNIQUE_ID_max_primetype279, !71, !"__UNIQUE_ID_max_primetype279", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_author280, !74, !"__UNIQUE_ID_author280", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2486, i32 1}
!75 = !{ptr @__UNIQUE_ID_file281, !76, !"__UNIQUE_ID_file281", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2487, i32 1}
!77 = !{ptr @__UNIQUE_ID_license282, !76, !"__UNIQUE_ID_license282", i1 false, i1 false}
!78 = !{ptr @random_seed, !79, !"random_seed", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 22, i32 21}
!80 = !{ptr @__param_str_igt__9__sanitycheck, !1, !"__param_str_igt__9__sanitycheck", i1 false, i1 false}
!81 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @selftests, !102, !"selftests", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/selftests/drm_selftest.c", i32 37, i32 3}
!103 = !{ptr @.str.20, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 50, i32 2}
!105 = !{ptr @.str.21, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.22, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @igt_sanitycheck._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @igt_sanitycheck._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.23, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 214, i32 3}
!111 = !{ptr @.str.24, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @igt_init._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @igt_init._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.26, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 221, i32 3}
!116 = !{ptr @igt_init._entry.25, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @igt_init._entry_ptr.27, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.29, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 226, i32 3}
!120 = !{ptr @igt_init._entry.28, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @igt_init._entry_ptr.30, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 241, i32 3}
!124 = !{ptr @igt_init._entry.31, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @igt_init._entry_ptr.33, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.34, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 92, i32 5}
!128 = !{ptr @.str.35, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @assert_one_hole._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @assert_one_hole._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.37, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 100, i32 3}
!133 = !{ptr @assert_one_hole._entry.36, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @assert_one_hole._entry_ptr.38, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.39, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 64, i32 3}
!137 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @assert_no_holes._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @assert_no_holes._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 70, i32 4}
!142 = !{ptr @assert_no_holes._entry.41, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @assert_no_holes._entry_ptr.43, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.44, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 282, i32 3}
!146 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @igt_debug._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @igt_debug._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.47, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 291, i32 3}
!151 = !{ptr @igt_debug._entry.46, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @igt_debug._entry_ptr.48, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.49, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 410, i32 4}
!155 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @__igt_reserve._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @__igt_reserve._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 417, i32 4}
!160 = !{ptr @__igt_reserve._entry.51, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @__igt_reserve._entry_ptr.53, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @__igt_reserve._entry.54, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 441, i32 4}
!164 = !{ptr @__igt_reserve._entry_ptr.55, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.57, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 475, i32 5}
!167 = !{ptr @__igt_reserve._entry.56, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @__igt_reserve._entry_ptr.58, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.59, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 336, i32 3}
!171 = !{ptr @.str.60, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 337, i32 3}
!173 = !{ptr @.str.61, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 338, i32 3}
!175 = !{ptr @.str.62, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 339, i32 3}
!177 = !{ptr @.str.63, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 340, i32 3}
!179 = !{ptr @.str.64, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 341, i32 3}
!181 = !{ptr @.str.65, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 342, i32 3}
!183 = !{ptr @.str.66, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 343, i32 3}
!185 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 344, i32 3}
!187 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 345, i32 3}
!189 = !{ptr @.str.69, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 346, i32 3}
!191 = !{ptr @.str.70, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 347, i32 3}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 348, i32 3}
!195 = !{ptr @.str.72, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 349, i32 3}
!197 = !{ptr @.str.73, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 350, i32 3}
!199 = !{ptr @.str.74, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 351, i32 3}
!201 = !{ptr @.str.75, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 352, i32 3}
!203 = !{ptr @.str.76, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 363, i32 4}
!205 = !{ptr @.str.77, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @check_reserve_boundaries._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @check_reserve_boundaries._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.78, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 317, i32 3}
!210 = !{ptr @.str.79, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @expect_reserve_fail._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @expect_reserve_fail._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.81, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 321, i32 3}
!215 = !{ptr @expect_reserve_fail._entry.80, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @expect_reserve_fail._entry_ptr.82, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.83, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 120, i32 4}
!219 = !{ptr @.str.84, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @assert_continuous._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @assert_continuous._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.86, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 126, i32 4}
!224 = !{ptr @assert_continuous._entry.85, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @assert_continuous._entry_ptr.87, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.89, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 132, i32 4}
!228 = !{ptr @assert_continuous._entry.88, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @assert_continuous._entry_ptr.90, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.92, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 139, i32 5}
!232 = !{ptr @assert_continuous._entry.91, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @assert_continuous._entry_ptr.93, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.95, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 146, i32 4}
!236 = !{ptr @assert_continuous._entry.94, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @assert_continuous._entry_ptr.96, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.97, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 602, i32 5}
!240 = !{ptr @.str.98, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @__igt_insert._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @__igt_insert._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.100, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 610, i32 6}
!245 = !{ptr @__igt_insert._entry.99, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @__igt_insert._entry_ptr.101, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.103, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 616, i32 6}
!249 = !{ptr @__igt_insert._entry.102, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @__igt_insert._entry_ptr.104, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.106, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 622, i32 6}
!253 = !{ptr @__igt_insert._entry.105, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @__igt_insert._entry_ptr.107, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.109, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 644, i32 5}
!257 = !{ptr @__igt_insert._entry.108, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @__igt_insert._entry_ptr.110, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.112, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 650, i32 5}
!261 = !{ptr @__igt_insert._entry.111, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @__igt_insert._entry_ptr.113, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.115, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 669, i32 6}
!265 = !{ptr @__igt_insert._entry.114, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @__igt_insert._entry_ptr.116, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.117, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 37, i32 13}
!269 = !{ptr @.str.118, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 38, i32 17}
!271 = !{ptr @.str.119, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 39, i32 16}
!273 = !{ptr @insert_modes, !274, !"insert_modes", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 36, i32 3}
!275 = !{ptr @.str.120, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 536, i32 3}
!277 = !{ptr @.str.121, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @expect_insert._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @expect_insert._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.122, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 175, i32 3}
!282 = !{ptr @.str.123, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @assert_node._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @assert_node._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.125, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 180, i32 3}
!287 = !{ptr @assert_node._entry.124, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @assert_node._entry_ptr.126, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.128, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 186, i32 3}
!291 = !{ptr @assert_node._entry.127, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @assert_node._entry_ptr.129, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.131, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 192, i32 3}
!295 = !{ptr @assert_node._entry.130, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @assert_node._entry_ptr.132, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.133, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 559, i32 3}
!299 = !{ptr @.str.134, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @expect_insert_fail._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @expect_insert_fail._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.136, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 563, i32 3}
!304 = !{ptr @expect_insert_fail._entry.135, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @expect_insert_fail._entry_ptr.137, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.138, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 805, i32 3}
!308 = !{ptr @.str.139, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @expect_insert_in_range_fail._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @expect_insert_in_range_fail._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.141, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 809, i32 3}
!313 = !{ptr @expect_insert_in_range_fail._entry.140, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @expect_insert_in_range_fail._entry_ptr.142, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.143, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 909, i32 5}
!317 = !{ptr @.str.144, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @__igt_insert_range._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @__igt_insert_range._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.146, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 918, i32 4}
!322 = !{ptr @__igt_insert_range._entry.145, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @__igt_insert_range._entry_ptr.147, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.149, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 931, i32 5}
!326 = !{ptr @__igt_insert_range._entry.148, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @__igt_insert_range._entry_ptr.150, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @__igt_insert_range._entry.151, !329, !"_entry", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 936, i32 5}
!330 = !{ptr @__igt_insert_range._entry_ptr.152, !329, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.154, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 943, i32 4}
!333 = !{ptr @__igt_insert_range._entry.153, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @__igt_insert_range._entry_ptr.155, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.156, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 775, i32 3}
!337 = !{ptr @.str.157, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @expect_insert_in_range._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @expect_insert_in_range._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.158, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 830, i32 4}
!342 = !{ptr @.str.159, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @assert_contiguous_in_range._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @assert_contiguous_in_range._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.161, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 836, i32 4}
!347 = !{ptr @assert_contiguous_in_range._entry.160, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @assert_contiguous_in_range._entry_ptr.162, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.164, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 842, i32 4}
!351 = !{ptr @assert_contiguous_in_range._entry.163, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @assert_contiguous_in_range._entry_ptr.165, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.167, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 849, i32 4}
!355 = !{ptr @assert_contiguous_in_range._entry.166, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @assert_contiguous_in_range._entry_ptr.168, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.170, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 859, i32 4}
!359 = !{ptr @assert_contiguous_in_range._entry.169, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @assert_contiguous_in_range._entry_ptr.171, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.173, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 868, i32 4}
!363 = !{ptr @assert_contiguous_in_range._entry.172, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @assert_contiguous_in_range._entry_ptr.174, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.175, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1182, i32 5}
!367 = !{ptr @.str.176, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @igt_align._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @igt_align._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.177, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1128, i32 3}
!372 = !{ptr @.str.178, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @igt_frag._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @igt_frag._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.180, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1133, i32 4}
!377 = !{ptr @igt_frag._entry.179, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @igt_frag._entry_ptr.181, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.182, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1048, i32 4}
!381 = !{ptr @.str.183, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @prepare_igt_frag._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @prepare_igt_frag._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.184, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1075, i32 4}
!386 = !{ptr @get_insert_time._entry, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @get_insert_time._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.185, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1232, i32 4}
!390 = !{ptr @.str.186, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @igt_align_pot._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @igt_align_pot._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.187, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1550, i32 4}
!395 = !{ptr @.str.188, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @igt_evict._entry, !394, !"_entry", i1 false, i1 false}
!397 = !{ptr @igt_evict._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.190, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1558, i32 3}
!400 = !{ptr @igt_evict._entry.189, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @igt_evict._entry_ptr.191, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.193, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1562, i32 3}
!404 = !{ptr @igt_evict._entry.192, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @igt_evict._entry_ptr.194, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.196, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1574, i32 5}
!408 = !{ptr @igt_evict._entry.195, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @igt_evict._entry_ptr.197, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.199, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1588, i32 5}
!412 = !{ptr @igt_evict._entry.198, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @igt_evict._entry_ptr.200, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @igt_evict._entry.201, !415, !"_entry", i1 false, i1 false}
!415 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1606, i32 5}
!416 = !{ptr @igt_evict._entry_ptr.202, !415, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.203, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1374, i32 4}
!419 = !{ptr @.str.204, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @evict_nothing._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @evict_nothing._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.206, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1390, i32 4}
!424 = !{ptr @evict_nothing._entry.205, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @evict_nothing._entry_ptr.207, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.208, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1420, i32 5}
!428 = !{ptr @.str.209, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @evict_everything._entry, !427, !"_entry", i1 false, i1 false}
!430 = !{ptr @evict_everything._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.211, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1438, i32 4}
!433 = !{ptr @evict_everything._entry.210, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @evict_everything._entry_ptr.212, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @evict_modes, !436, !"evict_modes", i1 false, i1 false}
!436 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 42, i32 4}
!437 = !{ptr @.str.213, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1475, i32 3}
!439 = !{ptr @.str.214, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @evict_something._entry, !438, !"_entry", i1 false, i1 false}
!441 = !{ptr @evict_something._entry_ptr, !438, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.216, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1483, i32 3}
!444 = !{ptr @evict_something._entry.215, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @evict_something._entry_ptr.217, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.219, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1490, i32 3}
!448 = !{ptr @evict_something._entry.218, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @evict_something._entry_ptr.220, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @evict_something._entry.221, !451, !"_entry", i1 false, i1 false}
!451 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1504, i32 4}
!452 = !{ptr @evict_something._entry_ptr.222, !451, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.224, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1511, i32 3}
!455 = !{ptr @evict_something._entry.223, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @evict_something._entry_ptr.225, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.226, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1325, i32 3}
!459 = !{ptr @.str.227, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @evict_nodes._entry, !458, !"_entry", i1 false, i1 false}
!461 = !{ptr @evict_nodes._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.229, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1343, i32 4}
!464 = !{ptr @evict_nodes._entry.228, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @evict_nodes._entry_ptr.230, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.231, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1262, i32 2}
!468 = !{ptr @.str.232, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @show_scan._entry, !467, !"_entry", i1 false, i1 false}
!470 = !{ptr @show_scan._entry_ptr, !467, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.233, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1278, i32 8}
!473 = !{ptr @.str.234, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1283, i32 8}
!475 = !{ptr @.str.235, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1286, i32 3}
!477 = !{ptr @.str.236, !476, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @show_holes._entry, !476, !"_entry", i1 false, i1 false}
!479 = !{ptr @show_holes._entry_ptr, !476, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.237, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1660, i32 4}
!482 = !{ptr @igt_evict_range._entry, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @igt_evict_range._entry_ptr, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.239, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1674, i32 5}
!486 = !{ptr @igt_evict_range._entry.238, !485, !"_entry", i1 false, i1 false}
!487 = !{ptr @igt_evict_range._entry_ptr.240, !485, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @.str.242, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1687, i32 5}
!490 = !{ptr @igt_evict_range._entry.241, !489, !"_entry", i1 false, i1 false}
!491 = !{ptr @igt_evict_range._entry_ptr.243, !489, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @igt_evict_range._entry.244, !493, !"_entry", i1 false, i1 false}
!493 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1704, i32 5}
!494 = !{ptr @igt_evict_range._entry_ptr.245, !493, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.246, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1880, i32 5}
!497 = !{ptr @.str.247, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @igt_bottomup._entry, !496, !"_entry", i1 false, i1 false}
!499 = !{ptr @igt_bottomup._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.249, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1906, i32 6}
!502 = !{ptr @igt_bottomup._entry.248, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @igt_bottomup._entry_ptr.250, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.252, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1912, i32 6}
!506 = !{ptr @igt_bottomup._entry.251, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @igt_bottomup._entry_ptr.253, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.254, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1957, i32 3}
!510 = !{ptr @.str.255, !509, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @__igt_once._entry, !509, !"_entry", i1 false, i1 false}
!512 = !{ptr @__igt_once._entry_ptr, !509, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @__igt_once._entry.256, !514, !"_entry", i1 false, i1 false}
!514 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1966, i32 3}
!515 = !{ptr @__igt_once._entry_ptr.257, !514, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.259, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1971, i32 3}
!518 = !{ptr @__igt_once._entry.258, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @__igt_once._entry_ptr.260, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.262, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1979, i32 3}
!522 = !{ptr @__igt_once._entry.261, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @__igt_once._entry_ptr.263, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.264, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1767, i32 5}
!526 = !{ptr @.str.265, !525, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @igt_topdown._entry, !525, !"_entry", i1 false, i1 false}
!528 = !{ptr @igt_topdown._entry_ptr, !525, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.267, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1772, i32 5}
!531 = !{ptr @igt_topdown._entry.266, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @igt_topdown._entry_ptr.268, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @igt_topdown._entry.269, !534, !"_entry", i1 false, i1 false}
!534 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1799, i32 6}
!535 = !{ptr @igt_topdown._entry_ptr.270, !534, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.272, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1804, i32 6}
!538 = !{ptr @igt_topdown._entry.271, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @igt_topdown._entry_ptr.273, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.275, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 1811, i32 6}
!542 = !{ptr @igt_topdown._entry.274, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @igt_topdown._entry_ptr.276, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.277, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2060, i32 4}
!546 = !{ptr @igt_color._entry, !545, !"_entry", i1 false, i1 false}
!547 = !{ptr @igt_color._entry_ptr, !545, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @.str.279, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2068, i32 4}
!550 = !{ptr @igt_color._entry.278, !549, !"_entry", i1 false, i1 false}
!551 = !{ptr @igt_color._entry_ptr.280, !549, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.282, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2094, i32 4}
!554 = !{ptr @igt_color._entry.281, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @igt_color._entry_ptr.283, !553, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.285, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2116, i32 5}
!558 = !{ptr @igt_color._entry.284, !557, !"_entry", i1 false, i1 false}
!559 = !{ptr @igt_color._entry_ptr.286, !557, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.288, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2127, i32 5}
!562 = !{ptr @igt_color._entry.287, !561, !"_entry", i1 false, i1 false}
!563 = !{ptr @igt_color._entry_ptr.289, !561, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @.str.291, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2145, i32 5}
!566 = !{ptr @igt_color._entry.290, !565, !"_entry", i1 false, i1 false}
!567 = !{ptr @igt_color._entry_ptr.292, !565, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @.str.294, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2156, i32 5}
!570 = !{ptr @igt_color._entry.293, !569, !"_entry", i1 false, i1 false}
!571 = !{ptr @igt_color._entry_ptr.295, !569, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @.str.297, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2167, i32 5}
!574 = !{ptr @igt_color._entry.296, !573, !"_entry", i1 false, i1 false}
!575 = !{ptr @igt_color._entry_ptr.298, !573, !"_entry_ptr", i1 false, i1 false}
!576 = !{ptr @.str.299, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2021, i32 3}
!578 = !{ptr @.str.300, !577, !"<string literal>", i1 false, i1 false}
!579 = !{ptr @colors_abutt._entry, !577, !"_entry", i1 false, i1 false}
!580 = !{ptr @colors_abutt._entry_ptr, !577, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.301, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2292, i32 4}
!583 = !{ptr @igt_color_evict._entry, !582, !"_entry", i1 false, i1 false}
!584 = !{ptr @igt_color_evict._entry_ptr, !582, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @.str.303, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2305, i32 5}
!587 = !{ptr @igt_color_evict._entry.302, !586, !"_entry", i1 false, i1 false}
!588 = !{ptr @igt_color_evict._entry_ptr.304, !586, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.306, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2318, i32 5}
!591 = !{ptr @igt_color_evict._entry.305, !590, !"_entry", i1 false, i1 false}
!592 = !{ptr @igt_color_evict._entry_ptr.307, !590, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @igt_color_evict._entry.308, !594, !"_entry", i1 false, i1 false}
!594 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2335, i32 5}
!595 = !{ptr @igt_color_evict._entry_ptr.309, !594, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.310, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2218, i32 3}
!598 = !{ptr @.str.311, !597, !"<string literal>", i1 false, i1 false}
!599 = !{ptr @evict_color._entry, !597, !"_entry", i1 false, i1 false}
!600 = !{ptr @evict_color._entry_ptr, !597, !"_entry_ptr", i1 false, i1 false}
!601 = !{ptr @evict_color._entry.312, !602, !"_entry", i1 false, i1 false}
!602 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2226, i32 3}
!603 = !{ptr @evict_color._entry_ptr.313, !602, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.315, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2235, i32 3}
!606 = !{ptr @evict_color._entry.314, !605, !"_entry", i1 false, i1 false}
!607 = !{ptr @evict_color._entry_ptr.316, !605, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @evict_color._entry.317, !609, !"_entry", i1 false, i1 false}
!609 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2248, i32 4}
!610 = !{ptr @evict_color._entry_ptr.318, !609, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @.str.319, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2393, i32 4}
!613 = !{ptr @igt_color_evict_range._entry, !612, !"_entry", i1 false, i1 false}
!614 = !{ptr @igt_color_evict_range._entry_ptr, !612, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @.str.321, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2406, i32 5}
!617 = !{ptr @igt_color_evict_range._entry.320, !616, !"_entry", i1 false, i1 false}
!618 = !{ptr @igt_color_evict_range._entry_ptr.322, !616, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @.str.324, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2419, i32 5}
!621 = !{ptr @igt_color_evict_range._entry.323, !620, !"_entry", i1 false, i1 false}
!622 = !{ptr @igt_color_evict_range._entry_ptr.325, !620, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @igt_color_evict_range._entry.326, !624, !"_entry", i1 false, i1 false}
!624 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2436, i32 5}
!625 = !{ptr @igt_color_evict_range._entry_ptr.327, !624, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @__param_str_igt__10__init, !4, !"__param_str_igt__10__init", i1 false, i1 false}
!627 = !{ptr @__param_str_igt__11__debug, !7, !"__param_str_igt__11__debug", i1 false, i1 false}
!628 = !{ptr @__param_str_igt__12__reserve, !10, !"__param_str_igt__12__reserve", i1 false, i1 false}
!629 = !{ptr @__param_str_igt__13__insert, !13, !"__param_str_igt__13__insert", i1 false, i1 false}
!630 = !{ptr @__param_str_igt__14__replace, !16, !"__param_str_igt__14__replace", i1 false, i1 false}
!631 = !{ptr @__param_str_igt__15__insert_range, !19, !"__param_str_igt__15__insert_range", i1 false, i1 false}
!632 = !{ptr @__param_str_igt__16__align, !22, !"__param_str_igt__16__align", i1 false, i1 false}
!633 = !{ptr @__param_str_igt__17__frag, !25, !"__param_str_igt__17__frag", i1 false, i1 false}
!634 = !{ptr @__param_str_igt__18__align32, !28, !"__param_str_igt__18__align32", i1 false, i1 false}
!635 = !{ptr @__param_str_igt__19__align64, !31, !"__param_str_igt__19__align64", i1 false, i1 false}
!636 = !{ptr @__param_str_igt__20__evict, !34, !"__param_str_igt__20__evict", i1 false, i1 false}
!637 = !{ptr @__param_str_igt__21__evict_range, !37, !"__param_str_igt__21__evict_range", i1 false, i1 false}
!638 = !{ptr @__param_str_igt__22__bottomup, !40, !"__param_str_igt__22__bottomup", i1 false, i1 false}
!639 = !{ptr @__param_str_igt__23__lowest, !43, !"__param_str_igt__23__lowest", i1 false, i1 false}
!640 = !{ptr @__param_str_igt__24__topdown, !46, !"__param_str_igt__24__topdown", i1 false, i1 false}
!641 = !{ptr @__param_str_igt__25__highest, !49, !"__param_str_igt__25__highest", i1 false, i1 false}
!642 = !{ptr @__param_str_igt__26__color, !52, !"__param_str_igt__26__color", i1 false, i1 false}
!643 = !{ptr @__param_str_igt__27__color_evict, !55, !"__param_str_igt__27__color_evict", i1 false, i1 false}
!644 = !{ptr @__param_str_igt__28__color_evict_range, !58, !"__param_str_igt__28__color_evict_range", i1 false, i1 false}
!645 = !{ptr @.str.328, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 2468, i32 2}
!647 = !{ptr @.str.329, !646, !"<string literal>", i1 false, i1 false}
!648 = !{ptr @test_drm_mm_init._entry, !646, !"_entry", i1 false, i1 false}
!649 = !{ptr @test_drm_mm_init._entry_ptr, !646, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @.str.330, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/gpu/drm/selftests/drm_selftest.c", i32 75, i32 3}
!652 = !{ptr @.str.331, !651, !"<string literal>", i1 false, i1 false}
!653 = !{ptr @.str.332, !651, !"<string literal>", i1 false, i1 false}
!654 = !{ptr @.str.333, !651, !"<string literal>", i1 false, i1 false}
!655 = !{ptr @run_selftests.__UNIQUE_ID_ddebug274, !651, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!656 = !{ptr @.str.334, !651, !"<string literal>", i1 false, i1 false}
!657 = !{ptr @.str.335, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/gpu/drm/selftests/drm_selftest.c", i32 81, i32 6}
!659 = !{ptr @__param_str_random_seed, !65, !"__param_str_random_seed", i1 false, i1 false}
!660 = !{ptr @__param_str_max_iterations, !68, !"__param_str_max_iterations", i1 false, i1 false}
!661 = !{ptr @max_iterations, !662, !"max_iterations", i1 false, i1 false}
!662 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 23, i32 21}
!663 = !{ptr @__param_str_max_prime, !71, !"__param_str_max_prime", i1 false, i1 false}
!664 = !{ptr @max_prime, !665, !"max_prime", i1 false, i1 false}
!665 = !{!"../drivers/gpu/drm/selftests/test-drm_mm.c", i32 24, i32 21}
!666 = !{!"sp"}
!667 = !{i32 1, !"wchar_size", i32 2}
!668 = !{i32 1, !"min_enum_size", i32 4}
!669 = !{i32 8, !"branch-target-enforcement", i32 0}
!670 = !{i32 8, !"sign-return-address", i32 0}
!671 = !{i32 8, !"sign-return-address-all", i32 0}
!672 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!673 = !{i32 7, !"uwtable", i32 1}
!674 = !{i32 7, !"frame-pointer", i32 2}
!675 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!676 = !{!"branch_weights", i32 1, i32 2000}
!677 = !{i64 2153665750, i64 2153666235, i64 2153665787, i64 2153665843, i64 2153665877, i64 2153665901, i64 2153665942, i64 2153665963, i64 2153665991, i64 2153666025}
!678 = !{!679}
!679 = distinct !{!679, !680, !"drm_debug_printer: %agg.result"}
!680 = distinct !{!680, !"drm_debug_printer"}
!681 = !{!682}
!682 = distinct !{!682, !683, !"drm_debug_printer: %agg.result"}
!683 = distinct !{!683, !"drm_debug_printer"}
!684 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!685 = !{!"branch_weights", i32 2000, i32 1}
!686 = !{i64 2153889349, i64 2153889854, i64 2153889386, i64 2153889442, i64 2153889476, i64 2153889500, i64 2153889541, i64 2153889562, i64 2153889590, i64 2153889624}
!687 = !{i64 2153979364, i64 2153979869, i64 2153979401, i64 2153979457, i64 2153979491, i64 2153979515, i64 2153979556, i64 2153979577, i64 2153979605, i64 2153979639}
!688 = !{i64 2153996519, i64 2153997024, i64 2153996556, i64 2153996612, i64 2153996646, i64 2153996670, i64 2153996711, i64 2153996732, i64 2153996760, i64 2153996794}
!689 = !{i64 2154044173, i64 2154044678, i64 2154044210, i64 2154044266, i64 2154044300, i64 2154044324, i64 2154044365, i64 2154044386, i64 2154044414, i64 2154044448}
!690 = !{i64 2154051366, i64 2154051871, i64 2154051403, i64 2154051459, i64 2154051493, i64 2154051517, i64 2154051558, i64 2154051579, i64 2154051607, i64 2154051641}
!691 = !{i64 2154021685, i64 2154022190, i64 2154021722, i64 2154021778, i64 2154021812, i64 2154021836, i64 2154021877, i64 2154021898, i64 2154021926, i64 2154021960}
!692 = !{i64 2154028878, i64 2154029383, i64 2154028915, i64 2154028971, i64 2154029005, i64 2154029029, i64 2154029070, i64 2154029091, i64 2154029119, i64 2154029153}
!693 = !{!"auto-init"}
!694 = !{i64 2154133729, i64 2154134234, i64 2154133766, i64 2154133822, i64 2154133856, i64 2154133880, i64 2154133921, i64 2154133942, i64 2154133970, i64 2154134004}
!695 = !{!696}
!696 = distinct !{!696, !697, !"drm_debug_printer: %agg.result"}
!697 = distinct !{!697, !"drm_debug_printer"}
!698 = !{i64 2154150879, i64 2154151384, i64 2154150916, i64 2154150972, i64 2154151006, i64 2154151030, i64 2154151071, i64 2154151092, i64 2154151120, i64 2154151154}
!699 = !{!700}
!700 = distinct !{!700, !701, !"drm_debug_printer: %agg.result"}
!701 = distinct !{!701, !"drm_debug_printer"}
!702 = !{i64 2153737224, i64 2153737728, i64 2153737261, i64 2153737317, i64 2153737351, i64 2153737375, i64 2153737416, i64 2153737437, i64 2153737465, i64 2153737499}
!703 = !{i64 2153738869, i64 2153739373, i64 2153738906, i64 2153738962, i64 2153738996, i64 2153739020, i64 2153739061, i64 2153739082, i64 2153739110, i64 2153739144}
!704 = !{i64 2153764648, i64 2153765152, i64 2153764685, i64 2153764741, i64 2153764775, i64 2153764799, i64 2153764840, i64 2153764861, i64 2153764889, i64 2153764923}
!705 = !{i64 2153766293, i64 2153766797, i64 2153766330, i64 2153766386, i64 2153766420, i64 2153766444, i64 2153766485, i64 2153766506, i64 2153766534, i64 2153766568}
!706 = !{i64 2153793435, i64 2153793939, i64 2153793472, i64 2153793528, i64 2153793562, i64 2153793586, i64 2153793627, i64 2153793648, i64 2153793676, i64 2153793710}
!707 = !{i64 2153827871, i64 2153828375, i64 2153827908, i64 2153827964, i64 2153827998, i64 2153828022, i64 2153828063, i64 2153828084, i64 2153828112, i64 2153828146}
!708 = !{i64 2153831182, i64 2153831686, i64 2153831219, i64 2153831275, i64 2153831309, i64 2153831333, i64 2153831374, i64 2153831395, i64 2153831423, i64 2153831457}
!709 = !{i64 2153848231, i64 2153848735, i64 2153848268, i64 2153848324, i64 2153848358, i64 2153848382, i64 2153848423, i64 2153848444, i64 2153848472, i64 2153848506}
!710 = !{i8 0, i8 2}
!711 = !{i64 2149008564, i64 2149008569, i64 2149008582, i64 2149008626, i64 2149008660, i64 2149008681}
