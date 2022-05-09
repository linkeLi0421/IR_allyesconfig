; ModuleID = '/llk/IR_all_yes/arch/arm/vfp/vfpdouble.c_pt.bc'
source_filename = "../arch/arm/vfp/vfpdouble.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.op = type { ptr, i32 }
%struct.vfp_double = type { i16, i16, i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vfp_single = type { i16, i16, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pack: in\00", [23 x i8] zeroinitializer }, align 32
@vfp_double_normaliseround.__UNIQUE_ID_ddebug16 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vfpdouble\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vfp_double_normaliseround\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/vfp/vfpdouble.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VFP: rounding increment = 0x%08llx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pack: final\00", [20 x i8] zeroinitializer }, align 32
@vfp_double_normaliseround.__UNIQUE_ID_ddebug17 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VFP: %s: d(d%d)=%016llx exceptions=%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@fops_ext = internal constant { [32 x %struct.op], [64 x i8] } { [32 x %struct.op] [%struct.op { ptr @vfp_double_fcpy, i32 0 }, %struct.op { ptr @vfp_double_fabs, i32 0 }, %struct.op { ptr @vfp_double_fneg, i32 0 }, %struct.op { ptr @vfp_double_fsqrt, i32 0 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_double_fcmp, i32 1 }, %struct.op { ptr @vfp_double_fcmpe, i32 1 }, %struct.op { ptr @vfp_double_fcmpz, i32 1 }, %struct.op { ptr @vfp_double_fcmpez, i32 1 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_double_fcvts, i32 3 }, %struct.op { ptr @vfp_double_fuito, i32 5 }, %struct.op { ptr @vfp_double_fsito, i32 5 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_double_ftoui, i32 3 }, %struct.op { ptr @vfp_double_ftouiz, i32 3 }, %struct.op { ptr @vfp_double_ftosi, i32 3 }, %struct.op { ptr @vfp_double_ftosiz, i32 3 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer], [64 x i8] zeroinitializer }, align 32
@fops = internal constant { [16 x %struct.op], [32 x i8] } { [16 x %struct.op] [%struct.op { ptr @vfp_double_fmac, i32 0 }, %struct.op { ptr @vfp_double_fmsc, i32 0 }, %struct.op { ptr @vfp_double_fmul, i32 0 }, %struct.op { ptr @vfp_double_fadd, i32 0 }, %struct.op { ptr @vfp_double_fnmac, i32 0 }, %struct.op { ptr @vfp_double_fnmsc, i32 0 }, %struct.op { ptr @vfp_double_fnmul, i32 0 }, %struct.op { ptr @vfp_double_fsub, i32 0 }, %struct.op { ptr @vfp_double_fdiv, i32 0 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vfp_double_cpdo.__UNIQUE_ID_ddebug21 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vfp_double_cpdo\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VFP: vecstride=%u veclen=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@vfp_double_cpdo.__UNIQUE_ID_ddebug22 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 1, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VFP: itr%d (%c%u) = op[%u] (d%u)\0A\00", [62 x i8] zeroinitializer }, align 32
@vfp_double_cpdo.__UNIQUE_ID_ddebug23 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.10, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VFP: itr%d (%c%u) = (d%u) op[%u] (d%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@vfp_double_cpdo.__UNIQUE_ID_ddebug24 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.11, i8 1, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VFP: itr%d: exceptions=%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@vfp_double_dump.__UNIQUE_ID_ddebug15 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vfp_double_dump\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"VFP: %s: sign=%d exponent=%d significand=%016llx\0A\00", [46 x i8] zeroinitializer }, align 32
@vfp_double_default_qnan = internal constant { %struct.vfp_double, [16 x i8] } { %struct.vfp_double { i16 2047, i16 0, i64 2305843009213693952 }, [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sqrt\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sqrt estimate1\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sqrt estimate2\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fsqrt\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"normalise_denormal: in\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"normalise_denormal: out\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fuito\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fsito\00", [26 x i8] zeroinitializer }, align 32
@vfp_double_ftoui.__UNIQUE_ID_ddebug18 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfp_double_ftoui\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VFP: ftoui: d(s%d)=%08x exceptions=%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VDM\00", [28 x i8] zeroinitializer }, align 32
@vfp_double_ftosi.__UNIQUE_ID_ddebug19 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfp_double_ftosi\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VFP: ftosi: d(s%d)=%08x exceptions=%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fmac\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VDN\00", [28 x i8] zeroinitializer }, align 32
@vfp_double_multiply.__UNIQUE_ID_ddebug20 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vfp_double_multiply\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VFP: swapping M <-> N\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VDD\00", [28 x i8] zeroinitializer }, align 32
@vfp_double_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016VFP: bad FP values in %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vfp_double_add\00", [17 x i8] zeroinitializer }, align 32
@vfp_double_add._entry_ptr = internal global ptr @vfp_double_add._entry, section ".printk_index", align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fmsc\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fmul\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fadd\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fnmac\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fnmsc\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fnmul\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fsub\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fdiv\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12582912]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12582912]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 4194304, i64 8388608]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12582912]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 4194304, i64 8388608]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2047]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 76, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 140, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 192, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 195, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [9 x i8] c"fops_ext\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 661, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1112, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1167, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1179, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1183, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1188, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 50, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"vfp_double_default_qnan\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 42, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 311, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 320, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 325, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 349, i32 55 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 60, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 67, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 491, i32 55 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 503, i32 55 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 573, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 593, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 648, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 888, i32 62 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 793, i32 18 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 805, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 843, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 733, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 904, i32 73 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 932, i32 64 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 975, i32 64 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 896, i32 73 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 912, i32 88 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 954, i32 64 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1001, i32 64 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [28 x i8] c"../arch/arm/vfp/vfpdouble.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1083, i32 55 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @vfp_double_add._entry, ptr @vfp_double_add._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fops_ext, ptr @fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @vfp_double_default_qnan, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ext to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_double_default_qnan to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_double_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfp_double_normaliseround(i32 noundef %dd, ptr nocapture noundef %vd, i32 noundef %fpscr, i32 noundef %exceptions, ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_normaliseround, %if.then.i)) #7
          to label %vfp_double_dump.exit [label %if.then.i], !srcloc !102

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 1
  %0 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sign.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp ne i16 %1, 0
  %conv3.i = zext i1 %cmp.i to i32
  %2 = ptrtoint ptr %vd to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vd, align 8
  %conv4.i = sext i16 %3 to i32
  %significand.i = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 2
  %4 = ptrtoint ptr %significand.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %significand.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, i32 noundef %conv3.i, i32 noundef %conv4.i, i64 noundef %5) #7
  br label %vfp_double_dump.exit

vfp_double_dump.exit:                             ; preds = %if.then.i, %entry
  %6 = ptrtoint ptr %vd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vd, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %7)
  %cmp = icmp eq i16 %7, 2047
  br i1 %cmp, label %land.lhs.true, label %vfp_double_dump.exit.if.end_crit_edge

vfp_double_dump.exit.if.end_crit_edge:            ; preds = %vfp_double_dump.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %vfp_double_dump.exit
  %significand3 = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 2
  %8 = ptrtoint ptr %significand3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %significand3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp4 = icmp ne i64 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exceptions)
  %tobool.not = icmp eq i32 %exceptions, 0
  %or.cond = and i1 %tobool.not, %cmp4
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.pack_crit_edge

land.lhs.true.pack_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %pack

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %vfp_double_dump.exit.if.end_crit_edge
  %significand6 = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 2
  %10 = ptrtoint ptr %significand6 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %significand6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp7 = icmp eq i64 %11, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %vd to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %vd, align 8
  br label %pack

if.end11:                                         ; preds = %if.end
  %conv13 = sext i16 %7 to i32
  %shr = lshr i64 %11, 32
  %conv15 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15)
  %tobool.not.i = icmp eq i32 %conv15, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %conv15, i1 true) #7, !range !103
  %sub.i = sub nuw nsw i32 32, %13
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %sub = sub nuw nsw i32 32, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp16 = icmp eq i32 %cond.i, 0
  %conv19 = trunc i64 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv19)
  %tobool.not.i191 = icmp eq i32 %conv19, 0
  %14 = tail call i32 @llvm.ctlz.i32(i32 %conv19, i1 true) #7, !range !103
  %sub.i192.neg.op = or i32 %14, 32
  %sub21 = select i1 %tobool.not.i191, i32 64, i32 %sub.i192.neg.op
  %shift.0 = select i1 %cmp16, i32 %sub21, i32 %sub
  %sub25 = sub nsw i32 %conv13, %shift.0
  %sh_prom = zext i32 %shift.0 to i64
  %significand.0 = shl i64 %11, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %cmp27 = icmp slt i32 %sub25, 0
  %exponent.0.lobit = lshr i32 %sub25, 31
  br i1 %cmp27, label %if.then30, label %if.end11.if.end36_crit_edge

if.end11.if.end36_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then30:                                        ; preds = %if.end11
  %sub31 = sub nsw i32 0, %sub25
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub31)
  %cmp.i198 = icmp ult i32 %sub31, 64
  br i1 %cmp.i198, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom.i = zext i32 %sub31 to i64
  %shr.i = lshr i64 %significand.0, %sh_prom.i
  %sub.i200 = add nsw i32 %sub25, 64
  %sh_prom2.i = zext i32 %sub.i200 to i64
  %shl.i = shl i64 %significand.0, %sh_prom2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp3.i = icmp ne i64 %shl.i, 0
  %15 = zext i1 %cmp3.i to i64
  %or.i = or i64 %shr.i, %15
  br label %vfp_shiftright64jamming.exit

if.else.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0)
  %cmp5.i = icmp ne i64 %significand.0, 0
  %16 = zext i1 %cmp5.i to i64
  br label %vfp_shiftright64jamming.exit

vfp_shiftright64jamming.exit:                     ; preds = %if.else.i, %if.then1.i
  %val.addr.0.i = phi i64 [ %or.i, %if.then1.i ], [ %16, %if.else.i ]
  %and = and i64 %val.addr.0.i, 2047
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool33.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool33.not, i32 0, i32 %exponent.0.lobit
  br label %if.end36

if.end36:                                         ; preds = %vfp_shiftright64jamming.exit, %if.end11.if.end36_crit_edge
  %underflow.0 = phi i32 [ %exponent.0.lobit, %if.end11.if.end36_crit_edge ], [ %spec.select, %vfp_shiftright64jamming.exit ]
  %exponent.1 = phi i32 [ %sub25, %if.end11.if.end36_crit_edge ], [ 0, %vfp_shiftright64jamming.exit ]
  %significand.1 = phi i64 [ %significand.0, %if.end11.if.end36_crit_edge ], [ %val.addr.0.i, %vfp_shiftright64jamming.exit ]
  %and37 = and i32 %fpscr, 12582912
  %17 = zext i32 %and37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and37, label %if.else50 [
    i32 0, label %if.then40
    i32 12582912, label %if.end36.do.body_crit_edge
  ]

if.end36.do.body_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %and41 = and i64 %significand.1, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and41)
  %cmp42 = icmp eq i64 %and41, 0
  %spec.select186 = select i1 %cmp42, i64 1023, i64 1024
  br label %do.body

if.else50:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and37)
  %cmp51 = icmp eq i32 %and37, 4194304
  %sign = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 1
  %18 = ptrtoint ptr %sign to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sign, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp54 = icmp ne i16 %19, 0
  %xor185 = xor i1 %cmp51, %cmp54
  %spec.select187 = select i1 %xor185, i64 2047, i64 0
  br label %do.body

do.body:                                          ; preds = %if.else50, %if.then40, %if.end36.do.body_crit_edge
  %incr.0 = phi i64 [ %spec.select186, %if.then40 ], [ 0, %if.end36.do.body_crit_edge ], [ %spec.select187, %if.else50 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_normaliseround.__UNIQUE_ID_ddebug16, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_normaliseround, %if.then65)) #7
          to label %do.end [label %if.then65], !srcloc !102

if.then65:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_normaliseround.__UNIQUE_ID_ddebug16, ptr noundef nonnull @.str.4, i64 noundef %incr.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then65, %do.body
  %20 = xor i64 %significand.1, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %incr.0, i64 %20)
  %cmp67 = icmp ugt i64 %incr.0, %20
  br i1 %cmp67, label %if.then69, label %do.end.if.end74_crit_edge

do.end.if.end74_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then69:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %add70 = add nuw nsw i32 %exponent.1, 1
  %shr71 = lshr i64 %significand.1, 1
  %and72 = and i64 %significand.1, 1
  %or = or i64 %shr71, %and72
  %shr73 = lshr i64 %incr.0, 1
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %do.end.if.end74_crit_edge
  %exponent.2 = phi i32 [ %add70, %if.then69 ], [ %exponent.1, %do.end.if.end74_crit_edge ]
  %incr.1 = phi i64 [ %shr73, %if.then69 ], [ %incr.0, %do.end.if.end74_crit_edge ]
  %significand.2 = phi i64 [ %or, %if.then69 ], [ %significand.1, %do.end.if.end74_crit_edge ]
  %and75 = and i64 %significand.2, 2047
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and75)
  %tobool76.not = icmp eq i64 %and75, 0
  %or78 = or i32 %exceptions, 16
  %spec.select188 = select i1 %tobool76.not, i32 %exceptions, i32 %or78
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045, i32 %exponent.2)
  %cmp81 = icmp ugt i32 %exponent.2, 2045
  br i1 %cmp81, label %if.then83, label %if.else94

if.then83:                                        ; preds = %if.end74
  %or84 = or i32 %spec.select188, 20
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %incr.1)
  %cmp85 = icmp eq i64 %incr.1, 0
  br i1 %cmp85, label %if.then87, label %if.else90

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %vd to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2045, ptr %vd, align 8
  %22 = ptrtoint ptr %significand6 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 9223372036854775807, ptr %significand6, align 8
  br label %pack

if.else90:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %vd to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2047, ptr %vd, align 8
  %24 = ptrtoint ptr %significand6 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %significand6, align 8
  br label %pack

if.else94:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %add80 = add i64 %significand.2, %incr.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %add80)
  %cmp96 = icmp ult i64 %add80, 2048
  %spec.select189 = select i1 %cmp96, i32 0, i32 %exponent.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select189)
  %tobool100.not = icmp ne i32 %spec.select189, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %add80)
  %cmp102 = icmp ugt i64 %add80, -9223372036854775808
  %or.cond190 = select i1 %tobool100.not, i1 true, i1 %cmp102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %underflow.0)
  %tobool106.not214 = icmp eq i32 %underflow.0, 0
  %tobool106.not = select i1 %or.cond190, i1 true, i1 %tobool106.not214
  %or108 = or i32 %spec.select188, 8
  %exceptions.addr.1 = select i1 %tobool106.not, i32 %spec.select188, i32 %or108
  %conv110 = trunc i32 %spec.select189 to i16
  %25 = ptrtoint ptr %vd to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv110, ptr %vd, align 8
  %shr112 = lshr i64 %add80, 1
  %26 = ptrtoint ptr %significand6 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %shr112, ptr %significand6, align 8
  br label %pack

pack:                                             ; preds = %if.else94, %if.else90, %if.then87, %if.then9, %land.lhs.true.pack_crit_edge
  %exceptions.addr.2 = phi i32 [ %exceptions, %land.lhs.true.pack_crit_edge ], [ %exceptions, %if.then9 ], [ %or84, %if.then87 ], [ %or84, %if.else90 ], [ %exceptions.addr.1, %if.else94 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_normaliseround, %if.then.i206)) #7
          to label %vfp_double_dump.exit207 [label %if.then.i206], !srcloc !102

if.then.i206:                                     ; preds = %pack
  call void @__sanitizer_cov_trace_pc() #9
  %sign.i201 = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 1
  %27 = ptrtoint ptr %sign.i201 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sign.i201, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i202 = icmp ne i16 %28, 0
  %conv3.i203 = zext i1 %cmp.i202 to i32
  %29 = ptrtoint ptr %vd to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vd, align 8
  %conv4.i204 = sext i16 %30 to i32
  %significand.i205 = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 2
  %31 = ptrtoint ptr %significand.i205 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %significand.i205, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef %conv3.i203, i32 noundef %conv4.i204, i64 noundef %32) #7
  br label %vfp_double_dump.exit207

vfp_double_dump.exit207:                          ; preds = %if.then.i206, %pack
  %sign.i208 = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 1
  %33 = ptrtoint ptr %sign.i208 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sign.i208, align 2
  %conv.i = zext i16 %34 to i64
  %shl.i209 = shl nuw i64 %conv.i, 48
  %35 = ptrtoint ptr %vd to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vd, align 8
  %conv16.i = zext i16 %36 to i64
  %shl2.i = shl i64 %conv16.i, 52
  %add.i = add i64 %shl2.i, %shl.i209
  %significand.i210 = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 2
  %37 = ptrtoint ptr %significand.i210 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %significand.i210, align 8
  %shr.i211 = lshr i64 %38, 10
  %add3.i = add i64 %add.i, %shr.i211
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_normaliseround.__UNIQUE_ID_ddebug17, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_normaliseround, %if.then128)) #7
          to label %do.end131 [label %if.then128], !srcloc !102

if.then128:                                       ; preds = %vfp_double_dump.exit207
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_normaliseround.__UNIQUE_ID_ddebug17, ptr noundef nonnull @.str.6, ptr noundef %func, i32 noundef %dd, i64 noundef %add3.i, i32 noundef %exceptions.addr.2) #7
  br label %do.end131

do.end131:                                        ; preds = %if.then128, %vfp_double_dump.exit207
  tail call void @vfp_put_double(i64 noundef %add3.i, i32 noundef %dd) #7
  ret i32 %exceptions.addr.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_put_double(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfp_double_cpdo(i32 noundef %inst, i32 noundef %fpscr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %inst, 11534400
  %and1 = and i32 %inst, 983040
  %shr = lshr exact i32 %and1, 16
  %and2 = and i32 %inst, 128
  %shr3 = lshr exact i32 %and2, 3
  %or = or i32 %shr, %shr3
  %and4 = and i32 %fpscr, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %and4)
  %cmp = icmp eq i32 %and4, 3145728
  %add = select i1 %cmp, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11534400, i32 %and)
  %cmp5 = icmp eq i32 %and, 11534400
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shr8 = lshr exact i32 %and1, 15
  %shr10 = lshr exact i32 %and2, 7
  %or11 = or i32 %shr8, %shr10
  %arrayidx = getelementptr [32 x %struct.op], ptr @fops_ext, i32 0, i32 %or11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and12 = lshr i32 %inst, 20
  %shr13 = and i32 %and12, 11
  %and14 = lshr i32 %inst, 4
  %shr15 = and i32 %and14, 4
  %or16 = or i32 %shr13, %shr15
  %arrayidx17 = getelementptr [16 x %struct.op], ptr @fops, i32 0, i32 %or16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ %arrayidx17, %cond.false ]
  %flags = getelementptr inbounds %struct.op, ptr %cond, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and18 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  %. = select i1 %tobool.not, i32 12, i32 11
  %.237 = select i1 %tobool.not, i32 15, i32 30
  %.238 = select i1 %tobool.not, i32 18, i32 22
  %.239 = select i1 %tobool.not, i32 16, i32 1
  %and24 = lshr i32 %inst, %.
  %shr25 = and i32 %and24, %.237
  %and26 = lshr i32 %inst, %.238
  %shr27 = and i32 %and26, %.239
  %or28 = or i32 %shr25, %shr27
  %and30 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %and38 = and i32 %inst, 15
  %and39 = lshr i32 %inst, 1
  %shr40 = and i32 %and39, 16
  %and33 = shl i32 %inst, 1
  %shl = and i32 %and33, 30
  %and34 = lshr i32 %inst, 5
  %shr35 = and i32 %and34, 1
  %2 = or i32 %shr40, %and38
  %3 = or i32 %shl, %shr35
  %or41 = select i1 %tobool31.not, i32 %2, i32 %3
  %and44 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp ne i32 %and44, 0
  %and46 = and i32 %and24, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %cmp47 = icmp eq i32 %and46, 0
  %or.cond = or i1 %tobool45.not, %cmp47
  %and51 = and i32 %fpscr, 458752
  %veclen.0 = select i1 %or.cond, i32 0, i32 %and51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_cpdo.__UNIQUE_ID_ddebug21, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_cpdo, %if.then56)) #7
          to label %do.end [label %if.then56], !srcloc !102

if.then56:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr57 = lshr exact i32 %veclen.0, 16
  %add58 = add nuw nsw i32 %shr57, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_cpdo.__UNIQUE_ID_ddebug21, ptr noundef nonnull @.str.8, i32 noundef %add, i32 noundef %add58) #7
  br label %do.end

do.end:                                           ; preds = %if.then56, %cond.end
  %4 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cond, align 4
  %tobool60.not = icmp eq ptr %5, null
  br i1 %tobool60.not, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %conv106 = select i1 %tobool.not, i32 100, i32 115
  %and107 = lshr i32 %inst, 20
  %shr108 = and i32 %and107, 11
  %and109 = lshr i32 %inst, 4
  %shr110 = and i32 %and109, 4
  %or111 = or i32 %shr108, %shr110
  br label %for.body

for.body:                                         ; preds = %do.end134.for.body_crit_edge, %for.cond.preheader
  %exceptions.0233 = phi i32 [ 0, %for.cond.preheader ], [ %or135, %do.end134.for.body_crit_edge ]
  %dest.1232 = phi i32 [ %or28, %for.cond.preheader ], [ %add140, %do.end134.for.body_crit_edge ]
  %dn.0231 = phi i32 [ %or, %for.cond.preheader ], [ %add145, %do.end134.for.body_crit_edge ]
  %dm.1230 = phi i32 [ %or41, %for.cond.preheader ], [ %dm.2, %do.end134.for.body_crit_edge ]
  %vecitr.0227 = phi i32 [ 0, %for.cond.preheader ], [ %add156, %do.end134.for.body_crit_edge ]
  br i1 %cmp5, label %do.body73, label %do.body92

do.body73:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_cpdo.__UNIQUE_ID_ddebug22, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_cpdo, %if.then85)) #7
          to label %if.end115 [label %if.then85], !srcloc !102

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %shr86 = lshr exact i32 %vecitr.0227, 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_cpdo.__UNIQUE_ID_ddebug22, ptr noundef nonnull @.str.9, i32 noundef %shr86, i32 noundef %conv106, i32 noundef %dest.1232, i32 noundef %dn.0231, i32 noundef %dm.1230) #7
  br label %if.end115

do.body92:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_cpdo.__UNIQUE_ID_ddebug23, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_cpdo, %if.then104)) #7
          to label %if.end115 [label %if.then104], !srcloc !102

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  %shr105 = lshr exact i32 %vecitr.0227, 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_cpdo.__UNIQUE_ID_ddebug23, ptr noundef nonnull @.str.10, i32 noundef %shr105, i32 noundef %conv106, i32 noundef %dest.1232, i32 noundef %dn.0231, i32 noundef %or111, i32 noundef %dm.1230) #7
  br label %if.end115

if.end115:                                        ; preds = %if.then104, %do.body92, %if.then85, %do.body73
  %call117 = tail call i32 %5(i32 noundef %dest.1232, i32 noundef %dn.0231, i32 noundef %dm.1230, i32 noundef %fpscr) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_cpdo.__UNIQUE_ID_ddebug24, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_cpdo, %if.then130)) #7
          to label %do.end134 [label %if.then130], !srcloc !102

