; ModuleID = '/llk/IR_all_yes/arch/arm/vfp/vfpsingle.c_pt.bc'
source_filename = "../arch/arm/vfp/vfpsingle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.op = type { ptr, i32 }
%struct.vfp_single = type { i16, i16, i32 }
%struct.vfp_double = type { i16, i16, i64 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pack: in\00", [23 x i8] zeroinitializer }, align 32
@__vfp_single_normaliseround.__UNIQUE_ID_ddebug16 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vfpsingle\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__vfp_single_normaliseround\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/vfp/vfpsingle.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VFP: rounding increment = 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pack: final\00", [20 x i8] zeroinitializer }, align 32
@vfp_estimate_sqrt_significand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014VFP: estimate_sqrt: invalid significand\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vfp_estimate_sqrt_significand\00", [34 x i8] zeroinitializer }, align 32
@vfp_estimate_sqrt_significand._entry_ptr = internal global ptr @vfp_estimate_sqrt_significand._entry, section ".printk_index", align 4
@sqrt_oddadjust = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 4, i16 34, i16 93, i16 177, i16 285, i16 415, i16 566, i16 736, i16 924, i16 1128, i16 1349, i16 1585, i16 1835, i16 2098, i16 2374, i16 2663], [32 x i8] zeroinitializer }, align 32
@sqrt_evenadjust = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 2605, i16 2223, i16 1882, i16 1577, i16 1306, i16 1065, i16 854, i16 670, i16 512, i16 377, i16 265, i16 175, i16 104, i16 52, i16 18, i16 2], [32 x i8] zeroinitializer }, align 32
@fops_ext = internal constant { [32 x %struct.op], [64 x i8] } { [32 x %struct.op] [%struct.op { ptr @vfp_single_fcpy, i32 0 }, %struct.op { ptr @vfp_single_fabs, i32 0 }, %struct.op { ptr @vfp_single_fneg, i32 0 }, %struct.op { ptr @vfp_single_fsqrt, i32 0 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_single_fcmp, i32 1 }, %struct.op { ptr @vfp_single_fcmpe, i32 1 }, %struct.op { ptr @vfp_single_fcmpz, i32 1 }, %struct.op { ptr @vfp_single_fcmpez, i32 1 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_single_fcvtd, i32 3 }, %struct.op { ptr @vfp_single_fuito, i32 1 }, %struct.op { ptr @vfp_single_fsito, i32 1 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op { ptr @vfp_single_ftoui, i32 1 }, %struct.op { ptr @vfp_single_ftouiz, i32 1 }, %struct.op { ptr @vfp_single_ftosi, i32 1 }, %struct.op { ptr @vfp_single_ftosiz, i32 1 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer], [64 x i8] zeroinitializer }, align 32
@fops = internal constant { [16 x %struct.op], [32 x i8] } { [16 x %struct.op] [%struct.op { ptr @vfp_single_fmac, i32 0 }, %struct.op { ptr @vfp_single_fmsc, i32 0 }, %struct.op { ptr @vfp_single_fmul, i32 0 }, %struct.op { ptr @vfp_single_fadd, i32 0 }, %struct.op { ptr @vfp_single_fnmac, i32 0 }, %struct.op { ptr @vfp_single_fnmsc, i32 0 }, %struct.op { ptr @vfp_single_fnmul, i32 0 }, %struct.op { ptr @vfp_single_fsub, i32 0 }, %struct.op { ptr @vfp_single_fdiv, i32 0 }, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer, %struct.op zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vfp_single_cpdo.__UNIQUE_ID_ddebug27 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 1, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vfp_single_cpdo\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VFP: vecstride=%u veclen=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@vfp_single_cpdo.__UNIQUE_ID_ddebug28 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.10, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VFP: itr%d (%c%u) = op[%u] (s%u=%08x)\0A\00", [57 x i8] zeroinitializer }, align 32
@vfp_single_cpdo.__UNIQUE_ID_ddebug29 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.11, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VFP: itr%d (%c%u) = (s%u) op[%u] (s%u=%08x)\0A\00", [51 x i8] zeroinitializer }, align 32
@vfp_single_cpdo.__UNIQUE_ID_ddebug30 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.12, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VFP: itr%d: exceptions=%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@vfp_single_dump.__UNIQUE_ID_ddebug15 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vfp_single_dump\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"VFP: %s: sign=%d exponent=%d significand=%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@vfp_single_default_qnan = internal constant { %struct.vfp_single, [24 x i8] } { %struct.vfp_single { i16 255, i16 0, i32 536870912 }, [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sqrt\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sqrt estimate\00", [18 x i8] zeroinitializer }, align 32
@vfp_single_fsqrt.__UNIQUE_ID_ddebug17 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfp_single_fsqrt\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VFP: term=%016llx rem=%016llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"normalise_denormal: in\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"normalise_denormal: out\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fcvtd\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VSM\00", [28 x i8] zeroinitializer }, align 32
@vfp_single_ftoui.__UNIQUE_ID_ddebug18 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfp_single_ftoui\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VFP: ftoui: d(s%d)=%08x exceptions=%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@vfp_single_ftosi.__UNIQUE_ID_ddebug19 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfp_single_ftosi\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VFP: ftosi: d(s%d)=%08x exceptions=%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@vfp_single_multiply_accumulate.__UNIQUE_ID_ddebug21 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vfp_single_multiply_accumulate\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VFP: s%u = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@vfp_single_multiply_accumulate.__UNIQUE_ID_ddebug22 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VSN\00", [28 x i8] zeroinitializer }, align 32
@vfp_single_multiply.__UNIQUE_ID_ddebug20 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vfp_single_multiply\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VFP: swapping M <-> N\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VSD\00", [28 x i8] zeroinitializer }, align 32
@vfp_single_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016VFP: bad FP values in %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vfp_single_add\00", [17 x i8] zeroinitializer }, align 32
@vfp_single_add._entry_ptr = internal global ptr @vfp_single_add._entry, section ".printk_index", align 4
@vfp_single_fmul.__UNIQUE_ID_ddebug23 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.29, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vfp_single_fmul\00", [16 x i8] zeroinitializer }, align 32
@vfp_single_fadd.__UNIQUE_ID_ddebug25 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.29, i8 0, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vfp_single_fadd\00", [16 x i8] zeroinitializer }, align 32
@vfp_single_fnmul.__UNIQUE_ID_ddebug24 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.29, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfp_single_fnmul\00", [47 x i8] zeroinitializer }, align 32
@vfp_single_fdiv.__UNIQUE_ID_ddebug26 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.3, ptr @.str.29, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vfp_single_fdiv\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12582912]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483648]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483648]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12582912]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 4194304, i64 8388608]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12582912]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 4194304, i64 8388608]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 78, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 145, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 197, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 293, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"sqrt_oddadjust\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 277, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"sqrt_evenadjust\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 282, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant [9 x i8] c"fops_ext\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 706, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1157, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1206, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1219, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1223, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1228, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 50, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [24 x i8] c"vfp_single_default_qnan\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 42, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 359, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 368, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 383, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 58, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 65, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 518, i32 64 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 555, i32 18 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 615, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 694, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 902, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 837, i32 18 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 849, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 887, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 778, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 973, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1020, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 996, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [28 x i8] c"../arch/arm/vfp/vfpsingle.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1059, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @vfp_estimate_sqrt_significand._entry, ptr @vfp_estimate_sqrt_significand._entry_ptr, ptr @vfp_single_add._entry, ptr @vfp_single_add._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sqrt_oddadjust, ptr @sqrt_evenadjust, ptr @fops_ext, ptr @fops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @vfp_single_default_qnan, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_estimate_sqrt_significand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sqrt_oddadjust to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sqrt_evenadjust to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ext to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_single_default_qnan to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_single_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vfp_single_normaliseround(i32 noundef %sd, ptr nocapture noundef %vs, i32 noundef %fpscr, i32 noundef %exceptions) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__vfp_single_normaliseround, %if.then.i)) #5
          to label %vfp_single_dump.exit [label %if.then.i], !srcloc !114

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sign.i = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 1
  %0 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sign.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp ne i16 %1, 0
  %conv3.i = zext i1 %cmp.i to i32
  %2 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vs, align 4
  %conv4.i = sext i16 %3 to i32
  %significand.i = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 2
  %4 = ptrtoint ptr %significand.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %significand.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str, i32 noundef %conv3.i, i32 noundef %conv4.i, i32 noundef %5) #5
  br label %vfp_single_dump.exit

vfp_single_dump.exit:                             ; preds = %if.then.i, %entry
  %6 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %7)
  %cmp = icmp eq i16 %7, 255
  br i1 %cmp, label %land.lhs.true, label %vfp_single_dump.exit.if.end_crit_edge

vfp_single_dump.exit.if.end_crit_edge:            ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %vfp_single_dump.exit
  %significand3 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 2
  %8 = ptrtoint ptr %significand3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %significand3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4 = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exceptions)
  %tobool.not = icmp eq i32 %exceptions, 0
  %or.cond = and i1 %tobool.not, %cmp4
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.pack_crit_edge

land.lhs.true.pack_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %pack

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %vfp_single_dump.exit.if.end_crit_edge
  %significand6 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 2
  %10 = ptrtoint ptr %significand6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %significand6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %vs, align 4
  br label %pack

if.end11:                                         ; preds = %if.end
  %conv13 = sext i16 %7 to i32
  %13 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #5, !range !115
  %sub20 = sub nsw i32 %conv13, %13
  %shl = shl i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20)
  %cmp22 = icmp slt i32 %sub20, 0
  %exponent.0.lobit = lshr i32 %sub20, 31
  br i1 %cmp22, label %if.then25, label %if.end11.if.end31_crit_edge

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then25:                                        ; preds = %if.end11
  %sub26 = sub nsw i32 0, %sub20
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub26)
  %cmp.i166 = icmp ult i32 %sub26, 32
  br i1 %cmp.i166, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %shl, %sub26
  %sub.i168 = add nsw i32 %sub20, 32
  %shl.i = shl i32 %shl, %sub.i168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp2.i = icmp ne i32 %shl.i, 0
  %conv.i = zext i1 %cmp2.i to i32
  %or.i = or i32 %shr.i, %conv.i
  br label %vfp_shiftright32jamming.exit

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp3.i = icmp ne i32 %shl, 0
  %conv4.i169 = zext i1 %cmp3.i to i32
  br label %vfp_shiftright32jamming.exit

vfp_shiftright32jamming.exit:                     ; preds = %if.else.i, %if.then1.i
  %val.addr.0.i = phi i32 [ %or.i, %if.then1.i ], [ %conv4.i169, %if.else.i ]
  %and = and i32 %val.addr.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool28.not, i32 0, i32 %exponent.0.lobit
  br label %if.end31

if.end31:                                         ; preds = %vfp_shiftright32jamming.exit, %if.end11.if.end31_crit_edge
  %exponent.1 = phi i32 [ %sub20, %if.end11.if.end31_crit_edge ], [ 0, %vfp_shiftright32jamming.exit ]
  %underflow.0 = phi i32 [ %exponent.0.lobit, %if.end11.if.end31_crit_edge ], [ %spec.select, %vfp_shiftright32jamming.exit ]
  %significand.1 = phi i32 [ %shl, %if.end11.if.end31_crit_edge ], [ %val.addr.0.i, %vfp_shiftright32jamming.exit ]
  %and32 = and i32 %fpscr, 12582912
  %14 = zext i32 %and32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and32, label %if.else45 [
    i32 0, label %if.then35
    i32 12582912, label %if.end31.do.body_crit_edge
  ]

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %and36 = and i32 %significand.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp37 = icmp eq i32 %and36, 0
  %spec.select161 = select i1 %cmp37, i32 127, i32 128
  br label %do.body

if.else45:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and32)
  %cmp46 = icmp eq i32 %and32, 4194304
  %sign = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 1
  %15 = ptrtoint ptr %sign to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sign, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp49 = icmp ne i16 %16, 0
  %xor159 = xor i1 %cmp46, %cmp49
  %spec.select162 = select i1 %xor159, i32 255, i32 0
  br label %do.body

do.body:                                          ; preds = %if.else45, %if.then35, %if.end31.do.body_crit_edge
  %incr.0 = phi i32 [ %spec.select161, %if.then35 ], [ 0, %if.end31.do.body_crit_edge ], [ %spec.select162, %if.else45 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__vfp_single_normaliseround.__UNIQUE_ID_ddebug16, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__vfp_single_normaliseround, %if.then60)) #5
          to label %do.end [label %if.then60], !srcloc !114

if.then60:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__vfp_single_normaliseround.__UNIQUE_ID_ddebug16, ptr noundef nonnull @.str.4, i32 noundef %incr.0) #5
  br label %do.end

do.end:                                           ; preds = %if.then60, %do.body
  %17 = xor i32 %significand.1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %incr.0, i32 %17)
  %cmp62 = icmp ugt i32 %incr.0, %17
  %shr = lshr i32 %significand.1, 1
  %and66 = and i32 %significand.1, 1
  %or = or i32 %shr, %and66
  %add65 = zext i1 %cmp62 to i32
  %exponent.2 = add nuw nsw i32 %exponent.1, %add65
  %incr.1 = lshr i32 %incr.0, %add65
  %significand.2 = select i1 %cmp62, i32 %or, i32 %significand.1
  %and69 = and i32 %significand.2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %or72 = or i32 %exceptions, 16
  %exceptions.addr.0 = select i1 %tobool70.not, i32 %exceptions, i32 %or72
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %exponent.2)
  %cmp75 = icmp ugt i32 %exponent.2, 253
  br i1 %cmp75, label %if.then77, label %if.else88

if.then77:                                        ; preds = %do.end
  %or78 = or i32 %exceptions.addr.0, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %incr.1)
  %cmp79 = icmp eq i32 %incr.1, 0
  br i1 %cmp79, label %if.then81, label %if.else84

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 253, ptr %vs, align 4
  %19 = ptrtoint ptr %significand6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2147483647, ptr %significand6, align 4
  br label %pack

if.else84:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 255, ptr %vs, align 4
  %21 = ptrtoint ptr %significand6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %significand6, align 4
  br label %pack

if.else88:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %add74 = add i32 %incr.1, %significand.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add74)
  %cmp90 = icmp ult i32 %add74, 256
  %spec.select163 = select i1 %cmp90, i32 0, i32 %exponent.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select163)
  %tobool94.not = icmp ne i32 %spec.select163, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %add74)
  %cmp96 = icmp ugt i32 %add74, -2147483648
  %or.cond164 = select i1 %tobool94.not, i1 true, i1 %cmp96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %underflow.0)
  %tobool100.not183 = icmp eq i32 %underflow.0, 0
  %tobool100.not = select i1 %or.cond164, i1 true, i1 %tobool100.not183
  %or102 = or i32 %exceptions.addr.0, 8
  %exceptions.addr.1 = select i1 %tobool100.not, i32 %exceptions.addr.0, i32 %or102
  %conv104 = trunc i32 %spec.select163 to i16
  %22 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv104, ptr %vs, align 4
  %shr106 = lshr i32 %add74, 1
  %23 = ptrtoint ptr %significand6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr106, ptr %significand6, align 4
  br label %pack

pack:                                             ; preds = %if.else88, %if.else84, %if.then81, %if.then9, %land.lhs.true.pack_crit_edge
  %exceptions.addr.2 = phi i32 [ %exceptions, %land.lhs.true.pack_crit_edge ], [ %exceptions, %if.then9 ], [ %or78, %if.then81 ], [ %or78, %if.else84 ], [ %exceptions.addr.1, %if.else88 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__vfp_single_normaliseround, %if.then.i175)) #5
          to label %vfp_single_dump.exit176 [label %if.then.i175], !srcloc !114

if.then.i175:                                     ; preds = %pack
  call void @__sanitizer_cov_trace_pc() #7
  %sign.i170 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 1
  %24 = ptrtoint ptr %sign.i170 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sign.i170, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i171 = icmp ne i16 %25, 0
  %conv3.i172 = zext i1 %cmp.i171 to i32
  %26 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vs, align 4
  %conv4.i173 = sext i16 %27 to i32
  %significand.i174 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 2
  %28 = ptrtoint ptr %significand.i174 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %significand.i174, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef %conv3.i172, i32 noundef %conv4.i173, i32 noundef %29) #5
  br label %vfp_single_dump.exit176

vfp_single_dump.exit176:                          ; preds = %if.then.i175, %pack
  %sign.i177 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 1
  %30 = ptrtoint ptr %sign.i177 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sign.i177, align 2
  %conv.i178 = zext i16 %31 to i32
  %shl.i179 = shl nuw i32 %conv.i178, 16
  %32 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vs, align 4
  %conv16.i = zext i16 %33 to i32
  %shl2.i = shl i32 %conv16.i, 23
  %add.i = add i32 %shl2.i, %shl.i179
  %significand.i180 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 2
  %34 = ptrtoint ptr %significand.i180 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %significand.i180, align 4
  %shr.i181 = lshr i32 %35, 7
  %add3.i = add i32 %add.i, %shr.i181
  tail call void @vfp_put_float(i32 noundef %add3.i, i32 noundef %sd) #5
  ret i32 %exceptions.addr.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_put_float(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfp_estimate_sqrt_significand(i32 noundef %exponent, i32 noundef %significand) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %significand, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and)
  %cmp.not = icmp eq i32 %and, 1073741824
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %shl = shl i32 %significand, 1
  %shr = lshr i32 %shl, 27
  %and1 = and i32 %shr, 15
  %and2 = and i32 %exponent, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %shr9 = lshr i32 %shl, 17
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw nsw i32 %shr9, 16384
  %arrayidx = getelementptr [16 x i16], ptr @sqrt_oddadjust, i32 0, i32 %and1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 %add, %conv
  %div = udiv i32 %shl, %sub
  %shl5 = shl i32 %div, 14
  %shl6 = shl nsw i32 %sub, 15
  %add7 = add i32 %shl6, %shl5
  %shr8 = and i32 %significand, 2147483647
  br label %if.end24

if.else:                                          ; preds = %if.end
  %add10 = or i32 %shr9, 32768
  %arrayidx11 = getelementptr [16 x i16], ptr @sqrt_evenadjust, i32 0, i32 %and1
  %2 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %3 to i32
  %sub13 = sub nsw i32 %add10, %conv12
  %div14 = udiv i32 %shl, %sub13
  %add15 = add i32 %sub13, %div14
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %add15)
  %cmp16 = icmp ugt i32 %add15, 131071
  %shl18 = shl i32 %add15, 15
  %spec.select = select i1 %cmp16, i32 -32768, i32 %shl18
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %shl)
  %cmp19.not = icmp ugt i32 %spec.select, %shl
  br i1 %cmp19.not, label %if.else.if.end24_crit_edge, label %if.then21

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %shr22 = ashr exact i32 %shl, 1
  br label %cleanup

if.end24:                                         ; preds = %if.else.if.end24_crit_edge, %if.then3
  %a.0 = phi i32 [ %shr8, %if.then3 ], [ %shl, %if.else.if.end24_crit_edge ]
  %z.0 = phi i32 [ %add7, %if.then3 ], [ %spec.select, %if.else.if.end24_crit_edge ]
  %conv25 = zext i32 %a.0 to i64
  %shl26 = shl nuw nsw i64 %conv25, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %a.0)
  %cmp209 = icmp ult i32 %a.0, 2
  br i1 %cmp209, label %if.then213, label %if.else219, !prof !116

if.then213:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %conv214 = trunc i64 %shl26 to i32
  %div217 = udiv i32 %conv214, %z.0
  br label %if.end223

if.else219:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %z.0, i64 %shl26) #9, !srcloc !117
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t355 = trunc i64 %asmresult1.i to i32
  br label %if.end223

if.end223:                                        ; preds = %if.else219, %if.then213
  %v.0.off0 = phi i32 [ %div217, %if.then213 ], [ %extract.t355, %if.else219 ]
  %shr225 = lshr i32 %z.0, 1
  %conv228 = add i32 %v.0.off0, %shr225
  br label %cleanup

cleanup:                                          ; preds = %if.end223, %if.then21
  %retval.0 = phi i32 [ %conv228, %if.end223 ], [ %shr22, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfp_single_cpdo(i32 noundef %inst, i32 noundef %fpscr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %inst, 11534400
  %and1 = lshr i32 %inst, 15
  %shr = and i32 %and1, 30
  %and2 = lshr i32 %inst, 7
  %shr3 = and i32 %and2, 1
  %or = or i32 %shr, %shr3
  %and4 = shl i32 %inst, 1
  %shl = and i32 %and4, 30
  %and5 = lshr i32 %inst, 5
  %shr6 = and i32 %and5, 1
  %or7 = or i32 %shl, %shr6
  %and8 = and i32 %fpscr, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %and8)
  %cmp = icmp eq i32 %and8, 3145728
  %add = select i1 %cmp, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11534400, i32 %and)
  %cmp9 = icmp eq i32 %and, 11534400
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [32 x %struct.op], ptr @fops_ext, i32 0, i32 %or
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and16 = lshr i32 %inst, 20
  %shr17 = and i32 %and16, 11
  %and18 = lshr i32 %inst, 4
  %shr19 = and i32 %and18, 4
  %or20 = or i32 %shr17, %shr19
  %arrayidx21 = getelementptr [16 x %struct.op], ptr @fops, i32 0, i32 %or20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ %arrayidx21, %cond.false ]
  %flags = getelementptr inbounds %struct.op, ptr %cond, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and22 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  %. = select i1 %tobool.not, i32 11, i32 12
  %.227 = select i1 %tobool.not, i32 30, i32 15
  %.228 = select i1 %tobool.not, i32 22, i32 18
  %.229 = select i1 %tobool.not, i32 1, i32 16
  %and28 = lshr i32 %inst, %.
  %shr29 = and i32 %and28, %.227
  %and30 = lshr i32 %inst, %.228
  %shr31 = and i32 %and30, %.229
  %or32 = or i32 %shr29, %shr31
  %and34 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp ne i32 %and34, 0
  %and36 = and i32 %or32, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp37 = icmp eq i32 %and36, 0
  %or.cond = or i1 %tobool35.not, %cmp37
  %and41 = and i32 %fpscr, 458752
  %veclen.0 = select i1 %or.cond, i32 0, i32 %and41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_cpdo.__UNIQUE_ID_ddebug27, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_cpdo, %if.then46)) #5
          to label %do.end [label %if.then46], !srcloc !114

if.then46:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %shr47 = lshr exact i32 %veclen.0, 16
  %add48 = add nuw nsw i32 %shr47, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_cpdo.__UNIQUE_ID_ddebug27, ptr noundef nonnull @.str.9, i32 noundef %add, i32 noundef %add48) #5
  br label %do.end

do.end:                                           ; preds = %if.then46, %cond.end
  %2 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond, align 4
  %tobool50.not = icmp eq ptr %3, null
  br i1 %tobool50.not, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %conv97 = select i1 %tobool.not, i32 115, i32 100
  %and98 = lshr i32 %inst, 20
  %shr99 = and i32 %and98, 11
  %and100 = lshr i32 %inst, 4
  %shr101 = and i32 %and100, 4
  %or102 = or i32 %shr99, %shr101
  br label %for.body