if.then130:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %shr131 = lshr exact i32 %vecitr.0227, 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_cpdo.__UNIQUE_ID_ddebug24, ptr noundef nonnull @.str.11, i32 noundef %shr131, i32 noundef %call117) #7
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %if.end115
  %or135 = or i32 %call117, %exceptions.0233
  %and136 = and i32 %dest.1232, 12
  %add138 = add nsw i32 %dest.1232, %add
  %and139 = and i32 %add138, 3
  %add140 = or i32 %and139, %and136
  %and141 = and i32 %dn.0231, 12
  %add143 = add nsw i32 %dn.0231, %add
  %and144 = and i32 %add143, 3
  %add145 = or i32 %and144, %and141
  %and146 = and i32 %dm.1230, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %cmp147.not = icmp eq i32 %and146, 0
  %add152 = add i32 %dm.1230, %add
  %and153 = and i32 %add152, 3
  %add154 = or i32 %and153, %and146
  %dm.2 = select i1 %cmp147.not, i32 %dm.1230, i32 %add154
  %add156 = add nuw nsw i32 %vecitr.0227, 65536
  %cmp63.not = icmp ugt i32 %add156, %veclen.0
  br i1 %cmp63.not, label %do.end134.cleanup_crit_edge, label %do.end134.for.body_crit_edge

do.end134.for.body_crit_edge:                     ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end134.cleanup_crit_edge:                      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %do.end134.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end.cleanup_crit_edge ], [ %or135, %do.end134.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fcpy(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  tail call void @vfp_put_double(i64 noundef %call, i32 noundef %dd) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fabs(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and = and i64 %call, 9223372036854775807
  tail call void @vfp_put_double(i64 noundef %and, i32 noundef %dd) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fneg(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %xor = xor i64 %call, -9223372036854775808
  tail call void @vfp_put_double(i64 noundef %xor, i32 noundef %dd) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fsqrt(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  %vdm = alloca %struct.vfp_double, align 8
  %vdd = alloca %struct.vfp_double, align 8
  %termh = alloca i64, align 8
  %terml = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdm) #7
  %0 = ptrtoint ptr %vdm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vdm, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdd) #7
  %1 = call ptr @memset(ptr %vdd, i32 255, i32 16)
  %call = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and.i = lshr i64 %call, 48
  %2 = trunc i64 %and.i to i16
  %conv.i = and i16 %2, -32768
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %3 = ptrtoint ptr %sign.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv.i, ptr %sign.i, align 2
  %4 = lshr i64 %call, 52
  %5 = trunc i64 %4 to i16
  %conv3.i = and i16 %5, 2047
  %6 = ptrtoint ptr %vdm to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv3.i, ptr %vdm, align 8
  %7 = shl i64 %call, 10
  %shr4.i = and i64 %7, 4611686018427386880
  %trunc.i = trunc i64 %4 to i11
  %8 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.42)
  switch i11 %trunc.i, label %if.then.i [
    i11 0, label %entry.vfp_double_unpack.exit_crit_edge
    i11 -1, label %entry.vfp_double_unpack.exit_crit_edge178
  ]

entry.vfp_double_unpack.exit_crit_edge178:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

entry.vfp_double_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %shr4.i, 4611686018427387904
  br label %vfp_double_unpack.exit

vfp_double_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_double_unpack.exit_crit_edge, %entry.vfp_double_unpack.exit_crit_edge178
  %significand.0.i = phi i64 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge178 ]
  %significand10.i = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %9 = ptrtoint ptr %significand10.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %significand.0.i, ptr %significand10.i, align 8
  %10 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.43)
  switch i11 %trunc.i, label %vfp_double_unpack.exit.if.end19_crit_edge [
    i11 -1, label %if.then.i90
    i11 0, label %if.then14.i
  ]

vfp_double_unpack.exit.if.end19_crit_edge:        ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then.i90:                                      ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp2.i = icmp eq i64 %significand.0.i, 0
  br i1 %cmp2.i, label %if.else, label %if.else.i

if.else.i:                                        ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #9
  %and.i91 = and i64 %significand.0.i, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i91)
  %tobool.not.i = icmp eq i64 %and.i91, 0
  %..i = select i1 %tobool.not.i, i32 48, i32 16
  br label %vfp_double_type.exit

if.then14.i:                                      ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp16.i = icmp eq i64 %significand.0.i, 0
  %.30.i = select i1 %cmp16.i, i32 3, i32 5
  br label %vfp_double_type.exit

vfp_double_type.exit:                             ; preds = %if.then14.i, %if.else.i
  %type.0.i = phi i32 [ %..i, %if.else.i ], [ %.30.i, %if.then14.i ]
  %and = and i32 %type.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %vfp_double_type.exit
  %11 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.44)
  switch i11 %trunc.i, label %if.then4.vfp_double_type.exit.i_crit_edge [
    i11 -1, label %if.then.i.i
    i11 0, label %if.then14.i.i
  ]

if.then4.vfp_double_type.exit.i_crit_edge:        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit.i

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp2.i.i = icmp eq i64 %significand.0.i, 0
  br i1 %cmp2.i.i, label %if.then.i.i.vfp_double_type.exit.i_crit_edge, label %if.else.i.i

if.then.i.i.vfp_double_type.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i64 %significand.0.i, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 48, i32 16
  br label %vfp_double_type.exit.i

if.then14.i.i:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp16.i.i = icmp eq i64 %significand.0.i, 0
  %.30.i.i = select i1 %cmp16.i.i, i32 3, i32 5
  br label %vfp_double_type.exit.i

vfp_double_type.exit.i:                           ; preds = %if.then14.i.i, %if.else.i.i, %if.then.i.i.vfp_double_type.exit.i_crit_edge, %if.then4.vfp_double_type.exit.i_crit_edge
  %type.0.i.i = phi i32 [ 8, %if.then.i.i.vfp_double_type.exit.i_crit_edge ], [ %..i.i, %if.else.i.i ], [ 1, %if.then4.vfp_double_type.exit.i_crit_edge ], [ %.30.i.i, %if.then14.i.i ]
  %and.i92 = and i32 %fpscr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool2.not.i = icmp eq i32 %and.i92, 0
  br i1 %tobool2.not.i, label %if.else.i95, label %vfp_double_type.exit.i.vfp_propagate_nan.exit_crit_edge

vfp_double_type.exit.i.vfp_propagate_nan.exit_crit_edge: ; preds = %vfp_double_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_propagate_nan.exit

if.else.i95:                                      ; preds = %vfp_double_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = and i32 %type.0.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %13 = icmp eq i32 %12, 16
  %nan.0.i = select i1 %13, ptr %vdm, ptr null
  %nan.0.i.sroa.sel = select i1 %13, ptr %significand10.i, ptr inttoptr (i32 8 to ptr)
  %14 = ptrtoint ptr %nan.0.i.sroa.sel to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %nan.0.i.sroa.sel, align 8
  %or.i94 = or i64 %15, 2305843009213693952
  store i64 %or.i94, ptr %nan.0.i.sroa.sel, align 8
  br label %vfp_propagate_nan.exit

vfp_propagate_nan.exit:                           ; preds = %if.else.i95, %vfp_double_type.exit.i.vfp_propagate_nan.exit_crit_edge
  %nan.1.i = phi ptr [ %nan.0.i, %if.else.i95 ], [ @vfp_double_default_qnan, %vfp_double_type.exit.i.vfp_propagate_nan.exit_crit_edge ]
  %16 = call ptr @memcpy(ptr %vdd, ptr %nan.1.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i)
  %cmp10.i = icmp eq i32 %type.0.i.i, 48
  %17 = select i1 %cmp10.i, i32 1, i32 256
  br label %if.end9

if.else:                                          ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp = icmp eq i16 %conv.i, 0
  br i1 %cmp, label %if.else.if.end9_crit_edge, label %if.else.sqrt_invalid_crit_edge

if.else.sqrt_invalid_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sqrt_invalid

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

sqrt_invalid:                                     ; preds = %if.end19.sqrt_invalid_crit_edge, %if.else.sqrt_invalid_crit_edge
  br label %if.end9

if.end9:                                          ; preds = %if.end11.if.end9_crit_edge, %sqrt_invalid, %if.else.if.end9_crit_edge, %vfp_propagate_nan.exit
  %ret.0 = phi i32 [ %17, %vfp_propagate_nan.exit ], [ 1, %sqrt_invalid ], [ 0, %if.end11.if.end9_crit_edge ], [ 0, %if.else.if.end9_crit_edge ]
  %vdp.0 = phi ptr [ %vdd, %vfp_propagate_nan.exit ], [ @vfp_double_default_qnan, %sqrt_invalid ], [ %vdm, %if.end11.if.end9_crit_edge ], [ %vdm, %if.else.if.end9_crit_edge ]
  %sign.i96 = getelementptr inbounds %struct.vfp_double, ptr %vdp.0, i32 0, i32 1
  %18 = ptrtoint ptr %sign.i96 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sign.i96, align 2
  %conv.i97 = zext i16 %19 to i64
  %shl.i = shl nuw i64 %conv.i97, 48
  %20 = ptrtoint ptr %vdp.0 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vdp.0, align 8
  %conv16.i = zext i16 %21 to i64
  %shl2.i = shl i64 %conv16.i, 52
  %add.i = add i64 %shl2.i, %shl.i
  %significand.i98 = getelementptr inbounds %struct.vfp_double, ptr %vdp.0, i32 0, i32 2
  %22 = ptrtoint ptr %significand.i98 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %significand.i98, align 8
  %shr.i = lshr i64 %23, 10
  %add3.i = add i64 %add.i, %shr.i
  tail call void @vfp_put_double(i64 noundef %add3.i, i32 noundef %dd) #7
  br label %cleanup

if.end11:                                         ; preds = %vfp_double_type.exit
  %and12 = and i32 %type.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.if.end9_crit_edge

if.end11.if.end9_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end15:                                         ; preds = %if.end11
  %and16 = and i32 %type.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdm)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge, %vfp_double_unpack.exit.if.end19_crit_edge
  %24 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sign.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool21.not = icmp eq i16 %25, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.sqrt_invalid_crit_edge

if.end19.sqrt_invalid_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sqrt_invalid

if.end23:                                         ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_fsqrt, %if.then.i103)) #7
          to label %vfp_double_dump.exit [label %if.then.i103], !srcloc !102

if.then.i103:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sign.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i100 = icmp ne i16 %27, 0
  %conv3.i101 = zext i1 %cmp.i100 to i32
  %28 = ptrtoint ptr %vdm to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vdm, align 8
  %conv4.i = sext i16 %29 to i32
  %30 = ptrtoint ptr %significand10.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %significand10.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv3.i101, i32 noundef %conv4.i, i64 noundef %31) #7
  br label %vfp_double_dump.exit

vfp_double_dump.exit:                             ; preds = %if.then.i103, %if.end23
  %sign24 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 1
  %32 = ptrtoint ptr %sign24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %sign24, align 2
  %33 = ptrtoint ptr %vdm to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vdm, align 8
  %conv25 = sext i16 %34 to i32
  %sub = add nsw i32 %conv25, 130049
  %35 = lshr i32 %sub, 1
  %36 = trunc i32 %35 to i16
  %conv26 = add nsw i16 %36, 1023
  %37 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv26, ptr %vdd, align 8
  %38 = ptrtoint ptr %significand10.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %significand10.i, align 8
  %shr30 = lshr i64 %39, 32
  %conv31 = trunc i64 %shr30 to i32
  %call32 = tail call i32 @vfp_estimate_sqrt_significand(i32 noundef %conv25, i32 noundef %conv31) #7
  %conv33 = zext i32 %call32 to i64
  %shl = shl nuw nsw i64 %conv33, 31
  %significand34 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_fsqrt, %if.then.i109)) #7
          to label %vfp_double_dump.exit110 [label %if.then.i109], !srcloc !102

if.then.i109:                                     ; preds = %vfp_double_dump.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i107 = sext i16 %conv26 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef %conv4.i107, i64 noundef %shl) #7
  br label %vfp_double_dump.exit110

vfp_double_dump.exit110:                          ; preds = %if.then.i109, %vfp_double_dump.exit
  %40 = ptrtoint ptr %vdm to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vdm, align 8
  %42 = and i16 %41, 1
  %narrow = add nuw nsw i16 %42, 1
  %43 = ptrtoint ptr %significand10.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %significand10.i, align 8
  %sh_prom = zext i16 %narrow to i64
  %shr40 = lshr i64 %44, %sh_prom
  store i64 %shr40, ptr %significand10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr40, i64 %shl)
  %cmp.not.i = icmp ult i64 %shr40, %shl
  br i1 %cmp.not.i, label %if.end.i, label %vfp_double_dump.exit110.vfp_estimate_div128to64.exit_crit_edge

vfp_double_dump.exit110.vfp_estimate_div128to64.exit_crit_edge: ; preds = %vfp_double_dump.exit110
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_estimate_div128to64.exit

if.end.i:                                         ; preds = %vfp_double_dump.exit110
  %shr.i111 = lshr i64 %conv33, 1
  %shl.i112 = and i64 %shl, 9223372032559808512
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i112, i64 %shr40)
  %cmp1.not.i = icmp ugt i64 %shl.i112, %shr40
  br i1 %cmp1.not.i, label %if.else.i114, label %if.end.i.if.end191.i_crit_edge

if.end.i.if.end191.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191.i

if.else.i114:                                     ; preds = %if.end.i
  %conv.i113 = trunc i64 %shr.i111 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr40)
  %cmp174.i = icmp ult i64 %shr40, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !104

if.then178.i:                                     ; preds = %if.else.i114
  call void @__sanitizer_cov_trace_pc() #9
  %conv179.i = trunc i64 %shr40 to i32
  %div182.i = udiv i32 %conv179.i, %conv.i113
  %conv183.i = zext i32 %div182.i to i64
  br label %if.end188.i

if.else184.i:                                     ; preds = %if.else.i114
  call void @__sanitizer_cov_trace_pc() #9
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i113, i64 %shr40) #10, !srcloc !105
  %asmresult1.i.i = extractvalue { i64, i64 } %45, 1
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.else184.i, %if.then178.i
  %z.0.i = phi i64 [ %conv183.i, %if.then178.i ], [ %asmresult1.i.i, %if.else184.i ]
  %shl190.i = shl i64 %z.0.i, 32
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.end188.i, %if.end.i.if.end191.i_crit_edge
  %storemerge.i = phi i64 [ %shl190.i, %if.end188.i ], [ -4294967296, %if.end.i.if.end191.i_crit_edge ]
  %conv2.i.i = and i64 %shl, 2147483648
  %shr8.i.i = lshr exact i64 %storemerge.i, 32
  %mul12.i.i = mul nuw nsw i64 %shr8.i.i, %conv2.i.i
  %mul15.i.i = mul nuw nsw i64 %shr8.i.i, %shr.i111
  %shr18.i.i = lshr i64 %mul12.i.i, 32
  %shl21.i.i = shl i64 %mul12.i.i, 32
  %add19.i.i = add nuw nsw i64 %shr18.i.i, %mul15.i.i
  %46 = tail call { i64, i64 } asm "subs\09${0:Q}, ${2:Q}, ${4:Q}\0A\09sbcs\09${0:R}, ${2:R}, ${4:R}\0A\09sbcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09sbc\09${1:R}, ${3:R}, ${5:R}\0A\09", "=r,=r,0,1,r,r,~{cc}"(i64 0, i64 %shr40, i64 %shl21.i.i, i64 %add19.i.i) #10, !srcloc !106
  %shl192.i = shl i64 %conv33, 63
  %remh.095.i = extractvalue { i64, i64 } %46, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %remh.095.i)
  %cmp19396.i = icmp slt i64 %remh.095.i, 0
  br i1 %cmp19396.i, label %if.end191.i.while.body.i_crit_edge, label %if.end191.i.while.end.i_crit_edge

if.end191.i.while.end.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end191.i.while.body.i_crit_edge:               ; preds = %if.end191.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end191.i.while.body.i_crit_edge
  %remh.099.i = phi i64 [ %remh.0.i, %while.body.i.while.body.i_crit_edge ], [ %remh.095.i, %if.end191.i.while.body.i_crit_edge ]
  %.pn.i = phi { i64, i64 } [ %47, %while.body.i.while.body.i_crit_edge ], [ %46, %if.end191.i.while.body.i_crit_edge ]
  %z.197.i = phi i64 [ %sub195.i, %while.body.i.while.body.i_crit_edge ], [ %storemerge.i, %if.end191.i.while.body.i_crit_edge ]
  %reml.098.i = extractvalue { i64, i64 } %.pn.i, 0
  %sub195.i = add i64 %z.197.i, -4294967296
  %47 = tail call { i64, i64 } asm "adds\09${0:Q}, ${2:Q}, ${4:Q}\0A\09adcs\09${0:R}, ${2:R}, ${4:R}\0A\09adcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09adc\09${1:R}, ${3:R}, ${5:R}", "=r,=r,0,1,r,r,~{cc}"(i64 %reml.098.i, i64 %remh.099.i, i64 %shl192.i, i64 %shr.i111) #10, !srcloc !107
  %remh.0.i = extractvalue { i64, i64 } %47, 1
  %cmp193.i = icmp slt i64 %remh.0.i, 0
  br i1 %cmp193.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i.loopexit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i.loopexit:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %remh.0.i.le = extractvalue { i64, i64 } %47, 1
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.end191.i.while.end.i_crit_edge
  %remh.0.le.pre-phi.i = phi i64 [ %remh.095.i, %if.end191.i.while.end.i_crit_edge ], [ %remh.0.i.le, %while.end.i.loopexit ]
  %.pn.lcssa93.i = phi { i64, i64 } [ %46, %if.end191.i.while.end.i_crit_edge ], [ %47, %while.end.i.loopexit ]
  %z.1.lcssa.i = phi i64 [ %storemerge.i, %if.end191.i.while.end.i_crit_edge ], [ %sub195.i, %while.end.i.loopexit ]
  %reml.0.le.i = extractvalue { i64, i64 } %.pn.lcssa93.i, 0
  %or198.i = tail call i64 @llvm.fshl.i64(i64 %remh.0.le.pre-phi.i, i64 %reml.0.le.i, i64 32) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i112, i64 %or198.i)
  %cmp200.not.i = icmp ugt i64 %shl.i112, %or198.i
  br i1 %cmp200.not.i, label %if.else204.i, label %if.then202.i

if.then202.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %or203.i = or i64 %z.1.lcssa.i, 4294967295
  br label %vfp_estimate_div128to64.exit

if.else204.i:                                     ; preds = %while.end.i
  %conv206.i = trunc i64 %shr.i111 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i)
  %cmp407.i = icmp ult i64 %or198.i, 4294967296
  br i1 %cmp407.i, label %if.then415.i, label %if.else421.i, !prof !104

if.then415.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv416.i = trunc i64 %or198.i to i32
  %div419.i = udiv i32 %conv416.i, %conv206.i
  %conv420.i = zext i32 %div419.i to i64
  br label %if.end425.i

if.else421.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv206.i, i64 %or198.i) #10, !srcloc !105
  %asmresult1.i39.i = extractvalue { i64, i64 } %48, 1
  br label %if.end425.i

if.end425.i:                                      ; preds = %if.else421.i, %if.then415.i
  %remh.1.i = phi i64 [ %conv420.i, %if.then415.i ], [ %asmresult1.i39.i, %if.else421.i ]
  %or427.i = or i64 %remh.1.i, %z.1.lcssa.i
  br label %vfp_estimate_div128to64.exit

vfp_estimate_div128to64.exit:                     ; preds = %if.end425.i, %if.then202.i, %vfp_double_dump.exit110.vfp_estimate_div128to64.exit_crit_edge
  %retval.0.i = phi i64 [ -1, %vfp_double_dump.exit110.vfp_estimate_div128to64.exit_crit_edge ], [ %or427.i, %if.end425.i ], [ %or203.i, %if.then202.i ]
  %add44 = or i64 %shl, 2
  %add46 = add i64 %add44, %retval.0.i
  %49 = ptrtoint ptr %significand34 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %add46, ptr %significand34, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_fsqrt, %if.then.i124)) #7
          to label %vfp_double_dump.exit125 [label %if.then.i124], !srcloc !102

if.then.i124:                                     ; preds = %vfp_estimate_div128to64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i122 = sext i16 %conv26 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef %conv4.i122, i64 noundef %add46) #7
  br label %vfp_double_dump.exit125

vfp_double_dump.exit125:                          ; preds = %if.then.i124, %vfp_estimate_div128to64.exit
  %and48 = and i64 %add46, 1022
  call void @__sanitizer_cov_trace_const_cmp8(i64 6, i64 %and48)
  %cmp49 = icmp ult i64 %and48, 6
  br i1 %cmp49, label %if.then51, label %vfp_double_dump.exit125.if.end75_crit_edge

vfp_double_dump.exit125.if.end75_crit_edge:       ; preds = %vfp_double_dump.exit125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then51:                                        ; preds = %vfp_double_dump.exit125
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %add46)
  %cmp53 = icmp ult i64 %add46, 2
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %significand34 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 -1, ptr %significand34, align 8
  br label %if.end75

if.else57:                                        ; preds = %if.then51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %termh) #7
  %51 = ptrtoint ptr %termh to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 -1, ptr %termh, align 8, !annotation !108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %terml) #7
  %52 = ptrtoint ptr %terml to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 -1, ptr %terml, align 8, !annotation !108
  %53 = ptrtoint ptr %significand10.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %significand10.i, align 8
  %shl59 = shl i64 %54, 2
  call fastcc void @mul64to128(ptr noundef nonnull %termh, ptr noundef nonnull %terml, i64 noundef %add46, i64 noundef %add46)
  %55 = ptrtoint ptr %termh to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %termh, align 8
  %57 = ptrtoint ptr %terml to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %terml, align 8
  %59 = tail call { i64, i64 } asm "subs\09${0:Q}, ${2:Q}, ${4:Q}\0A\09sbcs\09${0:R}, ${2:R}, ${4:R}\0A\09sbcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09sbc\09${1:R}, ${3:R}, ${5:R}\0A\09", "=r,=r,0,1,r,r,~{cc}"(i64 0, i64 %shl59, i64 %58, i64 %56) #10, !srcloc !106
  %60 = ptrtoint ptr %significand34 to i32
  call void @__asan_load8_noabort(i32 %60)
  %significand34.promoted = load i64, ptr %significand34, align 8
  %remh.0163 = extractvalue { i64, i64 } %59, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %remh.0163)
  %cmp63164 = icmp slt i64 %remh.0163, 0
  br i1 %cmp63164, label %if.else57.while.body_crit_edge, label %if.else57.while.end_crit_edge

if.else57.while.end_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.else57.while.body_crit_edge:                   ; preds = %if.else57
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else57.while.body_crit_edge
  %remh.0166 = phi i64 [ %remh.0, %while.body.while.body_crit_edge ], [ %remh.0163, %if.else57.while.body_crit_edge ]
  %.pn = phi { i64, i64 } [ %62, %while.body.while.body_crit_edge ], [ %59, %if.else57.while.body_crit_edge ]
  %61 = phi i64 [ %sub66, %while.body.while.body_crit_edge ], [ %significand34.promoted, %if.else57.while.body_crit_edge ]
  %reml.0165 = extractvalue { i64, i64 } %.pn, 0
  %sub66 = add i64 %61, -1
  %shr.i126 = lshr i64 %sub66, 63
  %shl.i127 = shl i64 %sub66, 1
  %or = or i64 %shl.i127, 1
  %62 = tail call { i64, i64 } asm "adds\09${0:Q}, ${2:Q}, ${4:Q}\0A\09adcs\09${0:R}, ${2:R}, ${4:R}\0A\09adcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09adc\09${1:R}, ${3:R}, ${5:R}", "=r,=r,0,1,r,r,~{cc}"(i64 %reml.0165, i64 %remh.0166, i64 %or, i64 %shr.i126) #10, !srcloc !107
  %remh.0 = extractvalue { i64, i64 } %62, 1
  %cmp63 = icmp slt i64 %remh.0, 0
  br i1 %cmp63, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %remh.0.le = extractvalue { i64, i64 } %62, 1
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.else57.while.end_crit_edge
  %remh.0.le.pre-phi = phi i64 [ %remh.0163, %if.else57.while.end_crit_edge ], [ %remh.0.le, %while.end.loopexit ]
  %.lcssa159 = phi i64 [ %significand34.promoted, %if.else57.while.end_crit_edge ], [ %sub66, %while.end.loopexit ]
  %.pn.lcssa158 = phi { i64, i64 } [ %59, %if.else57.while.end_crit_edge ], [ %62, %while.end.loopexit ]
  %reml.0.le = extractvalue { i64, i64 } %.pn.lcssa158, 0
  %or68 = or i64 %remh.0.le.pre-phi, %reml.0.le
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or68)
  %cmp69 = icmp ne i64 %or68, 0
  %63 = zext i1 %cmp69 to i64
  %or73 = or i64 %.lcssa159, %63
  %64 = ptrtoint ptr %significand34 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %or73, ptr %significand34, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %terml) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %termh) #7
  br label %if.end75

if.end75:                                         ; preds = %while.end, %if.then55, %vfp_double_dump.exit125.if.end75_crit_edge
  %65 = ptrtoint ptr %significand34 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %significand34, align 8
  %shr.i131 = lshr i64 %66, 1
  %shl.i132.mask = and i64 %66, 1
  %or.i133 = or i64 %shr.i131, %shl.i132.mask
  store i64 %or.i133, ptr %significand34, align 8
  %call79 = call i32 @vfp_double_normaliseround(i32 noundef %dd, ptr noundef nonnull %vdd, i32 noundef %fpscr, i32 noundef 0, ptr noundef nonnull @.str.17)
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end9
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ %call79, %if.end75 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdd) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdm) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fcmp(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vfp_compare(i32 noundef %dd, i32 noundef 0, i32 noundef %dm)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fcmpe(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %call9.i = tail call i64 @vfp_get_double(i32 noundef %dd) #7
  %0 = and i64 %call9.i, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %0)
  %cmp12.i = icmp ne i64 %0, 9218868437227405312
  %and14.i = and i64 %call9.i, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14.i)
  %tobool15.not.i = icmp eq i64 %and14.i, 0
  %or.cond2.i = or i1 %cmp12.i, %tobool15.not.i
  br i1 %or.cond2.i, label %if.end26.i, label %entry.vfp_compare.exit_crit_edge

entry.vfp_compare.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_compare.exit

if.end26.i:                                       ; preds = %entry
  %1 = and i64 %call.i, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp.i = icmp ne i64 %1, 9218868437227405312
  %and1.i = and i64 %call.i, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool.not.i = icmp eq i64 %and1.i, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then28.i, label %if.end26.i.vfp_compare.exit_crit_edge

if.end26.i.vfp_compare.exit_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_compare.exit

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call9.i, i64 %call.i)
  %cmp29.i = icmp eq i64 %call9.i, %call.i
  br i1 %cmp29.i, label %if.then28.i.vfp_compare.exit_crit_edge, label %lor.lhs.false30.i

if.then28.i.vfp_compare.exit_crit_edge:           ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_compare.exit

lor.lhs.false30.i:                                ; preds = %if.then28.i
  %or31.i = or i64 %call9.i, %call.i
  %and32.i = and i64 %or31.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32.i)
  %cmp33.i = icmp eq i64 %and32.i, 0
  br i1 %cmp33.i, label %lor.lhs.false30.i.vfp_compare.exit_crit_edge, label %if.else.i

lor.lhs.false30.i.vfp_compare.exit_crit_edge:     ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_compare.exit

if.else.i:                                        ; preds = %lor.lhs.false30.i
  %xor.i = xor i64 %call9.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %xor.i)
  %tobool37.not.i = icmp sgt i64 %xor.i, -1
  br i1 %tobool37.not.i, label %if.else46.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call9.i)
  %tobool40.not.i = icmp sgt i64 %call9.i, -1
  %..i = select i1 %tobool40.not.i, i32 536870912, i32 -2147483648
  br label %vfp_compare.exit

if.else46.i:                                      ; preds = %if.else.i
  %call9.lobit.i = lshr i64 %call9.i, 63
  %2 = trunc i64 %call9.lobit.i to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %call9.i, i64 %call.i)
  %cmp49.i = icmp slt i64 %call9.i, %call.i
  %conv50.i = zext i1 %cmp49.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv50.i)
  %tobool52.not.i = icmp eq i32 %2, %conv50.i
  br i1 %tobool52.not.i, label %if.else55.i, label %if.else46.i.vfp_compare.exit_crit_edge

if.else46.i.vfp_compare.exit_crit_edge:           ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_compare.exit

if.else55.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call9.i, i64 %call.i)
  %cmp59.i = icmp sgt i64 %call9.i, %call.i
  %conv60.i = zext i1 %cmp59.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv60.i)
  %tobool62.not.i = icmp eq i32 %2, %conv60.i
  %spec.select.i = select i1 %tobool62.not.i, i32 0, i32 536870912
  br label %vfp_compare.exit

vfp_compare.exit:                                 ; preds = %if.else55.i, %if.else46.i.vfp_compare.exit_crit_edge, %if.then38.i, %lor.lhs.false30.i.vfp_compare.exit_crit_edge, %if.then28.i.vfp_compare.exit_crit_edge, %if.end26.i.vfp_compare.exit_crit_edge, %entry.vfp_compare.exit_crit_edge
  %ret.2.i = phi i32 [ 805306369, %if.end26.i.vfp_compare.exit_crit_edge ], [ 1610612736, %lor.lhs.false30.i.vfp_compare.exit_crit_edge ], [ 1610612736, %if.then28.i.vfp_compare.exit_crit_edge ], [ %..i, %if.then38.i ], [ -2147483648, %if.else46.i.vfp_compare.exit_crit_edge ], [ %spec.select.i, %if.else55.i ], [ 805306369, %entry.vfp_compare.exit_crit_edge ]
  ret i32 %ret.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fcmpz(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vfp_compare(i32 noundef %dd, i32 noundef 0, i32 noundef 32)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fcmpez(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @vfp_get_double(i32 noundef 32) #7
  %call9.i = tail call i64 @vfp_get_double(i32 noundef %dd) #7
  %0 = and i64 %call9.i, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %0)
  %cmp12.i = icmp ne i64 %0, 9218868437227405312
  %and14.i = and i64 %call9.i, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14.i)
  %tobool15.not.i = icmp eq i64 %and14.i, 0
  %or.cond2.i = or i1 %cmp12.i, %tobool15.not.i
  br i1 %or.cond2.i, label %if.end26.i, label %entry.vfp_compare.exit_crit_edge

entry.vfp_compare.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_compare.exit

if.end26.i:                                       ; preds = %entry
  %1 = and i64 %call.i, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp.i = icmp ne i64 %1, 9218868437227405312
  %and1.i = and i64 %call.i, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool.not.i = icmp eq i64 %and1.i, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then28.i, label %if.end26.i.vfp_compare.exit_crit_edge

if.end26.i.vfp_compare.exit_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_compare.exit

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call9.i, i64 %call.i)
  %cmp29.i = icmp eq i64 %call9.i, %call.i
  br i1 %cmp29.i, label %if.then28.i.vfp_compare.exit_crit_edge, label %lor.lhs.false30.i

if.then28.i.vfp_compare.exit_crit_edge:           ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_compare.exit

lor.lhs.false30.i:                                ; preds = %if.then28.i
  %or31.i = or i64 %call9.i, %call.i
  %and32.i = and i64 %or31.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32.i)
  %cmp33.i = icmp eq i64 %and32.i, 0
  br i1 %cmp33.i, label %lor.lhs.false30.i.vfp_compare.exit_crit_edge, label %if.else.i

lor.lhs.false30.i.vfp_compare.exit_crit_edge:     ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_compare.exit

if.else.i:                                        ; preds = %lor.lhs.false30.i
  %xor.i = xor i64 %call9.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %xor.i)
  %tobool37.not.i = icmp sgt i64 %xor.i, -1
  br i1 %tobool37.not.i, label %if.else46.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call9.i)
  %tobool40.not.i = icmp sgt i64 %call9.i, -1
  %..i = select i1 %tobool40.not.i, i32 536870912, i32 -2147483648
  br label %vfp_compare.exit

if.else46.i:                                      ; preds = %if.else.i
  %call9.lobit.i = lshr i64 %call9.i, 63
  %2 = trunc i64 %call9.lobit.i to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %call9.i, i64 %call.i)
  %cmp49.i = icmp slt i64 %call9.i, %call.i
  %conv50.i = zext i1 %cmp49.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv50.i)
  %tobool52.not.i = icmp eq i32 %2, %conv50.i
  br i1 %tobool52.not.i, label %if.else55.i, label %if.else46.i.vfp_compare.exit_crit_edge

if.else46.i.vfp_compare.exit_crit_edge:           ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_compare.exit

if.else55.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call9.i, i64 %call.i)
  %cmp59.i = icmp sgt i64 %call9.i, %call.i
  %conv60.i = zext i1 %cmp59.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv60.i)
  %tobool62.not.i = icmp eq i32 %2, %conv60.i
  %spec.select.i = select i1 %tobool62.not.i, i32 0, i32 536870912
  br label %vfp_compare.exit

vfp_compare.exit:                                 ; preds = %if.else55.i, %if.else46.i.vfp_compare.exit_crit_edge, %if.then38.i, %lor.lhs.false30.i.vfp_compare.exit_crit_edge, %if.then28.i.vfp_compare.exit_crit_edge, %if.end26.i.vfp_compare.exit_crit_edge, %entry.vfp_compare.exit_crit_edge
  %ret.2.i = phi i32 [ 805306369, %if.end26.i.vfp_compare.exit_crit_edge ], [ 1610612736, %lor.lhs.false30.i.vfp_compare.exit_crit_edge ], [ 1610612736, %if.then28.i.vfp_compare.exit_crit_edge ], [ %..i, %if.then38.i ], [ -2147483648, %if.else46.i.vfp_compare.exit_crit_edge ], [ %spec.select.i, %if.else55.i ], [ 805306369, %entry.vfp_compare.exit_crit_edge ]
  ret i32 %ret.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fcvts(i32 noundef %sd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  %vdm = alloca %struct.vfp_double, align 8
  %vsd = alloca %struct.vfp_single, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdm) #7
  %0 = ptrtoint ptr %vdm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vdm, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsd) #7
  %1 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 2
  %3 = ptrtoint ptr %vsd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %vsd, align 4
  %call = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and.i = lshr i64 %call, 48
  %4 = trunc i64 %and.i to i16
  %conv.i = and i16 %4, -32768
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %5 = ptrtoint ptr %sign.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %sign.i, align 2
  %6 = lshr i64 %call, 52
  %7 = trunc i64 %6 to i16
  %conv3.i = and i16 %7, 2047
  %8 = ptrtoint ptr %vdm to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv3.i, ptr %vdm, align 8
  %9 = shl i64 %call, 10
  %shr4.i = and i64 %9, 4611686018427386880
  %trunc.i = trunc i64 %6 to i11
  %10 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.45)
  switch i11 %trunc.i, label %if.then.i [
    i11 0, label %entry.vfp_double_unpack.exit_crit_edge
    i11 -1, label %entry.vfp_double_unpack.exit_crit_edge53
  ]

entry.vfp_double_unpack.exit_crit_edge53:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

entry.vfp_double_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %shr4.i, 4611686018427387904
  br label %vfp_double_unpack.exit

vfp_double_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_double_unpack.exit_crit_edge, %entry.vfp_double_unpack.exit_crit_edge53
  %significand.0.i = phi i64 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge53 ]
  %significand10.i = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %11 = ptrtoint ptr %significand10.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %significand.0.i, ptr %significand10.i, align 8
  %12 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.46)
  switch i11 %trunc.i, label %vfp_double_unpack.exit.vfp_double_type.exit.thread49_crit_edge [
    i11 -1, label %if.then.i35
    i11 0, label %vfp_double_type.exit
  ]

vfp_double_unpack.exit.vfp_double_type.exit.thread49_crit_edge: ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit.thread49

if.then.i35:                                      ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp2.i = icmp eq i64 %significand.0.i, 0
  br i1 %cmp2.i, label %if.then.i35.vfp_double_type.exit.thread49_crit_edge, label %if.else.i

if.then.i35.vfp_double_type.exit.thread49_crit_edge: ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit.thread49

if.else.i:                                        ; preds = %if.then.i35
  %and.i36 = and i64 %significand.0.i, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i36)
  %tobool.not.i = icmp eq i64 %and.i36, 0
  br i1 %tobool.not.i, label %if.else.i.if.end3_crit_edge, label %if.else.i.vfp_double_type.exit.thread49_crit_edge

if.else.i.vfp_double_type.exit.thread49_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit.thread49

if.else.i.if.end3_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

vfp_double_type.exit.thread49:                    ; preds = %if.else.i.vfp_double_type.exit.thread49_crit_edge, %if.then.i35.vfp_double_type.exit.thread49_crit_edge, %vfp_double_unpack.exit.vfp_double_type.exit.thread49_crit_edge
  %type.0.i.ph.ph = phi i32 [ 8, %if.then.i35.vfp_double_type.exit.thread49_crit_edge ], [ 16, %if.else.i.vfp_double_type.exit.thread49_crit_edge ], [ 1, %vfp_double_unpack.exit.vfp_double_type.exit.thread49_crit_edge ]
  br label %if.end3

vfp_double_type.exit:                             ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp16.i = icmp eq i64 %significand.0.i, 0
  %.30.i = select i1 %cmp16.i, i32 3, i32 5
  %and = and i32 %.30.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %vfp_double_type.exit.if.end3_crit_edge, label %if.then2

vfp_double_type.exit.if.end3_crit_edge:           ; preds = %vfp_double_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %vfp_double_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdm)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %vfp_double_type.exit.if.end3_crit_edge, %vfp_double_type.exit.thread49, %if.else.i.if.end3_crit_edge
  %13 = phi i32 [ 0, %if.then2 ], [ 0, %vfp_double_type.exit.if.end3_crit_edge ], [ 0, %vfp_double_type.exit.thread49 ], [ 1, %if.else.i.if.end3_crit_edge ]
  %type.0.i4247 = phi i32 [ 5, %if.then2 ], [ %.30.i, %vfp_double_type.exit.if.end3_crit_edge ], [ %type.0.i.ph.ph, %vfp_double_type.exit.thread49 ], [ 48, %if.else.i.if.end3_crit_edge ]
  %14 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sign.i, align 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %1, align 2
  %17 = ptrtoint ptr %significand10.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %significand10.i, align 8
  %19 = tail call i32 asm "cmp\09${1:Q}, #1\09\09@ vfp_hi64to32jamming\0A\09movcc\09$0, ${1:R}\0A\09orrcs\09$0, ${1:R}, #1", "=r,r,~{cc}"(i64 %18) #10, !srcloc !109
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %2, align 4
  %and7 = and i32 %type.0.i4247, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type.0.i4247)
  %cmp10 = icmp eq i32 %type.0.i4247, 16
  br i1 %cmp10, label %if.then11, label %if.then9.pack_nan_crit_edge

if.then9.pack_nan_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %pack_nan

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %19, 536870912
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %2, align 4
  br label %pack_nan

if.else:                                          ; preds = %if.end3
  %and14 = and i32 %type.0.i4247, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else18, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %vdm to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vdm, align 8
  %sub = add i16 %23, -896
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.else.if.end23_crit_edge
  %storemerge = phi i16 [ %sub, %if.else18 ], [ 0, %if.else.if.end23_crit_edge ]
  %24 = ptrtoint ptr %vsd to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %storemerge, ptr %vsd, align 4
  %call24 = call i32 @__vfp_single_normaliseround(i32 noundef %sd, ptr noundef nonnull %vsd, i32 noundef %fpscr, i32 noundef %13) #7
  br label %cleanup

pack_nan:                                         ; preds = %if.then11, %if.then9.pack_nan_crit_edge
  %conv.i38 = zext i16 %15 to i32
  %shl.i = shl nuw i32 %conv.i38, 16
  %add.i = add i32 %shl.i, 2139095040
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  %shr.i = lshr i32 %26, 7
  %add3.i = add i32 %add.i, %shr.i
  tail call void @vfp_put_float(i32 noundef %add3.i, i32 noundef %sd) #7
  br label %cleanup

cleanup:                                          ; preds = %pack_nan, %if.end23
  %retval.0 = phi i32 [ %13, %pack_nan ], [ %call24, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsd) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdm) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fuito(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  %vdm = alloca %struct.vfp_double, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdm) #7
  %0 = ptrtoint ptr %vdm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vdm, align 8
  %call = tail call i32 @vfp_get_float(i32 noundef %dm) #7
  %sign = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %1 = ptrtoint ptr %sign to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %sign, align 2
  %2 = ptrtoint ptr %vdm to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1085, ptr %vdm, align 8
  %conv = zext i32 %call to i64
  %significand = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %3 = ptrtoint ptr %significand to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %significand, align 8
  %call1 = call i32 @vfp_double_normaliseround(i32 noundef %dd, ptr noundef nonnull %vdm, i32 noundef %fpscr, i32 noundef 0, ptr noundef nonnull @.str.20)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdm) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fsito(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  %vdm = alloca %struct.vfp_double, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdm) #7
  %0 = ptrtoint ptr %vdm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vdm, align 8
  %call = tail call i32 @vfp_get_float(i32 noundef %dm) #7
  %and = lshr i32 %call, 16
  %1 = trunc i32 %and to i16
  %conv = and i16 %1, -32768
  %sign = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %2 = ptrtoint ptr %sign to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %sign, align 2
  %3 = ptrtoint ptr %vdm to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1085, ptr %vdm, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  %sub = sub i32 0, %call
  %cond = select i1 %tobool.not, i32 %call, i32 %sub
  %conv3 = zext i32 %cond to i64
  %significand = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %4 = ptrtoint ptr %significand to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv3, ptr %significand, align 8
  %call4 = call i32 @vfp_double_normaliseround(i32 noundef %dd, ptr noundef nonnull %vdm, i32 noundef %fpscr, i32 noundef 0, ptr noundef nonnull @.str.21)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdm) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_ftoui(i32 noundef %sd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %fpscr, 12582912
  %call = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and.i = lshr i64 %call, 48
  %0 = trunc i64 %and.i to i16
  %conv.i = and i16 %0, -32768
  %1 = lshr i64 %call, 52
  %2 = trunc i64 %1 to i16
  %conv3.i = and i16 %2, 2047
  %3 = shl i64 %call, 10
  %shr4.i = and i64 %3, 4611686018427386880
  %trunc.i = trunc i64 %1 to i11
  %4 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i11 %trunc.i, label %if.then.i [
    i11 0, label %entry.vfp_double_unpack.exit_crit_edge
    i11 -1, label %entry.vfp_double_unpack.exit_crit_edge175
  ]

entry.vfp_double_unpack.exit_crit_edge175:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

entry.vfp_double_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %shr4.i, 4611686018427387904
  br label %vfp_double_unpack.exit

vfp_double_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_double_unpack.exit_crit_edge, %entry.vfp_double_unpack.exit_crit_edge175
  %significand.0.i = phi i64 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge175 ]
  %5 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.48)
  switch i11 %trunc.i, label %vfp_double_unpack.exit.if.end6_crit_edge [
    i11 -1, label %if.then.i135
    i11 0, label %if.then14.i
  ]

vfp_double_unpack.exit.if.end6_crit_edge:         ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.i135:                                     ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp2.i = icmp eq i64 %significand.0.i, 0
  br i1 %cmp2.i, label %if.then.i135.if.then8_crit_edge, label %if.else.i

if.then.i135.if.then8_crit_edge:                  ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.else.i:                                        ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #9
  %and.i136 = and i64 %significand.0.i, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i136)
  %tobool.not.i = icmp eq i64 %and.i136, 0
  %..i = select i1 %tobool.not.i, i32 48, i32 16
  br label %vfp_double_type.exit

if.then14.i:                                      ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp16.i = icmp eq i64 %significand.0.i, 0
  %.30.i = select i1 %cmp16.i, i32 3, i32 5
  br label %vfp_double_type.exit

vfp_double_type.exit:                             ; preds = %if.then14.i, %if.else.i
  %type.0.i = phi i32 [ %..i, %if.else.i ], [ %.30.i, %if.then14.i ]
  %and2 = shl nuw nsw i32 %type.0.i, 5
  %6 = and i32 %and2, 128
  %and3 = and i32 %type.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %spec.select173 = select i1 %tobool4.not, i16 %conv.i, i16 0
  br label %if.end6

if.end6:                                          ; preds = %vfp_double_type.exit, %vfp_double_unpack.exit.if.end6_crit_edge
  %spec.select152 = phi i32 [ 0, %vfp_double_unpack.exit.if.end6_crit_edge ], [ %6, %vfp_double_type.exit ]
  %vdm.sroa.6.0 = phi i16 [ %conv.i, %vfp_double_unpack.exit.if.end6_crit_edge ], [ %spec.select173, %vfp_double_type.exit ]
  %conv171 = zext i16 %conv3.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1054, i16 %conv3.i)
  %cmp = icmp ugt i16 %conv3.i, 1054
  br i1 %cmp, label %if.end6.if.then8_crit_edge, label %if.else

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %if.then.i135.if.then8_crit_edge
  %vdm.sroa.6.0167 = phi i16 [ %vdm.sroa.6.0, %if.end6.if.then8_crit_edge ], [ %conv.i, %if.then.i135.if.then8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vdm.sroa.6.0167)
  %tobool11.not = icmp eq i16 %vdm.sroa.6.0167, 0
  %cond = sext i1 %tobool11.not to i32
  br label %do.body

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %conv3.i)
  %cmp14 = icmp ugt i16 %conv3.i, 1021
  br i1 %cmp14, label %if.then16, label %if.else72

if.then16:                                        ; preds = %if.else
  %sub = sub nsw i32 1086, %conv171
  %shl = shl i64 %significand.0.i, 1
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %shl, %sh_prom
  %conv19 = trunc i64 %shr to i32
  %sub21 = add nsw i32 %conv171, -1021
  %sh_prom22 = zext i32 %sub21 to i64
  %shl23 = shl i64 %significand.0.i, %sh_prom22
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %and, label %if.else37 [
    i32 0, label %if.then26
    i32 12582912, label %if.then16.if.end59_crit_edge
  ]

if.then16.if.end59_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then26:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %and27 = and i32 %conv19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 0
  %spec.select131 = select i1 %cmp28, i64 9223372036854775807, i64 -9223372036854775808
  br label %if.end48

if.else37:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and)
  %cmp38 = icmp eq i32 %and, 4194304
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vdm.sroa.6.0)
  %cmp42 = icmp ne i16 %vdm.sroa.6.0, 0
  %xor130 = xor i1 %cmp38, %cmp42
  %spec.select132 = sext i1 %xor130 to i64
  br label %if.end48

if.end48:                                         ; preds = %if.else37, %if.then26
  %incr.0 = phi i64 [ %spec.select131, %if.then26 ], [ %spec.select132, %if.else37 ]
  %8 = xor i64 %shl23, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %incr.0, i64 %8)
  %cmp49 = icmp ugt i64 %incr.0, %8
  br i1 %cmp49, label %if.then51, label %if.end48.if.end59_crit_edge

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv19)
  %cmp52.not = icmp eq i32 %conv19, -1
  br i1 %cmp52.not, label %if.else56, label %if.then54

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %add55 = add nuw i32 %conv19, 1
  br label %land.lhs.true