for.body:                                         ; preds = %do.end125.for.body_crit_edge, %for.cond.preheader
  %exceptions.0223 = phi i32 [ 0, %for.cond.preheader ], [ %or126, %do.end125.for.body_crit_edge ]
  %dest.1222 = phi i32 [ %or32, %for.cond.preheader ], [ %add131, %do.end125.for.body_crit_edge ]
  %sn.0221 = phi i32 [ %or, %for.cond.preheader ], [ %add136, %do.end125.for.body_crit_edge ]
  %sm.0220 = phi i32 [ %or7, %for.cond.preheader ], [ %sm.1, %do.end125.for.body_crit_edge ]
  %vecitr.0217 = phi i32 [ 0, %for.cond.preheader ], [ %add147, %do.end125.for.body_crit_edge ]
  %call55 = tail call i32 @vfp_get_float(i32 noundef %sm.0220) #5
  br i1 %cmp9, label %do.body64, label %do.body83

do.body64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_cpdo.__UNIQUE_ID_ddebug28, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_cpdo, %if.then76)) #5
          to label %if.end106 [label %if.then76], !srcloc !114

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  %shr77 = lshr exact i32 %vecitr.0217, 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_cpdo.__UNIQUE_ID_ddebug28, ptr noundef nonnull @.str.10, i32 noundef %shr77, i32 noundef %conv97, i32 noundef %dest.1222, i32 noundef %sn.0221, i32 noundef %sm.0220, i32 noundef %call55) #5
  br label %if.end106

do.body83:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_cpdo.__UNIQUE_ID_ddebug29, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_cpdo, %if.then95)) #5
          to label %if.end106 [label %if.then95], !srcloc !114

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  %shr96 = lshr exact i32 %vecitr.0217, 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_cpdo.__UNIQUE_ID_ddebug29, ptr noundef nonnull @.str.11, i32 noundef %shr96, i32 noundef %conv97, i32 noundef %dest.1222, i32 noundef %sn.0221, i32 noundef %or102, i32 noundef %sm.0220, i32 noundef %call55) #5
  br label %if.end106

if.end106:                                        ; preds = %if.then95, %do.body83, %if.then76, %do.body64
  %call108 = tail call i32 %3(i32 noundef %dest.1222, i32 noundef %sn.0221, i32 noundef %call55, i32 noundef %fpscr) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_cpdo.__UNIQUE_ID_ddebug30, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_cpdo, %if.then121)) #5
          to label %do.end125 [label %if.then121], !srcloc !114

if.then121:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %shr122 = lshr exact i32 %vecitr.0217, 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_cpdo.__UNIQUE_ID_ddebug30, ptr noundef nonnull @.str.12, i32 noundef %shr122, i32 noundef %call108) #5
  br label %do.end125

do.end125:                                        ; preds = %if.then121, %if.end106
  %or126 = or i32 %call108, %exceptions.0223
  %and127 = and i32 %dest.1222, 24
  %add129 = add nsw i32 %dest.1222, %add
  %and130 = and i32 %add129, 7
  %add131 = or i32 %and130, %and127
  %and132 = and i32 %sn.0221, 24
  %add134 = add nsw i32 %sn.0221, %add
  %and135 = and i32 %add134, 7
  %add136 = or i32 %and135, %and132
  %and137 = and i32 %sm.0220, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %cmp138.not = icmp eq i32 %and137, 0
  %add143 = add i32 %sm.0220, %add
  %and144 = and i32 %add143, 7
  %add145 = or i32 %and144, %and137
  %sm.1 = select i1 %cmp138.not, i32 %sm.0220, i32 %add145
  %add147 = add nuw nsw i32 %vecitr.0217, 65536
  %cmp53.not = icmp ugt i32 %add147, %veclen.0
  br i1 %cmp53.not, label %do.end125.cleanup_crit_edge, label %do.end125.for.body_crit_edge

do.end125.for.body_crit_edge:                     ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end125.cleanup_crit_edge:                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end125.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end.cleanup_crit_edge ], [ %or126, %do.end125.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_get_float(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fcpy(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vfp_put_float(i32 noundef %m, i32 noundef %sd) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fabs(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %m, 2147483647
  tail call void @vfp_put_float(i32 noundef %and, i32 noundef %sd) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fneg(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xor = xor i32 %m, -2147483648
  tail call void @vfp_put_float(i32 noundef %xor, i32 noundef %sd) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fsqrt(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  %vsm = alloca %struct.vfp_single, align 4
  %vsd = alloca %struct.vfp_single, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsm) #5
  %0 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsd) #5
  %2 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 2
  %and.i = lshr i32 %m, 16
  %4 = trunc i32 %and.i to i16
  %conv.i = and i16 %4, -32768
  %5 = ptrtoint ptr %vsd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %vsd, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %0, align 2
  %7 = lshr i32 %m, 23
  %8 = trunc i32 %7 to i16
  %conv3.i = and i16 %8, 255
  %9 = ptrtoint ptr %vsm to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3.i, ptr %vsm, align 4
  %10 = shl i32 %m, 7
  %shr4.i = and i32 %10, 1073741696
  %trunc.i = trunc i32 %7 to i8
  %11 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %trunc.i, label %if.then.i [
    i8 0, label %entry.vfp_single_unpack.exit_crit_edge
    i8 -1, label %entry.vfp_single_unpack.exit_crit_edge169
  ]

entry.vfp_single_unpack.exit_crit_edge169:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

entry.vfp_single_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %shr4.i, 1073741824
  br label %vfp_single_unpack.exit

vfp_single_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_single_unpack.exit_crit_edge, %entry.vfp_single_unpack.exit_crit_edge169
  %significand.0.i = phi i32 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_single_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_single_unpack.exit_crit_edge169 ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %significand.0.i, ptr %1, align 4
  %13 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %trunc.i, label %vfp_single_unpack.exit.if.end18_crit_edge [
    i8 -1, label %if.then.i97
    i8 0, label %if.then14.i
  ]

vfp_single_unpack.exit.if.end18_crit_edge:        ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then.i97:                                      ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp2.i = icmp eq i32 %significand.0.i, 0
  br i1 %cmp2.i, label %if.else, label %if.else.i

if.else.i:                                        ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #7
  %and.i98 = and i32 %significand.0.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i = icmp eq i32 %and.i98, 0
  %..i = select i1 %tobool.not.i, i32 48, i32 16
  br label %vfp_single_type.exit

if.then14.i:                                      ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp16.i = icmp eq i32 %significand.0.i, 0
  %.30.i = select i1 %cmp16.i, i32 3, i32 5
  br label %vfp_single_type.exit

vfp_single_type.exit:                             ; preds = %if.then14.i, %if.else.i
  %type.0.i = phi i32 [ %..i, %if.else.i ], [ %.30.i, %if.then14.i ]
  %and = and i32 %type.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %vfp_single_type.exit
  %14 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %trunc.i, label %if.then3.vfp_single_type.exit.i_crit_edge [
    i8 -1, label %if.then.i.i
    i8 0, label %if.then14.i.i
  ]

if.then3.vfp_single_type.exit.i_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit.i

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp2.i.i = icmp eq i32 %significand.0.i, 0
  br i1 %cmp2.i.i, label %if.then.i.i.vfp_single_type.exit.i_crit_edge, label %if.else.i.i

if.then.i.i.vfp_single_type.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = and i32 %significand.0.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 48, i32 16
  br label %vfp_single_type.exit.i

if.then14.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp16.i.i = icmp eq i32 %significand.0.i, 0
  %.30.i.i = select i1 %cmp16.i.i, i32 3, i32 5
  br label %vfp_single_type.exit.i

vfp_single_type.exit.i:                           ; preds = %if.then14.i.i, %if.else.i.i, %if.then.i.i.vfp_single_type.exit.i_crit_edge, %if.then3.vfp_single_type.exit.i_crit_edge
  %type.0.i.i = phi i32 [ 8, %if.then.i.i.vfp_single_type.exit.i_crit_edge ], [ %..i.i, %if.else.i.i ], [ 1, %if.then3.vfp_single_type.exit.i_crit_edge ], [ %.30.i.i, %if.then14.i.i ]
  %and.i99 = and i32 %fpscr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool2.not.i = icmp eq i32 %and.i99, 0
  br i1 %tobool2.not.i, label %if.else.i102, label %vfp_single_type.exit.i.vfp_propagate_nan.exit_crit_edge

vfp_single_type.exit.i.vfp_propagate_nan.exit_crit_edge: ; preds = %vfp_single_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_propagate_nan.exit

if.else.i102:                                     ; preds = %vfp_single_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = and i32 %type.0.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %16 = icmp eq i32 %15, 16
  %nan.0.i = select i1 %16, ptr %vsm, ptr null
  %nan.0.i.sroa.sel = select i1 %16, ptr %1, ptr inttoptr (i32 4 to ptr)
  %17 = ptrtoint ptr %nan.0.i.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nan.0.i.sroa.sel, align 4
  %or.i101 = or i32 %18, 536870912
  store i32 %or.i101, ptr %nan.0.i.sroa.sel, align 4
  br label %vfp_propagate_nan.exit

vfp_propagate_nan.exit:                           ; preds = %if.else.i102, %vfp_single_type.exit.i.vfp_propagate_nan.exit_crit_edge
  %nan.1.i = phi ptr [ %nan.0.i, %if.else.i102 ], [ @vfp_single_default_qnan, %vfp_single_type.exit.i.vfp_propagate_nan.exit_crit_edge ]
  %19 = ptrtoint ptr %nan.1.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %nan.1.i, align 4
  %21 = ptrtoint ptr %vsd to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %vsd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i)
  %cmp10.i = icmp eq i32 %type.0.i.i, 48
  %22 = select i1 %cmp10.i, i32 1, i32 256
  br label %if.end8

if.else:                                          ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp = icmp eq i16 %conv.i, 0
  br i1 %cmp, label %if.else.if.end8_crit_edge, label %if.else.sqrt_invalid_crit_edge

if.else.sqrt_invalid_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sqrt_invalid

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

sqrt_invalid:                                     ; preds = %if.end18.sqrt_invalid_crit_edge, %if.else.sqrt_invalid_crit_edge
  br label %if.end8

if.end8:                                          ; preds = %if.end10.if.end8_crit_edge, %sqrt_invalid, %if.else.if.end8_crit_edge, %vfp_propagate_nan.exit
  %vsp.0 = phi ptr [ %vsd, %vfp_propagate_nan.exit ], [ @vfp_single_default_qnan, %sqrt_invalid ], [ %vsm, %if.end10.if.end8_crit_edge ], [ %vsm, %if.else.if.end8_crit_edge ]
  %ret.0 = phi i32 [ %22, %vfp_propagate_nan.exit ], [ 1, %sqrt_invalid ], [ 0, %if.end10.if.end8_crit_edge ], [ 0, %if.else.if.end8_crit_edge ]
  %sign.i103 = getelementptr inbounds %struct.vfp_single, ptr %vsp.0, i32 0, i32 1
  %23 = ptrtoint ptr %sign.i103 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sign.i103, align 2
  %conv.i104 = zext i16 %24 to i32
  %shl.i = shl nuw i32 %conv.i104, 16
  %25 = ptrtoint ptr %vsp.0 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vsp.0, align 4
  %conv16.i = zext i16 %26 to i32
  %shl2.i = shl i32 %conv16.i, 23
  %add.i = add i32 %shl2.i, %shl.i
  %significand.i105 = getelementptr inbounds %struct.vfp_single, ptr %vsp.0, i32 0, i32 2
  %27 = ptrtoint ptr %significand.i105 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %significand.i105, align 4
  %shr.i = lshr i32 %28, 7
  %add3.i = add i32 %add.i, %shr.i
  tail call void @vfp_put_float(i32 noundef %add3.i, i32 noundef %sd) #5
  br label %cleanup

if.end10:                                         ; preds = %vfp_single_type.exit
  %and11 = and i32 %type.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.if.end8_crit_edge

if.end10.if.end8_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end14:                                         ; preds = %if.end10
  %and15 = and i32 %type.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %tobool.not.i.i107 = icmp eq i32 %significand.0.i, 0
  %29 = tail call i32 @llvm.ctlz.i32(i32 %significand.0.i, i1 true) #5, !range !115
  %sub.i.i = sub nuw nsw i32 32, %29
  %cond.i.i = select i1 %tobool.not.i.i107, i32 0, i32 %sub.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fsqrt, %if.then.i.i108)) #5
          to label %vfp_single_dump.exit.i [label %if.then.i.i108], !srcloc !114

if.then.i.i108:                                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i.i = icmp ne i16 %31, 0
  %conv3.i.i = zext i1 %cmp.i.i to i32
  %32 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vsm, align 4
  %conv4.i.i = sext i16 %33 to i32
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i.i, i32 noundef %conv4.i.i, i32 noundef %35) #5
  br label %vfp_single_dump.exit.i

vfp_single_dump.exit.i:                           ; preds = %if.then.i.i108, %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %cond.i.i)
  %tobool.not.i109 = icmp eq i32 %cond.i.i, 31
  br i1 %tobool.not.i109, label %vfp_single_dump.exit.i.if.end.i_crit_edge, label %if.then.i112

vfp_single_dump.exit.i.if.end.i_crit_edge:        ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i112:                                     ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub nsw i32 31, %cond.i.i
  %36 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vsm, align 4
  %38 = trunc i32 %cond.i.i to i16
  %39 = add nsw i16 %38, -30
  %conv3.i110 = add i16 %39, %37
  store i16 %conv3.i110, ptr %vsm, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %shl.i111 = shl i32 %41, %sub.i
  store i32 %shl.i111, ptr %1, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i112, %vfp_single_dump.exit.i.if.end.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fsqrt, %if.then.i17.i)) #5
          to label %if.end18 [label %if.then.i17.i], !srcloc !114

if.then.i17.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp.i13.i = icmp ne i16 %43, 0
  %conv3.i14.i = zext i1 %cmp.i13.i to i32
  %44 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vsm, align 4
  %conv4.i15.i = sext i16 %45 to i32
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14.i, i32 noundef %conv4.i15.i, i32 noundef %47) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then.i17.i, %if.end.i, %if.end14.if.end18_crit_edge, %vfp_single_unpack.exit.if.end18_crit_edge
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool20.not = icmp eq i16 %49, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.sqrt_invalid_crit_edge

if.end18.sqrt_invalid_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sqrt_invalid

if.end22:                                         ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fsqrt, %if.then.i117)) #5
          to label %vfp_single_dump.exit [label %if.then.i117], !srcloc !114

if.then.i117:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp.i114 = icmp ne i16 %51, 0
  %conv3.i115 = zext i1 %cmp.i114 to i32
  %52 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vsm, align 4
  %conv4.i = sext i16 %53 to i32
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %conv3.i115, i32 noundef %conv4.i, i32 noundef %55) #5
  br label %vfp_single_dump.exit

vfp_single_dump.exit:                             ; preds = %if.then.i117, %if.end22
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %2, align 2
  %57 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vsm, align 4
  %conv24 = sext i16 %58 to i32
  %sub = add nsw i32 %conv24, 130945
  %59 = lshr i32 %sub, 1
  %60 = trunc i32 %59 to i16
  %conv25 = add nsw i16 %60, 127
  %61 = ptrtoint ptr %vsd to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv25, ptr %vsd, align 8
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %1, align 4
  %and.i118 = and i32 %63, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and.i118)
  %cmp.not.i = icmp eq i32 %and.i118, 1073741824
  br i1 %cmp.not.i, label %vfp_single_dump.exit.if.end.i122_crit_edge, label %do.end.i

vfp_single_dump.exit.if.end.i122_crit_edge:       ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i122

do.end.i:                                         ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %if.end.i122

if.end.i122:                                      ; preds = %do.end.i, %vfp_single_dump.exit.if.end.i122_crit_edge
  %shl.i119 = shl i32 %63, 1
  %shr.i120 = lshr i32 %shl.i119, 27
  %and1.i = and i32 %shr.i120, 15
  %and2.i = and i32 %conv24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i121 = icmp eq i32 %and2.i, 0
  %shr9.i = lshr i32 %shl.i119, 17
  br i1 %tobool.not.i121, label %if.else.i127, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #7
  %add.i123 = add nuw nsw i32 %shr9.i, 16384
  %arrayidx.i = getelementptr [16 x i16], ptr @sqrt_oddadjust, i32 0, i32 %and1.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i, align 2
  %conv.i124 = zext i16 %65 to i32
  %sub.i125 = sub nsw i32 %add.i123, %conv.i124
  %div.i = udiv i32 %shl.i119, %sub.i125
  %shl5.i = shl i32 %div.i, 14
  %shl6.i = shl nsw i32 %sub.i125, 15
  %add7.i = add i32 %shl6.i, %shl5.i
  %shr8.i = and i32 %63, 2147483647
  br label %if.end24.i

if.else.i127:                                     ; preds = %if.end.i122
  %add10.i = or i32 %shr9.i, 32768
  %arrayidx11.i = getelementptr [16 x i16], ptr @sqrt_evenadjust, i32 0, i32 %and1.i
  %66 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %67 to i32
  %sub13.i = sub nsw i32 %add10.i, %conv12.i
  %div14.i = udiv i32 %shl.i119, %sub13.i
  %add15.i = add i32 %sub13.i, %div14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %add15.i)
  %cmp16.i126 = icmp ugt i32 %add15.i, 131071
  %shl18.i = shl i32 %add15.i, 15
  %spec.select.i = select i1 %cmp16.i126, i32 -32768, i32 %shl18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %shl.i119)
  %cmp19.not.i = icmp ugt i32 %spec.select.i, %shl.i119
  br i1 %cmp19.not.i, label %if.else.i127.if.end24.i_crit_edge, label %if.then21.i

if.else.i127.if.end24.i_crit_edge:                ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #7
  %shr22.i = ashr exact i32 %shl.i119, 1
  br label %vfp_estimate_sqrt_significand.exit

if.end24.i:                                       ; preds = %if.else.i127.if.end24.i_crit_edge, %if.then3.i
  %a.0.i = phi i32 [ %shr8.i, %if.then3.i ], [ %shl.i119, %if.else.i127.if.end24.i_crit_edge ]
  %z.0.i = phi i32 [ %add7.i, %if.then3.i ], [ %spec.select.i, %if.else.i127.if.end24.i_crit_edge ]
  %conv25.i = zext i32 %a.0.i to i64
  %shl26.i = shl nuw nsw i64 %conv25.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %a.0.i)
  %cmp209.i = icmp ult i32 %a.0.i, 2
  br i1 %cmp209.i, label %if.then213.i, label %if.else219.i, !prof !116

if.then213.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv214.i = trunc i64 %shl26.i to i32
  %div217.i = udiv i32 %conv214.i, %z.0.i
  br label %if.end223.i

if.else219.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %68 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %z.0.i, i64 %shl26.i) #9, !srcloc !117
  %asmresult1.i.i = extractvalue { i64, i64 } %68, 1
  %extract.t355.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end223.i

if.end223.i:                                      ; preds = %if.else219.i, %if.then213.i
  %v.0.off0.i = phi i32 [ %div217.i, %if.then213.i ], [ %extract.t355.i, %if.else219.i ]
  %shr225.i = lshr i32 %z.0.i, 1
  %conv228.i = add i32 %v.0.off0.i, %shr225.i
  br label %vfp_estimate_sqrt_significand.exit

vfp_estimate_sqrt_significand.exit:               ; preds = %if.end223.i, %if.then21.i
  %retval.0.i130 = phi i32 [ %conv228.i, %if.end223.i ], [ %shr22.i, %if.then21.i ]
  %add30 = add i32 %retval.0.i130, 2
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add30, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fsqrt, %if.then.i136)) #5
          to label %vfp_single_dump.exit138 [label %if.then.i136], !srcloc !114

if.then.i136:                                     ; preds = %vfp_estimate_sqrt_significand.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i134 = sext i16 %conv25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef %conv4.i134, i32 noundef %add30) #5
  br label %vfp_single_dump.exit138

vfp_single_dump.exit138:                          ; preds = %if.then.i136, %vfp_estimate_sqrt_significand.exit
  %and33 = and i32 %add30, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and33)
  %cmp34 = icmp ult i32 %and33, 6
  br i1 %cmp34, label %if.then36, label %vfp_single_dump.exit138.if.end78_crit_edge

vfp_single_dump.exit138.if.end78_crit_edge:       ; preds = %vfp_single_dump.exit138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then36:                                        ; preds = %vfp_single_dump.exit138
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %retval.0.i130)
  %cmp38 = icmp ugt i32 %retval.0.i130, -3
  br i1 %cmp38, label %if.then36.if.end78.sink.split_crit_edge, label %if.else42

if.then36.if.end78.sink.split_crit_edge:          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78.sink.split

if.else42:                                        ; preds = %if.then36
  %70 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vsm, align 4
  %72 = and i16 %71, 1
  %73 = xor i16 %72, 1
  %74 = zext i16 %73 to i32
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %1, align 4
  %shl = shl i32 %76, %74
  store i32 %shl, ptr %1, align 4
  %conv49 = zext i32 %add30 to i64
  %mul = mul nuw i64 %conv49, %conv49
  %conv53 = zext i32 %shl to i64
  %shl54 = shl nuw i64 %conv53, 32
  %sub55 = sub i64 %shl54, %mul
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_fsqrt.__UNIQUE_ID_ddebug17, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fsqrt, %if.then63)) #5
          to label %do.end [label %if.then63], !srcloc !114

if.then63:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_fsqrt.__UNIQUE_ID_ddebug17, ptr noundef nonnull @.str.18, i64 noundef %mul, i64 noundef %sub55) #5
  br label %do.end

do.end:                                           ; preds = %if.then63, %if.else42
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.promoted = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub55)
  %cmp65166 = icmp slt i64 %sub55, 0
  br i1 %cmp65166, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %rem.0167 = phi i64 [ %add72, %while.body.while.body_crit_edge ], [ %sub55, %do.end.while.body_crit_edge ]
  %78 = phi i32 [ %sub68, %while.body.while.body_crit_edge ], [ %.promoted, %do.end.while.body_crit_edge ]
  %sub68 = add i32 %78, -1
  %conv70 = zext i32 %sub68 to i64
  %shl71 = shl nuw nsw i64 %conv70, 1
  %or = add nsw i64 %rem.0167, 1
  %add72 = add nsw i64 %or, %shl71
  %cmp65 = icmp slt i64 %add72, 0
  br i1 %cmp65, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %.lcssa = phi i32 [ %.promoted, %do.end.while.end_crit_edge ], [ %sub68, %while.body.while.end_crit_edge ]
  %rem.0.lcssa = phi i64 [ %sub55, %do.end.while.end_crit_edge ], [ %add72, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.0.lcssa)
  %cmp73 = icmp ne i64 %rem.0.lcssa, 0
  %conv74 = zext i1 %cmp73 to i32
  %or76 = or i32 %.lcssa, %conv74
  br label %if.end78.sink.split

if.end78.sink.split:                              ; preds = %while.end, %if.then36.if.end78.sink.split_crit_edge
  %.sink = phi i32 [ %or76, %while.end ], [ -1, %if.then36.if.end78.sink.split_crit_edge ]
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink, ptr %3, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end78.sink.split, %vfp_single_dump.exit138.if.end78_crit_edge
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %3, align 4
  %shr.i140 = lshr i32 %81, 1
  %shl.i141.mask = and i32 %81, 1
  %or.i144 = or i32 %shr.i140, %shl.i141.mask
  store i32 %or.i144, ptr %3, align 4
  %call82 = call i32 @__vfp_single_normaliseround(i32 noundef %sd, ptr noundef nonnull %vsd, i32 noundef %fpscr, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.end8
  %retval.0 = phi i32 [ %ret.0, %if.end8 ], [ %call82, %if.end78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsd) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsm) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fcmp(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @vfp_get_float(i32 noundef %sd) #5
  %0 = and i32 %m, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp.i = icmp ne i32 %0, 2139095040
  %and1.i = and i32 %m, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end8.thread.i, label %if.end8.i

if.end8.i:                                        ; preds = %entry
  %and4.i = and i32 %m, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %spec.select3.i = select i1 %tobool5.not.i, i32 805306369, i32 805306368
  %1 = and i32 %call.i, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp11.i = icmp ne i32 %1, 2139095040
  %and13.i = and i32 %call.i, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %or.cond2.i = or i1 %cmp11.i, %tobool14.not.i
  br i1 %or.cond2.i, label %if.end8.i.vfp_compare.exit_crit_edge, label %if.end8.i.if.then15.i_crit_edge

if.end8.i.if.then15.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

if.end8.i.vfp_compare.exit_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.end8.thread.i:                                 ; preds = %entry
  %2 = and i32 %call.i, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %2)
  %cmp117.i = icmp ne i32 %2, 2139095040
  %and138.i = and i32 %call.i, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool14.not9.i = icmp eq i32 %and138.i, 0
  %or.cond210.i = or i1 %cmp117.i, %tobool14.not9.i
  br i1 %or.cond210.i, label %if.then27.i, label %if.end8.thread.i.if.then15.i_crit_edge