if.else56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %or57 = or i32 %spec.select152, 1
  br label %land.lhs.true

if.end59:                                         ; preds = %if.end48.if.end59_crit_edge, %if.then16.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv19)
  %tobool60.not = icmp eq i32 %conv19, 0
  br i1 %tobool60.not, label %if.end59.if.else66_crit_edge, label %if.end59.land.lhs.true_crit_edge

if.end59.land.lhs.true_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end59.if.else66_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else66

land.lhs.true:                                    ; preds = %if.end59.land.lhs.true_crit_edge, %if.else56, %if.then54
  %d.0160 = phi i32 [ %conv19, %if.end59.land.lhs.true_crit_edge ], [ -1, %if.else56 ], [ %add55, %if.then54 ]
  %exceptions.1158 = phi i32 [ %spec.select152, %if.end59.land.lhs.true_crit_edge ], [ %or57, %if.else56 ], [ %spec.select152, %if.then54 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vdm.sroa.6.0)
  %tobool63.not = icmp eq i16 %vdm.sroa.6.0, 0
  br i1 %tobool63.not, label %land.lhs.true.if.else66_crit_edge, label %if.then64

land.lhs.true.if.else66_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else66

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %or65 = or i32 %exceptions.1158, 1
  br label %do.body

if.else66:                                        ; preds = %land.lhs.true.if.else66_crit_edge, %if.end59.if.else66_crit_edge
  %d.0161 = phi i32 [ %d.0160, %land.lhs.true.if.else66_crit_edge ], [ 0, %if.end59.if.else66_crit_edge ]
  %exceptions.1159 = phi i32 [ %exceptions.1158, %land.lhs.true.if.else66_crit_edge ], [ %spec.select152, %if.end59.if.else66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl23)
  %tobool67.not = icmp eq i64 %shl23, 0
  %or69 = or i32 %exceptions.1159, 16
  %spec.select133 = select i1 %tobool67.not, i32 %exceptions.1159, i32 %or69
  br label %do.body

if.else72:                                        ; preds = %if.else
  %conv74172 = zext i16 %conv3.i to i64
  %or76 = or i64 %significand.0.i, %conv74172
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or76)
  %tobool77.not = icmp eq i64 %or76, 0
  br i1 %tobool77.not, label %if.else72.do.body_crit_edge, label %if.then78

if.else72.do.body_crit_edge:                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then78:                                        ; preds = %if.else72
  %or79 = or i32 %spec.select152, 16
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and, label %if.then78.do.body_crit_edge [
    i32 4194304, label %land.lhs.true82
    i32 8388608, label %land.lhs.true91
  ]

if.then78.do.body_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true82:                                  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vdm.sroa.6.0)
  %cmp85 = icmp eq i16 %vdm.sroa.6.0, 0
  %spec.select174 = zext i1 %cmp85 to i32
  br label %do.body

land.lhs.true91:                                  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vdm.sroa.6.0)
  %tobool94.not = icmp eq i16 %vdm.sroa.6.0, 0
  %or96 = or i32 %spec.select152, 17
  %spec.select134 = select i1 %tobool94.not, i32 %or79, i32 %or96
  br label %do.body

do.body:                                          ; preds = %land.lhs.true91, %land.lhs.true82, %if.then78.do.body_crit_edge, %if.else72.do.body_crit_edge, %if.else66, %if.then64, %if.then8
  %exceptions.3 = phi i32 [ 1, %if.then8 ], [ %spec.select152, %if.else72.do.body_crit_edge ], [ %or65, %if.then64 ], [ %spec.select133, %if.else66 ], [ %or79, %if.then78.do.body_crit_edge ], [ %spec.select134, %land.lhs.true91 ], [ %or79, %land.lhs.true82 ]
  %d.2 = phi i32 [ %cond, %if.then8 ], [ 0, %if.else72.do.body_crit_edge ], [ 0, %if.then64 ], [ %d.0161, %if.else66 ], [ 0, %if.then78.do.body_crit_edge ], [ 0, %land.lhs.true91 ], [ %spec.select174, %land.lhs.true82 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_ftoui.__UNIQUE_ID_ddebug18, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_ftoui, %if.then106)) #7
          to label %do.end [label %if.then106], !srcloc !102

if.then106:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_ftoui.__UNIQUE_ID_ddebug18, ptr noundef nonnull @.str.23, i32 noundef %sd, i32 noundef %d.2, i32 noundef %exceptions.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then106, %do.body
  tail call void @vfp_put_float(i32 noundef %d.2, i32 noundef %sd) #7
  ret i32 %exceptions.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_ftouiz(i32 noundef %sd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfp_double_ftoui(i32 noundef %sd, i32 noundef %unused, i32 noundef %dm, i32 noundef 12582912)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_ftosi(i32 noundef %sd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %fpscr, 12582912
  %call = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and.i = lshr i64 %call, 48
  %0 = trunc i64 %and.i to i16
  %conv.i = and i16 %0, -32768
  %1 = lshr i64 %call, 52
  %2 = trunc i64 %1 to i16
  %conv3.i = and i16 %2, 2047
  %3 = shl i64 %call, 10
  %shr4.i = and i64 %3, 4611686018427386880
  %trunc.i = trunc i64 %1 to i11
  %4 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i11 %trunc.i, label %if.then.i [
    i11 0, label %entry.vfp_double_unpack.exit_crit_edge
    i11 -1, label %entry.vfp_double_unpack.exit_crit_edge187
  ]

entry.vfp_double_unpack.exit_crit_edge187:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

entry.vfp_double_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %shr4.i, 4611686018427387904
  br label %vfp_double_unpack.exit

vfp_double_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_double_unpack.exit_crit_edge, %entry.vfp_double_unpack.exit_crit_edge187
  %significand.0.i = phi i64 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge187 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_ftosi, %if.then.i153)) #7
          to label %vfp_double_dump.exit [label %if.then.i153], !srcloc !102

if.then.i153:                                     ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.lobit = lshr i16 %0, 15
  %5 = zext i16 %conv.i.lobit to i32
  %conv4.i184 = zext i16 %conv3.i to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24, i32 noundef %5, i32 noundef %conv4.i184, i64 noundef %significand.0.i) #7
  br label %vfp_double_dump.exit

vfp_double_dump.exit:                             ; preds = %if.then.i153, %vfp_double_unpack.exit
  %6 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.52)
  switch i11 %trunc.i, label %vfp_double_dump.exit.if.else_crit_edge [
    i11 -1, label %if.then.i155
    i11 0, label %if.then14.i
  ]

vfp_double_dump.exit.if.else_crit_edge:           ; preds = %vfp_double_dump.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then.i155:                                     ; preds = %vfp_double_dump.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp2.i = icmp eq i64 %significand.0.i, 0
  br i1 %cmp2.i, label %if.then.i155.if.then8_crit_edge, label %if.else.i

if.then.i155.if.then8_crit_edge:                  ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.else.i:                                        ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #9
  %and.i156 = and i64 %significand.0.i, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i156)
  %tobool.not.i = icmp eq i64 %and.i156, 0
  %..i = select i1 %tobool.not.i, i32 48, i32 16
  br label %vfp_double_type.exit

if.then14.i:                                      ; preds = %vfp_double_dump.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp16.i = icmp eq i64 %significand.0.i, 0
  %.30.i = select i1 %cmp16.i, i32 3, i32 5
  br label %vfp_double_type.exit

vfp_double_type.exit:                             ; preds = %if.then14.i, %if.else.i
  %type.0.i = phi i32 [ %..i, %if.else.i ], [ %.30.i, %if.then14.i ]
  %and2 = shl nuw nsw i32 %type.0.i, 5
  %7 = and i32 %and2, 128
  %and3 = and i32 %type.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %vfp_double_type.exit.if.else_crit_edge, label %if.then5

vfp_double_type.exit.if.else_crit_edge:           ; preds = %vfp_double_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then5:                                         ; preds = %vfp_double_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %7, 1
  br label %do.body

if.else:                                          ; preds = %vfp_double_type.exit.if.else_crit_edge, %vfp_double_dump.exit.if.else_crit_edge
  %spec.select176 = phi i32 [ %7, %vfp_double_type.exit.if.else_crit_edge ], [ 0, %vfp_double_dump.exit.if.else_crit_edge ]
  %conv182 = zext i16 %conv3.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1054, i16 %conv3.i)
  %cmp = icmp ugt i16 %conv3.i, 1054
  br i1 %cmp, label %if.else.if.then8_crit_edge, label %if.else13

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %if.else.if.then8_crit_edge, %if.then.i155.if.then8_crit_edge
  %spec.select176181 = phi i32 [ %spec.select176, %if.else.if.then8_crit_edge ], [ 0, %if.then.i155.if.then8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool9.not = icmp eq i16 %conv.i, 0
  %spec.select144 = select i1 %tobool9.not, i32 2147483647, i32 -2147483648
  %or12 = or i32 %spec.select176181, 1
  br label %do.body

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %conv3.i)
  %cmp16 = icmp ugt i16 %conv3.i, 1021
  br i1 %cmp16, label %if.then18, label %if.else83

if.then18:                                        ; preds = %if.else13
  %sub = sub nsw i32 1086, %conv182
  %shl = shl i64 %significand.0.i, 1
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %shl, %sh_prom
  %conv21 = trunc i64 %shr to i32
  %sub23 = add nsw i32 %conv182, -1021
  %sh_prom24 = zext i32 %sub23 to i64
  %shl25 = shl i64 %significand.0.i, %sh_prom24
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and, label %if.else39 [
    i32 0, label %if.then28
    i32 12582912, label %if.then18.if.end50_crit_edge
  ]

if.then18.if.end50_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then28:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %and29 = and i32 %conv21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 0
  %spec.select145 = select i1 %cmp30, i64 9223372036854775807, i64 -9223372036854775808
  br label %if.end50

if.else39:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and)
  %cmp40 = icmp eq i32 %and, 4194304
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp44 = icmp ne i16 %conv.i, 0
  %xor143 = xor i1 %cmp40, %cmp44
  %spec.select146 = sext i1 %xor143 to i64
  br label %if.end50

if.end50:                                         ; preds = %if.else39, %if.then28, %if.then18.if.end50_crit_edge
  %incr.0 = phi i64 [ %spec.select145, %if.then28 ], [ 0, %if.then18.if.end50_crit_edge ], [ %spec.select146, %if.else39 ]
  %9 = xor i64 %shl25, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %incr.0, i64 %9)
  %cmp51 = icmp ugt i64 %incr.0, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv21)
  %cmp53.not = icmp eq i32 %conv21, -1
  %add56 = add i32 %conv21, 1
  %spec.select147 = select i1 %cmp53.not, i32 -1, i32 %add56
  %d.1 = select i1 %cmp51, i32 %spec.select147, i32 %conv21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp60.not = icmp eq i16 %conv.i, 0
  %add62 = select i1 %cmp60.not, i32 2147483647, i32 -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %d.1, i32 %add62)
  %cmp63 = icmp ugt i32 %d.1, %add62
  %or71 = or i32 %spec.select176, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl25)
  %tobool73.not = icmp eq i64 %shl25, 0
  %or75 = or i32 %spec.select176, 16
  %spec.select148 = select i1 %tobool73.not, i32 %spec.select176, i32 %or75
  %exceptions.1 = select i1 %cmp63, i32 %or71, i32 %spec.select148
  %10 = tail call i32 @llvm.umin.i32(i32 %d.1, i32 %add62)
  %sub81 = sub i32 0, %10
  %spec.select149 = select i1 %cmp60.not, i32 %10, i32 %sub81
  br label %do.body

if.else83:                                        ; preds = %if.else13
  %conv85183 = zext i16 %conv3.i to i64
  %or87 = or i64 %significand.0.i, %conv85183
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or87)
  %tobool88.not = icmp eq i64 %or87, 0
  br i1 %tobool88.not, label %if.else83.do.body_crit_edge, label %if.then89

if.else83.do.body_crit_edge:                      ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then89:                                        ; preds = %if.else83
  %or90 = or i32 %spec.select176, 16
  %11 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and, label %if.then89.do.body_crit_edge [
    i32 4194304, label %land.lhs.true93
    i32 8388608, label %land.lhs.true102
  ]

if.then89.do.body_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true93:                                  ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %12 = xor i16 %0, -1
  %13 = lshr i16 %12, 15
  %14 = zext i16 %13 to i32
  br label %do.body

land.lhs.true102:                                 ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %sext = ashr i16 %0, 15
  %spec.select150 = sext i16 %sext to i32
  br label %do.body

do.body:                                          ; preds = %land.lhs.true102, %land.lhs.true93, %if.then89.do.body_crit_edge, %if.else83.do.body_crit_edge, %if.end50, %if.then8, %if.then5
  %exceptions.2 = phi i32 [ %or6, %if.then5 ], [ %or12, %if.then8 ], [ %exceptions.1, %if.end50 ], [ %spec.select176, %if.else83.do.body_crit_edge ], [ %or90, %if.then89.do.body_crit_edge ], [ %or90, %land.lhs.true102 ], [ %or90, %land.lhs.true93 ]
  %d.4 = phi i32 [ 0, %if.then5 ], [ %spec.select144, %if.then8 ], [ %spec.select149, %if.end50 ], [ 0, %if.else83.do.body_crit_edge ], [ 0, %if.then89.do.body_crit_edge ], [ %spec.select150, %land.lhs.true102 ], [ %14, %land.lhs.true93 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_ftosi.__UNIQUE_ID_ddebug19, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_ftosi, %if.then117)) #7
          to label %do.end [label %if.then117], !srcloc !102

if.then117:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_ftosi.__UNIQUE_ID_ddebug19, ptr noundef nonnull @.str.26, i32 noundef %sd, i32 noundef %d.4, i32 noundef %exceptions.2) #7
  br label %do.end

do.end:                                           ; preds = %if.then117, %do.body
  tail call void @vfp_put_float(i32 noundef %d.4, i32 noundef %sd) #7
  ret i32 %exceptions.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_ftosiz(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfp_double_ftosi(i32 noundef %dd, i32 noundef %unused, i32 noundef %dm, i32 noundef 12582912)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfp_get_double(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfp_double_normalise_denormal(ptr nocapture noundef %vd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %significand = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 2
  %0 = ptrtoint ptr %significand to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %significand, align 8
  %shr = lshr i64 %1, 32
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not.i = icmp eq i32 %conv, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %conv, i1 true) #7, !range !103
  %sub.i = sub nuw nsw i32 32, %2
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %sub = sub nsw i32 31, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp eq i32 %cond.i, 0
  %conv3 = trunc i64 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %tobool.not.i22 = icmp eq i32 %conv3, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %conv3, i1 true) #7, !range !103
  %sub.i23.neg.op = add nuw nsw i32 %3, 31
  %sub5 = select i1 %tobool.not.i22, i32 63, i32 %sub.i23.neg.op
  %bits.0 = select i1 %cmp, i32 %sub5, i32 %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_normalise_denormal, %if.then.i)) #7
          to label %vfp_double_dump.exit [label %if.then.i], !srcloc !102

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 1
  %4 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sign.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp ne i16 %5, 0
  %conv3.i = zext i1 %cmp.i to i32
  %6 = ptrtoint ptr %vd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vd, align 8
  %conv4.i = sext i16 %7 to i32
  %8 = ptrtoint ptr %significand to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %significand, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18, i32 noundef %conv3.i, i32 noundef %conv4.i, i64 noundef %9) #7
  br label %vfp_double_dump.exit

vfp_double_dump.exit:                             ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits.0)
  %tobool.not = icmp eq i32 %bits.0, 0
  br i1 %tobool.not, label %vfp_double_dump.exit.if.end12_crit_edge, label %if.then6

vfp_double_dump.exit.if.end12_crit_edge:          ; preds = %vfp_double_dump.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6:                                         ; preds = %vfp_double_dump.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %vd to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vd, align 8
  %12 = trunc i32 %bits.0 to i16
  %.neg32 = sub nsw i16 1, %12
  %conv10 = add i16 %.neg32, %11
  store i16 %conv10, ptr %vd, align 8
  %13 = ptrtoint ptr %significand to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %significand, align 8
  %sh_prom = zext i32 %bits.0 to i64
  %shl = shl i64 %14, %sh_prom
  store i64 %shl, ptr %significand, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %vfp_double_dump.exit.if.end12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_normalise_denormal, %if.then.i30)) #7
          to label %vfp_double_dump.exit31 [label %if.then.i30], !srcloc !102

if.then.i30:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %sign.i25 = getelementptr inbounds %struct.vfp_double, ptr %vd, i32 0, i32 1
  %15 = ptrtoint ptr %sign.i25 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sign.i25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i26 = icmp ne i16 %16, 0
  %conv3.i27 = zext i1 %cmp.i26 to i32
  %17 = ptrtoint ptr %vd to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vd, align 8
  %conv4.i28 = sext i16 %18 to i32
  %19 = ptrtoint ptr %significand to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %significand, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.19, i32 noundef %conv3.i27, i32 noundef %conv4.i28, i64 noundef %20) #7
  br label %vfp_double_dump.exit31

vfp_double_dump.exit31:                           ; preds = %if.then.i30, %if.end12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_estimate_sqrt_significand(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @vfp_estimate_div128to64(i64 noundef %nh, i64 noundef %m) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %nh, i64 %m)
  %cmp.not = icmp ult i64 %nh, %m
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %m, 32
  %shl = and i64 %m, -4294967296
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %nh)
  %cmp1.not = icmp ugt i64 %shl, %nh
  br i1 %cmp1.not, label %if.else, label %if.end.if.end191_crit_edge

if.end.if.end191_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.else:                                          ; preds = %if.end
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %nh)
  %cmp174 = icmp ult i64 %nh, 4294967296
  br i1 %cmp174, label %if.then178, label %if.else184, !prof !104

if.then178:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv179 = trunc i64 %nh to i32
  %div182 = udiv i32 %conv179, %conv
  %conv183 = zext i32 %div182 to i64
  br label %if.end188

if.else184:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %nh) #10, !srcloc !105
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end188

if.end188:                                        ; preds = %if.else184, %if.then178
  %z.0 = phi i64 [ %conv183, %if.then178 ], [ %asmresult1.i, %if.else184 ]
  %shl190 = shl i64 %z.0, 32
  br label %if.end191

if.end191:                                        ; preds = %if.end188, %if.end.if.end191_crit_edge
  %storemerge = phi i64 [ %shl190, %if.end188 ], [ -4294967296, %if.end.if.end191_crit_edge ]
  %conv2.i = and i64 %m, 4294967295
  %shr8.i = lshr exact i64 %storemerge, 32
  %mul12.i = mul nuw i64 %shr8.i, %conv2.i
  %mul15.i = mul nuw i64 %shr8.i, %shr
  %shr18.i = lshr i64 %mul12.i, 32
  %shl21.i = shl i64 %mul12.i, 32
  %add19.i = add nuw i64 %shr18.i, %mul15.i
  %1 = tail call { i64, i64 } asm "subs\09${0:Q}, ${2:Q}, ${4:Q}\0A\09sbcs\09${0:R}, ${2:R}, ${4:R}\0A\09sbcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09sbc\09${1:R}, ${3:R}, ${5:R}\0A\09", "=r,=r,0,1,r,r,~{cc}"(i64 0, i64 %nh, i64 %shl21.i, i64 %add19.i) #10, !srcloc !106
  %shl192 = shl i64 %m, 32
  %remh.095 = extractvalue { i64, i64 } %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %remh.095)
  %cmp19396 = icmp slt i64 %remh.095, 0
  br i1 %cmp19396, label %if.end191.while.body_crit_edge, label %if.end191.while.end_crit_edge

if.end191.while.end_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end191.while.body_crit_edge:                   ; preds = %if.end191
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end191.while.body_crit_edge
  %remh.099 = phi i64 [ %remh.0, %while.body.while.body_crit_edge ], [ %remh.095, %if.end191.while.body_crit_edge ]
  %.pn = phi { i64, i64 } [ %2, %while.body.while.body_crit_edge ], [ %1, %if.end191.while.body_crit_edge ]
  %z.197 = phi i64 [ %sub195, %while.body.while.body_crit_edge ], [ %storemerge, %if.end191.while.body_crit_edge ]
  %reml.098 = extractvalue { i64, i64 } %.pn, 0
  %sub195 = add i64 %z.197, -4294967296
  %2 = tail call { i64, i64 } asm "adds\09${0:Q}, ${2:Q}, ${4:Q}\0A\09adcs\09${0:R}, ${2:R}, ${4:R}\0A\09adcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09adc\09${1:R}, ${3:R}, ${5:R}", "=r,=r,0,1,r,r,~{cc}"(i64 %reml.098, i64 %remh.099, i64 %shl192, i64 %shr) #10, !srcloc !107
  %remh.0 = extractvalue { i64, i64 } %2, 1
  %cmp193 = icmp slt i64 %remh.0, 0
  br i1 %cmp193, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %remh.0.le = extractvalue { i64, i64 } %2, 1
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end191.while.end_crit_edge
  %remh.0.le.pre-phi = phi i64 [ %remh.095, %if.end191.while.end_crit_edge ], [ %remh.0.le, %while.end.loopexit ]
  %.pn.lcssa93 = phi { i64, i64 } [ %1, %if.end191.while.end_crit_edge ], [ %2, %while.end.loopexit ]
  %z.1.lcssa = phi i64 [ %storemerge, %if.end191.while.end_crit_edge ], [ %sub195, %while.end.loopexit ]
  %reml.0.le = extractvalue { i64, i64 } %.pn.lcssa93, 0
  %or198 = tail call i64 @llvm.fshl.i64(i64 %remh.0.le.pre-phi, i64 %reml.0.le, i64 32)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %or198)
  %cmp200.not = icmp ugt i64 %shl, %or198
  br i1 %cmp200.not, label %if.else204, label %if.then202

if.then202:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %or203 = or i64 %z.1.lcssa, 4294967295
  br label %cleanup

if.else204:                                       ; preds = %while.end
  %conv206 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198)
  %cmp407 = icmp ult i64 %or198, 4294967296
  br i1 %cmp407, label %if.then415, label %if.else421, !prof !104

if.then415:                                       ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  %conv416 = trunc i64 %or198 to i32
  %div419 = udiv i32 %conv416, %conv206
  %conv420 = zext i32 %div419 to i64
  br label %if.end425

if.else421:                                       ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv206, i64 %or198) #10, !srcloc !105
  %asmresult1.i39 = extractvalue { i64, i64 } %3, 1
  br label %if.end425

if.end425:                                        ; preds = %if.else421, %if.then415
  %remh.1 = phi i64 [ %conv420, %if.then415 ], [ %asmresult1.i39, %if.else421 ]
  %or427 = or i64 %remh.1, %z.1.lcssa
  br label %cleanup