if.end8.thread.i.if.then15.i_crit_edge:           ; preds = %if.end8.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end8.thread.i.if.then15.i_crit_edge, %if.end8.i.if.then15.i_crit_edge
  %ret.011.i = phi i32 [ 0, %if.end8.thread.i.if.then15.i_crit_edge ], [ %spec.select3.i, %if.end8.i.if.then15.i_crit_edge ]
  %or16.i = or i32 %ret.011.i, 805306368
  %and20.i = and i32 %call.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %spec.select = select i1 %tobool21.not.i, i32 805306369, i32 %or16.i
  br label %vfp_compare.exit

if.then27.i:                                      ; preds = %if.end8.thread.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %m)
  %cmp28.i = icmp eq i32 %call.i, %m
  br i1 %cmp28.i, label %if.then27.i.vfp_compare.exit_crit_edge, label %lor.lhs.false29.i

if.then27.i.vfp_compare.exit_crit_edge:           ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

lor.lhs.false29.i:                                ; preds = %if.then27.i
  %or30.i = or i32 %call.i, %m
  %and31.i = and i32 %or30.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %cmp32.i = icmp eq i32 %and31.i, 0
  br i1 %cmp32.i, label %lor.lhs.false29.i.vfp_compare.exit_crit_edge, label %if.else.i

lor.lhs.false29.i.vfp_compare.exit_crit_edge:     ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.else.i:                                        ; preds = %lor.lhs.false29.i
  %xor.i = xor i32 %call.i, %m
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %xor.i)
  %tobool36.not.i = icmp sgt i32 %xor.i, -1
  br i1 %tobool36.not.i, label %if.else45.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool39.not.i = icmp sgt i32 %call.i, -1
  %..i = select i1 %tobool39.not.i, i32 536870912, i32 -2147483648
  br label %vfp_compare.exit

if.else45.i:                                      ; preds = %if.else.i
  %call.lobit.i = lshr i32 %call.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %m)
  %cmp48.i = icmp slt i32 %call.i, %m
  %conv49.i = zext i1 %cmp48.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.lobit.i, i32 %conv49.i)
  %tobool51.not.i = icmp eq i32 %call.lobit.i, %conv49.i
  br i1 %tobool51.not.i, label %if.else54.i, label %if.else45.i.vfp_compare.exit_crit_edge

if.else45.i.vfp_compare.exit_crit_edge:           ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.else54.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %m)
  %cmp58.i = icmp sgt i32 %call.i, %m
  %conv59.i = zext i1 %cmp58.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.lobit.i, i32 %conv59.i)
  %tobool61.not.i = icmp eq i32 %call.lobit.i, %conv59.i
  %spec.select.i = select i1 %tobool61.not.i, i32 0, i32 536870912
  br label %vfp_compare.exit

vfp_compare.exit:                                 ; preds = %if.else54.i, %if.else45.i.vfp_compare.exit_crit_edge, %if.then37.i, %lor.lhs.false29.i.vfp_compare.exit_crit_edge, %if.then27.i.vfp_compare.exit_crit_edge, %if.then15.i, %if.end8.i.vfp_compare.exit_crit_edge
  %ret.2.i = phi i32 [ 1610612736, %lor.lhs.false29.i.vfp_compare.exit_crit_edge ], [ 1610612736, %if.then27.i.vfp_compare.exit_crit_edge ], [ %..i, %if.then37.i ], [ -2147483648, %if.else45.i.vfp_compare.exit_crit_edge ], [ %spec.select.i, %if.else54.i ], [ %spec.select3.i, %if.end8.i.vfp_compare.exit_crit_edge ], [ %spec.select, %if.then15.i ]
  ret i32 %ret.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fcmpe(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @vfp_get_float(i32 noundef %sd) #5
  %0 = and i32 %m, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp.i = icmp ne i32 %0, 2139095040
  %and1.i = and i32 %m, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end8.thread.i, label %entry.vfp_compare.exit_crit_edge

entry.vfp_compare.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.end8.thread.i:                                 ; preds = %entry
  %1 = and i32 %call.i, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp117.i = icmp ne i32 %1, 2139095040
  %and138.i = and i32 %call.i, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool14.not9.i = icmp eq i32 %and138.i, 0
  %or.cond210.i = or i1 %cmp117.i, %tobool14.not9.i
  br i1 %or.cond210.i, label %if.then27.i, label %if.end8.thread.i.vfp_compare.exit_crit_edge

if.end8.thread.i.vfp_compare.exit_crit_edge:      ; preds = %if.end8.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.then27.i:                                      ; preds = %if.end8.thread.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %m)
  %cmp28.i = icmp eq i32 %call.i, %m
  br i1 %cmp28.i, label %if.then27.i.vfp_compare.exit_crit_edge, label %lor.lhs.false29.i

if.then27.i.vfp_compare.exit_crit_edge:           ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

lor.lhs.false29.i:                                ; preds = %if.then27.i
  %or30.i = or i32 %call.i, %m
  %and31.i = and i32 %or30.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %cmp32.i = icmp eq i32 %and31.i, 0
  br i1 %cmp32.i, label %lor.lhs.false29.i.vfp_compare.exit_crit_edge, label %if.else.i

lor.lhs.false29.i.vfp_compare.exit_crit_edge:     ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.else.i:                                        ; preds = %lor.lhs.false29.i
  %xor.i = xor i32 %call.i, %m
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %xor.i)
  %tobool36.not.i = icmp sgt i32 %xor.i, -1
  br i1 %tobool36.not.i, label %if.else45.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool39.not.i = icmp sgt i32 %call.i, -1
  %..i = select i1 %tobool39.not.i, i32 536870912, i32 -2147483648
  br label %vfp_compare.exit

if.else45.i:                                      ; preds = %if.else.i
  %call.lobit.i = lshr i32 %call.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %m)
  %cmp48.i = icmp slt i32 %call.i, %m
  %conv49.i = zext i1 %cmp48.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.lobit.i, i32 %conv49.i)
  %tobool51.not.i = icmp eq i32 %call.lobit.i, %conv49.i
  br i1 %tobool51.not.i, label %if.else54.i, label %if.else45.i.vfp_compare.exit_crit_edge

if.else45.i.vfp_compare.exit_crit_edge:           ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.else54.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %m)
  %cmp58.i = icmp sgt i32 %call.i, %m
  %conv59.i = zext i1 %cmp58.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.lobit.i, i32 %conv59.i)
  %tobool61.not.i = icmp eq i32 %call.lobit.i, %conv59.i
  %spec.select.i = select i1 %tobool61.not.i, i32 0, i32 536870912
  br label %vfp_compare.exit

vfp_compare.exit:                                 ; preds = %if.else54.i, %if.else45.i.vfp_compare.exit_crit_edge, %if.then37.i, %lor.lhs.false29.i.vfp_compare.exit_crit_edge, %if.then27.i.vfp_compare.exit_crit_edge, %if.end8.thread.i.vfp_compare.exit_crit_edge, %entry.vfp_compare.exit_crit_edge
  %ret.2.i = phi i32 [ 1610612736, %lor.lhs.false29.i.vfp_compare.exit_crit_edge ], [ 1610612736, %if.then27.i.vfp_compare.exit_crit_edge ], [ %..i, %if.then37.i ], [ -2147483648, %if.else45.i.vfp_compare.exit_crit_edge ], [ %spec.select.i, %if.else54.i ], [ 805306369, %if.end8.thread.i.vfp_compare.exit_crit_edge ], [ 805306369, %entry.vfp_compare.exit_crit_edge ]
  ret i32 %ret.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fcmpz(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @vfp_get_float(i32 noundef %sd) #5
  %0 = and i32 %call.i, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp117.i = icmp ne i32 %0, 2139095040
  %and138.i = and i32 %call.i, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool14.not9.i = icmp eq i32 %and138.i, 0
  %or.cond210.i = or i1 %cmp117.i, %tobool14.not9.i
  br i1 %or.cond210.i, label %if.then27.i, label %if.then15.i

if.then15.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and20.i = and i32 %call.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %spec.select = select i1 %tobool21.not.i, i32 805306369, i32 805306368
  br label %vfp_compare.exit

if.then27.i:                                      ; preds = %entry
  %1 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call.i, label %if.else.i [
    i32 -2147483648, label %if.then27.i.vfp_compare.exit_crit_edge
    i32 0, label %if.then27.i.vfp_compare.exit_crit_edge1
  ]

if.then27.i.vfp_compare.exit_crit_edge1:          ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.then27.i.vfp_compare.exit_crit_edge:           ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.else.i:                                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool36.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool36.not.i, label %if.else54.i, label %if.else.i.vfp_compare.exit_crit_edge

if.else.i.vfp_compare.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.else54.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %2 = lshr i32 %call.i, 2
  %3 = and i32 %2, 536870912
  %4 = xor i32 %3, 536870912
  br label %vfp_compare.exit

vfp_compare.exit:                                 ; preds = %if.else54.i, %if.else.i.vfp_compare.exit_crit_edge, %if.then27.i.vfp_compare.exit_crit_edge, %if.then27.i.vfp_compare.exit_crit_edge1, %if.then15.i
  %ret.2.i = phi i32 [ 1610612736, %if.then27.i.vfp_compare.exit_crit_edge ], [ %4, %if.else54.i ], [ -2147483648, %if.else.i.vfp_compare.exit_crit_edge ], [ %spec.select, %if.then15.i ], [ 1610612736, %if.then27.i.vfp_compare.exit_crit_edge1 ]
  ret i32 %ret.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fcmpez(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @vfp_get_float(i32 noundef %sd) #5
  %0 = and i32 %call.i, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp117.i = icmp ne i32 %0, 2139095040
  %and138.i = and i32 %call.i, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool14.not9.i = icmp eq i32 %and138.i, 0
  %or.cond210.i = or i1 %cmp117.i, %tobool14.not9.i
  br i1 %or.cond210.i, label %if.then27.i, label %entry.vfp_compare.exit_crit_edge

entry.vfp_compare.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.then27.i:                                      ; preds = %entry
  %1 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call.i, label %if.else.i [
    i32 -2147483648, label %if.then27.i.vfp_compare.exit_crit_edge
    i32 0, label %if.then27.i.vfp_compare.exit_crit_edge1
  ]

if.then27.i.vfp_compare.exit_crit_edge1:          ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.then27.i.vfp_compare.exit_crit_edge:           ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.else.i:                                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool36.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool36.not.i, label %if.else54.i, label %if.else.i.vfp_compare.exit_crit_edge

if.else.i.vfp_compare.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_compare.exit

if.else54.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %2 = lshr i32 %call.i, 2
  %3 = and i32 %2, 536870912
  %4 = xor i32 %3, 536870912
  br label %vfp_compare.exit

vfp_compare.exit:                                 ; preds = %if.else54.i, %if.else.i.vfp_compare.exit_crit_edge, %if.then27.i.vfp_compare.exit_crit_edge, %if.then27.i.vfp_compare.exit_crit_edge1, %entry.vfp_compare.exit_crit_edge
  %ret.2.i = phi i32 [ 1610612736, %if.then27.i.vfp_compare.exit_crit_edge ], [ %4, %if.else54.i ], [ 805306369, %entry.vfp_compare.exit_crit_edge ], [ -2147483648, %if.else.i.vfp_compare.exit_crit_edge ], [ 1610612736, %if.then27.i.vfp_compare.exit_crit_edge1 ]
  ret i32 %ret.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fcvtd(i32 noundef %dd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  %vdd = alloca %struct.vfp_double, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vdd) #5
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vdd, align 8
  %and.i = lshr i32 %m, 16
  %1 = trunc i32 %and.i to i16
  %conv.i = and i16 %1, -32768
  %2 = lshr i32 %m, 23
  %3 = trunc i32 %2 to i16
  %conv3.i = and i16 %3, 255
  %4 = shl i32 %m, 7
  %shr4.i = and i32 %4, 1073741696
  %trunc.i = trunc i32 %2 to i8
  %5 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %trunc.i, label %if.then.i [
    i8 0, label %entry.vfp_single_unpack.exit_crit_edge
    i8 -1, label %entry.vfp_single_unpack.exit_crit_edge72
  ]

entry.vfp_single_unpack.exit_crit_edge72:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

entry.vfp_single_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %shr4.i, 1073741824
  br label %vfp_single_unpack.exit

vfp_single_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_single_unpack.exit_crit_edge, %entry.vfp_single_unpack.exit_crit_edge72
  %significand.0.i = phi i32 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_single_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_single_unpack.exit_crit_edge72 ]
  %6 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %trunc.i, label %vfp_single_unpack.exit.vfp_single_type.exit.thread66_crit_edge [
    i8 -1, label %if.then.i35
    i8 0, label %vfp_single_type.exit
  ]

vfp_single_unpack.exit.vfp_single_type.exit.thread66_crit_edge: ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit.thread66

if.then.i35:                                      ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp2.i = icmp eq i32 %significand.0.i, 0
  br i1 %cmp2.i, label %if.then.i35.vfp_single_type.exit.thread66_crit_edge, label %if.else.i

if.then.i35.vfp_single_type.exit.thread66_crit_edge: ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit.thread66

if.else.i:                                        ; preds = %if.then.i35
  %and.i36 = and i32 %significand.0.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i, label %if.else.i.if.end2_crit_edge, label %if.else.i.vfp_single_type.exit.thread66_crit_edge

if.else.i.vfp_single_type.exit.thread66_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit.thread66

if.else.i.if.end2_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

vfp_single_type.exit.thread66:                    ; preds = %if.else.i.vfp_single_type.exit.thread66_crit_edge, %if.then.i35.vfp_single_type.exit.thread66_crit_edge, %vfp_single_unpack.exit.vfp_single_type.exit.thread66_crit_edge
  %type.0.i.ph.ph = phi i32 [ 8, %if.then.i35.vfp_single_type.exit.thread66_crit_edge ], [ 16, %if.else.i.vfp_single_type.exit.thread66_crit_edge ], [ 1, %vfp_single_unpack.exit.vfp_single_type.exit.thread66_crit_edge ]
  br label %if.end2

vfp_single_type.exit:                             ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp16.i = icmp eq i32 %significand.0.i, 0
  %.30.i = select i1 %cmp16.i, i32 3, i32 5
  %and = and i32 %.30.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %vfp_single_type.exit.if.end2_crit_edge, label %if.then1

vfp_single_type.exit.if.end2_crit_edge:           ; preds = %vfp_single_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then1:                                         ; preds = %vfp_single_type.exit
  %7 = tail call i32 @llvm.ctlz.i32(i32 %significand.0.i, i1 true) #5, !range !115
  %sub.i.i = sub nuw nsw i32 32, %7
  %cond.i.i = select i1 %cmp16.i, i32 0, i32 %sub.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fcvtd, %if.then.i.i)) #5
          to label %vfp_single_dump.exit.i [label %if.then.i.i], !srcloc !114

if.then.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.lobit = lshr i32 %m, 31
  %conv4.i.i70 = zext i16 %conv3.i to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv.i.lobit, i32 noundef %conv4.i.i70, i32 noundef %significand.0.i) #5
  br label %vfp_single_dump.exit.i

vfp_single_dump.exit.i:                           ; preds = %if.then.i.i, %if.then1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %cond.i.i)
  %tobool.not.i38 = icmp eq i32 %cond.i.i, 31
  %sub.i = sub nsw i32 31, %cond.i.i
  %8 = trunc i32 %cond.i.i to i16
  %9 = add nsw i16 %conv3.i, -30
  %conv3.i39 = add nsw i16 %9, %8
  %vsm.sroa.15.0 = shl i32 %significand.0.i, %sub.i
  %vsm.sroa.0.0 = select i1 %tobool.not.i38, i16 0, i16 %conv3.i39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fcvtd, %if.then.i17.i)) #5
          to label %if.end2 [label %if.then.i17.i], !srcloc !114

if.then.i17.i:                                    ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.lobit71 = lshr i32 %m, 31
  %conv4.i15.i = sext i16 %vsm.sroa.0.0 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv.i.lobit71, i32 noundef %conv4.i15.i, i32 noundef %vsm.sroa.15.0) #5
  br label %if.end2

if.end2:                                          ; preds = %if.then.i17.i, %vfp_single_dump.exit.i, %vfp_single_type.exit.if.end2_crit_edge, %vfp_single_type.exit.thread66, %if.else.i.if.end2_crit_edge
  %10 = phi i32 [ 0, %vfp_single_type.exit.if.end2_crit_edge ], [ 0, %vfp_single_type.exit.thread66 ], [ 0, %vfp_single_dump.exit.i ], [ 0, %if.then.i17.i ], [ 1, %if.else.i.if.end2_crit_edge ]
  %type.0.i5964 = phi i32 [ %.30.i, %vfp_single_type.exit.if.end2_crit_edge ], [ %type.0.i.ph.ph, %vfp_single_type.exit.thread66 ], [ 5, %vfp_single_dump.exit.i ], [ 5, %if.then.i17.i ], [ 48, %if.else.i.if.end2_crit_edge ]
  %vsm.sroa.15.1 = phi i32 [ %significand.0.i, %vfp_single_type.exit.if.end2_crit_edge ], [ %significand.0.i, %vfp_single_type.exit.thread66 ], [ %vsm.sroa.15.0, %vfp_single_dump.exit.i ], [ %vsm.sroa.15.0, %if.then.i17.i ], [ %significand.0.i, %if.else.i.if.end2_crit_edge ]
  %vsm.sroa.0.1 = phi i16 [ 0, %vfp_single_type.exit.if.end2_crit_edge ], [ %conv3.i, %vfp_single_type.exit.thread66 ], [ %vsm.sroa.0.0, %vfp_single_dump.exit.i ], [ %vsm.sroa.0.0, %if.then.i17.i ], [ 255, %if.else.i.if.end2_crit_edge ]
  %sign3 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 1
  %11 = ptrtoint ptr %sign3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %sign3, align 2
  %conv = zext i32 %vsm.sroa.15.1 to i64
  %shl = shl nuw i64 %conv, 32
  %significand4 = getelementptr inbounds %struct.vfp_double, ptr %vdd, i32 0, i32 2
  %12 = ptrtoint ptr %significand4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %shl, ptr %significand4, align 8
  %and5 = and i32 %type.0.i5964, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type.0.i5964)
  %cmp8 = icmp eq i32 %type.0.i5964, 16
  br i1 %cmp8, label %if.then10, label %if.then7.pack_nan_crit_edge

if.then7.pack_nan_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %pack_nan

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i64 %shl, 2305843009213693952
  %13 = ptrtoint ptr %significand4 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or, ptr %significand4, align 8
  br label %pack_nan

if.else:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %and13 = and i32 %type.0.i5964, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %add = add nsw i16 %vsm.sroa.0.1, 896
  %spec.select = select i1 %tobool14.not, i16 %add, i16 0
  %14 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %spec.select, ptr %vdd, align 8
  %call24 = call i32 @vfp_double_normaliseround(i32 noundef %dd, ptr noundef nonnull %vdd, i32 noundef %fpscr, i32 noundef %10, ptr noundef nonnull @.str.21) #5
  br label %cleanup

pack_nan:                                         ; preds = %if.then10, %if.then7.pack_nan_crit_edge
  %conv.i42 = zext i16 %conv.i to i64
  %shl.i43 = shl nuw i64 %conv.i42, 48
  %add.i = or i64 %shl.i43, 9218868437227405312
  %15 = ptrtoint ptr %significand4 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %significand4, align 8
  %shr.i = lshr i64 %16, 10
  %add3.i = add i64 %add.i, %shr.i
  tail call void @vfp_put_double(i64 noundef %add3.i, i32 noundef %dd) #5
  br label %cleanup

cleanup:                                          ; preds = %pack_nan, %if.else
  %retval.0 = phi i32 [ %10, %pack_nan ], [ %call24, %if.else ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vdd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fuito(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  %vs = alloca %struct.vfp_single, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vs) #5
  %0 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %0, align 2
  %3 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 157, ptr %vs, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %m, ptr %1, align 4
  %call = call i32 @__vfp_single_normaliseround(i32 noundef %sd, ptr noundef nonnull %vs, i32 noundef %fpscr, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vs) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fsito(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  %vs = alloca %struct.vfp_single, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vs) #5
  %0 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 2
  %and = lshr i32 %m, 16
  %2 = trunc i32 %and to i16
  %conv = and i16 %2, -32768
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %0, align 2
  %4 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 157, ptr %vs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  %sub = sub i32 0, %m
  %cond = select i1 %tobool.not, i32 %m, i32 %sub
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %1, align 4
  %call = call i32 @__vfp_single_normaliseround(i32 noundef %sd, ptr noundef nonnull %vs, i32 noundef %fpscr, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vs) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_ftoui(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %fpscr, 12582912
  %and.i = lshr i32 %m, 16
  %0 = trunc i32 %and.i to i16
  %conv.i = and i16 %0, -32768
  %1 = lshr i32 %m, 23
  %2 = trunc i32 %1 to i16
  %conv3.i = and i16 %2, 255
  %3 = shl i32 %m, 7
  %shr4.i = and i32 %3, 1073741696
  %trunc.i = trunc i32 %1 to i8
  %4 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %trunc.i, label %if.then.i [
    i8 0, label %entry.vfp_single_unpack.exit_crit_edge
    i8 -1, label %entry.vfp_single_unpack.exit_crit_edge168
  ]

entry.vfp_single_unpack.exit_crit_edge168:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

entry.vfp_single_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %shr4.i, 1073741824
  br label %vfp_single_unpack.exit

vfp_single_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_single_unpack.exit_crit_edge, %entry.vfp_single_unpack.exit_crit_edge168
  %significand.0.i = phi i32 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_single_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_single_unpack.exit_crit_edge168 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_ftoui, %if.then.i134)) #5
          to label %vfp_single_dump.exit [label %if.then.i134], !srcloc !114

if.then.i134:                                     ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.lobit = lshr i32 %m, 31
  %conv4.i165 = zext i16 %conv3.i to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.22, i32 noundef %conv.i.lobit, i32 noundef %conv4.i165, i32 noundef %significand.0.i) #5
  br label %vfp_single_dump.exit

vfp_single_dump.exit:                             ; preds = %if.then.i134, %vfp_single_unpack.exit
  %5 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %trunc.i, label %vfp_single_dump.exit.if.end5_crit_edge [
    i8 -1, label %if.then.i136
    i8 0, label %if.then14.i
  ]

vfp_single_dump.exit.if.end5_crit_edge:           ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then.i136:                                     ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp2.i = icmp eq i32 %significand.0.i, 0
  br i1 %cmp2.i, label %if.then.i136.if.then7_crit_edge, label %if.else.i