cleanup:                                          ; preds = %if.end425, %if.then202, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ -1, %entry.cleanup_crit_edge ], [ %or427, %if.end425 ], [ %or203, %if.then202 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @mul64to128(ptr nocapture noundef writeonly %resh, ptr nocapture noundef writeonly %resl, i64 noundef %n, i64 noundef %m) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv2 = and i64 %n, 4294967295
  %conv3 = and i64 %m, 4294967295
  %mul = mul nuw i64 %conv3, %conv2
  %shr = lshr i64 %n, 32
  %mul7 = mul nuw i64 %conv3, %shr
  %shr8 = lshr i64 %m, 32
  %mul12 = mul nuw i64 %shr8, %conv2
  %add = add i64 %mul7, %mul12
  %mul15 = mul nuw i64 %shr8, %shr
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %mul12)
  %cmp = icmp ult i64 %add, %mul12
  %shl = select i1 %cmp, i64 4294967296, i64 0
  %shr18 = lshr i64 %add, 32
  %shl21 = shl i64 %add, 32
  %add22 = add i64 %shl21, %mul
  call void @__sanitizer_cov_trace_cmp8(i64 %add22, i64 %shl21)
  %cmp23 = icmp ult i64 %add22, %shl21
  %0 = zext i1 %cmp23 to i64
  %add19 = add nuw i64 %shr18, %mul15
  %add20 = add i64 %add19, %shl
  %add26 = add i64 %add20, %0
  %1 = ptrtoint ptr %resl to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %add22, ptr %resl, align 8
  %2 = ptrtoint ptr %resh to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %add26, ptr %resh, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfp_compare(i32 noundef %dd, i32 noundef %signal_on_qnan, i32 noundef %dm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %0 = and i64 %call, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %0)
  %cmp = icmp ne i64 %0, 9218868437227405312
  %and1 = and i64 %call, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool.not = icmp eq i64 %and1, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %signal_on_qnan)
  %tobool2.not = icmp ne i32 %signal_on_qnan, 0
  %and4 = and i64 %call, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  %or.cond1 = select i1 %tobool2.not, i1 true, i1 %tobool5.not
  %spec.select3 = select i1 %or.cond1, i32 805306369, i32 805306368
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end8_crit_edge ], [ %spec.select3, %if.then ]
  %call9 = tail call i64 @vfp_get_double(i32 noundef %dd) #7
  %1 = and i64 %call9, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp12 = icmp ne i64 %1, 9218868437227405312
  %and14 = and i64 %call9, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  %or.cond2 = or i1 %cmp12, %tobool15.not
  br i1 %or.cond2, label %if.end26, label %if.then16

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %signal_on_qnan)
  %tobool18.not = icmp eq i32 %signal_on_qnan, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.then16.if.then23_crit_edge

if.then16.if.then23_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

lor.lhs.false19:                                  ; preds = %if.then16
  %or17 = or i32 %ret.0, 805306368
  %and21 = and i64 %call9, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %lor.lhs.false19.if.then23_crit_edge, label %lor.lhs.false19.if.end69_crit_edge

lor.lhs.false19.if.end69_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

lor.lhs.false19.if.then23_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false19.if.then23_crit_edge, %if.then16.if.then23_crit_edge
  br label %if.end69

if.end26:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp27 = icmp eq i32 %ret.0, 0
  br i1 %cmp27, label %if.then28, label %if.end26.if.end69_crit_edge

if.end26.if.end69_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %call)
  %cmp29 = icmp eq i64 %call9, %call
  br i1 %cmp29, label %if.then28.if.end69_crit_edge, label %lor.lhs.false30

if.then28.if.end69_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

lor.lhs.false30:                                  ; preds = %if.then28
  %or31 = or i64 %call9, %call
  %and32 = and i64 %or31, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32)
  %cmp33 = icmp eq i64 %and32, 0
  br i1 %cmp33, label %lor.lhs.false30.if.end69_crit_edge, label %if.else

lor.lhs.false30.if.end69_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.else:                                          ; preds = %lor.lhs.false30
  %xor = xor i64 %call9, %call
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %xor)
  %tobool37.not = icmp sgt i64 %xor, -1
  br i1 %tobool37.not, label %if.else46, label %if.then38

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call9)
  %tobool40.not = icmp sgt i64 %call9, -1
  %. = select i1 %tobool40.not, i32 536870912, i32 -2147483648
  br label %if.end69

if.else46:                                        ; preds = %if.else
  %call9.lobit = lshr i64 %call9, 63
  %2 = trunc i64 %call9.lobit to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %call)
  %cmp49 = icmp slt i64 %call9, %call
  %conv50 = zext i1 %cmp49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv50)
  %tobool52.not = icmp eq i32 %2, %conv50
  br i1 %tobool52.not, label %if.else55, label %if.else46.if.end69_crit_edge

if.else46.if.end69_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.else55:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %call)
  %cmp59 = icmp sgt i64 %call9, %call
  %conv60 = zext i1 %cmp59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv60)
  %tobool62.not = icmp eq i32 %2, %conv60
  %spec.select = select i1 %tobool62.not, i32 0, i32 536870912
  br label %if.end69

if.end69:                                         ; preds = %if.else55, %if.else46.if.end69_crit_edge, %if.then38, %lor.lhs.false30.if.end69_crit_edge, %if.then28.if.end69_crit_edge, %if.end26.if.end69_crit_edge, %if.then23, %lor.lhs.false19.if.end69_crit_edge
  %ret.2 = phi i32 [ %ret.0, %if.end26.if.end69_crit_edge ], [ 1610612736, %lor.lhs.false30.if.end69_crit_edge ], [ 1610612736, %if.then28.if.end69_crit_edge ], [ %., %if.then38 ], [ -2147483648, %if.else46.if.end69_crit_edge ], [ %spec.select, %if.else55 ], [ %or17, %lor.lhs.false19.if.end69_crit_edge ], [ 805306369, %if.then23 ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfp_single_normaliseround(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_put_float(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_get_float(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fmac(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vfp_double_multiply_accumulate(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr, i32 noundef 0, ptr noundef nonnull @.str.27)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fmsc(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vfp_double_multiply_accumulate(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr, i32 noundef 2, ptr noundef nonnull @.str.34)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fmul(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  %vdd = alloca %struct.vfp_double, align 8
  %vdn = alloca %struct.vfp_double, align 8
  %vdm = alloca %struct.vfp_double, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdd) #7
  %0 = call ptr @memset(ptr %vdd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdn) #7
  %1 = ptrtoint ptr %vdn to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %vdn, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdm) #7
  %2 = ptrtoint ptr %vdm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %vdm, align 8
  %call = tail call i64 @vfp_get_double(i32 noundef %dn) #7
  %and.i = lshr i64 %call, 48
  %3 = trunc i64 %and.i to i16
  %conv.i = and i16 %3, -32768
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 1
  %4 = ptrtoint ptr %sign.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %sign.i, align 2
  %5 = lshr i64 %call, 52
  %6 = trunc i64 %5 to i16
  %conv3.i = and i16 %6, 2047
  %7 = ptrtoint ptr %vdn to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3.i, ptr %vdn, align 8
  %8 = shl i64 %call, 10
  %shr4.i = and i64 %8, 4611686018427386880
  %trunc.i = trunc i64 %5 to i11
  %9 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.55)
  switch i11 %trunc.i, label %if.then.i [
    i11 0, label %entry.vfp_double_unpack.exit_crit_edge
    i11 -1, label %entry.vfp_double_unpack.exit_crit_edge27
  ]

entry.vfp_double_unpack.exit_crit_edge27:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

entry.vfp_double_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %shr4.i, 4611686018427387904
  br label %vfp_double_unpack.exit

vfp_double_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_double_unpack.exit_crit_edge, %entry.vfp_double_unpack.exit_crit_edge27
  %significand.0.i = phi i64 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge27 ]
  %significand10.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 2
  %10 = ptrtoint ptr %significand10.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %significand.0.i, ptr %significand10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %cmp = icmp ne i16 %conv3.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %tobool.not = icmp eq i64 %significand.0.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %vfp_double_unpack.exit.if.end_crit_edge, label %if.then

vfp_double_unpack.exit.if.end_crit_edge:          ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdn)
  br label %if.end

if.end:                                           ; preds = %if.then, %vfp_double_unpack.exit.if.end_crit_edge
  %call2 = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and.i15 = lshr i64 %call2, 48
  %11 = trunc i64 %and.i15 to i16
  %conv.i16 = and i16 %11, -32768
  %sign.i17 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %12 = ptrtoint ptr %sign.i17 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i16, ptr %sign.i17, align 2
  %13 = lshr i64 %call2, 52
  %14 = trunc i64 %13 to i16
  %conv3.i18 = and i16 %14, 2047
  %15 = ptrtoint ptr %vdm to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv3.i18, ptr %vdm, align 8
  %16 = shl i64 %call2, 10
  %shr4.i19 = and i64 %16, 4611686018427386880
  %trunc.i20 = trunc i64 %13 to i11
  %17 = zext i11 %trunc.i20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.56)
  switch i11 %trunc.i20, label %if.then.i22 [
    i11 0, label %if.end.vfp_double_unpack.exit25_crit_edge
    i11 -1, label %if.end.vfp_double_unpack.exit25_crit_edge28
  ]

if.end.vfp_double_unpack.exit25_crit_edge28:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit25

if.end.vfp_double_unpack.exit25_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit25

if.then.i22:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or.i21 = or i64 %shr4.i19, 4611686018427387904
  br label %vfp_double_unpack.exit25

vfp_double_unpack.exit25:                         ; preds = %if.then.i22, %if.end.vfp_double_unpack.exit25_crit_edge, %if.end.vfp_double_unpack.exit25_crit_edge28
  %significand.0.i23 = phi i64 [ %or.i21, %if.then.i22 ], [ %shr4.i19, %if.end.vfp_double_unpack.exit25_crit_edge ], [ %shr4.i19, %if.end.vfp_double_unpack.exit25_crit_edge28 ]
  %significand10.i24 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %18 = ptrtoint ptr %significand10.i24 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %significand.0.i23, ptr %significand10.i24, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i18)
  %cmp5 = icmp ne i16 %conv3.i18, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i23)
  %tobool9.not = icmp eq i64 %significand.0.i23, 0
  %or.cond26 = select i1 %cmp5, i1 true, i1 %tobool9.not
  br i1 %or.cond26, label %vfp_double_unpack.exit25.if.end11_crit_edge, label %if.then10

vfp_double_unpack.exit25.if.end11_crit_edge:      ; preds = %vfp_double_unpack.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %vfp_double_unpack.exit25
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdm)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %vfp_double_unpack.exit25.if.end11_crit_edge
  %call12 = call fastcc i32 @vfp_double_multiply(ptr noundef nonnull %vdd, ptr noundef nonnull %vdn, ptr noundef nonnull %vdm, i32 noundef %fpscr), !range !110
  %call13 = call i32 @vfp_double_normaliseround(i32 noundef %dd, ptr noundef nonnull %vdd, i32 noundef %fpscr, i32 noundef %call12, ptr noundef nonnull @.str.35)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdm) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdn) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdd) #7
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fadd(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  %vdd = alloca %struct.vfp_double, align 8
  %vdn = alloca %struct.vfp_double, align 8
  %vdm = alloca %struct.vfp_double, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdd) #7
  %0 = call ptr @memset(ptr %vdd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdn) #7
  %1 = ptrtoint ptr %vdn to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %vdn, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdm) #7
  %2 = ptrtoint ptr %vdm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %vdm, align 8
  %call = tail call i64 @vfp_get_double(i32 noundef %dn) #7
  %and.i = lshr i64 %call, 48
  %3 = trunc i64 %and.i to i16
  %conv.i = and i16 %3, -32768
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 1
  %4 = ptrtoint ptr %sign.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %sign.i, align 2
  %5 = lshr i64 %call, 52
  %6 = trunc i64 %5 to i16
  %conv3.i = and i16 %6, 2047
  %7 = ptrtoint ptr %vdn to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3.i, ptr %vdn, align 8
  %8 = shl i64 %call, 10
  %shr4.i = and i64 %8, 4611686018427386880
  %trunc.i = trunc i64 %5 to i11
  %9 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.57)
  switch i11 %trunc.i, label %if.then.i [
    i11 0, label %entry.vfp_double_unpack.exit_crit_edge
    i11 -1, label %entry.vfp_double_unpack.exit_crit_edge27
  ]

entry.vfp_double_unpack.exit_crit_edge27:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

entry.vfp_double_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %shr4.i, 4611686018427387904
  br label %vfp_double_unpack.exit

vfp_double_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_double_unpack.exit_crit_edge, %entry.vfp_double_unpack.exit_crit_edge27
  %significand.0.i = phi i64 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge27 ]
  %significand10.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 2
  %10 = ptrtoint ptr %significand10.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %significand.0.i, ptr %significand10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %cmp = icmp ne i16 %conv3.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %tobool.not = icmp eq i64 %significand.0.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %vfp_double_unpack.exit.if.end_crit_edge, label %if.then

vfp_double_unpack.exit.if.end_crit_edge:          ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdn)
  br label %if.end

if.end:                                           ; preds = %if.then, %vfp_double_unpack.exit.if.end_crit_edge
  %call2 = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and.i15 = lshr i64 %call2, 48
  %11 = trunc i64 %and.i15 to i16
  %conv.i16 = and i16 %11, -32768
  %sign.i17 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %12 = ptrtoint ptr %sign.i17 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i16, ptr %sign.i17, align 2
  %13 = lshr i64 %call2, 52
  %14 = trunc i64 %13 to i16
  %conv3.i18 = and i16 %14, 2047
  %15 = ptrtoint ptr %vdm to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv3.i18, ptr %vdm, align 8
  %16 = shl i64 %call2, 10
  %shr4.i19 = and i64 %16, 4611686018427386880
  %trunc.i20 = trunc i64 %13 to i11
  %17 = zext i11 %trunc.i20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.58)
  switch i11 %trunc.i20, label %if.then.i22 [
    i11 0, label %if.end.vfp_double_unpack.exit25_crit_edge
    i11 -1, label %if.end.vfp_double_unpack.exit25_crit_edge28
  ]

if.end.vfp_double_unpack.exit25_crit_edge28:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit25

if.end.vfp_double_unpack.exit25_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit25

if.then.i22:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or.i21 = or i64 %shr4.i19, 4611686018427387904
  br label %vfp_double_unpack.exit25

vfp_double_unpack.exit25:                         ; preds = %if.then.i22, %if.end.vfp_double_unpack.exit25_crit_edge, %if.end.vfp_double_unpack.exit25_crit_edge28
  %significand.0.i23 = phi i64 [ %or.i21, %if.then.i22 ], [ %shr4.i19, %if.end.vfp_double_unpack.exit25_crit_edge ], [ %shr4.i19, %if.end.vfp_double_unpack.exit25_crit_edge28 ]
  %significand10.i24 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %18 = ptrtoint ptr %significand10.i24 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %significand.0.i23, ptr %significand10.i24, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i18)
  %cmp5 = icmp ne i16 %conv3.i18, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i23)
  %tobool9.not = icmp eq i64 %significand.0.i23, 0
  %or.cond26 = select i1 %cmp5, i1 true, i1 %tobool9.not
  br i1 %or.cond26, label %vfp_double_unpack.exit25.if.end11_crit_edge, label %if.then10

vfp_double_unpack.exit25.if.end11_crit_edge:      ; preds = %vfp_double_unpack.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %vfp_double_unpack.exit25
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdm)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %vfp_double_unpack.exit25.if.end11_crit_edge
  %call12 = call fastcc i32 @vfp_double_add(ptr noundef nonnull %vdd, ptr noundef nonnull %vdn, ptr noundef nonnull %vdm, i32 noundef %fpscr), !range !110
  %call13 = call i32 @vfp_double_normaliseround(i32 noundef %dd, ptr noundef nonnull %vdd, i32 noundef %fpscr, i32 noundef %call12, ptr noundef nonnull @.str.36)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdm) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdn) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdd) #7
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fnmac(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vfp_double_multiply_accumulate(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr, i32 noundef 1, ptr noundef nonnull @.str.37)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fnmsc(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vfp_double_multiply_accumulate(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr, i32 noundef 3, ptr noundef nonnull @.str.38)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fnmul(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  %vdd = alloca %struct.vfp_double, align 8
  %vdn = alloca %struct.vfp_double, align 8
  %vdm = alloca %struct.vfp_double, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdd) #7
  %0 = call ptr @memset(ptr %vdd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdn) #7
  %1 = ptrtoint ptr %vdn to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %vdn, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdm) #7
  %2 = ptrtoint ptr %vdm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %vdm, align 8
  %call = tail call i64 @vfp_get_double(i32 noundef %dn) #7
  %and.i = lshr i64 %call, 48
  %3 = trunc i64 %and.i to i16
  %conv.i = and i16 %3, -32768
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 1
  %4 = ptrtoint ptr %sign.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %sign.i, align 2
  %5 = lshr i64 %call, 52
  %6 = trunc i64 %5 to i16
  %conv3.i = and i16 %6, 2047
  %7 = ptrtoint ptr %vdn to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3.i, ptr %vdn, align 8
  %8 = shl i64 %call, 10
  %shr4.i = and i64 %8, 4611686018427386880
  %trunc.i = trunc i64 %5 to i11
  %9 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.59)
  switch i11 %trunc.i, label %if.then.i [
    i11 0, label %entry.vfp_double_unpack.exit_crit_edge
    i11 -1, label %entry.vfp_double_unpack.exit_crit_edge30
  ]

entry.vfp_double_unpack.exit_crit_edge30:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

entry.vfp_double_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %shr4.i, 4611686018427387904
  br label %vfp_double_unpack.exit

vfp_double_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_double_unpack.exit_crit_edge, %entry.vfp_double_unpack.exit_crit_edge30
  %significand.0.i = phi i64 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge30 ]
  %significand10.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 2
  %10 = ptrtoint ptr %significand10.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %significand.0.i, ptr %significand10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %cmp = icmp ne i16 %conv3.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %tobool.not = icmp eq i64 %significand.0.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %vfp_double_unpack.exit.if.end_crit_edge, label %if.then

vfp_double_unpack.exit.if.end_crit_edge:          ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdn)
  br label %if.end

if.end:                                           ; preds = %if.then, %vfp_double_unpack.exit.if.end_crit_edge
  %call2 = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and.i18 = lshr i64 %call2, 48
  %11 = trunc i64 %and.i18 to i16
  %conv.i19 = and i16 %11, -32768
  %sign.i20 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %12 = ptrtoint ptr %sign.i20 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i19, ptr %sign.i20, align 2
  %13 = lshr i64 %call2, 52
  %14 = trunc i64 %13 to i16
  %conv3.i21 = and i16 %14, 2047
  %15 = ptrtoint ptr %vdm to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv3.i21, ptr %vdm, align 8
  %16 = shl i64 %call2, 10
  %shr4.i22 = and i64 %16, 4611686018427386880
  %trunc.i23 = trunc i64 %13 to i11
  %17 = zext i11 %trunc.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.60)
  switch i11 %trunc.i23, label %if.then.i25 [
    i11 0, label %if.end.vfp_double_unpack.exit28_crit_edge
    i11 -1, label %if.end.vfp_double_unpack.exit28_crit_edge31
  ]

if.end.vfp_double_unpack.exit28_crit_edge31:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit28

if.end.vfp_double_unpack.exit28_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit28

if.then.i25:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or.i24 = or i64 %shr4.i22, 4611686018427387904
  br label %vfp_double_unpack.exit28

vfp_double_unpack.exit28:                         ; preds = %if.then.i25, %if.end.vfp_double_unpack.exit28_crit_edge, %if.end.vfp_double_unpack.exit28_crit_edge31
  %significand.0.i26 = phi i64 [ %or.i24, %if.then.i25 ], [ %shr4.i22, %if.end.vfp_double_unpack.exit28_crit_edge ], [ %shr4.i22, %if.end.vfp_double_unpack.exit28_crit_edge31 ]
  %significand10.i27 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %18 = ptrtoint ptr %significand10.i27 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %significand.0.i26, ptr %significand10.i27, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i21)
  %cmp5 = icmp ne i16 %conv3.i21, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i26)
  %tobool9.not = icmp eq i64 %significand.0.i26, 0
  %or.cond29 = select i1 %cmp5, i1 true, i1 %tobool9.not
  br i1 %or.cond29, label %vfp_double_unpack.exit28.if.end11_crit_edge, label %if.then10

vfp_double_unpack.exit28.if.end11_crit_edge:      ; preds = %vfp_double_unpack.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %vfp_double_unpack.exit28
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdm)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %vfp_double_unpack.exit28.if.end11_crit_edge
  %call12 = call fastcc i32 @vfp_double_multiply(ptr noundef nonnull %vdd, ptr noundef nonnull %vdn, ptr noundef nonnull %vdm, i32 noundef %fpscr), !range !110
  %sign = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 1
  %19 = ptrtoint ptr %sign to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sign, align 2
  %21 = xor i16 %20, -32768
  store i16 %21, ptr %sign, align 2
  %call16 = call i32 @vfp_double_normaliseround(i32 noundef %dd, ptr noundef nonnull %vdd, i32 noundef %fpscr, i32 noundef %call12, ptr noundef nonnull @.str.39)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdm) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdn) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdd) #7
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fsub(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  %vdd = alloca %struct.vfp_double, align 8
  %vdn = alloca %struct.vfp_double, align 8
  %vdm = alloca %struct.vfp_double, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdd) #7
  %0 = call ptr @memset(ptr %vdd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdn) #7
  %1 = ptrtoint ptr %vdn to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %vdn, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdm) #7
  %2 = ptrtoint ptr %vdm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %vdm, align 8
  %call = tail call i64 @vfp_get_double(i32 noundef %dn) #7
  %and.i = lshr i64 %call, 48
  %3 = trunc i64 %and.i to i16
  %conv.i = and i16 %3, -32768
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 1
  %4 = ptrtoint ptr %sign.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %sign.i, align 2
  %5 = lshr i64 %call, 52
  %6 = trunc i64 %5 to i16
  %conv3.i = and i16 %6, 2047
  %7 = ptrtoint ptr %vdn to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3.i, ptr %vdn, align 8
  %8 = shl i64 %call, 10
  %shr4.i = and i64 %8, 4611686018427386880
  %trunc.i = trunc i64 %5 to i11
  %9 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.61)
  switch i11 %trunc.i, label %if.then.i [
    i11 0, label %entry.vfp_double_unpack.exit_crit_edge
    i11 -1, label %entry.vfp_double_unpack.exit_crit_edge30
  ]

entry.vfp_double_unpack.exit_crit_edge30:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

entry.vfp_double_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %shr4.i, 4611686018427387904
  br label %vfp_double_unpack.exit

vfp_double_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_double_unpack.exit_crit_edge, %entry.vfp_double_unpack.exit_crit_edge30
  %significand.0.i = phi i64 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge30 ]
  %significand10.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 2
  %10 = ptrtoint ptr %significand10.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %significand.0.i, ptr %significand10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %cmp = icmp ne i16 %conv3.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %tobool.not = icmp eq i64 %significand.0.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %vfp_double_unpack.exit.if.end_crit_edge, label %if.then

vfp_double_unpack.exit.if.end_crit_edge:          ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdn)
  br label %if.end

if.end:                                           ; preds = %if.then, %vfp_double_unpack.exit.if.end_crit_edge
  %call2 = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and.i18 = lshr i64 %call2, 48
  %11 = trunc i64 %and.i18 to i16
  %conv.i19 = and i16 %11, -32768
  %sign.i20 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %12 = ptrtoint ptr %sign.i20 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i19, ptr %sign.i20, align 2
  %13 = lshr i64 %call2, 52
  %14 = trunc i64 %13 to i16
  %conv3.i21 = and i16 %14, 2047
  %15 = ptrtoint ptr %vdm to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv3.i21, ptr %vdm, align 8
  %16 = shl i64 %call2, 10
  %shr4.i22 = and i64 %16, 4611686018427386880
  %trunc.i23 = trunc i64 %13 to i11
  %17 = zext i11 %trunc.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.62)
  switch i11 %trunc.i23, label %if.then.i25 [
    i11 0, label %if.end.vfp_double_unpack.exit28_crit_edge
    i11 -1, label %if.end.vfp_double_unpack.exit28_crit_edge31
  ]