if.then.i136.if.then7_crit_edge:                  ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.else.i:                                        ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #7
  %and.i137 = and i32 %significand.0.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137)
  %tobool.not.i = icmp eq i32 %and.i137, 0
  %..i = select i1 %tobool.not.i, i32 48, i32 16
  br label %vfp_single_type.exit

if.then14.i:                                      ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp16.i = icmp eq i32 %significand.0.i, 0
  %.30.i = select i1 %cmp16.i, i32 3, i32 5
  br label %vfp_single_type.exit

vfp_single_type.exit:                             ; preds = %if.then14.i, %if.else.i
  %type.0.i = phi i32 [ %..i, %if.else.i ], [ %.30.i, %if.then14.i ]
  %and1 = shl nuw nsw i32 %type.0.i, 5
  %6 = and i32 %and1, 128
  %and2 = and i32 %type.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.select166 = select i1 %tobool3.not, i16 %conv.i, i16 0
  br label %if.end5

if.end5:                                          ; preds = %vfp_single_type.exit, %vfp_single_dump.exit.if.end5_crit_edge
  %spec.select155 = phi i32 [ 0, %vfp_single_dump.exit.if.end5_crit_edge ], [ %6, %vfp_single_type.exit ]
  %vsm.sroa.7.0 = phi i16 [ %conv.i, %vfp_single_dump.exit.if.end5_crit_edge ], [ %spec.select166, %vfp_single_type.exit ]
  %conv164 = zext i16 %conv3.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 158, i16 %conv3.i)
  %cmp = icmp ugt i16 %conv3.i, 158
  br i1 %cmp, label %if.end5.if.then7_crit_edge, label %if.else

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.then.i136.if.then7_crit_edge
  %vsm.sroa.7.0162 = phi i16 [ %vsm.sroa.7.0, %if.end5.if.then7_crit_edge ], [ %conv.i, %if.then.i136.if.then7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vsm.sroa.7.0162)
  %tobool10.not = icmp eq i16 %vsm.sroa.7.0162, 0
  %cond = sext i1 %tobool10.not to i32
  br label %do.body

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp2(i16 125, i16 %conv3.i)
  %cmp13 = icmp ugt i16 %conv3.i, 125
  br i1 %cmp13, label %if.then15, label %if.else69

if.then15:                                        ; preds = %if.else
  %sub = sub nsw i32 158, %conv164
  %shl = shl i32 %significand.0.i, 1
  %shr = lshr i32 %shl, %sub
  %sub19 = add nsw i32 %conv164, -125
  %shl20 = shl i32 %significand.0.i, %sub19
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and, label %if.else34 [
    i32 0, label %if.then23
    i32 12582912, label %if.then15.if.end45_crit_edge
  ]

if.then15.if.end45_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %and24 = and i32 %shr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25 = icmp eq i32 %and24, 0
  %spec.select128 = select i1 %cmp25, i32 2147483647, i32 -2147483648
  br label %if.end45

if.else34:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and)
  %cmp35 = icmp eq i32 %and, 4194304
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vsm.sroa.7.0)
  %cmp39 = icmp ne i16 %vsm.sroa.7.0, 0
  %xor127 = xor i1 %cmp35, %cmp39
  %spec.select129 = sext i1 %xor127 to i32
  br label %if.end45

if.end45:                                         ; preds = %if.else34, %if.then23, %if.then15.if.end45_crit_edge
  %incr.0 = phi i32 [ %spec.select128, %if.then23 ], [ 0, %if.then15.if.end45_crit_edge ], [ %spec.select129, %if.else34 ]
  %8 = xor i32 %shl20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %incr.0, i32 %8)
  %cmp46 = icmp ugt i32 %incr.0, %8
  %add52 = zext i1 %cmp46 to i32
  %d.0 = add nuw i32 %shr, %add52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d.0)
  %tobool57.not = icmp eq i32 %d.0, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vsm.sroa.7.0)
  %tobool60.not = icmp eq i16 %vsm.sroa.7.0, 0
  %or.cond = select i1 %tobool57.not, i1 true, i1 %tobool60.not
  br i1 %or.cond, label %if.else63, label %if.then61

if.then61:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %or62 = or i32 %spec.select155, 1
  br label %do.body

if.else63:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl20)
  %tobool64.not = icmp eq i32 %shl20, 0
  %or66 = or i32 %spec.select155, 16
  %spec.select130 = select i1 %tobool64.not, i32 %spec.select155, i32 %or66
  br label %do.body

if.else69:                                        ; preds = %if.else
  %or73 = or i32 %significand.0.i, %conv164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or73)
  %tobool74.not = icmp eq i32 %or73, 0
  br i1 %tobool74.not, label %if.else69.do.body_crit_edge, label %if.then75

if.else69.do.body_crit_edge:                      ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then75:                                        ; preds = %if.else69
  %or76 = or i32 %spec.select155, 16
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and, label %if.then75.do.body_crit_edge [
    i32 4194304, label %land.lhs.true79
    i32 8388608, label %land.lhs.true88
  ]

if.then75.do.body_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true79:                                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vsm.sroa.7.0)
  %cmp82 = icmp eq i16 %vsm.sroa.7.0, 0
  %spec.select167 = zext i1 %cmp82 to i32
  br label %do.body

land.lhs.true88:                                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vsm.sroa.7.0)
  %tobool91.not = icmp eq i16 %vsm.sroa.7.0, 0
  %or93 = or i32 %spec.select155, 17
  %spec.select131 = select i1 %tobool91.not, i32 %or76, i32 %or93
  br label %do.body

do.body:                                          ; preds = %land.lhs.true88, %land.lhs.true79, %if.then75.do.body_crit_edge, %if.else69.do.body_crit_edge, %if.else63, %if.then61, %if.then7
  %exceptions.3 = phi i32 [ 1, %if.then7 ], [ %spec.select155, %if.else69.do.body_crit_edge ], [ %or62, %if.then61 ], [ %spec.select130, %if.else63 ], [ %or76, %if.then75.do.body_crit_edge ], [ %spec.select131, %land.lhs.true88 ], [ %or76, %land.lhs.true79 ]
  %d.2 = phi i32 [ %cond, %if.then7 ], [ 0, %if.else69.do.body_crit_edge ], [ 0, %if.then61 ], [ %d.0, %if.else63 ], [ 0, %if.then75.do.body_crit_edge ], [ 0, %land.lhs.true88 ], [ %spec.select167, %land.lhs.true79 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_ftoui.__UNIQUE_ID_ddebug18, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_ftoui, %if.then103)) #5
          to label %do.end [label %if.then103], !srcloc !114

if.then103:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_ftoui.__UNIQUE_ID_ddebug18, ptr noundef nonnull @.str.24, i32 noundef %sd, i32 noundef %d.2, i32 noundef %exceptions.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then103, %do.body
  tail call void @vfp_put_float(i32 noundef %d.2, i32 noundef %sd) #5
  ret i32 %exceptions.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_ftouiz(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfp_single_ftoui(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef 12582912)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_ftosi(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %fpscr, 12582912
  %and.i = lshr i32 %m, 16
  %0 = trunc i32 %and.i to i16
  %conv.i = and i16 %0, -32768
  %1 = lshr i32 %m, 23
  %2 = trunc i32 %1 to i16
  %conv3.i = and i16 %2, 255
  %3 = shl i32 %m, 7
  %shr4.i = and i32 %3, 1073741696
  %trunc.i = trunc i32 %1 to i8
  %4 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %trunc.i, label %if.then.i [
    i8 0, label %entry.vfp_single_unpack.exit_crit_edge
    i8 -1, label %entry.vfp_single_unpack.exit_crit_edge214
  ]

entry.vfp_single_unpack.exit_crit_edge214:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

entry.vfp_single_unpack.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %shr4.i, 1073741824
  br label %vfp_single_unpack.exit

vfp_single_unpack.exit:                           ; preds = %if.then.i, %entry.vfp_single_unpack.exit_crit_edge, %entry.vfp_single_unpack.exit_crit_edge214
  %significand.0.i = phi i32 [ %or.i, %if.then.i ], [ %shr4.i, %entry.vfp_single_unpack.exit_crit_edge ], [ %shr4.i, %entry.vfp_single_unpack.exit_crit_edge214 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_ftosi, %if.then.i149)) #5
          to label %vfp_single_dump.exit [label %if.then.i149], !srcloc !114

if.then.i149:                                     ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.lobit = lshr i32 %m, 31
  %conv4.i211 = zext i16 %conv3.i to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.22, i32 noundef %conv.i.lobit, i32 noundef %conv4.i211, i32 noundef %significand.0.i) #5
  br label %vfp_single_dump.exit

vfp_single_dump.exit:                             ; preds = %if.then.i149, %vfp_single_unpack.exit
  %5 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %trunc.i, label %vfp_single_dump.exit.if.else_crit_edge [
    i8 -1, label %if.then.i151
    i8 0, label %vfp_single_type.exit.thread184
  ]

vfp_single_dump.exit.if.else_crit_edge:           ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then.i151:                                     ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp2.i = icmp eq i32 %significand.0.i, 0
  br i1 %cmp2.i, label %if.then.i151.if.then8_crit_edge, label %if.else.i

if.then.i151.if.then8_crit_edge:                  ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.else.i:                                        ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #7
  %and.i152 = and i32 %significand.0.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i152)
  %tobool.not.i = icmp eq i32 %and.i152, 0
  %..i = select i1 %tobool.not.i, i32 48, i32 16
  %..i158 = select i1 %tobool.not.i, i32 1536, i32 512
  br label %vfp_single_type.exit165

vfp_single_type.exit.thread184:                   ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp16.i = icmp eq i32 %significand.0.i, 0
  %.30.i = select i1 %cmp16.i, i32 3, i32 5
  %.30.i162 = select i1 %cmp16.i, i32 96, i32 160
  br label %vfp_single_type.exit165

vfp_single_type.exit165:                          ; preds = %vfp_single_type.exit.thread184, %if.else.i
  %type.0.i183 = phi i32 [ %..i, %if.else.i ], [ %.30.i, %vfp_single_type.exit.thread184 ]
  %type.0.i164 = phi i32 [ %..i158, %if.else.i ], [ %.30.i162, %vfp_single_type.exit.thread184 ]
  %and2 = and i32 %type.0.i164, 128
  %and3 = and i32 %type.0.i183, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %vfp_single_type.exit165.if.else_crit_edge, label %if.then5

vfp_single_type.exit165.if.else_crit_edge:        ; preds = %vfp_single_type.exit165
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then5:                                         ; preds = %vfp_single_type.exit165
  call void @__sanitizer_cov_trace_pc() #7
  %or6 = or i32 %and2, 1
  br label %do.body

if.else:                                          ; preds = %vfp_single_type.exit165.if.else_crit_edge, %vfp_single_dump.exit.if.else_crit_edge
  %spec.select194 = phi i32 [ %and2, %vfp_single_type.exit165.if.else_crit_edge ], [ 0, %vfp_single_dump.exit.if.else_crit_edge ]
  %conv210 = zext i16 %conv3.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 158, i16 %conv3.i)
  %cmp = icmp ugt i16 %conv3.i, 158
  br i1 %cmp, label %if.else.if.then8_crit_edge, label %if.else13

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %if.else.if.then8_crit_edge, %if.then.i151.if.then8_crit_edge
  %spec.select194209 = phi i32 [ %spec.select194, %if.else.if.then8_crit_edge ], [ 0, %if.then.i151.if.then8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool9.not = icmp eq i16 %conv.i, 0
  %spec.select141 = select i1 %tobool9.not, i32 2147483647, i32 -2147483648
  %or12 = or i32 %spec.select194209, 1
  br label %do.body

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 125, i16 %conv3.i)
  %cmp16 = icmp ugt i16 %conv3.i, 125
  br i1 %cmp16, label %if.then18, label %if.else81

if.then18:                                        ; preds = %if.else13
  %sub = sub nsw i32 158, %conv210
  %shl = shl i32 %significand.0.i, 1
  %shr = lshr i32 %shl, %sub
  %sub22 = add nsw i32 %conv210, -125
  %shl23 = shl i32 %significand.0.i, %sub22
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and, label %if.else37 [
    i32 0, label %if.then26
    i32 12582912, label %if.then18.if.end48_crit_edge
  ]

if.then18.if.end48_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then26:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %and27 = and i32 %shr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 0
  %spec.select142 = select i1 %cmp28, i32 2147483647, i32 -2147483648
  br label %if.end48

if.else37:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and)
  %cmp38 = icmp eq i32 %and, 4194304
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp42 = icmp ne i16 %conv.i, 0
  %xor140 = xor i1 %cmp38, %cmp42
  %spec.select143 = sext i1 %xor140 to i32
  br label %if.end48

if.end48:                                         ; preds = %if.else37, %if.then26, %if.then18.if.end48_crit_edge
  %incr.0 = phi i32 [ %spec.select142, %if.then26 ], [ 0, %if.then18.if.end48_crit_edge ], [ %spec.select143, %if.else37 ]
  %7 = xor i32 %shl23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %incr.0, i32 %7)
  %cmp49 = icmp ugt i32 %incr.0, %7
  %add54 = zext i1 %cmp49 to i32
  %d.1 = add nuw i32 %shr, %add54
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp58.not = icmp eq i16 %conv.i, 0
  %add60 = select i1 %cmp58.not, i32 2147483647, i32 -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %d.1, i32 %add60)
  %cmp61 = icmp ugt i32 %d.1, %add60
  %or69 = or i32 %spec.select194, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl23)
  %tobool71.not = icmp eq i32 %shl23, 0
  %or73 = or i32 %spec.select194, 16
  %spec.select144 = select i1 %tobool71.not, i32 %spec.select194, i32 %or73
  %exceptions.1 = select i1 %cmp61, i32 %or69, i32 %spec.select144
  %8 = tail call i32 @llvm.umin.i32(i32 %d.1, i32 %add60)
  %sub79 = sub i32 0, %8
  %spec.select145 = select i1 %cmp58.not, i32 %8, i32 %sub79
  br label %do.body

if.else81:                                        ; preds = %if.else13
  %or85 = or i32 %significand.0.i, %conv210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or85)
  %tobool86.not = icmp eq i32 %or85, 0
  br i1 %tobool86.not, label %if.else81.do.body_crit_edge, label %if.then87

if.else81.do.body_crit_edge:                      ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then87:                                        ; preds = %if.else81
  %or88 = or i32 %spec.select194, 16
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %and, label %if.then87.do.body_crit_edge [
    i32 4194304, label %land.lhs.true91
    i32 8388608, label %land.lhs.true100
  ]

if.then87.do.body_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true91:                                  ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %10 = xor i32 %m, -1
  %11 = lshr i32 %10, 31
  br label %do.body

land.lhs.true100:                                 ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select146 = ashr i32 %m, 31
  br label %do.body

do.body:                                          ; preds = %land.lhs.true100, %land.lhs.true91, %if.then87.do.body_crit_edge, %if.else81.do.body_crit_edge, %if.end48, %if.then8, %if.then5
  %exceptions.2 = phi i32 [ %or6, %if.then5 ], [ %or12, %if.then8 ], [ %exceptions.1, %if.end48 ], [ %spec.select194, %if.else81.do.body_crit_edge ], [ %or88, %if.then87.do.body_crit_edge ], [ %or88, %land.lhs.true100 ], [ %or88, %land.lhs.true91 ]
  %d.4 = phi i32 [ 0, %if.then5 ], [ %spec.select141, %if.then8 ], [ %spec.select145, %if.end48 ], [ 0, %if.else81.do.body_crit_edge ], [ 0, %if.then87.do.body_crit_edge ], [ %spec.select146, %land.lhs.true100 ], [ %11, %land.lhs.true91 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_ftosi.__UNIQUE_ID_ddebug19, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_ftosi, %if.then115)) #5
          to label %do.end [label %if.then115], !srcloc !114

if.then115:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_ftosi.__UNIQUE_ID_ddebug19, ptr noundef nonnull @.str.26, i32 noundef %sd, i32 noundef %d.4, i32 noundef %exceptions.2) #5
  br label %do.end

do.end:                                           ; preds = %if.then115, %do.body
  tail call void @vfp_put_float(i32 noundef %d.4, i32 noundef %sd) #5
  ret i32 %exceptions.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_ftosiz(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vfp_single_ftosi(i32 noundef %sd, i32 noundef %unused, i32 noundef %m, i32 noundef 12582912)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfp_single_normalise_denormal(ptr nocapture noundef %vs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %significand = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 2
  %0 = ptrtoint ptr %significand to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %significand, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #5, !range !115
  %sub.i = sub nuw nsw i32 32, %2
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_normalise_denormal, %if.then.i)) #5
          to label %vfp_single_dump.exit [label %if.then.i], !srcloc !114

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sign.i = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 1
  %3 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sign.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i = icmp ne i16 %4, 0
  %conv3.i = zext i1 %cmp.i to i32
  %5 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vs, align 4
  %conv4.i = sext i16 %6 to i32
  %7 = ptrtoint ptr %significand to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %significand, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i, i32 noundef %conv4.i, i32 noundef %8) #5
  br label %vfp_single_dump.exit

vfp_single_dump.exit:                             ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %cond.i)
  %tobool.not = icmp eq i32 %cond.i, 31
  br i1 %tobool.not, label %vfp_single_dump.exit.if.end_crit_edge, label %if.then

vfp_single_dump.exit.if.end_crit_edge:            ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub nsw i32 31, %cond.i
  %9 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vs, align 4
  %11 = trunc i32 %cond.i to i16
  %12 = add nsw i16 %11, -30
  %conv3 = add i16 %12, %10
  store i16 %conv3, ptr %vs, align 4
  %13 = ptrtoint ptr %significand to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %significand, align 4
  %shl = shl i32 %14, %sub
  store i32 %shl, ptr %significand, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %vfp_single_dump.exit.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_normalise_denormal, %if.then.i17)) #5
          to label %vfp_single_dump.exit18 [label %if.then.i17], !srcloc !114

if.then.i17:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sign.i12 = getelementptr inbounds %struct.vfp_single, ptr %vs, i32 0, i32 1
  %15 = ptrtoint ptr %sign.i12 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sign.i12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i13 = icmp ne i16 %16, 0
  %conv3.i14 = zext i1 %cmp.i13 to i32
  %17 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vs, align 4
  %conv4.i15 = sext i16 %18 to i32
  %19 = ptrtoint ptr %significand to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %significand, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14, i32 noundef %conv4.i15, i32 noundef %20) #5
  br label %vfp_single_dump.exit18

vfp_single_dump.exit18:                           ; preds = %if.then.i17, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_double_normaliseround(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_put_double(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fmac(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vfp_single_multiply_accumulate(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fmsc(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vfp_single_multiply_accumulate(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fmul(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  %vsd = alloca %struct.vfp_single, align 8
  %vsn = alloca %struct.vfp_single, align 4
  %vsm = alloca %struct.vfp_single, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsd) #5
  %0 = ptrtoint ptr %vsd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vsd, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsn) #5
  %1 = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsm) #5
  %3 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 1
  %4 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 2
  %call = tail call i32 @vfp_get_float(i32 noundef %sn) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_fmul.__UNIQUE_ID_ddebug23, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fmul, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_fmul.__UNIQUE_ID_ddebug23, ptr noundef nonnull @.str.29, i32 noundef %sn, i32 noundef %call) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i32 %call, 16
  %5 = trunc i32 %and.i to i16
  %conv.i = and i16 %5, -32768
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %1, align 2
  %7 = lshr i32 %call, 23
  %8 = trunc i32 %7 to i16
  %conv3.i = and i16 %8, 255
  %9 = ptrtoint ptr %vsn to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3.i, ptr %vsn, align 4
  %10 = shl i32 %call, 7
  %shr4.i = and i32 %10, 1073741696
  %trunc.i = trunc i32 %7 to i8
  %11 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %trunc.i, label %if.then.i [
    i8 0, label %do.end.vfp_single_unpack.exit_crit_edge
    i8 -1, label %do.end.vfp_single_unpack.exit_crit_edge61
  ]

do.end.vfp_single_unpack.exit_crit_edge61:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

do.end.vfp_single_unpack.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %shr4.i, 1073741824
  br label %vfp_single_unpack.exit

vfp_single_unpack.exit:                           ; preds = %if.then.i, %do.end.vfp_single_unpack.exit_crit_edge, %do.end.vfp_single_unpack.exit_crit_edge61
  %significand.0.i = phi i32 [ %or.i, %if.then.i ], [ %shr4.i, %do.end.vfp_single_unpack.exit_crit_edge ], [ %shr4.i, %do.end.vfp_single_unpack.exit_crit_edge61 ]
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %significand.0.i, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %cmp = icmp ne i16 %conv3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %tobool5.not = icmp eq i32 %significand.0.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %vfp_single_unpack.exit.if.end7_crit_edge, label %if.then6

vfp_single_unpack.exit.if.end7_crit_edge:         ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %vfp_single_unpack.exit
  %13 = tail call i32 @llvm.ctlz.i32(i32 %significand.0.i, i1 true) #5, !range !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fmul, %if.then.i.i)) #5
          to label %vfp_single_dump.exit.i [label %if.then.i.i], !srcloc !114

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.i = icmp ne i16 %15, 0
  %conv3.i.i = zext i1 %cmp.i.i to i32
  %16 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsn, align 4
  %conv4.i.i = sext i16 %17 to i32
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i.i, i32 noundef %conv4.i.i, i32 noundef %19) #5
  br label %vfp_single_dump.exit.i

vfp_single_dump.exit.i:                           ; preds = %if.then.i.i, %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 1
  br i1 %tobool.not.i, label %vfp_single_dump.exit.i.if.end.i_crit_edge, label %if.then.i23

vfp_single_dump.exit.i.if.end.i_crit_edge:        ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i23:                                      ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nsw i32 %13, -1
  %20 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsn, align 4
  %22 = trunc i32 %13 to i16
  %23 = sub nsw i16 2, %22
  %conv3.i22 = add i16 %23, %21
  store i16 %conv3.i22, ptr %vsn, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  %shl.i = shl i32 %25, %sub.i
  store i32 %shl.i, ptr %2, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i23, %vfp_single_dump.exit.i.if.end.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fmul, %if.then.i17.i)) #5
          to label %if.end7 [label %if.then.i17.i], !srcloc !114

if.then.i17.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i13.i = icmp ne i16 %27, 0
  %conv3.i14.i = zext i1 %cmp.i13.i to i32
  %28 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vsn, align 4
  %conv4.i15.i = sext i16 %29 to i32
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14.i, i32 noundef %conv4.i15.i, i32 noundef %31) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then.i17.i, %if.end.i, %vfp_single_unpack.exit.if.end7_crit_edge
  %and.i24 = lshr i32 %m, 16
  %32 = trunc i32 %and.i24 to i16
  %conv.i25 = and i16 %32, -32768
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i25, ptr %3, align 2
  %34 = lshr i32 %m, 23
  %35 = trunc i32 %34 to i16
  %conv3.i27 = and i16 %35, 255
  %36 = ptrtoint ptr %vsm to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv3.i27, ptr %vsm, align 4
  %37 = shl i32 %m, 7
  %shr4.i28 = and i32 %37, 1073741696
  %trunc.i29 = trunc i32 %34 to i8
  %38 = zext i8 %trunc.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %trunc.i29, label %if.then.i31 [
    i8 0, label %if.end7.vfp_single_unpack.exit35_crit_edge
    i8 -1, label %if.end7.vfp_single_unpack.exit35_crit_edge62
  ]

if.end7.vfp_single_unpack.exit35_crit_edge62:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit35

if.end7.vfp_single_unpack.exit35_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit35