if.end.vfp_double_unpack.exit28_crit_edge31:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit28

if.end.vfp_double_unpack.exit28_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit28

if.then.i25:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or.i24 = or i64 %shr4.i22, 4611686018427387904
  br label %vfp_double_unpack.exit28

vfp_double_unpack.exit28:                         ; preds = %if.then.i25, %if.end.vfp_double_unpack.exit28_crit_edge, %if.end.vfp_double_unpack.exit28_crit_edge31
  %significand.0.i26 = phi i64 [ %or.i24, %if.then.i25 ], [ %shr4.i22, %if.end.vfp_double_unpack.exit28_crit_edge ], [ %shr4.i22, %if.end.vfp_double_unpack.exit28_crit_edge31 ]
  %significand10.i27 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %18 = ptrtoint ptr %significand10.i27 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %significand.0.i26, ptr %significand10.i27, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i21)
  %cmp5 = icmp ne i16 %conv3.i21, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i26)
  %tobool9.not = icmp eq i64 %significand.0.i26, 0
  %or.cond29 = select i1 %cmp5, i1 true, i1 %tobool9.not
  br i1 %or.cond29, label %vfp_double_unpack.exit28.if.end11_crit_edge, label %if.then10

vfp_double_unpack.exit28.if.end11_crit_edge:      ; preds = %vfp_double_unpack.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %vfp_double_unpack.exit28
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdm)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %vfp_double_unpack.exit28.if.end11_crit_edge
  %19 = ptrtoint ptr %sign.i20 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sign.i20, align 2
  %21 = xor i16 %20, -32768
  store i16 %21, ptr %sign.i20, align 2
  %call15 = call fastcc i32 @vfp_double_add(ptr noundef nonnull %vdd, ptr noundef nonnull %vdn, ptr noundef nonnull %vdm, i32 noundef %fpscr), !range !110
  %call16 = call i32 @vfp_double_normaliseround(i32 noundef %dd, ptr noundef nonnull %vdd, i32 noundef %fpscr, i32 noundef %call15, ptr noundef nonnull @.str.40)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdm) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdn) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdd) #7
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_double_fdiv(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr) #0 align 64 {
entry:
  %vdd = alloca %struct.vfp_double, align 8
  %vdn = alloca %struct.vfp_double, align 8
  %vdm = alloca %struct.vfp_double, align 8
  %termh = alloca i64, align 8
  %terml = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdd) #7
  %0 = call ptr @memset(ptr %vdd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdn) #7
  %1 = ptrtoint ptr %vdn to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %vdn, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdm) #7
  %2 = ptrtoint ptr %vdm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %vdm, align 8
  %call = tail call i64 @vfp_get_double(i32 noundef %dn) #7
  %and.i = lshr i64 %call, 48
  %3 = trunc i64 %and.i to i16
  %conv.i = and i16 %3, -32768
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 1
  %4 = ptrtoint ptr %sign.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %sign.i, align 2
  %5 = lshr i64 %call, 52
  %6 = trunc i64 %5 to i16
  %conv3.i = and i16 %6, 2047
  %7 = ptrtoint ptr %vdn to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3.i, ptr %vdn, align 8
  %8 = shl i64 %call, 10
  %shr4.i = and i64 %8, 4611686018427386880
  %trunc.i = trunc i64 %5 to i11
  %9 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.63)
  switch i11 %trunc.i, label %if.then.i [
    i11 0, label %entry.vfp_double_unpack.exit_crit_edge
    i11 -1, label %entry.vfp_double_unpack.exit_crit_edge203
  ]

entry.vfp_double_unpack.exit_crit_edge203:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

entry.vfp_double_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %shr4.i, 4611686018427387904
  br label %vfp_double_unpack.exit

vfp_double_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_double_unpack.exit_crit_edge, %entry.vfp_double_unpack.exit_crit_edge203
  %significand.0.i = phi i64 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge203 ]
  %significand10.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 2
  %10 = ptrtoint ptr %significand10.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %significand.0.i, ptr %significand10.i, align 8
  %call1 = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and.i101 = lshr i64 %call1, 48
  %11 = trunc i64 %and.i101 to i16
  %conv.i102 = and i16 %11, -32768
  %sign.i103 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %12 = ptrtoint ptr %sign.i103 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i102, ptr %sign.i103, align 2
  %13 = lshr i64 %call1, 52
  %14 = trunc i64 %13 to i16
  %conv3.i104 = and i16 %14, 2047
  %15 = ptrtoint ptr %vdm to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv3.i104, ptr %vdm, align 8
  %16 = shl i64 %call1, 10
  %shr4.i105 = and i64 %16, 4611686018427386880
  %trunc.i106 = trunc i64 %13 to i11
  %17 = zext i11 %trunc.i106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.64)
  switch i11 %trunc.i106, label %if.then.i108 [
    i11 0, label %vfp_double_unpack.exit.vfp_double_unpack.exit111_crit_edge
    i11 -1, label %vfp_double_unpack.exit.vfp_double_unpack.exit111_crit_edge204
  ]

vfp_double_unpack.exit.vfp_double_unpack.exit111_crit_edge204: ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit111

vfp_double_unpack.exit.vfp_double_unpack.exit111_crit_edge: ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit111

if.then.i108:                                     ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or.i107 = or i64 %shr4.i105, 4611686018427387904
  br label %vfp_double_unpack.exit111

vfp_double_unpack.exit111:                        ; preds = %if.then.i108, %vfp_double_unpack.exit.vfp_double_unpack.exit111_crit_edge, %vfp_double_unpack.exit.vfp_double_unpack.exit111_crit_edge204
  %significand.0.i109 = phi i64 [ %or.i107, %if.then.i108 ], [ %shr4.i105, %vfp_double_unpack.exit.vfp_double_unpack.exit111_crit_edge ], [ %shr4.i105, %vfp_double_unpack.exit.vfp_double_unpack.exit111_crit_edge204 ]
  %significand10.i110 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %18 = ptrtoint ptr %significand10.i110 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %significand.0.i109, ptr %significand10.i110, align 8
  %19 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sign.i, align 2
  %xor100 = xor i16 %20, %conv.i102
  %sign5 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 1
  %21 = ptrtoint ptr %sign5 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %xor100, ptr %sign5, align 2
  %22 = ptrtoint ptr %vdn to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vdn, align 8
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %23, label %vfp_double_unpack.exit111.vfp_double_type.exit_crit_edge [
    i16 2047, label %if.then.i112
    i16 0, label %if.then14.i
  ]

vfp_double_unpack.exit111.vfp_double_type.exit_crit_edge: ; preds = %vfp_double_unpack.exit111
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit

if.then.i112:                                     ; preds = %vfp_double_unpack.exit111
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp2.i = icmp eq i64 %significand.0.i, 0
  br i1 %cmp2.i, label %if.then.i112.vfp_double_type.exit_crit_edge, label %if.else.i

if.then.i112.vfp_double_type.exit_crit_edge:      ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit

if.else.i:                                        ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #9
  %and.i113 = and i64 %significand.0.i, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i113)
  %tobool.not.i = icmp eq i64 %and.i113, 0
  %..i = select i1 %tobool.not.i, i32 48, i32 16
  br label %vfp_double_type.exit

if.then14.i:                                      ; preds = %vfp_double_unpack.exit111
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp16.i = icmp eq i64 %significand.0.i, 0
  %.30.i = select i1 %cmp16.i, i32 3, i32 5
  br label %vfp_double_type.exit

vfp_double_type.exit:                             ; preds = %if.then14.i, %if.else.i, %if.then.i112.vfp_double_type.exit_crit_edge, %vfp_double_unpack.exit111.vfp_double_type.exit_crit_edge
  %type.0.i = phi i32 [ 8, %if.then.i112.vfp_double_type.exit_crit_edge ], [ %..i, %if.else.i ], [ 1, %vfp_double_unpack.exit111.vfp_double_type.exit_crit_edge ], [ %.30.i, %if.then14.i ]
  %25 = zext i11 %trunc.i106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.66)
  switch i11 %trunc.i106, label %vfp_double_type.exit.vfp_double_type.exit126_crit_edge [
    i11 -1, label %if.then.i116
    i11 0, label %if.then14.i124
  ]

vfp_double_type.exit.vfp_double_type.exit126_crit_edge: ; preds = %vfp_double_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit126

if.then.i116:                                     ; preds = %vfp_double_type.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i109)
  %cmp2.i115 = icmp eq i64 %significand.0.i109, 0
  br i1 %cmp2.i115, label %if.then.i116.vfp_double_type.exit126_crit_edge, label %if.else.i120

if.then.i116.vfp_double_type.exit126_crit_edge:   ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit126

if.else.i120:                                     ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #9
  %and.i117 = and i64 %significand.0.i109, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i117)
  %tobool.not.i118 = icmp eq i64 %and.i117, 0
  %..i119 = select i1 %tobool.not.i118, i32 48, i32 16
  br label %vfp_double_type.exit126

if.then14.i124:                                   ; preds = %vfp_double_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i109)
  %cmp16.i122 = icmp eq i64 %significand.0.i109, 0
  %.30.i123 = select i1 %cmp16.i122, i32 3, i32 5
  br label %vfp_double_type.exit126

vfp_double_type.exit126:                          ; preds = %if.then14.i124, %if.else.i120, %if.then.i116.vfp_double_type.exit126_crit_edge, %vfp_double_type.exit.vfp_double_type.exit126_crit_edge
  %type.0.i125 = phi i32 [ 8, %if.then.i116.vfp_double_type.exit126_crit_edge ], [ %..i119, %if.else.i120 ], [ 1, %vfp_double_type.exit.vfp_double_type.exit126_crit_edge ], [ %.30.i123, %if.then14.i124 ]
  %and = and i32 %type.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %vdn_nan

if.end:                                           ; preds = %vfp_double_type.exit126
  %and8 = and i32 %type.0.i125, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %vdm_nan

if.end11:                                         ; preds = %if.end
  %and12 = and i32 %type.0.i, 10
  %and13 = and i32 %and12, %type.0.i125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %invalid

if.end16:                                         ; preds = %if.end11
  %and17 = and i32 %type.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.infinity_crit_edge

if.end16.infinity_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %infinity

if.end20:                                         ; preds = %if.end16
  %and21 = and i32 %type.0.i125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.infinity_crit_edge

if.end20.infinity_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %infinity

if.end24:                                         ; preds = %if.end20
  %and25 = and i32 %type.0.i125, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %and27 = and i32 %type.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or.cond = select i1 %tobool26.not, i1 %tobool28.not, i1 false
  br i1 %or.cond, label %if.end30, label %zero

if.end30:                                         ; preds = %if.end24
  %and31 = and i32 %type.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.then33

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdn)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %and35 = and i32 %type.0.i125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdm)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge
  %26 = ptrtoint ptr %vdn to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdn, align 8
  %28 = ptrtoint ptr %vdm to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vdm, align 8
  %sub = sub i16 %27, %29
  %sub42 = add i16 %sub, 1022
  %30 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %sub42, ptr %vdd, align 8
  %31 = ptrtoint ptr %significand10.i110 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %significand10.i110, align 8
  %shl = shl i64 %32, 1
  store i64 %shl, ptr %significand10.i110, align 8
  %33 = ptrtoint ptr %significand10.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %significand10.i, align 8
  %mul = shl i64 %34, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %mul)
  %cmp.not = icmp ugt i64 %shl, %mul
  br i1 %cmp.not, label %if.end38.if.end51_crit_edge, label %if.then48

if.end38.if.end51_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then48:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i64 %34, 1
  %35 = ptrtoint ptr %significand10.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %shr, ptr %significand10.i, align 8
  %inc = add i16 %sub, 1023
  %36 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %inc, ptr %vdd, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end38.if.end51_crit_edge
  %37 = ptrtoint ptr %significand10.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %significand10.i, align 8
  %call54 = tail call fastcc i64 @vfp_estimate_div128to64(i64 noundef %38, i64 noundef %shl)
  %significand55 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 2
  %39 = ptrtoint ptr %significand55 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call54, ptr %significand55, align 8
  %and57 = and i64 %call54, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %and57)
  %cmp58 = icmp ult i64 %and57, 3
  br i1 %cmp58, label %if.then60, label %if.end51.if.end73_crit_edge

if.end51.if.end73_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then60:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %termh) #7
  %40 = ptrtoint ptr %termh to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -1, ptr %termh, align 8, !annotation !108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %terml) #7
  %41 = ptrtoint ptr %terml to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %terml, align 8, !annotation !108
  call fastcc void @mul64to128(ptr noundef nonnull %termh, ptr noundef nonnull %terml, i64 noundef %shl, i64 noundef %call54)
  %42 = ptrtoint ptr %termh to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %termh, align 8
  %44 = ptrtoint ptr %terml to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %terml, align 8
  %46 = tail call { i64, i64 } asm "subs\09${0:Q}, ${2:Q}, ${4:Q}\0A\09sbcs\09${0:R}, ${2:R}, ${4:R}\0A\09sbcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09sbc\09${1:R}, ${3:R}, ${5:R}\0A\09", "=r,=r,0,1,r,r,~{cc}"(i64 0, i64 %38, i64 %45, i64 %43) #10, !srcloc !106
  %47 = ptrtoint ptr %significand55 to i32
  call void @__asan_load8_noabort(i32 %47)
  %significand55.promoted = load i64, ptr %significand55, align 8
  %remh.0193 = extractvalue { i64, i64 } %46, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %remh.0193)
  %cmp64194 = icmp slt i64 %remh.0193, 0
  br i1 %cmp64194, label %if.then60.while.body_crit_edge, label %if.then60.while.end_crit_edge

if.then60.while.end_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then60.while.body_crit_edge:                   ; preds = %if.then60
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then60.while.body_crit_edge
  %remh.0196 = phi i64 [ %remh.0, %while.body.while.body_crit_edge ], [ %remh.0193, %if.then60.while.body_crit_edge ]
  %.pn = phi { i64, i64 } [ %49, %while.body.while.body_crit_edge ], [ %46, %if.then60.while.body_crit_edge ]
  %48 = phi i64 [ %sub67, %while.body.while.body_crit_edge ], [ %significand55.promoted, %if.then60.while.body_crit_edge ]
  %reml.0195 = extractvalue { i64, i64 } %.pn, 0
  %sub67 = add i64 %48, -1
  %49 = tail call { i64, i64 } asm "adds\09${0:Q}, ${2:Q}, ${4:Q}\0A\09adcs\09${0:R}, ${2:R}, ${4:R}\0A\09adcs\09${1:Q}, ${3:Q}, ${5:Q}\0A\09adc\09${1:R}, ${3:R}, ${5:R}", "=r,=r,0,1,r,r,~{cc}"(i64 %reml.0195, i64 %remh.0196, i64 %shl, i64 0) #10, !srcloc !107
  %remh.0 = extractvalue { i64, i64 } %49, 1
  %cmp64 = icmp slt i64 %remh.0, 0
  br i1 %cmp64, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then60.while.end_crit_edge
  %.lcssa = phi i64 [ %significand55.promoted, %if.then60.while.end_crit_edge ], [ %sub67, %while.body.while.end_crit_edge ]
  %.pn.lcssa = phi { i64, i64 } [ %46, %if.then60.while.end_crit_edge ], [ %49, %while.body.while.end_crit_edge ]
  %reml.0.le = extractvalue { i64, i64 } %.pn.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %reml.0.le)
  %cmp69 = icmp ne i64 %reml.0.le, 0
  %50 = zext i1 %cmp69 to i64
  %or = or i64 %.lcssa, %50
  %51 = ptrtoint ptr %significand55 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %or, ptr %significand55, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %terml) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %termh) #7
  br label %if.end73

if.end73:                                         ; preds = %while.end, %if.end51.if.end73_crit_edge
  %call74 = call i32 @vfp_double_normaliseround(i32 noundef %dd, ptr noundef nonnull %vdd, i32 noundef %fpscr, i32 noundef 0, ptr noundef nonnull @.str.41)
  br label %cleanup

vdn_nan:                                          ; preds = %vfp_double_type.exit126
  %52 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %23, label %vdn_nan.vfp_double_type.exit.i_crit_edge [
    i16 2047, label %if.then.i.i
    i16 0, label %if.then14.i.i
  ]

vdn_nan.vfp_double_type.exit.i_crit_edge:         ; preds = %vdn_nan
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit.i

if.then.i.i:                                      ; preds = %vdn_nan
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp2.i.i = icmp eq i64 %significand.0.i, 0
  br i1 %cmp2.i.i, label %if.then.i.i.vfp_double_type.exit.i_crit_edge, label %if.else.i.i

if.then.i.i.vfp_double_type.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i64 %significand.0.i, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 48, i32 16
  br label %vfp_double_type.exit.i

if.then14.i.i:                                    ; preds = %vdn_nan
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp16.i.i = icmp eq i64 %significand.0.i, 0
  %.30.i.i = select i1 %cmp16.i.i, i32 3, i32 5
  br label %vfp_double_type.exit.i

vfp_double_type.exit.i:                           ; preds = %if.then14.i.i, %if.else.i.i, %if.then.i.i.vfp_double_type.exit.i_crit_edge, %vdn_nan.vfp_double_type.exit.i_crit_edge
  %type.0.i.i = phi i32 [ 8, %if.then.i.i.vfp_double_type.exit.i_crit_edge ], [ %..i.i, %if.else.i.i ], [ 1, %vdn_nan.vfp_double_type.exit.i_crit_edge ], [ %.30.i.i, %if.then14.i.i ]
  %53 = zext i11 %trunc.i106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.68)
  switch i11 %trunc.i106, label %vfp_double_type.exit.i.if.end.i_crit_edge [
    i11 -1, label %if.then.i21.i
    i11 0, label %if.then14.i29.i
  ]

vfp_double_type.exit.i.if.end.i_crit_edge:        ; preds = %vfp_double_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i21.i:                                    ; preds = %vfp_double_type.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i109)
  %cmp2.i20.i = icmp eq i64 %significand.0.i109, 0
  br i1 %cmp2.i20.i, label %if.then.i21.i.if.end.i_crit_edge, label %if.else.i25.i

if.then.i21.i.if.end.i_crit_edge:                 ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.i25.i:                                    ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i22.i = and i64 %significand.0.i109, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.not.i23.i = icmp eq i64 %and.i22.i, 0
  %..i24.i = select i1 %tobool.not.i23.i, i32 48, i32 16
  br label %if.end.i

if.then14.i29.i:                                  ; preds = %vfp_double_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i109)
  %cmp16.i27.i = icmp eq i64 %significand.0.i109, 0
  %.30.i28.i = select i1 %cmp16.i27.i, i32 3, i32 5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i29.i, %if.else.i25.i, %if.then.i21.i.if.end.i_crit_edge, %vfp_double_type.exit.i.if.end.i_crit_edge
  %tm.0.i = phi i32 [ 8, %if.then.i21.i.if.end.i_crit_edge ], [ %..i24.i, %if.else.i25.i ], [ 1, %vfp_double_type.exit.i.if.end.i_crit_edge ], [ %.30.i28.i, %if.then14.i29.i ]
  %and.i130 = and i32 %fpscr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool2.not.i = icmp eq i32 %and.i130, 0
  br i1 %tobool2.not.i, label %if.else.i133, label %if.end.i.vfp_propagate_nan.exit_crit_edge

if.end.i.vfp_propagate_nan.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_propagate_nan.exit

if.else.i133:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i)
  %cmp.i = icmp eq i32 %type.0.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i)
  %cmp4.not.i = icmp ne i32 %tm.0.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type.0.i.i)
  %cmp5.i = icmp eq i32 %type.0.i.i, 16
  %or.cond.i = select i1 %cmp4.not.i, i1 %cmp5.i, i1 false
  %54 = select i1 %cmp.i, i1 true, i1 %or.cond.i
  %nan.0.i = select i1 %54, ptr %vdn, ptr %vdm
  %nan.0.i.sroa.sel = select i1 %54, ptr %significand10.i, ptr %significand10.i110
  %55 = ptrtoint ptr %nan.0.i.sroa.sel to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %nan.0.i.sroa.sel, align 8
  %or.i132 = or i64 %56, 2305843009213693952
  store i64 %or.i132, ptr %nan.0.i.sroa.sel, align 8
  br label %vfp_propagate_nan.exit

vfp_propagate_nan.exit:                           ; preds = %if.else.i133, %if.end.i.vfp_propagate_nan.exit_crit_edge
  %nan.1.i = phi ptr [ %nan.0.i, %if.else.i133 ], [ @vfp_double_default_qnan, %if.end.i.vfp_propagate_nan.exit_crit_edge ]
  %57 = call ptr @memcpy(ptr %vdd, ptr %nan.1.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i)
  %cmp10.i = icmp eq i32 %type.0.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i)
  %cmp11.i = icmp eq i32 %tm.0.i, 48
  %58 = select i1 %cmp10.i, i1 true, i1 %cmp11.i
  %59 = select i1 %58, i32 1, i32 256
  br label %pack

pack:                                             ; preds = %infinity, %zero, %vfp_propagate_nan.exit177, %vfp_propagate_nan.exit
  %exceptions.0 = phi i32 [ %59, %vfp_propagate_nan.exit ], [ %73, %vfp_propagate_nan.exit177 ], [ %exceptions.1, %infinity ], [ 0, %zero ]
  %60 = ptrtoint ptr %sign5 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sign5, align 2
  %conv.i135 = zext i16 %61 to i64
  %shl.i = shl nuw i64 %conv.i135, 48
  %62 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vdd, align 8
  %conv16.i = zext i16 %63 to i64
  %shl2.i = shl i64 %conv16.i, 52
  %add.i = add i64 %shl2.i, %shl.i
  %significand.i136 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 2
  %64 = ptrtoint ptr %significand.i136 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %significand.i136, align 8
  %shr.i = lshr i64 %65, 10
  %add3.i = add i64 %add.i, %shr.i
  tail call void @vfp_put_double(i64 noundef %add3.i, i32 noundef %dd) #7
  br label %cleanup

vdm_nan:                                          ; preds = %if.end
  %66 = zext i11 %trunc.i106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.69)
  switch i11 %trunc.i106, label %vdm_nan.vfp_double_type.exit.i149_crit_edge [
    i11 -1, label %if.then.i.i139
    i11 0, label %if.then14.i.i147
  ]

vdm_nan.vfp_double_type.exit.i149_crit_edge:      ; preds = %vdm_nan
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit.i149

if.then.i.i139:                                   ; preds = %vdm_nan
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i109)
  %cmp2.i.i138 = icmp eq i64 %significand.0.i109, 0
  br i1 %cmp2.i.i138, label %if.then.i.i139.vfp_double_type.exit.i149_crit_edge, label %if.else.i.i143

if.then.i.i139.vfp_double_type.exit.i149_crit_edge: ; preds = %if.then.i.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit.i149

if.else.i.i143:                                   ; preds = %if.then.i.i139
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i140 = and i64 %significand.0.i109, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i140)
  %tobool.not.i.i141 = icmp eq i64 %and.i.i140, 0
  %..i.i142 = select i1 %tobool.not.i.i141, i32 48, i32 16
  br label %vfp_double_type.exit.i149

if.then14.i.i147:                                 ; preds = %vdm_nan
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i109)
  %cmp16.i.i145 = icmp eq i64 %significand.0.i109, 0
  %.30.i.i146 = select i1 %cmp16.i.i145, i32 3, i32 5
  br label %vfp_double_type.exit.i149