if.then.i31:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %or.i30 = or i32 %shr4.i28, 1073741824
  br label %vfp_single_unpack.exit35

vfp_single_unpack.exit35:                         ; preds = %if.then.i31, %if.end7.vfp_single_unpack.exit35_crit_edge, %if.end7.vfp_single_unpack.exit35_crit_edge62
  %significand.0.i32 = phi i32 [ %or.i30, %if.then.i31 ], [ %shr4.i28, %if.end7.vfp_single_unpack.exit35_crit_edge ], [ %shr4.i28, %if.end7.vfp_single_unpack.exit35_crit_edge62 ]
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %significand.0.i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i27)
  %cmp10 = icmp ne i16 %conv3.i27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i32)
  %tobool14.not = icmp eq i32 %significand.0.i32, 0
  %or.cond59 = or i1 %cmp10, %tobool14.not
  br i1 %or.cond59, label %vfp_single_unpack.exit35.if.end16_crit_edge, label %if.then15

vfp_single_unpack.exit35.if.end16_crit_edge:      ; preds = %vfp_single_unpack.exit35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %vfp_single_unpack.exit35
  %40 = tail call i32 @llvm.ctlz.i32(i32 %significand.0.i32, i1 true) #5, !range !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fmul, %if.then.i.i44)) #5
          to label %vfp_single_dump.exit.i46 [label %if.then.i.i44], !srcloc !114

if.then.i.i44:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp.i.i41 = icmp ne i16 %42, 0
  %conv3.i.i42 = zext i1 %cmp.i.i41 to i32
  %43 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vsm, align 4
  %conv4.i.i43 = sext i16 %44 to i32
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i.i42, i32 noundef %conv4.i.i43, i32 noundef %46) #5
  br label %vfp_single_dump.exit.i46

vfp_single_dump.exit.i46:                         ; preds = %if.then.i.i44, %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %tobool.not.i45 = icmp eq i32 %40, 1
  br i1 %tobool.not.i45, label %vfp_single_dump.exit.i46.if.end.i51_crit_edge, label %if.then.i50

vfp_single_dump.exit.i46.if.end.i51_crit_edge:    ; preds = %vfp_single_dump.exit.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i51

if.then.i50:                                      ; preds = %vfp_single_dump.exit.i46
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i47 = add nsw i32 %40, -1
  %47 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vsm, align 4
  %49 = trunc i32 %40 to i16
  %50 = sub nsw i16 2, %49
  %conv3.i48 = add i16 %50, %48
  store i16 %conv3.i48, ptr %vsm, align 4
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %4, align 4
  %shl.i49 = shl i32 %52, %sub.i47
  store i32 %shl.i49, ptr %4, align 4
  br label %if.end.i51

if.end.i51:                                       ; preds = %if.then.i50, %vfp_single_dump.exit.i46.if.end.i51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fmul, %if.then.i17.i56)) #5
          to label %if.end16 [label %if.then.i17.i56], !srcloc !114

if.then.i17.i56:                                  ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp.i13.i53 = icmp ne i16 %54, 0
  %conv3.i14.i54 = zext i1 %cmp.i13.i53 to i32
  %55 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vsm, align 4
  %conv4.i15.i55 = sext i16 %56 to i32
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14.i54, i32 noundef %conv4.i15.i55, i32 noundef %58) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then.i17.i56, %if.end.i51, %vfp_single_unpack.exit35.if.end16_crit_edge
  %call17 = call fastcc i32 @vfp_single_multiply(ptr noundef nonnull %vsd, ptr noundef nonnull %vsn, ptr noundef nonnull %vsm, i32 noundef %fpscr), !range !118
  %call18 = call i32 @__vfp_single_normaliseround(i32 noundef %sd, ptr noundef nonnull %vsd, i32 noundef %fpscr, i32 noundef %call17)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsn) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsd) #5
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fadd(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  %vsd = alloca %struct.vfp_single, align 8
  %vsn = alloca %struct.vfp_single, align 4
  %vsm = alloca %struct.vfp_single, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsd) #5
  %0 = ptrtoint ptr %vsd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vsd, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsn) #5
  %1 = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsm) #5
  %3 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 1
  %4 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 2
  %call = tail call i32 @vfp_get_float(i32 noundef %sn) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_fadd.__UNIQUE_ID_ddebug25, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fadd, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_fadd.__UNIQUE_ID_ddebug25, ptr noundef nonnull @.str.29, i32 noundef %sn, i32 noundef %call) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i32 %call, 16
  %5 = trunc i32 %and.i to i16
  %conv.i = and i16 %5, -32768
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %1, align 2
  %7 = lshr i32 %call, 23
  %8 = trunc i32 %7 to i16
  %conv3.i = and i16 %8, 255
  %9 = ptrtoint ptr %vsn to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3.i, ptr %vsn, align 4
  %10 = shl i32 %call, 7
  %shr4.i = and i32 %10, 1073741696
  %trunc.i = trunc i32 %7 to i8
  %11 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %trunc.i, label %if.then.i [
    i8 0, label %do.end.vfp_single_unpack.exit_crit_edge
    i8 -1, label %do.end.vfp_single_unpack.exit_crit_edge61
  ]

do.end.vfp_single_unpack.exit_crit_edge61:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

do.end.vfp_single_unpack.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %shr4.i, 1073741824
  br label %vfp_single_unpack.exit

vfp_single_unpack.exit:                           ; preds = %if.then.i, %do.end.vfp_single_unpack.exit_crit_edge, %do.end.vfp_single_unpack.exit_crit_edge61
  %significand.0.i = phi i32 [ %or.i, %if.then.i ], [ %shr4.i, %do.end.vfp_single_unpack.exit_crit_edge ], [ %shr4.i, %do.end.vfp_single_unpack.exit_crit_edge61 ]
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %significand.0.i, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %cmp = icmp ne i16 %conv3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %tobool5.not = icmp eq i32 %significand.0.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %vfp_single_unpack.exit.if.end7_crit_edge, label %if.then6

vfp_single_unpack.exit.if.end7_crit_edge:         ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %vfp_single_unpack.exit
  %13 = tail call i32 @llvm.ctlz.i32(i32 %significand.0.i, i1 true) #5, !range !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fadd, %if.then.i.i)) #5
          to label %vfp_single_dump.exit.i [label %if.then.i.i], !srcloc !114

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.i = icmp ne i16 %15, 0
  %conv3.i.i = zext i1 %cmp.i.i to i32
  %16 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsn, align 4
  %conv4.i.i = sext i16 %17 to i32
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i.i, i32 noundef %conv4.i.i, i32 noundef %19) #5
  br label %vfp_single_dump.exit.i

vfp_single_dump.exit.i:                           ; preds = %if.then.i.i, %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 1
  br i1 %tobool.not.i, label %vfp_single_dump.exit.i.if.end.i_crit_edge, label %if.then.i23

vfp_single_dump.exit.i.if.end.i_crit_edge:        ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i23:                                      ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nsw i32 %13, -1
  %20 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsn, align 4
  %22 = trunc i32 %13 to i16
  %23 = sub nsw i16 2, %22
  %conv3.i22 = add i16 %23, %21
  store i16 %conv3.i22, ptr %vsn, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  %shl.i = shl i32 %25, %sub.i
  store i32 %shl.i, ptr %2, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i23, %vfp_single_dump.exit.i.if.end.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fadd, %if.then.i17.i)) #5
          to label %if.end7 [label %if.then.i17.i], !srcloc !114

if.then.i17.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i13.i = icmp ne i16 %27, 0
  %conv3.i14.i = zext i1 %cmp.i13.i to i32
  %28 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vsn, align 4
  %conv4.i15.i = sext i16 %29 to i32
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14.i, i32 noundef %conv4.i15.i, i32 noundef %31) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then.i17.i, %if.end.i, %vfp_single_unpack.exit.if.end7_crit_edge
  %and.i24 = lshr i32 %m, 16
  %32 = trunc i32 %and.i24 to i16
  %conv.i25 = and i16 %32, -32768
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i25, ptr %3, align 2
  %34 = lshr i32 %m, 23
  %35 = trunc i32 %34 to i16
  %conv3.i27 = and i16 %35, 255
  %36 = ptrtoint ptr %vsm to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv3.i27, ptr %vsm, align 4
  %37 = shl i32 %m, 7
  %shr4.i28 = and i32 %37, 1073741696
  %trunc.i29 = trunc i32 %34 to i8
  %38 = zext i8 %trunc.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %trunc.i29, label %if.then.i31 [
    i8 0, label %if.end7.vfp_single_unpack.exit35_crit_edge
    i8 -1, label %if.end7.vfp_single_unpack.exit35_crit_edge62
  ]

if.end7.vfp_single_unpack.exit35_crit_edge62:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit35

if.end7.vfp_single_unpack.exit35_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit35

if.then.i31:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %or.i30 = or i32 %shr4.i28, 1073741824
  br label %vfp_single_unpack.exit35

vfp_single_unpack.exit35:                         ; preds = %if.then.i31, %if.end7.vfp_single_unpack.exit35_crit_edge, %if.end7.vfp_single_unpack.exit35_crit_edge62
  %significand.0.i32 = phi i32 [ %or.i30, %if.then.i31 ], [ %shr4.i28, %if.end7.vfp_single_unpack.exit35_crit_edge ], [ %shr4.i28, %if.end7.vfp_single_unpack.exit35_crit_edge62 ]
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %significand.0.i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i27)
  %cmp10 = icmp ne i16 %conv3.i27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i32)
  %tobool14.not = icmp eq i32 %significand.0.i32, 0
  %or.cond59 = or i1 %cmp10, %tobool14.not
  br i1 %or.cond59, label %vfp_single_unpack.exit35.if.end16_crit_edge, label %if.then15

vfp_single_unpack.exit35.if.end16_crit_edge:      ; preds = %vfp_single_unpack.exit35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %vfp_single_unpack.exit35
  %40 = tail call i32 @llvm.ctlz.i32(i32 %significand.0.i32, i1 true) #5, !range !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fadd, %if.then.i.i44)) #5
          to label %vfp_single_dump.exit.i46 [label %if.then.i.i44], !srcloc !114

if.then.i.i44:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp.i.i41 = icmp ne i16 %42, 0
  %conv3.i.i42 = zext i1 %cmp.i.i41 to i32
  %43 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vsm, align 4
  %conv4.i.i43 = sext i16 %44 to i32
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i.i42, i32 noundef %conv4.i.i43, i32 noundef %46) #5
  br label %vfp_single_dump.exit.i46

vfp_single_dump.exit.i46:                         ; preds = %if.then.i.i44, %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %tobool.not.i45 = icmp eq i32 %40, 1
  br i1 %tobool.not.i45, label %vfp_single_dump.exit.i46.if.end.i51_crit_edge, label %if.then.i50

vfp_single_dump.exit.i46.if.end.i51_crit_edge:    ; preds = %vfp_single_dump.exit.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i51

if.then.i50:                                      ; preds = %vfp_single_dump.exit.i46
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i47 = add nsw i32 %40, -1
  %47 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vsm, align 4
  %49 = trunc i32 %40 to i16
  %50 = sub nsw i16 2, %49
  %conv3.i48 = add i16 %50, %48
  store i16 %conv3.i48, ptr %vsm, align 4
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %4, align 4
  %shl.i49 = shl i32 %52, %sub.i47
  store i32 %shl.i49, ptr %4, align 4
  br label %if.end.i51

if.end.i51:                                       ; preds = %if.then.i50, %vfp_single_dump.exit.i46.if.end.i51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fadd, %if.then.i17.i56)) #5
          to label %if.end16 [label %if.then.i17.i56], !srcloc !114

if.then.i17.i56:                                  ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp.i13.i53 = icmp ne i16 %54, 0
  %conv3.i14.i54 = zext i1 %cmp.i13.i53 to i32
  %55 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vsm, align 4
  %conv4.i15.i55 = sext i16 %56 to i32
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14.i54, i32 noundef %conv4.i15.i55, i32 noundef %58) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then.i17.i56, %if.end.i51, %vfp_single_unpack.exit35.if.end16_crit_edge
  %call17 = call fastcc i32 @vfp_single_add(ptr noundef nonnull %vsd, ptr noundef nonnull %vsn, ptr noundef nonnull %vsm, i32 noundef %fpscr), !range !118
  %call18 = call i32 @__vfp_single_normaliseround(i32 noundef %sd, ptr noundef nonnull %vsd, i32 noundef %fpscr, i32 noundef %call17)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsn) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsd) #5
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fnmac(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vfp_single_multiply_accumulate(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fnmsc(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vfp_single_multiply_accumulate(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fnmul(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  %vsd = alloca %struct.vfp_single, align 8
  %vsn = alloca %struct.vfp_single, align 4
  %vsm = alloca %struct.vfp_single, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsd) #5
  %0 = ptrtoint ptr %vsd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vsd, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsn) #5
  %1 = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsm) #5
  %3 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 1
  %4 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 2
  %call = tail call i32 @vfp_get_float(i32 noundef %sn) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_fnmul.__UNIQUE_ID_ddebug24, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fnmul, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_fnmul.__UNIQUE_ID_ddebug24, ptr noundef nonnull @.str.29, i32 noundef %sn, i32 noundef %call) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i32 %call, 16
  %5 = trunc i32 %and.i to i16
  %conv.i = and i16 %5, -32768
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %1, align 2
  %7 = lshr i32 %call, 23
  %8 = trunc i32 %7 to i16
  %conv3.i = and i16 %8, 255
  %9 = ptrtoint ptr %vsn to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3.i, ptr %vsn, align 4
  %10 = shl i32 %call, 7
  %shr4.i = and i32 %10, 1073741696
  %trunc.i = trunc i32 %7 to i8
  %11 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %trunc.i, label %if.then.i [
    i8 0, label %do.end.vfp_single_unpack.exit_crit_edge
    i8 -1, label %do.end.vfp_single_unpack.exit_crit_edge64
  ]

do.end.vfp_single_unpack.exit_crit_edge64:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

do.end.vfp_single_unpack.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %shr4.i, 1073741824
  br label %vfp_single_unpack.exit

vfp_single_unpack.exit:                           ; preds = %if.then.i, %do.end.vfp_single_unpack.exit_crit_edge, %do.end.vfp_single_unpack.exit_crit_edge64
  %significand.0.i = phi i32 [ %or.i, %if.then.i ], [ %shr4.i, %do.end.vfp_single_unpack.exit_crit_edge ], [ %shr4.i, %do.end.vfp_single_unpack.exit_crit_edge64 ]
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %significand.0.i, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %cmp = icmp ne i16 %conv3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %tobool5.not = icmp eq i32 %significand.0.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %vfp_single_unpack.exit.if.end7_crit_edge, label %if.then6

vfp_single_unpack.exit.if.end7_crit_edge:         ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %vfp_single_unpack.exit
  %13 = tail call i32 @llvm.ctlz.i32(i32 %significand.0.i, i1 true) #5, !range !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fnmul, %if.then.i.i)) #5
          to label %vfp_single_dump.exit.i [label %if.then.i.i], !srcloc !114

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.i = icmp ne i16 %15, 0
  %conv3.i.i = zext i1 %cmp.i.i to i32
  %16 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsn, align 4
  %conv4.i.i = sext i16 %17 to i32
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i.i, i32 noundef %conv4.i.i, i32 noundef %19) #5
  br label %vfp_single_dump.exit.i

vfp_single_dump.exit.i:                           ; preds = %if.then.i.i, %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 1
  br i1 %tobool.not.i, label %vfp_single_dump.exit.i.if.end.i_crit_edge, label %if.then.i26

vfp_single_dump.exit.i.if.end.i_crit_edge:        ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i26:                                      ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nsw i32 %13, -1
  %20 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsn, align 4
  %22 = trunc i32 %13 to i16
  %23 = sub nsw i16 2, %22
  %conv3.i25 = add i16 %23, %21
  store i16 %conv3.i25, ptr %vsn, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  %shl.i = shl i32 %25, %sub.i
  store i32 %shl.i, ptr %2, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i26, %vfp_single_dump.exit.i.if.end.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fnmul, %if.then.i17.i)) #5
          to label %if.end7 [label %if.then.i17.i], !srcloc !114

if.then.i17.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i13.i = icmp ne i16 %27, 0
  %conv3.i14.i = zext i1 %cmp.i13.i to i32
  %28 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vsn, align 4
  %conv4.i15.i = sext i16 %29 to i32
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14.i, i32 noundef %conv4.i15.i, i32 noundef %31) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then.i17.i, %if.end.i, %vfp_single_unpack.exit.if.end7_crit_edge
  %and.i27 = lshr i32 %m, 16
  %32 = trunc i32 %and.i27 to i16
  %conv.i28 = and i16 %32, -32768
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i28, ptr %3, align 2
  %34 = lshr i32 %m, 23
  %35 = trunc i32 %34 to i16
  %conv3.i30 = and i16 %35, 255
  %36 = ptrtoint ptr %vsm to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv3.i30, ptr %vsm, align 4
  %37 = shl i32 %m, 7
  %shr4.i31 = and i32 %37, 1073741696
  %trunc.i32 = trunc i32 %34 to i8
  %38 = zext i8 %trunc.i32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %trunc.i32, label %if.then.i34 [
    i8 0, label %if.end7.vfp_single_unpack.exit38_crit_edge
    i8 -1, label %if.end7.vfp_single_unpack.exit38_crit_edge65
  ]

if.end7.vfp_single_unpack.exit38_crit_edge65:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit38

if.end7.vfp_single_unpack.exit38_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit38

if.then.i34:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %or.i33 = or i32 %shr4.i31, 1073741824
  br label %vfp_single_unpack.exit38

vfp_single_unpack.exit38:                         ; preds = %if.then.i34, %if.end7.vfp_single_unpack.exit38_crit_edge, %if.end7.vfp_single_unpack.exit38_crit_edge65
  %significand.0.i35 = phi i32 [ %or.i33, %if.then.i34 ], [ %shr4.i31, %if.end7.vfp_single_unpack.exit38_crit_edge ], [ %shr4.i31, %if.end7.vfp_single_unpack.exit38_crit_edge65 ]
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %significand.0.i35, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i30)
  %cmp10 = icmp ne i16 %conv3.i30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i35)
  %tobool14.not = icmp eq i32 %significand.0.i35, 0
  %or.cond62 = or i1 %cmp10, %tobool14.not
  br i1 %or.cond62, label %vfp_single_unpack.exit38.if.end16_crit_edge, label %if.then15

vfp_single_unpack.exit38.if.end16_crit_edge:      ; preds = %vfp_single_unpack.exit38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %vfp_single_unpack.exit38
  %40 = tail call i32 @llvm.ctlz.i32(i32 %significand.0.i35, i1 true) #5, !range !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fnmul, %if.then.i.i47)) #5
          to label %vfp_single_dump.exit.i49 [label %if.then.i.i47], !srcloc !114

if.then.i.i47:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp.i.i44 = icmp ne i16 %42, 0
  %conv3.i.i45 = zext i1 %cmp.i.i44 to i32
  %43 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vsm, align 4
  %conv4.i.i46 = sext i16 %44 to i32
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i.i45, i32 noundef %conv4.i.i46, i32 noundef %46) #5
  br label %vfp_single_dump.exit.i49

vfp_single_dump.exit.i49:                         ; preds = %if.then.i.i47, %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %tobool.not.i48 = icmp eq i32 %40, 1
  br i1 %tobool.not.i48, label %vfp_single_dump.exit.i49.if.end.i54_crit_edge, label %if.then.i53

vfp_single_dump.exit.i49.if.end.i54_crit_edge:    ; preds = %vfp_single_dump.exit.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i54

if.then.i53:                                      ; preds = %vfp_single_dump.exit.i49
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i50 = add nsw i32 %40, -1
  %47 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vsm, align 4
  %49 = trunc i32 %40 to i16
  %50 = sub nsw i16 2, %49
  %conv3.i51 = add i16 %50, %48
  store i16 %conv3.i51, ptr %vsm, align 4
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %4, align 4
  %shl.i52 = shl i32 %52, %sub.i50
  store i32 %shl.i52, ptr %4, align 4
  br label %if.end.i54

if.end.i54:                                       ; preds = %if.then.i53, %vfp_single_dump.exit.i49.if.end.i54_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fnmul, %if.then.i17.i59)) #5
          to label %if.end16 [label %if.then.i17.i59], !srcloc !114

if.then.i17.i59:                                  ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp.i13.i56 = icmp ne i16 %54, 0
  %conv3.i14.i57 = zext i1 %cmp.i13.i56 to i32
  %55 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vsm, align 4
  %conv4.i15.i58 = sext i16 %56 to i32
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14.i57, i32 noundef %conv4.i15.i58, i32 noundef %58) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then.i17.i59, %if.end.i54, %vfp_single_unpack.exit38.if.end16_crit_edge
  %59 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 1
  %call17 = call fastcc i32 @vfp_single_multiply(ptr noundef nonnull %vsd, ptr noundef nonnull %vsn, ptr noundef nonnull %vsm, i32 noundef %fpscr), !range !118
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 2
  %62 = xor i16 %61, -32768
  store i16 %62, ptr %59, align 2
  %call21 = call i32 @__vfp_single_normaliseround(i32 noundef %sd, ptr noundef nonnull %vsd, i32 noundef %fpscr, i32 noundef %call17)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsn) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsd) #5
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fsub(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xor = xor i32 %m, -2147483648
  %call = tail call i32 @vfp_single_fadd(i32 noundef %sd, i32 noundef %sn, i32 noundef %xor, i32 noundef %fpscr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_single_fdiv(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr) #0 align 64 {
entry:
  %vsd = alloca %struct.vfp_single, align 8
  %vsn = alloca %struct.vfp_single, align 4
  %vsm = alloca %struct.vfp_single, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsd) #5
  %0 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 2
  %2 = ptrtoint ptr %vsd to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %vsd, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsn) #5
  %3 = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 1
  %4 = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsm) #5
  %5 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 1
  %6 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 2
  %call = tail call i32 @vfp_get_float(i32 noundef %sn) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_fdiv.__UNIQUE_ID_ddebug26, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_fdiv, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_fdiv.__UNIQUE_ID_ddebug26, ptr noundef nonnull @.str.29, i32 noundef %sn, i32 noundef %call) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i32 %call, 16
  %7 = trunc i32 %and.i to i16
  %conv.i = and i16 %7, -32768
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %3, align 2
  %9 = lshr i32 %call, 23
  %10 = trunc i32 %9 to i16
  %conv3.i = and i16 %10, 255
  %11 = ptrtoint ptr %vsn to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv3.i, ptr %vsn, align 4
  %12 = shl i32 %call, 7
  %shr4.i = and i32 %12, 1073741696
  %trunc.i = trunc i32 %9 to i8
  %13 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %trunc.i, label %if.then.i [
    i8 0, label %do.end.vfp_single_unpack.exit_crit_edge
    i8 -1, label %do.end.vfp_single_unpack.exit_crit_edge498
  ]

do.end.vfp_single_unpack.exit_crit_edge498:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

do.end.vfp_single_unpack.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %shr4.i, 1073741824
  br label %vfp_single_unpack.exit

vfp_single_unpack.exit:                           ; preds = %if.then.i, %do.end.vfp_single_unpack.exit_crit_edge, %do.end.vfp_single_unpack.exit_crit_edge498
  %significand.0.i = phi i32 [ %or.i, %if.then.i ], [ %shr4.i, %do.end.vfp_single_unpack.exit_crit_edge ], [ %shr4.i, %do.end.vfp_single_unpack.exit_crit_edge498 ]
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %significand.0.i, ptr %4, align 4
  %and.i389 = lshr i32 %m, 16
  %15 = trunc i32 %and.i389 to i16
  %conv.i390 = and i16 %15, -32768
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i390, ptr %5, align 2
  %17 = lshr i32 %m, 23
  %18 = trunc i32 %17 to i16
  %conv3.i392 = and i16 %18, 255
  %19 = ptrtoint ptr %vsm to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv3.i392, ptr %vsm, align 4
  %20 = shl i32 %m, 7
  %shr4.i393 = and i32 %20, 1073741696
  %trunc.i394 = trunc i32 %17 to i8
  %21 = zext i8 %trunc.i394 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %trunc.i394, label %if.then.i396 [
    i8 0, label %vfp_single_unpack.exit.vfp_single_unpack.exit399_crit_edge
    i8 -1, label %vfp_single_unpack.exit.vfp_single_unpack.exit399_crit_edge499
  ]

vfp_single_unpack.exit.vfp_single_unpack.exit399_crit_edge499: ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit399

vfp_single_unpack.exit.vfp_single_unpack.exit399_crit_edge: ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit399

if.then.i396:                                     ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or.i395 = or i32 %shr4.i393, 1073741824
  br label %vfp_single_unpack.exit399

vfp_single_unpack.exit399:                        ; preds = %if.then.i396, %vfp_single_unpack.exit.vfp_single_unpack.exit399_crit_edge, %vfp_single_unpack.exit.vfp_single_unpack.exit399_crit_edge499
  %significand.0.i397 = phi i32 [ %or.i395, %if.then.i396 ], [ %shr4.i393, %vfp_single_unpack.exit.vfp_single_unpack.exit399_crit_edge ], [ %shr4.i393, %vfp_single_unpack.exit.vfp_single_unpack.exit399_crit_edge499 ]
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %significand.0.i397, ptr %6, align 4
  %xor387 = xor i16 %conv.i, %conv.i390
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %xor387, ptr %0, align 2
  %24 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %trunc.i, label %vfp_single_unpack.exit399.vfp_single_type.exit_crit_edge [
    i8 -1, label %if.then.i400
    i8 0, label %if.then14.i
  ]

vfp_single_unpack.exit399.vfp_single_type.exit_crit_edge: ; preds = %vfp_single_unpack.exit399
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit

if.then.i400:                                     ; preds = %vfp_single_unpack.exit399
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp2.i = icmp eq i32 %significand.0.i, 0
  br i1 %cmp2.i, label %if.then.i400.vfp_single_type.exit_crit_edge, label %if.else.i

if.then.i400.vfp_single_type.exit_crit_edge:      ; preds = %if.then.i400
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit

if.else.i:                                        ; preds = %if.then.i400
  call void @__sanitizer_cov_trace_pc() #7
  %and.i401 = and i32 %significand.0.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i401)
  %tobool.not.i = icmp eq i32 %and.i401, 0
  %..i = select i1 %tobool.not.i, i32 48, i32 16
  br label %vfp_single_type.exit

if.then14.i:                                      ; preds = %vfp_single_unpack.exit399
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp16.i = icmp eq i32 %significand.0.i, 0
  %.30.i = select i1 %cmp16.i, i32 3, i32 5
  br label %vfp_single_type.exit

vfp_single_type.exit:                             ; preds = %if.then14.i, %if.else.i, %if.then.i400.vfp_single_type.exit_crit_edge, %vfp_single_unpack.exit399.vfp_single_type.exit_crit_edge
  %type.0.i = phi i32 [ 8, %if.then.i400.vfp_single_type.exit_crit_edge ], [ %..i, %if.else.i ], [ 1, %vfp_single_unpack.exit399.vfp_single_type.exit_crit_edge ], [ %.30.i, %if.then14.i ]
  %25 = zext i8 %trunc.i394 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %trunc.i394, label %vfp_single_type.exit.vfp_single_type.exit414_crit_edge [
    i8 -1, label %if.then.i404
    i8 0, label %if.then14.i412
  ]

vfp_single_type.exit.vfp_single_type.exit414_crit_edge: ; preds = %vfp_single_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit414

if.then.i404:                                     ; preds = %vfp_single_type.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i397)
  %cmp2.i403 = icmp eq i32 %significand.0.i397, 0
  br i1 %cmp2.i403, label %if.then.i404.vfp_single_type.exit414_crit_edge, label %if.else.i408

if.then.i404.vfp_single_type.exit414_crit_edge:   ; preds = %if.then.i404
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit414

if.else.i408:                                     ; preds = %if.then.i404
  call void @__sanitizer_cov_trace_pc() #7
  %and.i405 = and i32 %significand.0.i397, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i405)
  %tobool.not.i406 = icmp eq i32 %and.i405, 0
  %..i407 = select i1 %tobool.not.i406, i32 48, i32 16
  br label %vfp_single_type.exit414

if.then14.i412:                                   ; preds = %vfp_single_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i397)
  %cmp16.i410 = icmp eq i32 %significand.0.i397, 0
  %.30.i411 = select i1 %cmp16.i410, i32 3, i32 5
  br label %vfp_single_type.exit414

vfp_single_type.exit414:                          ; preds = %if.then14.i412, %if.else.i408, %if.then.i404.vfp_single_type.exit414_crit_edge, %vfp_single_type.exit.vfp_single_type.exit414_crit_edge
  %type.0.i413 = phi i32 [ 8, %if.then.i404.vfp_single_type.exit414_crit_edge ], [ %..i407, %if.else.i408 ], [ 1, %vfp_single_type.exit.vfp_single_type.exit414_crit_edge ], [ %.30.i411, %if.then14.i412 ]
  %and = and i32 %type.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end12, label %vsn_nan

if.end12:                                         ; preds = %vfp_single_type.exit414
  %and13 = and i32 %type.0.i413, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %vsm_nan

if.end16:                                         ; preds = %if.end12
  %and17 = and i32 %type.0.i, 10
  %and18 = and i32 %and17, %type.0.i413
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %invalid

if.end21:                                         ; preds = %if.end16
  %and22 = and i32 %type.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.infinity_crit_edge

if.end21.infinity_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %infinity

if.end25:                                         ; preds = %if.end21
  %and26 = and i32 %type.0.i413, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.infinity_crit_edge

if.end25.infinity_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %infinity

if.end29:                                         ; preds = %if.end25
  %and30 = and i32 %type.0.i413, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %and32 = and i32 %type.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond = select i1 %tobool31.not, i1 %tobool33.not, i1 false
  br i1 %or.cond, label %if.end35, label %zero

if.end35:                                         ; preds = %if.end29
  %and36 = and i32 %type.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end39_crit_edge, label %if.then38

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @vfp_single_normalise_denormal(ptr noundef nonnull %vsn)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %and40 = and i32 %type.0.i413, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end43_crit_edge, label %if.then42

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @vfp_single_normalise_denormal(ptr noundef nonnull %vsm)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  %26 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vsn, align 4
  %28 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vsm, align 4
  %sub = sub i16 %27, %29
  %sub47 = add i16 %sub, 126
  %30 = ptrtoint ptr %vsd to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %sub47, ptr %vsd, align 8
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %6, align 4
  %shl = shl i32 %32, 1
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %4, align 4
  %mul = shl i32 %34, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %mul)
  %cmp.not = icmp ugt i32 %shl, %mul
  br i1 %cmp.not, label %if.end43.if.end56_crit_edge, label %if.then53

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then53:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 %34, 1
  %inc = add i16 %sub, 127
  %35 = ptrtoint ptr %vsd to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %inc, ptr %vsd, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end43.if.end56_crit_edge
  %36 = phi i32 [ %shr, %if.then53 ], [ %34, %if.end43.if.end56_crit_edge ]
  %conv59 = zext i32 %36 to i64
  %shl60 = shl nuw i64 %conv59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp239 = icmp eq i32 %36, 0
  br i1 %cmp239, label %if.end56.if.then265_crit_edge, label %if.else253, !prof !116

if.end56.if.then265_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then265

if.else253:                                       ; preds = %if.end56
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %shl60) #9, !srcloc !117
  %asmresult1.i = extractvalue { i64, i64 } %37, 1
  %conv259 = trunc i64 %asmresult1.i to i32
  %and262 = and i32 %conv259, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %cmp263 = icmp eq i32 %and262, 0
  br i1 %cmp263, label %if.else253.if.then265_crit_edge, label %if.else253.if.end278_crit_edge

if.else253.if.end278_crit_edge:                   ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end278

if.else253.if.then265_crit_edge:                  ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then265

if.then265:                                       ; preds = %if.else253.if.then265_crit_edge, %if.end56.if.then265_crit_edge
  %conv259497 = phi i32 [ %conv259, %if.else253.if.then265_crit_edge ], [ 0, %if.end56.if.then265_crit_edge ]
  %significand57.0496 = phi i64 [ %asmresult1.i, %if.else253.if.then265_crit_edge ], [ 0, %if.end56.if.then265_crit_edge ]
  %conv267 = zext i32 %shl to i64
  %conv269 = and i64 %significand57.0496, 4294967295
  %mul270 = mul nuw i64 %conv269, %conv267
  call void @__sanitizer_cov_trace_cmp8(i64 %mul270, i64 %shl60)
  %cmp274 = icmp ne i64 %mul270, %shl60
  %conv275 = zext i1 %cmp274 to i32
  %or277 = or i32 %conv259497, %conv275
  br label %if.end278

if.end278:                                        ; preds = %if.then265, %if.else253.if.end278_crit_edge
  %storemerge = phi i32 [ %or277, %if.then265 ], [ %conv259, %if.else253.if.end278_crit_edge ]
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %storemerge, ptr %1, align 4
  %call279 = call i32 @__vfp_single_normaliseround(i32 noundef %sd, ptr noundef nonnull %vsd, i32 noundef %fpscr, i32 noundef 0)
  br label %cleanup

vsn_nan:                                          ; preds = %vfp_single_type.exit414
  %39 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %trunc.i, label %vsn_nan.vfp_single_type.exit.i_crit_edge [
    i8 -1, label %if.then.i.i
    i8 0, label %if.then14.i.i
  ]

vsn_nan.vfp_single_type.exit.i_crit_edge:         ; preds = %vsn_nan
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit.i

if.then.i.i:                                      ; preds = %vsn_nan
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp2.i.i = icmp eq i32 %significand.0.i, 0
  br i1 %cmp2.i.i, label %if.then.i.i.vfp_single_type.exit.i_crit_edge, label %if.else.i.i

if.then.i.i.vfp_single_type.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = and i32 %significand.0.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i418 = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i418, i32 48, i32 16
  br label %vfp_single_type.exit.i

if.then14.i.i:                                    ; preds = %vsn_nan
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp16.i.i = icmp eq i32 %significand.0.i, 0
  %.30.i.i = select i1 %cmp16.i.i, i32 3, i32 5
  br label %vfp_single_type.exit.i

vfp_single_type.exit.i:                           ; preds = %if.then14.i.i, %if.else.i.i, %if.then.i.i.vfp_single_type.exit.i_crit_edge, %vsn_nan.vfp_single_type.exit.i_crit_edge
  %type.0.i.i = phi i32 [ 8, %if.then.i.i.vfp_single_type.exit.i_crit_edge ], [ %..i.i, %if.else.i.i ], [ 1, %vsn_nan.vfp_single_type.exit.i_crit_edge ], [ %.30.i.i, %if.then14.i.i ]
  %40 = zext i8 %trunc.i394 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %trunc.i394, label %vfp_single_type.exit.i.if.end.i_crit_edge [
    i8 -1, label %if.then.i21.i
    i8 0, label %if.then14.i29.i
  ]

vfp_single_type.exit.i.if.end.i_crit_edge:        ; preds = %vfp_single_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i21.i:                                    ; preds = %vfp_single_type.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i397)
  %cmp2.i20.i = icmp eq i32 %significand.0.i397, 0
  br i1 %cmp2.i20.i, label %if.then.i21.i.if.end.i_crit_edge, label %if.else.i25.i

if.then.i21.i.if.end.i_crit_edge:                 ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.else.i25.i:                                    ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i22.i = and i32 %significand.0.i397, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i)
  %tobool.not.i23.i = icmp eq i32 %and.i22.i, 0
  %..i24.i = select i1 %tobool.not.i23.i, i32 48, i32 16
  br label %if.end.i

if.then14.i29.i:                                  ; preds = %vfp_single_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i397)
  %cmp16.i27.i = icmp eq i32 %significand.0.i397, 0
  %.30.i28.i = select i1 %cmp16.i27.i, i32 3, i32 5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i29.i, %if.else.i25.i, %if.then.i21.i.if.end.i_crit_edge, %vfp_single_type.exit.i.if.end.i_crit_edge
  %tm.0.i = phi i32 [ 8, %if.then.i21.i.if.end.i_crit_edge ], [ %..i24.i, %if.else.i25.i ], [ 1, %vfp_single_type.exit.i.if.end.i_crit_edge ], [ %.30.i28.i, %if.then14.i29.i ]
  %and.i420 = and i32 %fpscr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i420)
  %tobool2.not.i = icmp eq i32 %and.i420, 0
  br i1 %tobool2.not.i, label %if.else.i423, label %if.end.i.vfp_propagate_nan.exit_crit_edge

if.end.i.vfp_propagate_nan.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_propagate_nan.exit

if.else.i423:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i)
  %cmp.i = icmp eq i32 %type.0.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i)
  %cmp4.not.i = icmp ne i32 %tm.0.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type.0.i.i)
  %cmp5.i = icmp eq i32 %type.0.i.i, 16
  %or.cond.i = select i1 %cmp4.not.i, i1 %cmp5.i, i1 false
  %41 = select i1 %cmp.i, i1 true, i1 %or.cond.i
  %nan.0.i = select i1 %41, ptr %vsn, ptr %vsm
  %nan.0.i.sroa.sel = select i1 %41, ptr %4, ptr %6
  %42 = ptrtoint ptr %nan.0.i.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nan.0.i.sroa.sel, align 4
  %or.i422 = or i32 %43, 536870912
  store i32 %or.i422, ptr %nan.0.i.sroa.sel, align 4
  br label %vfp_propagate_nan.exit

vfp_propagate_nan.exit:                           ; preds = %if.else.i423, %if.end.i.vfp_propagate_nan.exit_crit_edge
  %nan.1.i = phi ptr [ %nan.0.i, %if.else.i423 ], [ @vfp_single_default_qnan, %if.end.i.vfp_propagate_nan.exit_crit_edge ]
  %44 = ptrtoint ptr %nan.1.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %nan.1.i, align 4
  %46 = ptrtoint ptr %vsd to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %vsd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i)
  %cmp10.i = icmp eq i32 %type.0.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i)
  %cmp11.i = icmp eq i32 %tm.0.i, 48
  %47 = select i1 %cmp10.i, i1 true, i1 %cmp11.i
  %48 = select i1 %47, i32 1, i32 256
  br label %pack

pack:                                             ; preds = %infinity, %zero, %vfp_propagate_nan.exit467, %vfp_propagate_nan.exit
  %exceptions.0 = phi i32 [ %48, %vfp_propagate_nan.exit ], [ %64, %vfp_propagate_nan.exit467 ], [ %exceptions.1, %infinity ], [ 0, %zero ]
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %0, align 2
  %conv.i425 = zext i16 %50 to i32
  %shl.i = shl nuw i32 %conv.i425, 16
  %51 = ptrtoint ptr %vsd to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vsd, align 8
  %conv16.i = zext i16 %52 to i32
  %shl2.i = shl i32 %conv16.i, 23
  %add.i = add i32 %shl2.i, %shl.i
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 4
  %shr.i = lshr i32 %54, 7
  %add3.i = add i32 %add.i, %shr.i
  tail call void @vfp_put_float(i32 noundef %add3.i, i32 noundef %sd) #5
  br label %cleanup

vsm_nan:                                          ; preds = %if.end12
  %55 = zext i8 %trunc.i394 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %trunc.i394, label %vsm_nan.vfp_single_type.exit.i439_crit_edge [
    i8 -1, label %if.then.i.i429
    i8 0, label %if.then14.i.i437
  ]

vsm_nan.vfp_single_type.exit.i439_crit_edge:      ; preds = %vsm_nan
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit.i439

if.then.i.i429:                                   ; preds = %vsm_nan
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i397)
  %cmp2.i.i428 = icmp eq i32 %significand.0.i397, 0
  br i1 %cmp2.i.i428, label %if.then.i.i429.vfp_single_type.exit.i439_crit_edge, label %if.else.i.i433

if.then.i.i429.vfp_single_type.exit.i439_crit_edge: ; preds = %if.then.i.i429
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit.i439

if.else.i.i433:                                   ; preds = %if.then.i.i429
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i430 = and i32 %significand.0.i397, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i430)
  %tobool.not.i.i431 = icmp eq i32 %and.i.i430, 0
  %..i.i432 = select i1 %tobool.not.i.i431, i32 48, i32 16
  br label %vfp_single_type.exit.i439

if.then14.i.i437:                                 ; preds = %vsm_nan
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i397)
  %cmp16.i.i435 = icmp eq i32 %significand.0.i397, 0
  %.30.i.i436 = select i1 %cmp16.i.i435, i32 3, i32 5
  br label %vfp_single_type.exit.i439

vfp_single_type.exit.i439:                        ; preds = %if.then14.i.i437, %if.else.i.i433, %if.then.i.i429.vfp_single_type.exit.i439_crit_edge, %vsm_nan.vfp_single_type.exit.i439_crit_edge
  %type.0.i.i438 = phi i32 [ 8, %if.then.i.i429.vfp_single_type.exit.i439_crit_edge ], [ %..i.i432, %if.else.i.i433 ], [ 1, %vsm_nan.vfp_single_type.exit.i439_crit_edge ], [ %.30.i.i436, %if.then14.i.i437 ]
  %56 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %trunc.i, label %vfp_single_type.exit.i439.if.end.i455_crit_edge [
    i8 -1, label %if.then.i21.i443
    i8 0, label %if.then14.i29.i451
  ]

vfp_single_type.exit.i439.if.end.i455_crit_edge:  ; preds = %vfp_single_type.exit.i439
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i455

if.then.i21.i443:                                 ; preds = %vfp_single_type.exit.i439
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp2.i20.i442 = icmp eq i32 %significand.0.i, 0
  br i1 %cmp2.i20.i442, label %if.then.i21.i443.if.end.i455_crit_edge, label %if.else.i25.i447

if.then.i21.i443.if.end.i455_crit_edge:           ; preds = %if.then.i21.i443
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i455

if.else.i25.i447:                                 ; preds = %if.then.i21.i443
  call void @__sanitizer_cov_trace_pc() #7
  %and.i22.i444 = and i32 %significand.0.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i444)
  %tobool.not.i23.i445 = icmp eq i32 %and.i22.i444, 0
  %..i24.i446 = select i1 %tobool.not.i23.i445, i32 48, i32 16
  br label %if.end.i455

if.then14.i29.i451:                               ; preds = %vfp_single_type.exit.i439
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %cmp16.i27.i449 = icmp eq i32 %significand.0.i, 0
  %.30.i28.i450 = select i1 %cmp16.i27.i449, i32 3, i32 5
  br label %if.end.i455

if.end.i455:                                      ; preds = %if.then14.i29.i451, %if.else.i25.i447, %if.then.i21.i443.if.end.i455_crit_edge, %vfp_single_type.exit.i439.if.end.i455_crit_edge
  %tm.0.i452 = phi i32 [ 8, %if.then.i21.i443.if.end.i455_crit_edge ], [ %..i24.i446, %if.else.i25.i447 ], [ 1, %vfp_single_type.exit.i439.if.end.i455_crit_edge ], [ %.30.i28.i450, %if.then14.i29.i451 ]
  %and.i453 = and i32 %fpscr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i453)
  %tobool2.not.i454 = icmp eq i32 %and.i453, 0
  br i1 %tobool2.not.i454, label %if.else.i463, label %if.end.i455.vfp_propagate_nan.exit467_crit_edge

if.end.i455.vfp_propagate_nan.exit467_crit_edge:  ; preds = %if.end.i455
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_propagate_nan.exit467

if.else.i463:                                     ; preds = %if.end.i455
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i438)
  %cmp.i456 = icmp eq i32 %type.0.i.i438, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i452)
  %cmp4.not.i457 = icmp ne i32 %tm.0.i452, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type.0.i.i438)
  %cmp5.i458 = icmp eq i32 %type.0.i.i438, 16
  %or.cond.i459 = select i1 %cmp4.not.i457, i1 %cmp5.i458, i1 false
  %57 = select i1 %cmp.i456, i1 true, i1 %or.cond.i459
  %nan.0.i460 = select i1 %57, ptr %vsm, ptr %vsn
  %nan.0.i460.sroa.sel = select i1 %57, ptr %6, ptr %4
  %58 = ptrtoint ptr %nan.0.i460.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nan.0.i460.sroa.sel, align 4
  %or.i462 = or i32 %59, 536870912
  store i32 %or.i462, ptr %nan.0.i460.sroa.sel, align 4
  br label %vfp_propagate_nan.exit467

vfp_propagate_nan.exit467:                        ; preds = %if.else.i463, %if.end.i455.vfp_propagate_nan.exit467_crit_edge
  %nan.1.i464 = phi ptr [ %nan.0.i460, %if.else.i463 ], [ @vfp_single_default_qnan, %if.end.i455.vfp_propagate_nan.exit467_crit_edge ]
  %60 = ptrtoint ptr %nan.1.i464 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %nan.1.i464, align 4
  %62 = ptrtoint ptr %vsd to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %vsd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i438)
  %cmp10.i465 = icmp eq i32 %type.0.i.i438, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i452)
  %cmp11.i466 = icmp eq i32 %tm.0.i452, 48
  %63 = select i1 %cmp10.i465, i1 true, i1 %cmp11.i466
  %64 = select i1 %63, i32 1, i32 256
  br label %pack

zero:                                             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %vsd to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %vsd, align 8
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %1, align 4
  br label %pack

infinity:                                         ; preds = %if.end25.infinity_crit_edge, %if.end21.infinity_crit_edge
  %exceptions.1 = phi i32 [ 0, %if.end21.infinity_crit_edge ], [ 2, %if.end25.infinity_crit_edge ]
  %67 = ptrtoint ptr %vsd to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 255, ptr %vsd, align 8
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %1, align 4
  br label %pack

invalid:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vfp_put_float(i32 noundef 2143289344, i32 noundef %sd) #5
  br label %cleanup

cleanup:                                          ; preds = %invalid, %pack, %if.end278
  %retval.0 = phi i32 [ %exceptions.0, %pack ], [ 1, %invalid ], [ %call279, %if.end278 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsn) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfp_single_multiply_accumulate(i32 noundef %sd, i32 noundef %sn, i32 noundef %m, i32 noundef %fpscr, i32 noundef %negate) unnamed_addr #0 align 64 {
entry:
  %vsd = alloca %struct.vfp_single, align 8
  %vsp = alloca %struct.vfp_single, align 8
  %vsn = alloca %struct.vfp_single, align 4
  %vsm = alloca %struct.vfp_single, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsd) #5
  %0 = ptrtoint ptr %vsd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vsd, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsp) #5
  %1 = getelementptr inbounds %struct.vfp_single, ptr %vsp, i32 0, i32 1
  %2 = ptrtoint ptr %vsp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %vsp, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsn) #5
  %3 = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 1
  %4 = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vsm) #5
  %5 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 1
  %6 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 2
  %call = tail call i32 @vfp_get_float(i32 noundef %sn) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_multiply_accumulate.__UNIQUE_ID_ddebug21, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply_accumulate, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_multiply_accumulate.__UNIQUE_ID_ddebug21, ptr noundef nonnull @.str.29, i32 noundef %sn, i32 noundef %call) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and.i = lshr i32 %call, 16
  %7 = trunc i32 %and.i to i16
  %conv.i = and i16 %7, -32768
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %3, align 2
  %9 = lshr i32 %call, 23
  %10 = trunc i32 %9 to i16
  %conv3.i = and i16 %10, 255
  %11 = ptrtoint ptr %vsn to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv3.i, ptr %vsn, align 4
  %12 = shl i32 %call, 7
  %shr4.i = and i32 %12, 1073741696
  %trunc.i = trunc i32 %9 to i8
  %13 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %trunc.i, label %if.then.i [
    i8 0, label %do.end.vfp_single_unpack.exit_crit_edge
    i8 -1, label %do.end.vfp_single_unpack.exit_crit_edge80
  ]