vfp_double_type.exit.i149:                        ; preds = %if.then14.i.i147, %if.else.i.i143, %if.then.i.i139.vfp_double_type.exit.i149_crit_edge, %vdm_nan.vfp_double_type.exit.i149_crit_edge
  %type.0.i.i148 = phi i32 [ 8, %if.then.i.i139.vfp_double_type.exit.i149_crit_edge ], [ %..i.i142, %if.else.i.i143 ], [ 1, %vdm_nan.vfp_double_type.exit.i149_crit_edge ], [ %.30.i.i146, %if.then14.i.i147 ]
  %67 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %23, label %vfp_double_type.exit.i149.if.end.i165_crit_edge [
    i16 2047, label %if.then.i21.i153
    i16 0, label %if.then14.i29.i161
  ]

vfp_double_type.exit.i149.if.end.i165_crit_edge:  ; preds = %vfp_double_type.exit.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i165

if.then.i21.i153:                                 ; preds = %vfp_double_type.exit.i149
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp2.i20.i152 = icmp eq i64 %significand.0.i, 0
  br i1 %cmp2.i20.i152, label %if.then.i21.i153.if.end.i165_crit_edge, label %if.else.i25.i157

if.then.i21.i153.if.end.i165_crit_edge:           ; preds = %if.then.i21.i153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i165

if.else.i25.i157:                                 ; preds = %if.then.i21.i153
  call void @__sanitizer_cov_trace_pc() #9
  %and.i22.i154 = and i64 %significand.0.i, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i154)
  %tobool.not.i23.i155 = icmp eq i64 %and.i22.i154, 0
  %..i24.i156 = select i1 %tobool.not.i23.i155, i32 48, i32 16
  br label %if.end.i165

if.then14.i29.i161:                               ; preds = %vfp_double_type.exit.i149
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %cmp16.i27.i159 = icmp eq i64 %significand.0.i, 0
  %.30.i28.i160 = select i1 %cmp16.i27.i159, i32 3, i32 5
  br label %if.end.i165

if.end.i165:                                      ; preds = %if.then14.i29.i161, %if.else.i25.i157, %if.then.i21.i153.if.end.i165_crit_edge, %vfp_double_type.exit.i149.if.end.i165_crit_edge
  %tm.0.i162 = phi i32 [ 8, %if.then.i21.i153.if.end.i165_crit_edge ], [ %..i24.i156, %if.else.i25.i157 ], [ 1, %vfp_double_type.exit.i149.if.end.i165_crit_edge ], [ %.30.i28.i160, %if.then14.i29.i161 ]
  %and.i163 = and i32 %fpscr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool2.not.i164 = icmp eq i32 %and.i163, 0
  br i1 %tobool2.not.i164, label %if.else.i173, label %if.end.i165.vfp_propagate_nan.exit177_crit_edge

if.end.i165.vfp_propagate_nan.exit177_crit_edge:  ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_propagate_nan.exit177

if.else.i173:                                     ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i148)
  %cmp.i166 = icmp eq i32 %type.0.i.i148, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i162)
  %cmp4.not.i167 = icmp ne i32 %tm.0.i162, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type.0.i.i148)
  %cmp5.i168 = icmp eq i32 %type.0.i.i148, 16
  %or.cond.i169 = select i1 %cmp4.not.i167, i1 %cmp5.i168, i1 false
  %68 = select i1 %cmp.i166, i1 true, i1 %or.cond.i169
  %nan.0.i170 = select i1 %68, ptr %vdm, ptr %vdn
  %nan.0.i170.sroa.sel = select i1 %68, ptr %significand10.i110, ptr %significand10.i
  %69 = ptrtoint ptr %nan.0.i170.sroa.sel to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %nan.0.i170.sroa.sel, align 8
  %or.i172 = or i64 %70, 2305843009213693952
  store i64 %or.i172, ptr %nan.0.i170.sroa.sel, align 8
  br label %vfp_propagate_nan.exit177

vfp_propagate_nan.exit177:                        ; preds = %if.else.i173, %if.end.i165.vfp_propagate_nan.exit177_crit_edge
  %nan.1.i174 = phi ptr [ %nan.0.i170, %if.else.i173 ], [ @vfp_double_default_qnan, %if.end.i165.vfp_propagate_nan.exit177_crit_edge ]
  %71 = call ptr @memcpy(ptr %vdd, ptr %nan.1.i174, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i148)
  %cmp10.i175 = icmp eq i32 %type.0.i.i148, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i162)
  %cmp11.i176 = icmp eq i32 %tm.0.i162, 48
  %72 = select i1 %cmp10.i175, i1 true, i1 %cmp11.i176
  %73 = select i1 %72, i32 1, i32 256
  br label %pack

zero:                                             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %vdd, align 8
  %significand79 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 2
  %75 = ptrtoint ptr %significand79 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %significand79, align 8
  br label %pack

infinity:                                         ; preds = %if.end20.infinity_crit_edge, %if.end16.infinity_crit_edge
  %exceptions.1 = phi i32 [ 0, %if.end16.infinity_crit_edge ], [ 2, %if.end20.infinity_crit_edge ]
  %76 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 2047, ptr %vdd, align 8
  %significand81 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 2
  %77 = ptrtoint ptr %significand81 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 0, ptr %significand81, align 8
  br label %pack

invalid:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vfp_put_double(i64 noundef 9221120237041090560, i32 noundef %dd) #7
  br label %cleanup

cleanup:                                          ; preds = %invalid, %pack, %if.end73
  %retval.0 = phi i32 [ %exceptions.0, %pack ], [ 1, %invalid ], [ %call74, %if.end73 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdm) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdn) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfp_double_multiply_accumulate(i32 noundef %dd, i32 noundef %dn, i32 noundef %dm, i32 noundef %fpscr, i32 noundef %negate, ptr noundef %func) unnamed_addr #0 align 64 {
entry:
  %vdd = alloca %struct.vfp_double, align 8
  %vdp = alloca %struct.vfp_double, align 8
  %vdn = alloca %struct.vfp_double, align 8
  %vdm = alloca %struct.vfp_double, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdd) #7
  %0 = call ptr @memset(ptr %vdd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdp) #7
  %1 = call ptr @memset(ptr %vdp, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdn) #7
  %2 = ptrtoint ptr %vdn to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %vdn, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdm) #7
  %3 = ptrtoint ptr %vdm to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %vdm, align 8
  %call = tail call i64 @vfp_get_double(i32 noundef %dn) #7
  %and.i = lshr i64 %call, 48
  %4 = trunc i64 %and.i to i16
  %conv.i = and i16 %4, -32768
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 1
  %5 = ptrtoint ptr %sign.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %sign.i, align 2
  %6 = lshr i64 %call, 52
  %7 = trunc i64 %6 to i16
  %conv3.i = and i16 %7, 2047
  %8 = ptrtoint ptr %vdn to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv3.i, ptr %vdn, align 8
  %9 = shl i64 %call, 10
  %shr4.i = and i64 %9, 4611686018427386880
  %trunc.i = trunc i64 %6 to i11
  %10 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.71)
  switch i11 %trunc.i, label %if.then.i [
    i11 0, label %entry.vfp_double_unpack.exit_crit_edge
    i11 -1, label %entry.vfp_double_unpack.exit_crit_edge69
  ]

entry.vfp_double_unpack.exit_crit_edge69:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

entry.vfp_double_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %shr4.i, 4611686018427387904
  br label %vfp_double_unpack.exit

vfp_double_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_double_unpack.exit_crit_edge, %entry.vfp_double_unpack.exit_crit_edge69
  %significand.0.i = phi i64 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_double_unpack.exit_crit_edge69 ]
  %significand10.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 2
  %11 = ptrtoint ptr %significand10.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %significand.0.i, ptr %significand10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %cmp = icmp ne i16 %conv3.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i)
  %tobool.not = icmp eq i64 %significand.0.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %vfp_double_unpack.exit.if.end_crit_edge, label %if.then

vfp_double_unpack.exit.if.end_crit_edge:          ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %vfp_double_unpack.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdn)
  br label %if.end

if.end:                                           ; preds = %if.then, %vfp_double_unpack.exit.if.end_crit_edge
  %call2 = tail call i64 @vfp_get_double(i32 noundef %dm) #7
  %and.i45 = lshr i64 %call2, 48
  %12 = trunc i64 %and.i45 to i16
  %conv.i46 = and i16 %12, -32768
  %sign.i47 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %13 = ptrtoint ptr %sign.i47 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i46, ptr %sign.i47, align 2
  %14 = lshr i64 %call2, 52
  %15 = trunc i64 %14 to i16
  %conv3.i48 = and i16 %15, 2047
  %16 = ptrtoint ptr %vdm to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv3.i48, ptr %vdm, align 8
  %17 = shl i64 %call2, 10
  %shr4.i49 = and i64 %17, 4611686018427386880
  %trunc.i50 = trunc i64 %14 to i11
  %18 = zext i11 %trunc.i50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.72)
  switch i11 %trunc.i50, label %if.then.i52 [
    i11 0, label %if.end.vfp_double_unpack.exit55_crit_edge
    i11 -1, label %if.end.vfp_double_unpack.exit55_crit_edge70
  ]

if.end.vfp_double_unpack.exit55_crit_edge70:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit55

if.end.vfp_double_unpack.exit55_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit55

if.then.i52:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or.i51 = or i64 %shr4.i49, 4611686018427387904
  br label %vfp_double_unpack.exit55

vfp_double_unpack.exit55:                         ; preds = %if.then.i52, %if.end.vfp_double_unpack.exit55_crit_edge, %if.end.vfp_double_unpack.exit55_crit_edge70
  %significand.0.i53 = phi i64 [ %or.i51, %if.then.i52 ], [ %shr4.i49, %if.end.vfp_double_unpack.exit55_crit_edge ], [ %shr4.i49, %if.end.vfp_double_unpack.exit55_crit_edge70 ]
  %significand10.i54 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %19 = ptrtoint ptr %significand10.i54 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %significand.0.i53, ptr %significand10.i54, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i48)
  %cmp5 = icmp ne i16 %conv3.i48, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i53)
  %tobool9.not = icmp eq i64 %significand.0.i53, 0
  %or.cond67 = select i1 %cmp5, i1 true, i1 %tobool9.not
  br i1 %or.cond67, label %vfp_double_unpack.exit55.if.end11_crit_edge, label %if.then10

vfp_double_unpack.exit55.if.end11_crit_edge:      ; preds = %vfp_double_unpack.exit55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %vfp_double_unpack.exit55
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdm)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %vfp_double_unpack.exit55.if.end11_crit_edge
  %call12 = call fastcc i32 @vfp_double_multiply(ptr noundef nonnull %vdp, ptr noundef nonnull %vdn, ptr noundef nonnull %vdm, i32 noundef %fpscr)
  %and = and i32 %negate, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %if.then14

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %sign = getelementptr inbounds %struct.vfp_double, ptr %vdp, i32 0, i32 1
  %20 = ptrtoint ptr %sign to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sign, align 2
  %22 = xor i16 %21, -32768
  store i16 %22, ptr %sign, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11.if.end18_crit_edge
  %call19 = call i64 @vfp_get_double(i32 noundef %dd) #7
  %and.i56 = lshr i64 %call19, 48
  %23 = trunc i64 %and.i56 to i16
  %conv.i57 = and i16 %23, -32768
  %24 = ptrtoint ptr %sign.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i57, ptr %sign.i, align 2
  %25 = lshr i64 %call19, 52
  %26 = trunc i64 %25 to i16
  %conv3.i59 = and i16 %26, 2047
  %27 = ptrtoint ptr %vdn to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv3.i59, ptr %vdn, align 8
  %28 = shl i64 %call19, 10
  %shr4.i60 = and i64 %28, 4611686018427386880
  %trunc.i61 = trunc i64 %25 to i11
  %29 = zext i11 %trunc.i61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.73)
  switch i11 %trunc.i61, label %if.then.i63 [
    i11 0, label %if.end18.vfp_double_unpack.exit66_crit_edge
    i11 -1, label %if.end18.vfp_double_unpack.exit66_crit_edge71
  ]

if.end18.vfp_double_unpack.exit66_crit_edge71:    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit66

if.end18.vfp_double_unpack.exit66_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_unpack.exit66

if.then.i63:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %or.i62 = or i64 %shr4.i60, 4611686018427387904
  br label %vfp_double_unpack.exit66

vfp_double_unpack.exit66:                         ; preds = %if.then.i63, %if.end18.vfp_double_unpack.exit66_crit_edge, %if.end18.vfp_double_unpack.exit66_crit_edge71
  %significand.0.i64 = phi i64 [ %or.i62, %if.then.i63 ], [ %shr4.i60, %if.end18.vfp_double_unpack.exit66_crit_edge ], [ %shr4.i60, %if.end18.vfp_double_unpack.exit66_crit_edge71 ]
  %30 = ptrtoint ptr %significand10.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %significand.0.i64, ptr %significand10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i59)
  %cmp22 = icmp ne i16 %conv3.i59, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %significand.0.i64)
  %tobool26.not = icmp eq i64 %significand.0.i64, 0
  %or.cond68 = select i1 %cmp22, i1 true, i1 %tobool26.not
  br i1 %or.cond68, label %vfp_double_unpack.exit66.if.end28_crit_edge, label %if.then27

vfp_double_unpack.exit66.if.end28_crit_edge:      ; preds = %vfp_double_unpack.exit66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %vfp_double_unpack.exit66
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @vfp_double_normalise_denormal(ptr noundef nonnull %vdn)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %vfp_double_unpack.exit66.if.end28_crit_edge
  %and29 = and i32 %negate, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end37_crit_edge, label %if.then31

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sign.i, align 2
  %33 = xor i16 %32, -32768
  store i16 %33, ptr %sign.i, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end28.if.end37_crit_edge
  %call38 = call fastcc i32 @vfp_double_add(ptr noundef nonnull %vdd, ptr noundef nonnull %vdn, ptr noundef nonnull %vdp, i32 noundef %fpscr)
  %or = or i32 %call38, %call12
  %call39 = call i32 @vfp_double_normaliseround(i32 noundef %dd, ptr noundef nonnull %vdd, i32 noundef %fpscr, i32 noundef %or, ptr noundef %func)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdm) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdn) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdp) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdd) #7
  ret i32 %call39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfp_double_multiply(ptr nocapture noundef %vdd, ptr noundef %vdn, ptr noundef %vdm, i32 noundef %fpscr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_multiply, %if.then.i)) #7
          to label %vfp_double_dump.exit [label %if.then.i], !srcloc !102

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 1
  %0 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sign.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp ne i16 %1, 0
  %conv3.i = zext i1 %cmp.i to i32
  %2 = ptrtoint ptr %vdn to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vdn, align 8
  %conv4.i = sext i16 %3 to i32
  %significand.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 2
  %4 = ptrtoint ptr %significand.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %significand.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i32 noundef %conv3.i, i32 noundef %conv4.i, i64 noundef %5) #7
  br label %vfp_double_dump.exit

vfp_double_dump.exit:                             ; preds = %if.then.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_multiply, %if.then.i96)) #7
          to label %vfp_double_dump.exit97 [label %if.then.i96], !srcloc !102

if.then.i96:                                      ; preds = %vfp_double_dump.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sign.i91 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %6 = ptrtoint ptr %sign.i91 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sign.i91, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i92 = icmp ne i16 %7, 0
  %conv3.i93 = zext i1 %cmp.i92 to i32
  %8 = ptrtoint ptr %vdm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vdm, align 8
  %conv4.i94 = sext i16 %9 to i32
  %significand.i95 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %10 = ptrtoint ptr %significand.i95 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %significand.i95, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24, i32 noundef %conv3.i93, i32 noundef %conv4.i94, i64 noundef %11) #7
  br label %vfp_double_dump.exit97

vfp_double_dump.exit97:                           ; preds = %if.then.i96, %vfp_double_dump.exit
  %12 = ptrtoint ptr %vdn to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdn, align 8
  %14 = ptrtoint ptr %vdm to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdm, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp = icmp slt i16 %13, %15
  br i1 %cmp, label %if.then, label %vfp_double_dump.exit97.if.end7_crit_edge

vfp_double_dump.exit97.if.end7_crit_edge:         ; preds = %vfp_double_dump.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %vfp_double_dump.exit97
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_multiply.__UNIQUE_ID_ddebug20, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_multiply, %if.then6)) #7
          to label %if.end7 [label %if.then6], !srcloc !102

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_multiply.__UNIQUE_ID_ddebug20, ptr noundef nonnull @.str.30) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then, %vfp_double_dump.exit97.if.end7_crit_edge
  %vdm.addr.0 = phi ptr [ %vdm, %vfp_double_dump.exit97.if.end7_crit_edge ], [ %vdn, %if.then6 ], [ %vdn, %if.then ]
  %vdn.addr.0 = phi ptr [ %vdn, %vfp_double_dump.exit97.if.end7_crit_edge ], [ %vdm, %if.then6 ], [ %vdm, %if.then ]
  %sign = getelementptr inbounds %struct.vfp_double, ptr %vdn.addr.0, i32 0, i32 1
  %16 = ptrtoint ptr %sign to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sign, align 2
  %sign9 = getelementptr inbounds %struct.vfp_double, ptr %vdm.addr.0, i32 0, i32 1
  %18 = ptrtoint ptr %sign9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sign9, align 2
  %xor90 = xor i16 %19, %17
  %sign12 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 1
  %20 = ptrtoint ptr %sign12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %xor90, ptr %sign12, align 2
  %21 = ptrtoint ptr %vdn.addr.0 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vdn.addr.0, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %22)
  %cmp15 = icmp eq i16 %22, 2047
  br i1 %cmp15, label %if.then17, label %if.end38

if.then17:                                        ; preds = %if.end7
  %significand = getelementptr inbounds %struct.vfp_double, ptr %vdn.addr.0, i32 0, i32 2
  %23 = ptrtoint ptr %significand to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %significand, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool18.not = icmp eq i64 %24, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.else.i.i

lor.lhs.false:                                    ; preds = %if.then17
  %25 = ptrtoint ptr %vdm.addr.0 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vdm.addr.0, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %26)
  %cmp21 = icmp eq i16 %26, 2047
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false.if.end27_crit_edge

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %lor.lhs.false
  %significand23 = getelementptr inbounds %struct.vfp_double, ptr %vdm.addr.0, i32 0, i32 2
  %27 = ptrtoint ptr %significand23 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %significand23, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool24.not = icmp eq i64 %28, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.vfp_double_type.exit.i_crit_edge

land.lhs.true.vfp_double_type.exit.i_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit.i

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.else.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i64 %24, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 48, i32 16
  br label %vfp_double_type.exit.i

vfp_double_type.exit.i:                           ; preds = %if.else.i.i, %land.lhs.true.vfp_double_type.exit.i_crit_edge
  %type.0.i.i = phi i32 [ %..i.i, %if.else.i.i ], [ 8, %land.lhs.true.vfp_double_type.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %vdm.addr.0, null
  br i1 %tobool.not.i, label %vfp_double_type.exit.i.if.end.i_crit_edge, label %if.then.i98

vfp_double_type.exit.i.if.end.i_crit_edge:        ; preds = %vfp_double_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i98:                                      ; preds = %vfp_double_type.exit.i
  %29 = ptrtoint ptr %vdm.addr.0 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vdm.addr.0, align 8
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %30, label %if.then.i98.if.end.i_crit_edge [
    i16 2047, label %if.then.i21.i
    i16 0, label %if.then14.i29.i
  ]

if.then.i98.if.end.i_crit_edge:                   ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i21.i:                                    ; preds = %if.then.i98
  %significand.i19.i = getelementptr inbounds %struct.vfp_double, ptr %vdm.addr.0, i32 0, i32 2
  %32 = ptrtoint ptr %significand.i19.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %significand.i19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp2.i20.i = icmp eq i64 %33, 0
  br i1 %cmp2.i20.i, label %if.then.i21.i.if.end.i_crit_edge, label %if.else.i25.i

if.then.i21.i.if.end.i_crit_edge:                 ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.i25.i:                                    ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i22.i = and i64 %33, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i)
  %tobool.not.i23.i = icmp eq i64 %and.i22.i, 0
  %..i24.i = select i1 %tobool.not.i23.i, i32 48, i32 16
  br label %if.end.i

if.then14.i29.i:                                  ; preds = %if.then.i98
  call void @__sanitizer_cov_trace_pc() #9
  %significand15.i26.i = getelementptr inbounds %struct.vfp_double, ptr %vdm.addr.0, i32 0, i32 2
  %34 = ptrtoint ptr %significand15.i26.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %significand15.i26.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp16.i27.i = icmp eq i64 %35, 0
  %.30.i28.i = select i1 %cmp16.i27.i, i32 3, i32 5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i29.i, %if.else.i25.i, %if.then.i21.i.if.end.i_crit_edge, %if.then.i98.if.end.i_crit_edge, %vfp_double_type.exit.i.if.end.i_crit_edge
  %tm.0.i = phi i32 [ 0, %vfp_double_type.exit.i.if.end.i_crit_edge ], [ 8, %if.then.i21.i.if.end.i_crit_edge ], [ %..i24.i, %if.else.i25.i ], [ 1, %if.then.i98.if.end.i_crit_edge ], [ %.30.i28.i, %if.then14.i29.i ]
  %and.i = and i32 %fpscr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.end.i.vfp_propagate_nan.exit_crit_edge

if.end.i.vfp_propagate_nan.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_propagate_nan.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i)
  %cmp.i99 = icmp eq i32 %type.0.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i)
  %cmp4.not.i = icmp ne i32 %tm.0.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type.0.i.i)
  %cmp5.i = icmp eq i32 %type.0.i.i, 16
  %or.cond.i = select i1 %cmp4.not.i, i1 %cmp5.i, i1 false
  %36 = select i1 %cmp.i99, i1 true, i1 %or.cond.i
  %nan.0.i = select i1 %36, ptr %vdn.addr.0, ptr %vdm.addr.0
  %significand.i100 = getelementptr inbounds %struct.vfp_double, ptr %nan.0.i, i32 0, i32 2
  %37 = ptrtoint ptr %significand.i100 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %significand.i100, align 8
  %or.i = or i64 %38, 2305843009213693952
  store i64 %or.i, ptr %significand.i100, align 8
  br label %vfp_propagate_nan.exit

vfp_propagate_nan.exit:                           ; preds = %if.else.i, %if.end.i.vfp_propagate_nan.exit_crit_edge
  %nan.1.i = phi ptr [ %nan.0.i, %if.else.i ], [ @vfp_double_default_qnan, %if.end.i.vfp_propagate_nan.exit_crit_edge ]
  %39 = call ptr @memcpy(ptr %vdd, ptr %nan.1.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i)
  %cmp10.i = icmp eq i32 %type.0.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i)
  %cmp11.i = icmp eq i32 %tm.0.i, 48
  %40 = select i1 %cmp10.i, i1 true, i1 %cmp11.i
  %41 = select i1 %40, i32 1, i32 256
  br label %return

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %lor.lhs.false.if.end27_crit_edge
  %conv29 = sext i16 %26 to i64
  %significand30 = getelementptr inbounds %struct.vfp_double, ptr %vdm.addr.0, i32 0, i32 2
  %42 = ptrtoint ptr %significand30 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %significand30, align 8
  %or = or i64 %43, %conv29
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %cmp31 = icmp eq i64 %or, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %44 = call ptr @memcpy(ptr %vdd, ptr @vfp_double_default_qnan, i32 16)
  br label %return

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2047, ptr %vdd, align 8
  %significand37 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 2
  %46 = ptrtoint ptr %significand37 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %significand37, align 8
  br label %return