do.end.vfp_single_unpack.exit_crit_edge80:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

do.end.vfp_single_unpack.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %shr4.i, 1073741824
  br label %vfp_single_unpack.exit

vfp_single_unpack.exit:                           ; preds = %if.then.i, %do.end.vfp_single_unpack.exit_crit_edge, %do.end.vfp_single_unpack.exit_crit_edge80
  %significand.0.i = phi i32 [ %or.i, %if.then.i ], [ %shr4.i, %do.end.vfp_single_unpack.exit_crit_edge ], [ %shr4.i, %do.end.vfp_single_unpack.exit_crit_edge80 ]
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %significand.0.i, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %cmp = icmp ne i16 %conv3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i)
  %tobool5.not = icmp eq i32 %significand.0.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %vfp_single_unpack.exit.if.end7_crit_edge, label %if.then6

vfp_single_unpack.exit.if.end7_crit_edge:         ; preds = %vfp_single_unpack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %vfp_single_unpack.exit
  %15 = tail call i32 @llvm.ctlz.i32(i32 %significand.0.i, i1 true) #5, !range !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply_accumulate, %if.then.i.i)) #5
          to label %vfp_single_dump.exit.i [label %if.then.i.i], !srcloc !114

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.i.i = icmp ne i16 %17, 0
  %conv3.i.i = zext i1 %cmp.i.i to i32
  %18 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsn, align 4
  %conv4.i.i = sext i16 %19 to i32
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i.i, i32 noundef %conv4.i.i, i32 noundef %21) #5
  br label %vfp_single_dump.exit.i

vfp_single_dump.exit.i:                           ; preds = %if.then.i.i, %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 1
  br i1 %tobool.not.i, label %vfp_single_dump.exit.i.if.end.i_crit_edge, label %if.then.i5

vfp_single_dump.exit.i.if.end.i_crit_edge:        ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i5:                                       ; preds = %vfp_single_dump.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nsw i32 %15, -1
  %22 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vsn, align 4
  %24 = trunc i32 %15 to i16
  %25 = sub nsw i16 2, %24
  %conv3.i4 = add i16 %25, %23
  store i16 %conv3.i4, ptr %vsn, align 4
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %4, align 4
  %shl.i = shl i32 %27, %sub.i
  store i32 %shl.i, ptr %4, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i5, %vfp_single_dump.exit.i.if.end.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply_accumulate, %if.then.i17.i)) #5
          to label %if.end7 [label %if.then.i17.i], !srcloc !114

if.then.i17.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.i13.i = icmp ne i16 %29, 0
  %conv3.i14.i = zext i1 %cmp.i13.i to i32
  %30 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vsn, align 4
  %conv4.i15.i = sext i16 %31 to i32
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14.i, i32 noundef %conv4.i15.i, i32 noundef %33) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then.i17.i, %if.end.i, %vfp_single_unpack.exit.if.end7_crit_edge
  %and.i6 = lshr i32 %m, 16
  %34 = trunc i32 %and.i6 to i16
  %conv.i7 = and i16 %34, -32768
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i7, ptr %5, align 2
  %36 = lshr i32 %m, 23
  %37 = trunc i32 %36 to i16
  %conv3.i9 = and i16 %37, 255
  %38 = ptrtoint ptr %vsm to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv3.i9, ptr %vsm, align 4
  %39 = shl i32 %m, 7
  %shr4.i10 = and i32 %39, 1073741696
  %trunc.i11 = trunc i32 %36 to i8
  %40 = zext i8 %trunc.i11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %trunc.i11, label %if.then.i13 [
    i8 0, label %if.end7.vfp_single_unpack.exit17_crit_edge
    i8 -1, label %if.end7.vfp_single_unpack.exit17_crit_edge81
  ]

if.end7.vfp_single_unpack.exit17_crit_edge81:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit17

if.end7.vfp_single_unpack.exit17_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit17

if.then.i13:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %or.i12 = or i32 %shr4.i10, 1073741824
  br label %vfp_single_unpack.exit17

vfp_single_unpack.exit17:                         ; preds = %if.then.i13, %if.end7.vfp_single_unpack.exit17_crit_edge, %if.end7.vfp_single_unpack.exit17_crit_edge81
  %significand.0.i14 = phi i32 [ %or.i12, %if.then.i13 ], [ %shr4.i10, %if.end7.vfp_single_unpack.exit17_crit_edge ], [ %shr4.i10, %if.end7.vfp_single_unpack.exit17_crit_edge81 ]
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %significand.0.i14, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i9)
  %cmp10 = icmp ne i16 %conv3.i9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i14)
  %tobool14.not = icmp eq i32 %significand.0.i14, 0
  %or.cond76 = or i1 %cmp10, %tobool14.not
  br i1 %or.cond76, label %vfp_single_unpack.exit17.if.end16_crit_edge, label %if.then15

vfp_single_unpack.exit17.if.end16_crit_edge:      ; preds = %vfp_single_unpack.exit17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %vfp_single_unpack.exit17
  %42 = tail call i32 @llvm.ctlz.i32(i32 %significand.0.i14, i1 true) #5, !range !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply_accumulate, %if.then.i.i26)) #5
          to label %vfp_single_dump.exit.i28 [label %if.then.i.i26], !srcloc !114

if.then.i.i26:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.i.i23 = icmp ne i16 %44, 0
  %conv3.i.i24 = zext i1 %cmp.i.i23 to i32
  %45 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vsm, align 4
  %conv4.i.i25 = sext i16 %46 to i32
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i.i24, i32 noundef %conv4.i.i25, i32 noundef %48) #5
  br label %vfp_single_dump.exit.i28

vfp_single_dump.exit.i28:                         ; preds = %if.then.i.i26, %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %tobool.not.i27 = icmp eq i32 %42, 1
  br i1 %tobool.not.i27, label %vfp_single_dump.exit.i28.if.end.i33_crit_edge, label %if.then.i32

vfp_single_dump.exit.i28.if.end.i33_crit_edge:    ; preds = %vfp_single_dump.exit.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i33

if.then.i32:                                      ; preds = %vfp_single_dump.exit.i28
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i29 = add nsw i32 %42, -1
  %49 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vsm, align 4
  %51 = trunc i32 %42 to i16
  %52 = sub nsw i16 2, %51
  %conv3.i30 = add i16 %52, %50
  store i16 %conv3.i30, ptr %vsm, align 4
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %6, align 4
  %shl.i31 = shl i32 %54, %sub.i29
  store i32 %shl.i31, ptr %6, align 4
  br label %if.end.i33

if.end.i33:                                       ; preds = %if.then.i32, %vfp_single_dump.exit.i28.if.end.i33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply_accumulate, %if.then.i17.i38)) #5
          to label %if.end16 [label %if.then.i17.i38], !srcloc !114

if.then.i17.i38:                                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp.i13.i35 = icmp ne i16 %56, 0
  %conv3.i14.i36 = zext i1 %cmp.i13.i35 to i32
  %57 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vsm, align 4
  %conv4.i15.i37 = sext i16 %58 to i32
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14.i36, i32 noundef %conv4.i15.i37, i32 noundef %60) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then.i17.i38, %if.end.i33, %vfp_single_unpack.exit17.if.end16_crit_edge
  %call17 = call fastcc i32 @vfp_single_multiply(ptr noundef nonnull %vsp, ptr noundef nonnull %vsn, ptr noundef nonnull %vsm, i32 noundef %fpscr)
  %and = and i32 %negate, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end16.if.end23_crit_edge, label %if.then19

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %1, align 2
  %63 = xor i16 %62, -32768
  store i16 %63, ptr %1, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end16.if.end23_crit_edge
  %call24 = call i32 @vfp_get_float(i32 noundef %sd) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_multiply_accumulate.__UNIQUE_ID_ddebug22, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply_accumulate, %if.then37)) #5
          to label %do.end40 [label %if.then37], !srcloc !114

if.then37:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_multiply_accumulate.__UNIQUE_ID_ddebug22, ptr noundef nonnull @.str.29, i32 noundef %sd, i32 noundef %call24) #5
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %if.end23
  %and.i40 = lshr i32 %call24, 16
  %64 = trunc i32 %and.i40 to i16
  %conv.i41 = and i16 %64, -32768
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i41, ptr %3, align 2
  %66 = lshr i32 %call24, 23
  %67 = trunc i32 %66 to i16
  %conv3.i43 = and i16 %67, 255
  %68 = ptrtoint ptr %vsn to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv3.i43, ptr %vsn, align 4
  %69 = shl i32 %call24, 7
  %shr4.i44 = and i32 %69, 1073741696
  %trunc.i45 = trunc i32 %66 to i8
  %70 = zext i8 %trunc.i45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %trunc.i45, label %if.then.i47 [
    i8 0, label %do.end40.vfp_single_unpack.exit51_crit_edge
    i8 -1, label %do.end40.vfp_single_unpack.exit51_crit_edge82
  ]

do.end40.vfp_single_unpack.exit51_crit_edge82:    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit51

do.end40.vfp_single_unpack.exit51_crit_edge:      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_unpack.exit51

if.then.i47:                                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  %or.i46 = or i32 %shr4.i44, 1073741824
  br label %vfp_single_unpack.exit51

vfp_single_unpack.exit51:                         ; preds = %if.then.i47, %do.end40.vfp_single_unpack.exit51_crit_edge, %do.end40.vfp_single_unpack.exit51_crit_edge82
  %significand.0.i48 = phi i32 [ %or.i46, %if.then.i47 ], [ %shr4.i44, %do.end40.vfp_single_unpack.exit51_crit_edge ], [ %shr4.i44, %do.end40.vfp_single_unpack.exit51_crit_edge82 ]
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %significand.0.i48, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i43)
  %cmp43 = icmp ne i16 %conv3.i43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %significand.0.i48)
  %tobool47.not = icmp eq i32 %significand.0.i48, 0
  %or.cond77 = select i1 %cmp43, i1 true, i1 %tobool47.not
  br i1 %or.cond77, label %vfp_single_unpack.exit51.if.end49_crit_edge, label %if.then48

vfp_single_unpack.exit51.if.end49_crit_edge:      ; preds = %vfp_single_unpack.exit51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then48:                                        ; preds = %vfp_single_unpack.exit51
  %72 = call i32 @llvm.ctlz.i32(i32 %significand.0.i48, i1 true) #5, !range !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply_accumulate, %if.then.i.i60)) #5
          to label %vfp_single_dump.exit.i62 [label %if.then.i.i60], !srcloc !114

if.then.i.i60:                                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp.i.i57 = icmp ne i16 %74, 0
  %conv3.i.i58 = zext i1 %cmp.i.i57 to i32
  %75 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vsn, align 4
  %conv4.i.i59 = sext i16 %76 to i32
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, i32 noundef %conv3.i.i58, i32 noundef %conv4.i.i59, i32 noundef %78) #5
  br label %vfp_single_dump.exit.i62

vfp_single_dump.exit.i62:                         ; preds = %if.then.i.i60, %if.then48
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %tobool.not.i61 = icmp eq i32 %72, 1
  br i1 %tobool.not.i61, label %vfp_single_dump.exit.i62.if.end.i67_crit_edge, label %if.then.i66

vfp_single_dump.exit.i62.if.end.i67_crit_edge:    ; preds = %vfp_single_dump.exit.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i67

if.then.i66:                                      ; preds = %vfp_single_dump.exit.i62
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i63 = add nsw i32 %72, -1
  %79 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vsn, align 4
  %81 = trunc i32 %72 to i16
  %82 = sub nsw i16 2, %81
  %conv3.i64 = add i16 %82, %80
  store i16 %conv3.i64, ptr %vsn, align 4
  %83 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %4, align 4
  %shl.i65 = shl i32 %84, %sub.i63
  store i32 %shl.i65, ptr %4, align 4
  br label %if.end.i67

if.end.i67:                                       ; preds = %if.then.i66, %vfp_single_dump.exit.i62.if.end.i67_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply_accumulate, %if.then.i17.i72)) #5
          to label %if.end49 [label %if.then.i17.i72], !srcloc !114

if.then.i17.i72:                                  ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp.i13.i69 = icmp ne i16 %86, 0
  %conv3.i14.i70 = zext i1 %cmp.i13.i69 to i32
  %87 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %vsn, align 4
  %conv4.i15.i71 = sext i16 %88 to i32
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef %conv3.i14.i70, i32 noundef %conv4.i15.i71, i32 noundef %90) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then.i17.i72, %if.end.i67, %vfp_single_unpack.exit51.if.end49_crit_edge
  %and50 = and i32 %negate, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end58_crit_edge, label %if.then52

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %3, align 2
  %93 = xor i16 %92, -32768
  store i16 %93, ptr %3, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %if.end49.if.end58_crit_edge
  %call59 = call fastcc i32 @vfp_single_add(ptr noundef nonnull %vsd, ptr noundef nonnull %vsn, ptr noundef nonnull %vsp, i32 noundef %fpscr)
  %or = or i32 %call59, %call17
  %call60 = call i32 @__vfp_single_normaliseround(i32 noundef %sd, ptr noundef nonnull %vsd, i32 noundef %fpscr, i32 noundef %or)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsn) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vsd) #5
  ret i32 %call60
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfp_single_multiply(ptr nocapture noundef %vsd, ptr noundef %vsn, ptr noundef %vsm, i32 noundef %fpscr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply, %if.then.i)) #5
          to label %vfp_single_dump.exit [label %if.then.i], !srcloc !114

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sign.i = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 1
  %0 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sign.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp ne i16 %1, 0
  %conv3.i = zext i1 %cmp.i to i32
  %2 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vsn, align 4
  %conv4.i = sext i16 %3 to i32
  %significand.i = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 2
  %4 = ptrtoint ptr %significand.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %significand.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.30, i32 noundef %conv3.i, i32 noundef %conv4.i, i32 noundef %5) #5
  br label %vfp_single_dump.exit

vfp_single_dump.exit:                             ; preds = %if.then.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply, %if.then.i98)) #5
          to label %vfp_single_dump.exit99 [label %if.then.i98], !srcloc !114

if.then.i98:                                      ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sign.i93 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 1
  %6 = ptrtoint ptr %sign.i93 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sign.i93, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i94 = icmp ne i16 %7, 0
  %conv3.i95 = zext i1 %cmp.i94 to i32
  %8 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vsm, align 4
  %conv4.i96 = sext i16 %9 to i32
  %significand.i97 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 2
  %10 = ptrtoint ptr %significand.i97 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %significand.i97, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.22, i32 noundef %conv3.i95, i32 noundef %conv4.i96, i32 noundef %11) #5
  br label %vfp_single_dump.exit99

vfp_single_dump.exit99:                           ; preds = %if.then.i98, %vfp_single_dump.exit
  %12 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vsn, align 4
  %14 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsm, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp = icmp slt i16 %13, %15
  br i1 %cmp, label %if.then, label %vfp_single_dump.exit99.if.end7_crit_edge

vfp_single_dump.exit99.if.end7_crit_edge:         ; preds = %vfp_single_dump.exit99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %vfp_single_dump.exit99
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_multiply.__UNIQUE_ID_ddebug20, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply, %if.then6)) #5
          to label %if.end7 [label %if.then6], !srcloc !114

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_multiply.__UNIQUE_ID_ddebug20, ptr noundef nonnull @.str.32) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then, %vfp_single_dump.exit99.if.end7_crit_edge
  %vsm.addr.0 = phi ptr [ %vsm, %vfp_single_dump.exit99.if.end7_crit_edge ], [ %vsn, %if.then6 ], [ %vsn, %if.then ]
  %vsn.addr.0 = phi ptr [ %vsn, %vfp_single_dump.exit99.if.end7_crit_edge ], [ %vsm, %if.then6 ], [ %vsm, %if.then ]
  %sign = getelementptr inbounds %struct.vfp_single, ptr %vsn.addr.0, i32 0, i32 1
  %16 = ptrtoint ptr %sign to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sign, align 2
  %sign9 = getelementptr inbounds %struct.vfp_single, ptr %vsm.addr.0, i32 0, i32 1
  %18 = ptrtoint ptr %sign9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sign9, align 2
  %xor92 = xor i16 %19, %17
  %sign12 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 1
  %20 = ptrtoint ptr %sign12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %xor92, ptr %sign12, align 2
  %21 = ptrtoint ptr %vsn.addr.0 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vsn.addr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %22)
  %cmp15 = icmp eq i16 %22, 255
  br i1 %cmp15, label %if.then17, label %if.end38

if.then17:                                        ; preds = %if.end7
  %significand = getelementptr inbounds %struct.vfp_single, ptr %vsn.addr.0, i32 0, i32 2
  %23 = ptrtoint ptr %significand to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %significand, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool18.not = icmp eq i32 %24, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.else.i.i

lor.lhs.false:                                    ; preds = %if.then17
  %25 = ptrtoint ptr %vsm.addr.0 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vsm.addr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %26)
  %cmp21 = icmp eq i16 %26, 255
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false.if.end27_crit_edge

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

land.lhs.true:                                    ; preds = %lor.lhs.false
  %significand23 = getelementptr inbounds %struct.vfp_single, ptr %vsm.addr.0, i32 0, i32 2
  %27 = ptrtoint ptr %significand23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %significand23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.vfp_single_type.exit.i_crit_edge

land.lhs.true.vfp_single_type.exit.i_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit.i

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.else.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = and i32 %24, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 48, i32 16
  br label %vfp_single_type.exit.i

vfp_single_type.exit.i:                           ; preds = %if.else.i.i, %land.lhs.true.vfp_single_type.exit.i_crit_edge
  %type.0.i.i = phi i32 [ %..i.i, %if.else.i.i ], [ 8, %land.lhs.true.vfp_single_type.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %vsm.addr.0, null
  br i1 %tobool.not.i, label %vfp_single_type.exit.i.if.end.i_crit_edge, label %if.then.i100

vfp_single_type.exit.i.if.end.i_crit_edge:        ; preds = %vfp_single_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i100:                                     ; preds = %vfp_single_type.exit.i
  %29 = ptrtoint ptr %vsm.addr.0 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vsm.addr.0, align 4
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %30, label %if.then.i100.if.end.i_crit_edge [
    i16 255, label %if.then.i21.i
    i16 0, label %if.then14.i29.i
  ]

if.then.i100.if.end.i_crit_edge:                  ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i21.i:                                    ; preds = %if.then.i100
  %significand.i19.i = getelementptr inbounds %struct.vfp_single, ptr %vsm.addr.0, i32 0, i32 2
  %32 = ptrtoint ptr %significand.i19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %significand.i19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp2.i20.i = icmp eq i32 %33, 0
  br i1 %cmp2.i20.i, label %if.then.i21.i.if.end.i_crit_edge, label %if.else.i25.i

if.then.i21.i.if.end.i_crit_edge:                 ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.else.i25.i:                                    ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i22.i = and i32 %33, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i)
  %tobool.not.i23.i = icmp eq i32 %and.i22.i, 0
  %..i24.i = select i1 %tobool.not.i23.i, i32 48, i32 16
  br label %if.end.i

if.then14.i29.i:                                  ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #7
  %significand15.i26.i = getelementptr inbounds %struct.vfp_single, ptr %vsm.addr.0, i32 0, i32 2
  %34 = ptrtoint ptr %significand15.i26.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %significand15.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp16.i27.i = icmp eq i32 %35, 0
  %.30.i28.i = select i1 %cmp16.i27.i, i32 3, i32 5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i29.i, %if.else.i25.i, %if.then.i21.i.if.end.i_crit_edge, %if.then.i100.if.end.i_crit_edge, %vfp_single_type.exit.i.if.end.i_crit_edge
  %tm.0.i = phi i32 [ 0, %vfp_single_type.exit.i.if.end.i_crit_edge ], [ 8, %if.then.i21.i.if.end.i_crit_edge ], [ %..i24.i, %if.else.i25.i ], [ 1, %if.then.i100.if.end.i_crit_edge ], [ %.30.i28.i, %if.then14.i29.i ]
  %and.i = and i32 %fpscr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.end.i.vfp_propagate_nan.exit_crit_edge

if.end.i.vfp_propagate_nan.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_propagate_nan.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i)
  %cmp.i101 = icmp eq i32 %type.0.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i)
  %cmp4.not.i = icmp ne i32 %tm.0.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type.0.i.i)
  %cmp5.i = icmp eq i32 %type.0.i.i, 16
  %or.cond.i = select i1 %cmp4.not.i, i1 %cmp5.i, i1 false
  %36 = select i1 %cmp.i101, i1 true, i1 %or.cond.i
  %nan.0.i = select i1 %36, ptr %vsn.addr.0, ptr %vsm.addr.0
  %significand.i102 = getelementptr inbounds %struct.vfp_single, ptr %nan.0.i, i32 0, i32 2
  %37 = ptrtoint ptr %significand.i102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %significand.i102, align 4
  %or.i = or i32 %38, 536870912
  store i32 %or.i, ptr %significand.i102, align 4
  br label %vfp_propagate_nan.exit

vfp_propagate_nan.exit:                           ; preds = %if.else.i, %if.end.i.vfp_propagate_nan.exit_crit_edge
  %nan.1.i = phi ptr [ %nan.0.i, %if.else.i ], [ @vfp_single_default_qnan, %if.end.i.vfp_propagate_nan.exit_crit_edge ]
  %39 = ptrtoint ptr %nan.1.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %nan.1.i, align 4
  %41 = ptrtoint ptr %vsd to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %vsd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i)
  %cmp10.i = icmp eq i32 %type.0.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i)
  %cmp11.i = icmp eq i32 %tm.0.i, 48
  %42 = select i1 %cmp10.i, i1 true, i1 %cmp11.i
  %43 = select i1 %42, i32 1, i32 256
  br label %return

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %lor.lhs.false.if.end27_crit_edge
  %conv29 = sext i16 %26 to i32
  %significand30 = getelementptr inbounds %struct.vfp_single, ptr %vsm.addr.0, i32 0, i32 2
  %44 = ptrtoint ptr %significand30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %significand30, align 4
  %or = or i32 %45, %conv29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp31 = icmp eq i32 %or, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %vsd to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 71776119598088192, ptr %vsd, align 4
  br label %return

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %vsd to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 255, ptr %vsd, align 4
  %significand37 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 2
  %48 = ptrtoint ptr %significand37 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %significand37, align 4
  br label %return

if.end38:                                         ; preds = %if.end7
  %49 = ptrtoint ptr %vsm.addr.0 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vsm.addr.0, align 4
  %conv40 = sext i16 %50 to i32
  %significand41 = getelementptr inbounds %struct.vfp_single, ptr %vsm.addr.0, i32 0, i32 2
  %51 = ptrtoint ptr %significand41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %significand41, align 4
  %or42 = or i32 %52, %conv40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or42)
  %cmp43 = icmp eq i32 %or42, 0
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %vsd to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %vsd, align 4
  %significand47 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 2
  %54 = ptrtoint ptr %significand47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %significand47, align 4
  br label %return