if.end38:                                         ; preds = %if.end7
  %47 = ptrtoint ptr %vdm.addr.0 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vdm.addr.0, align 8
  %conv40 = sext i16 %48 to i64
  %significand41 = getelementptr inbounds %struct.vfp_double, ptr %vdm.addr.0, i32 0, i32 2
  %49 = ptrtoint ptr %significand41 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %significand41, align 8
  %or42 = or i64 %50, %conv40
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or42)
  %cmp43 = icmp eq i64 %or42, 0
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %vdd, align 8
  %significand47 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 2
  %52 = ptrtoint ptr %significand47 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %significand47, align 8
  br label %return

if.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i16 %22, -1021
  %add53 = add i16 %add, %48
  %53 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %add53, ptr %vdd, align 8
  %significand56 = getelementptr inbounds %struct.vfp_double, ptr %vdn.addr.0, i32 0, i32 2
  %54 = ptrtoint ptr %significand56 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %significand56, align 8
  %56 = ptrtoint ptr %significand41 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %significand41, align 8
  %conv2.i.i = and i64 %55, 4294967295
  %conv3.i.i = and i64 %57, 4294967295
  %mul.i.i = mul nuw i64 %conv3.i.i, %conv2.i.i
  %shr.i.i = lshr i64 %55, 32
  %mul7.i.i = mul nuw i64 %conv3.i.i, %shr.i.i
  %shr8.i.i = lshr i64 %57, 32
  %mul12.i.i = mul nuw i64 %shr8.i.i, %conv2.i.i
  %add.i.i = add i64 %mul7.i.i, %mul12.i.i
  %mul15.i.i = mul nuw i64 %shr8.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %mul12.i.i)
  %cmp.i.i = icmp ult i64 %add.i.i, %mul12.i.i
  %shl.i.i = select i1 %cmp.i.i, i64 4294967296, i64 0
  %shr18.i.i = lshr i64 %add.i.i, 32
  %shl21.i.i = shl i64 %add.i.i, 32
  %add22.i.i = add i64 %shl21.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i.i, i64 %shl21.i.i)
  %cmp23.i.i = icmp ult i64 %add22.i.i, %shl21.i.i
  %58 = zext i1 %cmp23.i.i to i64
  %add19.i.i = add nuw i64 %shr18.i.i, %mul15.i.i
  %add20.i.i = add i64 %add19.i.i, %shl.i.i
  %add26.i.i = add i64 %add20.i.i, %58
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add22.i.i)
  %cmp.i101 = icmp ne i64 %add22.i.i, 0
  %59 = zext i1 %cmp.i101 to i64
  %or.i102 = or i64 %add26.i.i, %59
  %significand59 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 2
  %60 = ptrtoint ptr %significand59 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %or.i102, ptr %significand59, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_multiply, %if.then.i108)) #7
          to label %return [label %if.then.i108], !srcloc !102

if.then.i108:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %sign12 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sign12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp.i104 = icmp ne i16 %62, 0
  %conv3.i105 = zext i1 %cmp.i104 to i32
  %63 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vdd, align 8
  %conv4.i106 = sext i16 %64 to i32
  %65 = ptrtoint ptr %significand59 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %significand59, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.31, i32 noundef %conv3.i105, i32 noundef %conv4.i106, i64 noundef %66) #7
  br label %return

return:                                           ; preds = %if.then.i108, %if.end48, %if.then45, %if.end34, %if.then33, %vfp_propagate_nan.exit
  %retval.0 = phi i32 [ %41, %vfp_propagate_nan.exit ], [ 1, %if.then33 ], [ 0, %if.end34 ], [ 0, %if.then45 ], [ 0, %if.end48 ], [ 0, %if.then.i108 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfp_double_add(ptr nocapture noundef %vdd, ptr noundef %vdn, ptr noundef %vdm, i32 noundef %fpscr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %significand = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 2
  %0 = ptrtoint ptr %significand to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %significand, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %tobool.not = icmp sgt i64 %1, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %significand1 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %2 = ptrtoint ptr %significand1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %significand1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %3)
  %tobool3.not = icmp sgt i64 %3, -1
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_add, %if.then.i)) #7
          to label %vfp_double_dump.exit [label %if.then.i], !srcloc !102

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sign.i = getelementptr inbounds %struct.vfp_double, ptr %vdn, i32 0, i32 1
  %4 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sign.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp ne i16 %5, 0
  %conv3.i = zext i1 %cmp.i to i32
  %6 = ptrtoint ptr %vdn to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdn, align 8
  %conv4.i = sext i16 %7 to i32
  %8 = ptrtoint ptr %significand to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %significand, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i32 noundef %conv3.i, i32 noundef %conv4.i, i64 noundef %9) #7
  br label %vfp_double_dump.exit

vfp_double_dump.exit:                             ; preds = %if.then.i, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_double_add, %if.then.i88)) #7
          to label %if.end [label %if.then.i88], !srcloc !102

if.then.i88:                                      ; preds = %vfp_double_dump.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sign.i83 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 1
  %10 = ptrtoint ptr %sign.i83 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sign.i83, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i84 = icmp ne i16 %11, 0
  %conv3.i85 = zext i1 %cmp.i84 to i32
  %12 = ptrtoint ptr %vdm to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdm, align 8
  %conv4.i86 = sext i16 %13 to i32
  %significand.i87 = getelementptr inbounds %struct.vfp_double, ptr %vdm, i32 0, i32 2
  %14 = ptrtoint ptr %significand.i87 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %significand.i87, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_double_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24, i32 noundef %conv3.i85, i32 noundef %conv4.i86, i64 noundef %15) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i88, %vfp_double_dump.exit, %lor.lhs.false.if.end_crit_edge
  %16 = ptrtoint ptr %vdn to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vdn, align 8
  %18 = ptrtoint ptr %vdm to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdm, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp = icmp slt i16 %17, %19
  %spec.select = select i1 %cmp, ptr %vdn, ptr %vdm
  %spec.select82 = select i1 %cmp, ptr %vdm, ptr %vdn
  %20 = ptrtoint ptr %spec.select82 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %spec.select82, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %21)
  %cmp11 = icmp eq i16 %21, 2047
  br i1 %cmp11, label %if.then.i.i, label %if.end15

if.then.i.i:                                      ; preds = %if.end
  %significand.i.i = getelementptr inbounds %struct.vfp_double, ptr %spec.select82, i32 0, i32 2
  %22 = ptrtoint ptr %significand.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %significand.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp2.i.i = icmp eq i64 %23, 0
  %type.0.i.i = select i1 %cmp2.i.i, i32 8, i32 0
  %24 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %spec.select, align 8
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %25, label %if.then.i.i.vfp_double_type.exit42.i_crit_edge [
    i16 2047, label %if.then.i32.i
    i16 0, label %if.then14.i40.i
  ]

if.then.i.i.vfp_double_type.exit42.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit42.i

if.then.i32.i:                                    ; preds = %if.then.i.i
  %significand.i30.i = getelementptr inbounds %struct.vfp_double, ptr %spec.select, i32 0, i32 2
  %27 = ptrtoint ptr %significand.i30.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %significand.i30.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %cmp2.i31.i = icmp eq i64 %28, 0
  br i1 %cmp2.i31.i, label %if.then.i32.i.vfp_double_type.exit42.i_crit_edge, label %if.else.i36.i

if.then.i32.i.vfp_double_type.exit42.i_crit_edge: ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_double_type.exit42.i

if.else.i36.i:                                    ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i33.i = and i64 %28, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i33.i)
  %tobool.not.i34.i = icmp eq i64 %and.i33.i, 0
  %..i35.i = select i1 %tobool.not.i34.i, i32 48, i32 16
  br label %vfp_double_type.exit42.i

if.then14.i40.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %significand15.i37.i = getelementptr inbounds %struct.vfp_double, ptr %spec.select, i32 0, i32 2
  %29 = ptrtoint ptr %significand15.i37.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %significand15.i37.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %cmp16.i38.i = icmp eq i64 %30, 0
  %.30.i39.i = select i1 %cmp16.i38.i, i32 3, i32 5
  br label %vfp_double_type.exit42.i

vfp_double_type.exit42.i:                         ; preds = %if.then14.i40.i, %if.else.i36.i, %if.then.i32.i.vfp_double_type.exit42.i_crit_edge, %if.then.i.i.vfp_double_type.exit42.i_crit_edge
  %type.0.i41.i = phi i32 [ 8, %if.then.i32.i.vfp_double_type.exit42.i_crit_edge ], [ %..i35.i, %if.else.i36.i ], [ 1, %if.then.i.i.vfp_double_type.exit42.i_crit_edge ], [ %.30.i39.i, %if.then14.i40.i ]
  %and2.i = and i32 %type.0.i41.i, %type.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.else7.i, label %if.then.i91

if.then.i91:                                      ; preds = %vfp_double_type.exit42.i
  call void @__sanitizer_cov_trace_pc() #9
  %sign.i90 = getelementptr inbounds %struct.vfp_double, ptr %spec.select82, i32 0, i32 1
  %31 = ptrtoint ptr %sign.i90 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sign.i90, align 2
  %sign3.i = getelementptr inbounds %struct.vfp_double, ptr %spec.select, i32 0, i32 1
  %33 = ptrtoint ptr %sign3.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sign3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %tobool5.not.i = icmp eq i16 %32, %34
  %vdn.vfp_double_default_qnan.i = select i1 %tobool5.not.i, ptr %spec.select82, ptr @vfp_double_default_qnan
  %not.tobool5.not.i = xor i1 %tobool5.not.i, true
  %..i = zext i1 %not.tobool5.not.i to i32
  br label %if.end16.i

if.else7.i:                                       ; preds = %vfp_double_type.exit42.i
  %not.cmp2.i.i = xor i1 %cmp2.i.i, true
  %and10.i = and i32 %type.0.i41.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = select i1 %not.cmp2.i.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %if.then.i.i.i, label %if.else7.i.if.end16.i_crit_edge

if.else7.i.if.end16.i_crit_edge:                  ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then.i.i.i:                                    ; preds = %if.else7.i
  %35 = ptrtoint ptr %significand.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %significand.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp2.i.i.i = icmp eq i64 %36, 0
  %and.i.i.i = and i64 %36, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  %..i.i.i = select i1 %tobool.not.i.i.i, i32 48, i32 16
  %type.0.i.i.i = select i1 %cmp2.i.i.i, i32 8, i32 %..i.i.i
  %tobool.not.i43.i = icmp eq ptr %spec.select, null
  br i1 %tobool.not.i43.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %if.then.i44.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i44.i:                                    ; preds = %if.then.i.i.i
  %37 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %25, label %if.then.i44.i.if.end.i.i_crit_edge [
    i16 2047, label %if.then.i21.i.i
    i16 0, label %if.then14.i29.i.i
  ]

if.then.i44.i.if.end.i.i_crit_edge:               ; preds = %if.then.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i21.i.i:                                  ; preds = %if.then.i44.i
  %significand.i19.i.i = getelementptr inbounds %struct.vfp_double, ptr %spec.select, i32 0, i32 2
  %38 = ptrtoint ptr %significand.i19.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %significand.i19.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp2.i20.i.i = icmp eq i64 %39, 0
  br i1 %cmp2.i20.i.i, label %if.then.i21.i.i.if.end.i.i_crit_edge, label %if.else.i25.i.i

if.then.i21.i.i.if.end.i.i_crit_edge:             ; preds = %if.then.i21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.else.i25.i.i:                                  ; preds = %if.then.i21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i22.i.i = and i64 %39, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i22.i.i)
  %tobool.not.i23.i.i = icmp eq i64 %and.i22.i.i, 0
  %..i24.i.i = select i1 %tobool.not.i23.i.i, i32 48, i32 16
  br label %if.end.i.i

if.then14.i29.i.i:                                ; preds = %if.then.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  %significand15.i26.i.i = getelementptr inbounds %struct.vfp_double, ptr %spec.select, i32 0, i32 2
  %40 = ptrtoint ptr %significand15.i26.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %significand15.i26.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp16.i27.i.i = icmp eq i64 %41, 0
  %.30.i28.i.i = select i1 %cmp16.i27.i.i, i32 3, i32 5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then14.i29.i.i, %if.else.i25.i.i, %if.then.i21.i.i.if.end.i.i_crit_edge, %if.then.i44.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %tm.0.i.i = phi i32 [ 0, %if.then.i.i.i.if.end.i.i_crit_edge ], [ 8, %if.then.i21.i.i.if.end.i.i_crit_edge ], [ %..i24.i.i, %if.else.i25.i.i ], [ 1, %if.then.i44.i.if.end.i.i_crit_edge ], [ %.30.i28.i.i, %if.then14.i29.i.i ]
  %and.i45.i = and i32 %fpscr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool2.not.i.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i47.i, label %if.end.i.i.vfp_propagate_nan.exit.i_crit_edge

if.end.i.i.vfp_propagate_nan.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_propagate_nan.exit.i

if.else.i47.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i.i)
  %cmp.i.i = icmp eq i32 %type.0.i.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i.i)
  %cmp4.not.i.i = icmp ne i32 %tm.0.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type.0.i.i.i)
  %cmp5.i.i = icmp eq i32 %type.0.i.i.i, 16
  %or.cond.i.i = select i1 %cmp4.not.i.i, i1 %cmp5.i.i, i1 false
  %42 = select i1 %cmp.i.i, i1 true, i1 %or.cond.i.i
  %nan.0.i.i = select i1 %42, ptr %spec.select82, ptr %spec.select
  %significand.i46.i = getelementptr inbounds %struct.vfp_double, ptr %nan.0.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %significand.i46.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %significand.i46.i, align 8
  %or.i.i = or i64 %44, 2305843009213693952
  store i64 %or.i.i, ptr %significand.i46.i, align 8
  br label %vfp_propagate_nan.exit.i

vfp_propagate_nan.exit.i:                         ; preds = %if.else.i47.i, %if.end.i.i.vfp_propagate_nan.exit.i_crit_edge
  %nan.1.i.i = phi ptr [ %nan.0.i.i, %if.else.i47.i ], [ @vfp_double_default_qnan, %if.end.i.i.vfp_propagate_nan.exit.i_crit_edge ]
  %45 = call ptr @memcpy(ptr %vdd, ptr %nan.1.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i.i)
  %cmp10.i.i = icmp eq i32 %type.0.i.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i.i)
  %cmp11.i.i = icmp eq i32 %tm.0.i.i, 48
  %46 = select i1 %cmp10.i.i, i1 true, i1 %cmp11.i.i
  %47 = select i1 %46, i32 1, i32 256
  br label %cleanup

if.end16.i:                                       ; preds = %if.else7.i.if.end16.i_crit_edge, %if.then.i91
  %vdp.0.i = phi ptr [ %vdn.vfp_double_default_qnan.i, %if.then.i91 ], [ %spec.select82, %if.else7.i.if.end16.i_crit_edge ]
  %exceptions.0.i = phi i32 [ %..i, %if.then.i91 ], [ 0, %if.else7.i.if.end16.i_crit_edge ]
  %48 = call ptr @memcpy(ptr %vdd, ptr %vdp.0.i, i32 16)
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %49 = call ptr @memcpy(ptr %vdd, ptr %spec.select82, i32 16)
  %50 = ptrtoint ptr %spec.select82 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %spec.select82, align 8
  %conv17 = sext i16 %51 to i32
  %52 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %spec.select, align 8
  %conv19 = sext i16 %53 to i32
  %sub = sub nsw i32 %conv17, %conv19
  %significand20 = getelementptr inbounds %struct.vfp_double, ptr %spec.select, i32 0, i32 2
  %54 = ptrtoint ptr %significand20 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %significand20, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %tobool.not.i92 = icmp eq i16 %51, %53
  br i1 %tobool.not.i92, label %if.end15.vfp_shiftright64jamming.exit_crit_edge, label %if.then.i94

if.end15.vfp_shiftright64jamming.exit_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %vfp_shiftright64jamming.exit

if.then.i94:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp.i93 = icmp ult i32 %sub, 64
  br i1 %cmp.i93, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom.i = zext i32 %sub to i64
  %shr.i = lshr i64 %55, %sh_prom.i
  %sub.i = sub nuw nsw i32 64, %sub
  %sh_prom2.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %55, %sh_prom2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp3.i = icmp ne i64 %shl.i, 0
  %56 = zext i1 %cmp3.i to i64
  %or.i = or i64 %shr.i, %56
  br label %vfp_shiftright64jamming.exit

if.else.i:                                        ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %cmp5.i = icmp ne i64 %55, 0
  %57 = zext i1 %cmp5.i to i64
  br label %vfp_shiftright64jamming.exit

vfp_shiftright64jamming.exit:                     ; preds = %if.else.i, %if.then1.i, %if.end15.vfp_shiftright64jamming.exit_crit_edge
  %val.addr.0.i = phi i64 [ %or.i, %if.then1.i ], [ %57, %if.else.i ], [ %55, %if.end15.vfp_shiftright64jamming.exit_crit_edge ]
  %sign = getelementptr inbounds %struct.vfp_double, ptr %spec.select82, i32 0, i32 1
  %58 = ptrtoint ptr %sign to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sign, align 2
  %sign23 = getelementptr inbounds %struct.vfp_double, ptr %spec.select, i32 0, i32 1
  %60 = ptrtoint ptr %sign23 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sign23, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %61)
  %tobool25.not = icmp eq i16 %59, %61
  %significand49 = getelementptr inbounds %struct.vfp_double, ptr %spec.select82, i32 0, i32 2
  %62 = ptrtoint ptr %significand49 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %significand49, align 8
  br i1 %tobool25.not, label %if.else48, label %if.then26

if.then26:                                        ; preds = %vfp_shiftright64jamming.exit
  %sub28 = sub i64 %63, %val.addr.0.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub28)
  %cmp29 = icmp slt i64 %sub28, 0
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %sign32 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 1
  %64 = ptrtoint ptr %sign32 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %sign32, align 2
  %66 = xor i16 %65, -32768
  store i16 %66, ptr %sign32, align 2
  %sub37 = sub i64 0, %sub28
  br label %if.end50

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub28)
  %cmp38 = icmp eq i64 %sub28, 0
  br i1 %cmp38, label %if.then40, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and41 = and i32 %fpscr, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %and41)
  %cmp42 = icmp eq i32 %and41, 8388608
  %conv44 = select i1 %cmp42, i16 -32768, i16 0
  %sign45 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 1
  %67 = ptrtoint ptr %sign45 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv44, ptr %sign45, align 2
  br label %if.end50

if.else48:                                        ; preds = %vfp_shiftright64jamming.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i64 %63, %val.addr.0.i
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then40, %if.else.if.end50_crit_edge, %if.then31
  %m_sig.0 = phi i64 [ %sub37, %if.then31 ], [ 0, %if.then40 ], [ %sub28, %if.else.if.end50_crit_edge ], [ %add, %if.else48 ]
  %significand51 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 2
  %68 = ptrtoint ptr %significand51 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %m_sig.0, ptr %significand51, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end16.i, %vfp_propagate_nan.exit.i
  %retval.0 = phi i32 [ 0, %if.end50 ], [ %exceptions.0.i, %if.end16.i ], [ %47, %vfp_propagate_nan.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !64, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/vfp/vfpdouble.c", i32 76, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/vfp/vfpdouble.c", i32 140, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vfp_double_normaliseround.__UNIQUE_ID_ddebug16, !3, !"__UNIQUE_ID_ddebug16", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/vfp/vfpdouble.c", i32 192, i32 18}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/vfp/vfpdouble.c", i32 195, i32 3}
!12 = !{ptr @vfp_double_normaliseround.__UNIQUE_ID_ddebug17, !11, !"__UNIQUE_ID_ddebug17", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/vfp/vfpdouble.c", i32 1167, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vfp_double_cpdo.__UNIQUE_ID_ddebug21, !14, !"__UNIQUE_ID_ddebug21", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/vfp/vfpdouble.c", i32 1179, i32 4}
!19 = !{ptr @vfp_double_cpdo.__UNIQUE_ID_ddebug22, !18, !"__UNIQUE_ID_ddebug22", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/vfp/vfpdouble.c", i32 1183, i32 4}
!22 = !{ptr @vfp_double_cpdo.__UNIQUE_ID_ddebug23, !21, !"__UNIQUE_ID_ddebug23", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/vfp/vfpdouble.c", i32 1188, i32 3}
!25 = !{ptr @vfp_double_cpdo.__UNIQUE_ID_ddebug24, !24, !"__UNIQUE_ID_ddebug24", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/vfp/vfpdouble.c", i32 50, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @vfp_double_dump.__UNIQUE_ID_ddebug15, !27, !"__UNIQUE_ID_ddebug15", i1 false, i1 false}
!30 = !{ptr @fops_ext, !31, !"fops_ext", i1 false, i1 false}
!31 = !{!"../arch/arm/vfp/vfpdouble.c", i32 661, i32 18}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/vfp/vfpdouble.c", i32 311, i32 18}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/vfp/vfpdouble.c", i32 320, i32 18}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/vfp/vfpdouble.c", i32 325, i32 18}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/vfp/vfpdouble.c", i32 349, i32 55}
!40 = !{ptr @vfp_double_default_qnan, !41, !"vfp_double_default_qnan", i1 false, i1 false}
!41 = !{!"../arch/arm/vfp/vfpdouble.c", i32 42, i32 26}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/vfp/vfpdouble.c", i32 60, i32 18}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/vfp/vfpdouble.c", i32 67, i32 18}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/vfp/vfpdouble.c", i32 491, i32 55}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/vfp/vfpdouble.c", i32 503, i32 55}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/vfp/vfpdouble.c", i32 573, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @vfp_double_ftoui.__UNIQUE_ID_ddebug18, !51, !"__UNIQUE_ID_ddebug18", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/vfp/vfpdouble.c", i32 593, i32 18}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/vfp/vfpdouble.c", i32 648, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @vfp_double_ftosi.__UNIQUE_ID_ddebug19, !57, !"__UNIQUE_ID_ddebug19", i1 false, i1 false}
!60 = !{ptr @fops, !61, !"fops", i1 false, i1 false}
!61 = !{!"../arch/arm/vfp/vfpdouble.c", i32 1112, i32 18}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/vfp/vfpdouble.c", i32 888, i32 62}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/vfp/vfpdouble.c", i32 793, i32 18}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/vfp/vfpdouble.c", i32 805, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vfp_double_multiply.__UNIQUE_ID_ddebug20, !67, !"__UNIQUE_ID_ddebug20", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/vfp/vfpdouble.c", i32 843, i32 18}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../arch/arm/vfp/vfpdouble.c", i32 733, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @vfp_double_add._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @vfp_double_add._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/vfp/vfpdouble.c", i32 904, i32 73}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/vfp/vfpdouble.c", i32 932, i32 64}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../arch/arm/vfp/vfpdouble.c", i32 975, i32 64}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/vfp/vfpdouble.c", i32 896, i32 73}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../arch/arm/vfp/vfpdouble.c", i32 912, i32 88}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/vfp/vfpdouble.c", i32 954, i32 64}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/vfp/vfpdouble.c", i32 1001, i32 64}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/vfp/vfpdouble.c", i32 1083, i32 55}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2148718810, i64 2148718815, i64 2148718828, i64 2148718872, i64 2148718906, i64 2148718927}
!103 = !{i32 0, i32 33}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2148627529, i64 2148627809, i64 2148628143, i64 2148628477}
!106 = !{i64 1249194, i64 1249215, i64 1249242, i64 1249269, i64 1249295}
!107 = !{i64 1248888, i64 1248909, i64 1248936, i64 1248963}
!108 = !{!"auto-init"}
!109 = !{i64 1248669, i64 1248706, i64 1248727}
!110 = !{i32 0, i32 257}