if.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i16 %22, -125
  %add53 = add i16 %add, %50
  %55 = ptrtoint ptr %vsd to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %add53, ptr %vsd, align 4
  %significand56 = getelementptr inbounds %struct.vfp_single, ptr %vsn.addr.0, i32 0, i32 2
  %56 = ptrtoint ptr %significand56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %significand56, align 4
  %conv57 = zext i32 %57 to i64
  %58 = ptrtoint ptr %significand41 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %significand41, align 4
  %conv59 = zext i32 %59 to i64
  %mul = mul nuw i64 %conv59, %conv57
  %60 = tail call i32 asm "cmp\09${1:Q}, #1\09\09@ vfp_hi64to32jamming\0A\09movcc\09$0, ${1:R}\0A\09orrcs\09$0, ${1:R}, #1", "=r,r,~{cc}"(i64 %mul) #9, !srcloc !119
  %significand61 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 2
  %61 = ptrtoint ptr %significand61 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %significand61, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_multiply, %if.then.i108)) #5
          to label %return [label %if.then.i108], !srcloc !114

if.then.i108:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %sign12 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sign12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp.i104 = icmp ne i16 %63, 0
  %conv3.i105 = zext i1 %cmp.i104 to i32
  %64 = ptrtoint ptr %vsd to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vsd, align 4
  %conv4.i106 = sext i16 %65 to i32
  %66 = ptrtoint ptr %significand61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %significand61, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.33, i32 noundef %conv3.i105, i32 noundef %conv4.i106, i32 noundef %67) #5
  br label %return

return:                                           ; preds = %if.then.i108, %if.end48, %if.then45, %if.end34, %if.then33, %vfp_propagate_nan.exit
  %retval.0 = phi i32 [ %43, %vfp_propagate_nan.exit ], [ 1, %if.then33 ], [ 0, %if.end34 ], [ 0, %if.then45 ], [ 0, %if.end48 ], [ 0, %if.then.i108 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfp_single_add(ptr nocapture noundef %vsd, ptr noundef %vsn, ptr noundef %vsm, i32 noundef %fpscr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %significand = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 2
  %0 = ptrtoint ptr %significand to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %significand, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %significand1 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 2
  %2 = ptrtoint ptr %significand1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %significand1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool3.not = icmp sgt i32 %3, -1
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_add, %if.then.i)) #5
          to label %vfp_single_dump.exit [label %if.then.i], !srcloc !114

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %sign.i = getelementptr inbounds %struct.vfp_single, ptr %vsn, i32 0, i32 1
  %4 = ptrtoint ptr %sign.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sign.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp ne i16 %5, 0
  %conv3.i = zext i1 %cmp.i to i32
  %6 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vsn, align 4
  %conv4.i = sext i16 %7 to i32
  %8 = ptrtoint ptr %significand to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %significand, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.30, i32 noundef %conv3.i, i32 noundef %conv4.i, i32 noundef %9) #5
  br label %vfp_single_dump.exit

vfp_single_dump.exit:                             ; preds = %if.then.i, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_single_add, %if.then.i88)) #5
          to label %if.end [label %if.then.i88], !srcloc !114

if.then.i88:                                      ; preds = %vfp_single_dump.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sign.i83 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 1
  %10 = ptrtoint ptr %sign.i83 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sign.i83, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i84 = icmp ne i16 %11, 0
  %conv3.i85 = zext i1 %cmp.i84 to i32
  %12 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vsm, align 4
  %conv4.i86 = sext i16 %13 to i32
  %significand.i87 = getelementptr inbounds %struct.vfp_single, ptr %vsm, i32 0, i32 2
  %14 = ptrtoint ptr %significand.i87 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %significand.i87, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_single_dump.__UNIQUE_ID_ddebug15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.22, i32 noundef %conv3.i85, i32 noundef %conv4.i86, i32 noundef %15) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i88, %vfp_single_dump.exit, %lor.lhs.false.if.end_crit_edge
  %16 = ptrtoint ptr %vsn to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsn, align 4
  %18 = ptrtoint ptr %vsm to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsm, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp = icmp slt i16 %17, %19
  %spec.select = select i1 %cmp, ptr %vsn, ptr %vsm
  %spec.select82 = select i1 %cmp, ptr %vsm, ptr %vsn
  %20 = ptrtoint ptr %spec.select82 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %spec.select82, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %21)
  %cmp11 = icmp eq i16 %21, 255
  br i1 %cmp11, label %if.then.i.i, label %if.end15

if.then.i.i:                                      ; preds = %if.end
  %significand.i.i = getelementptr inbounds %struct.vfp_single, ptr %spec.select82, i32 0, i32 2
  %22 = ptrtoint ptr %significand.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %significand.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.i.i = icmp eq i32 %23, 0
  %type.0.i.i = select i1 %cmp2.i.i, i32 8, i32 0
  %24 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %spec.select, align 4
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %25, label %if.then.i.i.vfp_single_type.exit42.i_crit_edge [
    i16 255, label %if.then.i32.i
    i16 0, label %if.then14.i40.i
  ]

if.then.i.i.vfp_single_type.exit42.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit42.i

if.then.i32.i:                                    ; preds = %if.then.i.i
  %significand.i30.i = getelementptr inbounds %struct.vfp_single, ptr %spec.select, i32 0, i32 2
  %27 = ptrtoint ptr %significand.i30.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %significand.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2.i31.i = icmp eq i32 %28, 0
  br i1 %cmp2.i31.i, label %if.then.i32.i.vfp_single_type.exit42.i_crit_edge, label %if.else.i36.i

if.then.i32.i.vfp_single_type.exit42.i_crit_edge: ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_single_type.exit42.i

if.else.i36.i:                                    ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i33.i = and i32 %28, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %tobool.not.i34.i = icmp eq i32 %and.i33.i, 0
  %..i35.i = select i1 %tobool.not.i34.i, i32 48, i32 16
  br label %vfp_single_type.exit42.i

if.then14.i40.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %significand15.i37.i = getelementptr inbounds %struct.vfp_single, ptr %spec.select, i32 0, i32 2
  %29 = ptrtoint ptr %significand15.i37.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %significand15.i37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp16.i38.i = icmp eq i32 %30, 0
  %.30.i39.i = select i1 %cmp16.i38.i, i32 3, i32 5
  br label %vfp_single_type.exit42.i

vfp_single_type.exit42.i:                         ; preds = %if.then14.i40.i, %if.else.i36.i, %if.then.i32.i.vfp_single_type.exit42.i_crit_edge, %if.then.i.i.vfp_single_type.exit42.i_crit_edge
  %type.0.i41.i = phi i32 [ 8, %if.then.i32.i.vfp_single_type.exit42.i_crit_edge ], [ %..i35.i, %if.else.i36.i ], [ 1, %if.then.i.i.vfp_single_type.exit42.i_crit_edge ], [ %.30.i39.i, %if.then14.i40.i ]
  %and2.i = and i32 %type.0.i41.i, %type.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.else7.i, label %if.then.i91

if.then.i91:                                      ; preds = %vfp_single_type.exit42.i
  call void @__sanitizer_cov_trace_pc() #7
  %sign.i90 = getelementptr inbounds %struct.vfp_single, ptr %spec.select82, i32 0, i32 1
  %31 = ptrtoint ptr %sign.i90 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sign.i90, align 2
  %sign3.i = getelementptr inbounds %struct.vfp_single, ptr %spec.select, i32 0, i32 1
  %33 = ptrtoint ptr %sign3.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sign3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %tobool5.not.i = icmp eq i16 %32, %34
  %vsn.vfp_single_default_qnan.i = select i1 %tobool5.not.i, ptr %spec.select82, ptr @vfp_single_default_qnan
  %not.tobool5.not.i = xor i1 %tobool5.not.i, true
  %..i = zext i1 %not.tobool5.not.i to i32
  br label %if.end16.i

if.else7.i:                                       ; preds = %vfp_single_type.exit42.i
  %not.cmp2.i.i = xor i1 %cmp2.i.i, true
  %and10.i = and i32 %type.0.i41.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = select i1 %not.cmp2.i.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %if.then.i.i.i, label %if.else7.i.if.end16.i_crit_edge

if.else7.i.if.end16.i_crit_edge:                  ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then.i.i.i:                                    ; preds = %if.else7.i
  %35 = ptrtoint ptr %significand.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %significand.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp2.i.i.i = icmp eq i32 %36, 0
  %and.i.i.i = and i32 %36, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %..i.i.i = select i1 %tobool.not.i.i.i, i32 48, i32 16
  %type.0.i.i.i = select i1 %cmp2.i.i.i, i32 8, i32 %..i.i.i
  %tobool.not.i43.i = icmp eq ptr %spec.select, null
  br i1 %tobool.not.i43.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %if.then.i44.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i44.i:                                    ; preds = %if.then.i.i.i
  %37 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %25, label %if.then.i44.i.if.end.i.i_crit_edge [
    i16 255, label %if.then.i21.i.i
    i16 0, label %if.then14.i29.i.i
  ]

if.then.i44.i.if.end.i.i_crit_edge:               ; preds = %if.then.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i21.i.i:                                  ; preds = %if.then.i44.i
  %significand.i19.i.i = getelementptr inbounds %struct.vfp_single, ptr %spec.select, i32 0, i32 2
  %38 = ptrtoint ptr %significand.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %significand.i19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp2.i20.i.i = icmp eq i32 %39, 0
  br i1 %cmp2.i20.i.i, label %if.then.i21.i.i.if.end.i.i_crit_edge, label %if.else.i25.i.i

if.then.i21.i.i.if.end.i.i_crit_edge:             ; preds = %if.then.i21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.else.i25.i.i:                                  ; preds = %if.then.i21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i22.i.i = and i32 %39, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i.i)
  %tobool.not.i23.i.i = icmp eq i32 %and.i22.i.i, 0
  %..i24.i.i = select i1 %tobool.not.i23.i.i, i32 48, i32 16
  br label %if.end.i.i

if.then14.i29.i.i:                                ; preds = %if.then.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  %significand15.i26.i.i = getelementptr inbounds %struct.vfp_single, ptr %spec.select, i32 0, i32 2
  %40 = ptrtoint ptr %significand15.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %significand15.i26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp16.i27.i.i = icmp eq i32 %41, 0
  %.30.i28.i.i = select i1 %cmp16.i27.i.i, i32 3, i32 5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then14.i29.i.i, %if.else.i25.i.i, %if.then.i21.i.i.if.end.i.i_crit_edge, %if.then.i44.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %tm.0.i.i = phi i32 [ 0, %if.then.i.i.i.if.end.i.i_crit_edge ], [ 8, %if.then.i21.i.i.if.end.i.i_crit_edge ], [ %..i24.i.i, %if.else.i25.i.i ], [ 1, %if.then.i44.i.if.end.i.i_crit_edge ], [ %.30.i28.i.i, %if.then14.i29.i.i ]
  %and.i45.i = and i32 %fpscr, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool2.not.i.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i47.i, label %if.end.i.i.vfp_propagate_nan.exit.i_crit_edge

if.end.i.i.vfp_propagate_nan.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_propagate_nan.exit.i

if.else.i47.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i.i)
  %cmp.i.i = icmp eq i32 %type.0.i.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i.i)
  %cmp4.not.i.i = icmp ne i32 %tm.0.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type.0.i.i.i)
  %cmp5.i.i = icmp eq i32 %type.0.i.i.i, 16
  %or.cond.i.i = select i1 %cmp4.not.i.i, i1 %cmp5.i.i, i1 false
  %42 = select i1 %cmp.i.i, i1 true, i1 %or.cond.i.i
  %nan.0.i.i = select i1 %42, ptr %spec.select82, ptr %spec.select
  %significand.i46.i = getelementptr inbounds %struct.vfp_single, ptr %nan.0.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %significand.i46.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %significand.i46.i, align 4
  %or.i.i = or i32 %44, 536870912
  store i32 %or.i.i, ptr %significand.i46.i, align 4
  br label %vfp_propagate_nan.exit.i

vfp_propagate_nan.exit.i:                         ; preds = %if.else.i47.i, %if.end.i.i.vfp_propagate_nan.exit.i_crit_edge
  %nan.1.i.i = phi ptr [ %nan.0.i.i, %if.else.i47.i ], [ @vfp_single_default_qnan, %if.end.i.i.vfp_propagate_nan.exit.i_crit_edge ]
  %45 = ptrtoint ptr %nan.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %nan.1.i.i, align 4
  %47 = ptrtoint ptr %vsd to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %vsd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type.0.i.i.i)
  %cmp10.i.i = icmp eq i32 %type.0.i.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %tm.0.i.i)
  %cmp11.i.i = icmp eq i32 %tm.0.i.i, 48
  %48 = select i1 %cmp10.i.i, i1 true, i1 %cmp11.i.i
  %49 = select i1 %48, i32 1, i32 256
  br label %cleanup

if.end16.i:                                       ; preds = %if.else7.i.if.end16.i_crit_edge, %if.then.i91
  %vsp.0.i = phi ptr [ %vsn.vfp_single_default_qnan.i, %if.then.i91 ], [ %spec.select82, %if.else7.i.if.end16.i_crit_edge ]
  %exceptions.0.i = phi i32 [ %..i, %if.then.i91 ], [ 0, %if.else7.i.if.end16.i_crit_edge ]
  %50 = ptrtoint ptr %vsp.0.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %vsp.0.i, align 4
  %52 = ptrtoint ptr %vsd to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %vsd, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %53 = ptrtoint ptr %spec.select82 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %spec.select82, align 4
  %55 = ptrtoint ptr %vsd to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %vsd, align 4
  %56 = load i16, ptr %spec.select82, align 4
  %conv17 = sext i16 %56 to i32
  %57 = ptrtoint ptr %spec.select to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %spec.select, align 4
  %conv19 = sext i16 %58 to i32
  %sub = sub nsw i32 %conv17, %conv19
  %significand20 = getelementptr inbounds %struct.vfp_single, ptr %spec.select, i32 0, i32 2
  %59 = ptrtoint ptr %significand20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %significand20, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %58)
  %tobool.not.i92 = icmp eq i16 %56, %58
  br i1 %tobool.not.i92, label %if.end15.vfp_shiftright32jamming.exit_crit_edge, label %if.then.i94

if.end15.vfp_shiftright32jamming.exit_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfp_shiftright32jamming.exit

if.then.i94:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp.i93 = icmp ult i32 %sub, 32
  br i1 %cmp.i93, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %60, %sub
  %sub.i = sub nuw nsw i32 32, %sub
  %shl.i = shl i32 %60, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp2.i = icmp ne i32 %shl.i, 0
  %conv.i = zext i1 %cmp2.i to i32
  %or.i = or i32 %shr.i, %conv.i
  br label %vfp_shiftright32jamming.exit

if.else.i:                                        ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp3.i = icmp ne i32 %60, 0
  %conv4.i95 = zext i1 %cmp3.i to i32
  br label %vfp_shiftright32jamming.exit

vfp_shiftright32jamming.exit:                     ; preds = %if.else.i, %if.then1.i, %if.end15.vfp_shiftright32jamming.exit_crit_edge
  %val.addr.0.i = phi i32 [ %or.i, %if.then1.i ], [ %conv4.i95, %if.else.i ], [ %60, %if.end15.vfp_shiftright32jamming.exit_crit_edge ]
  %sign = getelementptr inbounds %struct.vfp_single, ptr %spec.select82, i32 0, i32 1
  %61 = ptrtoint ptr %sign to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sign, align 2
  %sign23 = getelementptr inbounds %struct.vfp_single, ptr %spec.select, i32 0, i32 1
  %63 = ptrtoint ptr %sign23 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %sign23, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %64)
  %tobool25.not = icmp eq i16 %62, %64
  %significand49 = getelementptr inbounds %struct.vfp_single, ptr %spec.select82, i32 0, i32 2
  %65 = ptrtoint ptr %significand49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %significand49, align 4
  br i1 %tobool25.not, label %if.else48, label %if.then26

if.then26:                                        ; preds = %vfp_shiftright32jamming.exit
  %sub28 = sub i32 %66, %val.addr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28)
  %cmp29 = icmp slt i32 %sub28, 0
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %sign32 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 1
  %67 = ptrtoint ptr %sign32 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %sign32, align 2
  %69 = xor i16 %68, -32768
  store i16 %69, ptr %sign32, align 2
  %sub37 = sub i32 0, %sub28
  br label %if.end50

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28)
  %cmp38 = icmp eq i32 %sub28, 0
  br i1 %cmp38, label %if.then40, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and41 = and i32 %fpscr, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %and41)
  %cmp42 = icmp eq i32 %and41, 8388608
  %conv44 = select i1 %cmp42, i16 -32768, i16 0
  %sign45 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 1
  %70 = ptrtoint ptr %sign45 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv44, ptr %sign45, align 2
  br label %if.end50

if.else48:                                        ; preds = %vfp_shiftright32jamming.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %66, %val.addr.0.i
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then40, %if.else.if.end50_crit_edge, %if.then31
  %m_sig.0 = phi i32 [ %sub37, %if.then31 ], [ 0, %if.then40 ], [ %sub28, %if.else.if.end50_crit_edge ], [ %add, %if.else48 ]
  %significand51 = getelementptr inbounds %struct.vfp_single, ptr %vsd, i32 0, i32 2
  %71 = ptrtoint ptr %significand51 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %m_sig.0, ptr %significand51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end16.i, %vfp_propagate_nan.exit.i
  %retval.0 = phi i32 [ 0, %if.end50 ], [ %exceptions.0.i, %if.end16.i ], [ %49, %vfp_propagate_nan.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !74, !76, !78, !79, !80, !82, !84, !85, !86, !87, !89, !91, !92, !94, !95, !97, !99, !101, !102, !104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/vfp/vfpsingle.c", i32 78, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/vfp/vfpsingle.c", i32 145, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__vfp_single_normaliseround.__UNIQUE_ID_ddebug16, !3, !"__UNIQUE_ID_ddebug16", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/vfp/vfpsingle.c", i32 197, i32 18}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/vfp/vfpsingle.c", i32 293, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vfp_estimate_sqrt_significand._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @vfp_estimate_sqrt_significand._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/vfp/vfpsingle.c", i32 1206, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vfp_single_cpdo.__UNIQUE_ID_ddebug27, !16, !"__UNIQUE_ID_ddebug27", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/vfp/vfpsingle.c", i32 1219, i32 4}
!21 = !{ptr @vfp_single_cpdo.__UNIQUE_ID_ddebug28, !20, !"__UNIQUE_ID_ddebug28", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/vfp/vfpsingle.c", i32 1223, i32 4}
!24 = !{ptr @vfp_single_cpdo.__UNIQUE_ID_ddebug29, !23, !"__UNIQUE_ID_ddebug29", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/vfp/vfpsingle.c", i32 1228, i32 3}
!27 = !{ptr @vfp_single_cpdo.__UNIQUE_ID_ddebug30, !26, !"__UNIQUE_ID_ddebug30", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/vfp/vfpsingle.c", i32 50, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vfp_single_dump.__UNIQUE_ID_ddebug15, !29, !"__UNIQUE_ID_ddebug15", i1 false, i1 false}
!32 = !{ptr @sqrt_oddadjust, !33, !"sqrt_oddadjust", i1 false, i1 false}
!33 = !{!"../arch/arm/vfp/vfpsingle.c", i32 277, i32 18}
!34 = !{ptr @sqrt_evenadjust, !35, !"sqrt_evenadjust", i1 false, i1 false}
!35 = !{!"../arch/arm/vfp/vfpsingle.c", i32 282, i32 18}
!36 = !{ptr @fops_ext, !37, !"fops_ext", i1 false, i1 false}
!37 = !{!"../arch/arm/vfp/vfpsingle.c", i32 706, i32 18}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/vfp/vfpsingle.c", i32 359, i32 18}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/vfp/vfpsingle.c", i32 368, i32 18}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/vfp/vfpsingle.c", i32 383, i32 4}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vfp_single_fsqrt.__UNIQUE_ID_ddebug17, !43, !"__UNIQUE_ID_ddebug17", i1 false, i1 false}
!46 = !{ptr @vfp_single_default_qnan, !47, !"vfp_single_default_qnan", i1 false, i1 false}
!47 = !{!"../arch/arm/vfp/vfpsingle.c", i32 42, i32 26}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/vfp/vfpsingle.c", i32 58, i32 18}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/vfp/vfpsingle.c", i32 65, i32 18}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/vfp/vfpsingle.c", i32 518, i32 64}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/vfp/vfpsingle.c", i32 555, i32 18}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/vfp/vfpsingle.c", i32 615, i32 2}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @vfp_single_ftoui.__UNIQUE_ID_ddebug18, !57, !"__UNIQUE_ID_ddebug18", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/vfp/vfpsingle.c", i32 694, i32 2}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @vfp_single_ftosi.__UNIQUE_ID_ddebug19, !61, !"__UNIQUE_ID_ddebug19", i1 false, i1 false}
!64 = !{ptr @fops, !65, !"fops", i1 false, i1 false}
!65 = !{!"../arch/arm/vfp/vfpsingle.c", i32 1157, i32 18}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/vfp/vfpsingle.c", i32 937, i32 61}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/vfp/vfpsingle.c", i32 902, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vfp_single_multiply_accumulate.__UNIQUE_ID_ddebug21, !69, !"__UNIQUE_ID_ddebug21", i1 false, i1 false}
!72 = !{ptr @vfp_single_multiply_accumulate.__UNIQUE_ID_ddebug22, !73, !"__UNIQUE_ID_ddebug22", i1 false, i1 false}
!73 = !{!"../arch/arm/vfp/vfpsingle.c", i32 916, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/vfp/vfpsingle.c", i32 837, i32 18}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/vfp/vfpsingle.c", i32 849, i32 3}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @vfp_single_multiply.__UNIQUE_ID_ddebug20, !77, !"__UNIQUE_ID_ddebug20", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../arch/arm/vfp/vfpsingle.c", i32 887, i32 18}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/vfp/vfpsingle.c", i32 778, i32 3}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @vfp_single_add._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @vfp_single_add._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/vfp/vfpsingle.c", i32 953, i32 72}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/vfp/vfpsingle.c", i32 973, i32 2}
!91 = !{ptr @vfp_single_fmul.__UNIQUE_ID_ddebug23, !90, !"__UNIQUE_ID_ddebug23", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../arch/arm/vfp/vfpsingle.c", i32 1020, i32 2}
!94 = !{ptr @vfp_single_fadd.__UNIQUE_ID_ddebug25, !93, !"__UNIQUE_ID_ddebug25", i1 false, i1 false}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/vfp/vfpsingle.c", i32 945, i32 72}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../arch/arm/vfp/vfpsingle.c", i32 961, i32 87}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../arch/arm/vfp/vfpsingle.c", i32 996, i32 2}
!101 = !{ptr @vfp_single_fnmul.__UNIQUE_ID_ddebug24, !100, !"__UNIQUE_ID_ddebug24", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../arch/arm/vfp/vfpsingle.c", i32 1059, i32 2}
!104 = !{ptr @vfp_single_fdiv.__UNIQUE_ID_ddebug26, !103, !"__UNIQUE_ID_ddebug26", i1 false, i1 false}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2148719215, i64 2148719220, i64 2148719233, i64 2148719277, i64 2148719311, i64 2148719332}
!115 = !{i32 0, i32 33}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{i64 2148627934, i64 2148628214, i64 2148628548, i64 2148628882}
!118 = !{i32 0, i32 257}
!119 = !{i64 1249074, i64 1249111, i64 1249132}
