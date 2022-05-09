; ModuleID = '/llk/IR_all_yes/drivers/misc/lkdtm/refcount.c_pt.bc'
source_filename = "../drivers/misc/lkdtm/refcount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@lkdtm_REFCOUNT_INC_OVERFLOW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016lkdtm: attempting good refcount_inc() without overflow\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lkdtm_REFCOUNT_INC_OVERFLOW\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/misc/lkdtm/refcount.c\00", [34 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_OVERFLOW._entry_ptr = internal global ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_OVERFLOW._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016lkdtm: attempting bad refcount_inc() overflow\0A\00", [47 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_OVERFLOW._entry_ptr.5 = internal global ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry.3, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_OVERFLOW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016lkdtm: attempting good refcount_add() without overflow\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lkdtm_REFCOUNT_ADD_OVERFLOW\00", [36 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_OVERFLOW._entry_ptr = internal global ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_OVERFLOW._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016lkdtm: attempting bad refcount_add() overflow\0A\00", [47 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_OVERFLOW._entry_ptr.10 = internal global ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry.8, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016lkdtm: attempting bad refcount_inc_not_zero() overflow\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW\00", [59 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry_ptr = internal global ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014lkdtm: Weird: refcount_inc_not_zero() reported zero\0A\00", [41 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry_ptr.15 = internal global ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry.13, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016lkdtm: attempting bad refcount_add_not_zero() overflow\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW\00", [59 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry_ptr = internal global ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014lkdtm: Weird: refcount_add_not_zero() reported zero\0A\00", [41 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry_ptr.20 = internal global ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry.18, section ".printk_index", align 4
@lkdtm_REFCOUNT_DEC_ZERO._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016lkdtm: attempting good refcount_dec()\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lkdtm_REFCOUNT_DEC_ZERO\00", [40 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_DEC_ZERO._entry_ptr = internal global ptr @lkdtm_REFCOUNT_DEC_ZERO._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_DEC_ZERO._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016lkdtm: attempting bad refcount_dec() to zero\0A\00", [48 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_DEC_ZERO._entry_ptr.25 = internal global ptr @lkdtm_REFCOUNT_DEC_ZERO._entry.23, section ".printk_index", align 4
@lkdtm_REFCOUNT_DEC_NEGATIVE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016lkdtm: attempting bad refcount_dec() below zero\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lkdtm_REFCOUNT_DEC_NEGATIVE\00", [36 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_DEC_NEGATIVE._entry_ptr = internal global ptr @lkdtm_REFCOUNT_DEC_NEGATIVE._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016lkdtm: attempting bad refcount_dec_and_test() below zero\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE\00", [59 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry_ptr = internal global ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014lkdtm: Weird: refcount_dec_and_test() reported zero\0A\00", [41 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry_ptr.32 = internal global ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry.30, section ".printk_index", align 4
@lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016lkdtm: attempting bad refcount_sub_and_test() below zero\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE\00", [59 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry_ptr = internal global ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014lkdtm: Weird: refcount_sub_and_test() reported zero\0A\00", [41 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry_ptr.37 = internal global ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry.35, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_ZERO._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016lkdtm: attempting safe refcount_inc_not_zero() from zero\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lkdtm_REFCOUNT_INC_ZERO\00", [40 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_ZERO._entry_ptr = internal global ptr @lkdtm_REFCOUNT_INC_ZERO._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_ZERO._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016lkdtm: Good: zero detected\0A\00", [34 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_ZERO._entry_ptr.42 = internal global ptr @lkdtm_REFCOUNT_INC_ZERO._entry.40, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_ZERO._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016lkdtm: Correctly stayed at zero\0A\00", [61 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_ZERO._entry_ptr.45 = internal global ptr @lkdtm_REFCOUNT_INC_ZERO._entry.43, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_ZERO._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013lkdtm: Fail: refcount went past zero!\0A\00", [55 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_ZERO._entry_ptr.48 = internal global ptr @lkdtm_REFCOUNT_INC_ZERO._entry.46, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_ZERO._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013lkdtm: Fail: Zero not detected!?\0A\00", [60 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_ZERO._entry_ptr.51 = internal global ptr @lkdtm_REFCOUNT_INC_ZERO._entry.49, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_ZERO._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.39, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016lkdtm: attempting bad refcount_inc() from zero\0A\00", [46 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_ZERO._entry_ptr.54 = internal global ptr @lkdtm_REFCOUNT_INC_ZERO._entry.52, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_ZERO._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016lkdtm: attempting safe refcount_add_not_zero() from zero\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lkdtm_REFCOUNT_ADD_ZERO\00", [40 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_ZERO._entry_ptr = internal global ptr @lkdtm_REFCOUNT_ADD_ZERO._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_ZERO._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.56, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.58 = internal global ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.57, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_ZERO._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.56, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.60 = internal global ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.59, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_ZERO._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013lkdtm: Fail: refcount went past zero\0A\00", [56 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.63 = internal global ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.61, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_ZERO._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.56, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.65 = internal global ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.64, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_ZERO._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016lkdtm: attempting bad refcount_add() from zero\0A\00", [46 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.68 = internal global ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.66, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_SATURATED._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016lkdtm: attempting bad refcount_inc() from saturated\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lkdtm_REFCOUNT_INC_SATURATED\00", [35 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_SATURATED._entry_ptr = internal global ptr @lkdtm_REFCOUNT_INC_SATURATED._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_DEC_SATURATED._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016lkdtm: attempting bad refcount_dec() from saturated\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lkdtm_REFCOUNT_DEC_SATURATED\00", [35 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_DEC_SATURATED._entry_ptr = internal global ptr @lkdtm_REFCOUNT_DEC_SATURATED._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_SATURATED._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.73, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lkdtm_REFCOUNT_ADD_SATURATED\00", [35 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_SATURATED._entry_ptr = internal global ptr @lkdtm_REFCOUNT_ADD_SATURATED._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016lkdtm: attempting bad refcount_inc_not_zero() from saturated\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED\00", [58 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry_ptr = internal global ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.75, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry_ptr.77 = internal global ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry.76, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016lkdtm: attempting bad refcount_add_not_zero() from saturated\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED\00", [58 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry_ptr = internal global ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.79, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry_ptr.81 = internal global ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry.80, section ".printk_index", align 4
@lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016lkdtm: attempting bad refcount_dec_and_test() from saturated\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED\00", [58 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry_ptr = internal global ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.83, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry_ptr.85 = internal global ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry.84, section ".printk_index", align 4
@lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016lkdtm: attempting bad refcount_sub_and_test() from saturated\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED\00", [58 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry_ptr = internal global ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.87, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry_ptr.89 = internal global ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry.88, section ".printk_index", align 4
@lkdtm_ATOMIC_TIMING._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013lkdtm: atomic timing: out of sync up/down cycle: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lkdtm_ATOMIC_TIMING\00", [44 x i8] zeroinitializer }, align 32
@lkdtm_ATOMIC_TIMING._entry_ptr = internal global ptr @lkdtm_ATOMIC_TIMING._entry, section ".printk_index", align 4
@lkdtm_ATOMIC_TIMING._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016lkdtm: atomic timing: done\0A\00", [34 x i8] zeroinitializer }, align 32
@lkdtm_ATOMIC_TIMING._entry_ptr.94 = internal global ptr @lkdtm_ATOMIC_TIMING._entry.92, section ".printk_index", align 4
@lkdtm_REFCOUNT_TIMING._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013lkdtm: refcount: out of sync up/down cycle: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lkdtm_REFCOUNT_TIMING\00", [42 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_TIMING._entry_ptr = internal global ptr @lkdtm_REFCOUNT_TIMING._entry, section ".printk_index", align 4
@lkdtm_REFCOUNT_TIMING._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016lkdtm: refcount timing: done\0A\00", [32 x i8] zeroinitializer }, align 32
@lkdtm_REFCOUNT_TIMING._entry_ptr.99 = internal global ptr @lkdtm_REFCOUNT_TIMING._entry.97, section ".printk_index", align 4
@overflow_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 13, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lkdtm: Overflow detected: saturated\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"overflow_check\00", [17 x i8] zeroinitializer }, align 32
@overflow_check._entry_ptr = internal global ptr @overflow_check._entry, section ".printk_index", align 4
@overflow_check._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 16, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014lkdtm: Overflow detected: unsafely reset to max\0A\00", [45 x i8] zeroinitializer }, align 32
@overflow_check._entry_ptr.104 = internal global ptr @overflow_check._entry.102, section ".printk_index", align 4
@overflow_check._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.2, i32 19, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013lkdtm: Fail: refcount wrapped to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@overflow_check._entry_ptr.107 = internal global ptr @overflow_check._entry.105, section ".printk_index", align 4
@check_zero._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016lkdtm: Zero detected: saturated\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_zero\00", [21 x i8] zeroinitializer }, align 32
@check_zero._entry_ptr = internal global ptr @check_zero._entry, section ".printk_index", align 4
@check_zero._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014lkdtm: Zero detected: unsafely reset to max\0A\00", [49 x i8] zeroinitializer }, align 32
@check_zero._entry_ptr.112 = internal global ptr @check_zero._entry.110, section ".printk_index", align 4
@check_zero._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014lkdtm: Still at zero: refcount_inc/add() must not inc-from-0\0A\00", [32 x i8] zeroinitializer }, align 32
@check_zero._entry_ptr.115 = internal global ptr @check_zero._entry.113, section ".printk_index", align 4
@check_zero._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013lkdtm: Fail: refcount went crazy: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@check_zero._entry_ptr.118 = internal global ptr @check_zero._entry.116, section ".printk_index", align 4
@check_negative._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014lkdtm: Still at %d: refcount_inc/add() must not inc-from-0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"check_negative\00", [17 x i8] zeroinitializer }, align 32
@check_negative._entry_ptr = internal global ptr @check_negative._entry, section ".printk_index", align 4
@check_negative._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lkdtm: Negative detected: saturated\0A\00", [57 x i8] zeroinitializer }, align 32
@check_negative._entry_ptr.123 = internal global ptr @check_negative._entry.121, section ".printk_index", align 4
@check_negative._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.120, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014lkdtm: Negative detected: unsafely reset to max\0A\00", [45 x i8] zeroinitializer }, align 32
@check_negative._entry_ptr.126 = internal global ptr @check_negative._entry.124, section ".printk_index", align 4
@check_negative._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.120, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_negative._entry_ptr.128 = internal global ptr @check_negative._entry.127, section ".printk_index", align 4
@check_from_zero._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016lkdtm: Zero detected: stayed at zero\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_from_zero\00", [16 x i8] zeroinitializer }, align 32
@check_from_zero._entry_ptr = internal global ptr @check_from_zero._entry, section ".printk_index", align 4
@check_from_zero._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.130, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_from_zero._entry_ptr.132 = internal global ptr @check_from_zero._entry.131, section ".printk_index", align 4
@check_from_zero._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.130, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_from_zero._entry_ptr.134 = internal global ptr @check_from_zero._entry.133, section ".printk_index", align 4
@check_from_zero._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.130, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016lkdtm: Fail: zero not detected, incremented to %d\0A\00", [43 x i8] zeroinitializer }, align 32
@check_from_zero._entry_ptr.137 = internal global ptr @check_from_zero._entry.135, section ".printk_index", align 4
@check_saturated._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016lkdtm: Saturation detected: still saturated\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_saturated\00", [16 x i8] zeroinitializer }, align 32
@check_saturated._entry_ptr = internal global ptr @check_saturated._entry, section ".printk_index", align 4
@check_saturated._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014lkdtm: Saturation detected: unsafely reset to max\0A\00", [43 x i8] zeroinitializer }, align 32
@check_saturated._entry_ptr.142 = internal global ptr @check_saturated._entry.140, section ".printk_index", align 4
@check_saturated._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.139, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_saturated._entry_ptr.144 = internal global ptr @check_saturated._entry.143, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 2147483647, i64 3221225472]
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 31, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 35, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 47, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 54, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 65, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 67, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 77, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 79, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 110, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 113, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 149, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 163, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 165, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 178, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 180, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 210, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 212, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 214, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 216, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 218, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 221, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 235, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 237, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 239, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 241, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 243, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 246, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 274, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 285, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 296, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 307, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 309, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 319, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 321, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 331, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 333, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 343, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 345, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 364, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 366, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 389, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 391, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 13, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 16, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 19, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 88, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 91, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 94, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 97, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 127, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 134, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 137, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 140, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 189, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 192, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 195, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 198, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 256, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 259, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.555 = private constant [33 x i8] c"../drivers/misc/lkdtm/refcount.c\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 262, i32 3 }
@llvm.compiler.used = appending global [193 x ptr] [ptr @check_from_zero._entry, ptr @check_from_zero._entry.131, ptr @check_from_zero._entry.133, ptr @check_from_zero._entry.135, ptr @check_from_zero._entry_ptr, ptr @check_from_zero._entry_ptr.132, ptr @check_from_zero._entry_ptr.134, ptr @check_from_zero._entry_ptr.137, ptr @check_negative._entry, ptr @check_negative._entry.121, ptr @check_negative._entry.124, ptr @check_negative._entry.127, ptr @check_negative._entry_ptr, ptr @check_negative._entry_ptr.123, ptr @check_negative._entry_ptr.126, ptr @check_negative._entry_ptr.128, ptr @check_saturated._entry, ptr @check_saturated._entry.140, ptr @check_saturated._entry.143, ptr @check_saturated._entry_ptr, ptr @check_saturated._entry_ptr.142, ptr @check_saturated._entry_ptr.144, ptr @check_zero._entry, ptr @check_zero._entry.110, ptr @check_zero._entry.113, ptr @check_zero._entry.116, ptr @check_zero._entry_ptr, ptr @check_zero._entry_ptr.112, ptr @check_zero._entry_ptr.115, ptr @check_zero._entry_ptr.118, ptr @lkdtm_ATOMIC_TIMING._entry, ptr @lkdtm_ATOMIC_TIMING._entry.92, ptr @lkdtm_ATOMIC_TIMING._entry_ptr, ptr @lkdtm_ATOMIC_TIMING._entry_ptr.94, ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry, ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry.18, ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry_ptr, ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry_ptr.20, ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry, ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry.80, ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry_ptr, ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry_ptr.81, ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry, ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry.8, ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry_ptr, ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry_ptr.10, ptr @lkdtm_REFCOUNT_ADD_SATURATED._entry, ptr @lkdtm_REFCOUNT_ADD_SATURATED._entry_ptr, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.57, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.59, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.61, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.64, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.66, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.58, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.60, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.63, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.65, ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.68, ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry, ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry.30, ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry_ptr, ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry_ptr.32, ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry, ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry.84, ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry_ptr, ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry_ptr.85, ptr @lkdtm_REFCOUNT_DEC_NEGATIVE._entry, ptr @lkdtm_REFCOUNT_DEC_NEGATIVE._entry_ptr, ptr @lkdtm_REFCOUNT_DEC_SATURATED._entry, ptr @lkdtm_REFCOUNT_DEC_SATURATED._entry_ptr, ptr @lkdtm_REFCOUNT_DEC_ZERO._entry, ptr @lkdtm_REFCOUNT_DEC_ZERO._entry.23, ptr @lkdtm_REFCOUNT_DEC_ZERO._entry_ptr, ptr @lkdtm_REFCOUNT_DEC_ZERO._entry_ptr.25, ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry, ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry.13, ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry_ptr, ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry_ptr.15, ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry, ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry.76, ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry_ptr, ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry_ptr.77, ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry, ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry.3, ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry_ptr, ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry_ptr.5, ptr @lkdtm_REFCOUNT_INC_SATURATED._entry, ptr @lkdtm_REFCOUNT_INC_SATURATED._entry_ptr, ptr @lkdtm_REFCOUNT_INC_ZERO._entry, ptr @lkdtm_REFCOUNT_INC_ZERO._entry.40, ptr @lkdtm_REFCOUNT_INC_ZERO._entry.43, ptr @lkdtm_REFCOUNT_INC_ZERO._entry.46, ptr @lkdtm_REFCOUNT_INC_ZERO._entry.49, ptr @lkdtm_REFCOUNT_INC_ZERO._entry.52, ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr, ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr.42, ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr.45, ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr.48, ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr.51, ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr.54, ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry, ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry.35, ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry_ptr, ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry_ptr.37, ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry, ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry.88, ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry_ptr, ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry_ptr.89, ptr @lkdtm_REFCOUNT_TIMING._entry, ptr @lkdtm_REFCOUNT_TIMING._entry.97, ptr @lkdtm_REFCOUNT_TIMING._entry_ptr, ptr @lkdtm_REFCOUNT_TIMING._entry_ptr.99, ptr @overflow_check._entry, ptr @overflow_check._entry.102, ptr @overflow_check._entry.105, ptr @overflow_check._entry_ptr, ptr @overflow_check._entry_ptr.104, ptr @overflow_check._entry_ptr.107, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.62, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.83, ptr @.str.86, ptr @.str.87, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.129, ptr @.str.130, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_DEC_ZERO._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_DEC_ZERO._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_DEC_NEGATIVE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_ZERO._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_ZERO._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_ZERO._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_ZERO._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_ZERO._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_ZERO._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_ZERO._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_SATURATED._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_DEC_SATURATED._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_SATURATED._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_ATOMIC_TIMING._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_ATOMIC_TIMING._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_TIMING._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_REFCOUNT_TIMING._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overflow_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overflow_check._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overflow_check._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_zero._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_zero._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_zero._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_zero._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_negative._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_negative._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_negative._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_negative._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_from_zero._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_from_zero._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_from_zero._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_from_zero._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_saturated._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_saturated._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_saturated._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_INC_OVERFLOW() local_unnamed_addr #0 align 64 {
entry:
  %over = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %over) #5
  %0 = ptrtoint ptr %over to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483646, ptr %over, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 1, ptr nonnull elementtype(i32) %over) #5, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %entry.refcount_dec.exit_crit_edge, !prof !264

entry.refcount_dec.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef 4) #5
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %entry.refcount_dec.exit_crit_edge
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  %2 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 1, ptr nonnull elementtype(i32) %over) #5, !srcloc !265
  %asmresult.i.i.i.i.i6 = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i6)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i6, 0
  br i1 %tobool1.not.i.i.i, label %refcount_dec.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !264

refcount_dec.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %refcount_dec.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i6, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !266

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %refcount_dec.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %refcount_dec.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef %.sink.i.i.i) #5
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  %call.i.i.i.i.i7 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  %4 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 1, ptr nonnull elementtype(i32) %over) #5, !srcloc !265
  %asmresult.i.i.i.i.i8 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i8)
  %tobool1.not.i.i.i9 = icmp eq i32 %asmresult.i.i.i.i.i8, 0
  br i1 %tobool1.not.i.i.i9, label %refcount_inc.exit.if.end15.sink.split.i.i.i14_crit_edge, label %if.else.i.i.i12, !prof !264

refcount_inc.exit.if.end15.sink.split.i.i.i14_crit_edge: ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i14

if.else.i.i.i12:                                  ; preds = %refcount_inc.exit
  %add.i.i.i10 = add i32 %asmresult.i.i.i.i.i8, 1
  %5 = or i32 %add.i.i.i10, %asmresult.i.i.i.i.i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i11 = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i11, label %if.else.i.i.i12.refcount_inc.exit15_crit_edge, label %if.else.i.i.i12.if.end15.sink.split.i.i.i14_crit_edge, !prof !266

if.else.i.i.i12.if.end15.sink.split.i.i.i14_crit_edge: ; preds = %if.else.i.i.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i14

if.else.i.i.i12.refcount_inc.exit15_crit_edge:    ; preds = %if.else.i.i.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc.exit15

if.end15.sink.split.i.i.i14:                      ; preds = %if.else.i.i.i12.if.end15.sink.split.i.i.i14_crit_edge, %refcount_inc.exit.if.end15.sink.split.i.i.i14_crit_edge
  %.sink.i.i.i13 = phi i32 [ 2, %refcount_inc.exit.if.end15.sink.split.i.i.i14_crit_edge ], [ 1, %if.else.i.i.i12.if.end15.sink.split.i.i.i14_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef %.sink.i.i.i13) #5
  br label %refcount_inc.exit15

refcount_inc.exit15:                              ; preds = %if.end15.sink.split.i.i.i14, %if.else.i.i.i12.refcount_inc.exit15_crit_edge
  %call.i.i.i.i.i16 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  %6 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 1, ptr nonnull elementtype(i32) %over) #5, !srcloc !265
  %asmresult.i.i.i.i.i17 = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i17)
  %tobool1.not.i.i.i18 = icmp eq i32 %asmresult.i.i.i.i.i17, 0
  br i1 %tobool1.not.i.i.i18, label %refcount_inc.exit15.if.end15.sink.split.i.i.i23_crit_edge, label %if.else.i.i.i21, !prof !264

refcount_inc.exit15.if.end15.sink.split.i.i.i23_crit_edge: ; preds = %refcount_inc.exit15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i23

if.else.i.i.i21:                                  ; preds = %refcount_inc.exit15
  %add.i.i.i19 = add i32 %asmresult.i.i.i.i.i17, 1
  %7 = or i32 %add.i.i.i19, %asmresult.i.i.i.i.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i20 = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i20, label %if.else.i.i.i21.refcount_inc.exit24_crit_edge, label %if.else.i.i.i21.if.end15.sink.split.i.i.i23_crit_edge, !prof !266

if.else.i.i.i21.if.end15.sink.split.i.i.i23_crit_edge: ; preds = %if.else.i.i.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i23

if.else.i.i.i21.refcount_inc.exit24_crit_edge:    ; preds = %if.else.i.i.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc.exit24

if.end15.sink.split.i.i.i23:                      ; preds = %if.else.i.i.i21.if.end15.sink.split.i.i.i23_crit_edge, %refcount_inc.exit15.if.end15.sink.split.i.i.i23_crit_edge
  %.sink.i.i.i22 = phi i32 [ 2, %refcount_inc.exit15.if.end15.sink.split.i.i.i23_crit_edge ], [ 1, %if.else.i.i.i21.if.end15.sink.split.i.i.i23_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef %.sink.i.i.i22) #5
  br label %refcount_inc.exit24

refcount_inc.exit24:                              ; preds = %if.end15.sink.split.i.i.i23, %if.else.i.i.i21.refcount_inc.exit24_crit_edge
  %call.i.i.i.i25 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %over, i32 noundef 4) #5
  %8 = ptrtoint ptr %over to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %over, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %refcount_inc.exit24
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #8
  br label %overflow_check.exit

do.end4.i:                                        ; preds = %refcount_inc.exit24
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #8
  br label %overflow_check.exit

do.end8.i:                                        ; preds = %refcount_inc.exit24
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %over, i32 noundef 4) #5
  %11 = ptrtoint ptr %over to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %over, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %12) #8
  br label %overflow_check.exit

overflow_check.exit:                              ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %over) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_ADD_OVERFLOW() local_unnamed_addr #0 align 64 {
entry:
  %over = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %over) #5
  %0 = ptrtoint ptr %over to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483646, ptr %over, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 1, ptr nonnull elementtype(i32) %over) #5, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %entry.refcount_dec.exit_crit_edge, !prof !264

entry.refcount_dec.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef 4) #5
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %entry.refcount_dec.exit_crit_edge
  %call.i.i.i.i6 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  %2 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 1, ptr nonnull elementtype(i32) %over) #5, !srcloc !263
  %asmresult.i.i.i.i.i7 = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i7)
  %cmp.i.i8 = icmp slt i32 %asmresult.i.i.i.i.i7, 2
  br i1 %cmp.i.i8, label %if.then3.i.i9, label %refcount_dec.exit.refcount_dec.exit10_crit_edge, !prof !264

refcount_dec.exit.refcount_dec.exit10_crit_edge:  ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_dec.exit10

if.then3.i.i9:                                    ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef 4) #5
  br label %refcount_dec.exit10

refcount_dec.exit10:                              ; preds = %if.then3.i.i9, %refcount_dec.exit.refcount_dec.exit10_crit_edge
  %call.i.i.i.i11 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 1, ptr nonnull elementtype(i32) %over) #5, !srcloc !263
  %asmresult.i.i.i.i.i12 = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i12)
  %cmp.i.i13 = icmp slt i32 %asmresult.i.i.i.i.i12, 2
  br i1 %cmp.i.i13, label %if.then3.i.i14, label %refcount_dec.exit10.refcount_dec.exit15_crit_edge, !prof !264

refcount_dec.exit10.refcount_dec.exit15_crit_edge: ; preds = %refcount_dec.exit10
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_dec.exit15

if.then3.i.i14:                                   ; preds = %refcount_dec.exit10
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef 4) #5
  br label %refcount_dec.exit15

refcount_dec.exit15:                              ; preds = %if.then3.i.i14, %refcount_dec.exit10.refcount_dec.exit15_crit_edge
  %call.i.i.i.i16 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  %4 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 1, ptr nonnull elementtype(i32) %over) #5, !srcloc !263
  %asmresult.i.i.i.i.i17 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i17)
  %cmp.i.i18 = icmp slt i32 %asmresult.i.i.i.i.i17, 2
  br i1 %cmp.i.i18, label %if.then3.i.i19, label %refcount_dec.exit15.refcount_dec.exit20_crit_edge, !prof !264

refcount_dec.exit15.refcount_dec.exit20_crit_edge: ; preds = %refcount_dec.exit15
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_dec.exit20

if.then3.i.i19:                                   ; preds = %refcount_dec.exit15
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef 4) #5
  br label %refcount_dec.exit20

refcount_dec.exit20:                              ; preds = %if.then3.i.i19, %refcount_dec.exit15.refcount_dec.exit20_crit_edge
  %call.i.i.i.i21 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  %5 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 4, ptr nonnull elementtype(i32) %over) #5, !srcloc !265
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %refcount_dec.exit20.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !264

refcount_dec.exit20.if.end15.sink.split.i.i_crit_edge: ; preds = %refcount_dec.exit20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %refcount_dec.exit20
  %add.i.i = add i32 %asmresult.i.i.i.i, 4
  %6 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i, label %if.else.i.i.refcount_add.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !266

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i

if.else.i.i.refcount_add.exit_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_add.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %refcount_dec.exit20.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %refcount_dec.exit20.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef %.sink.i.i) #5
  br label %refcount_add.exit

refcount_add.exit:                                ; preds = %if.end15.sink.split.i.i, %if.else.i.i.refcount_add.exit_crit_edge
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  %call.i.i.i.i22 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  %7 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 4, ptr nonnull elementtype(i32) %over) #5, !srcloc !265
  %asmresult.i.i.i.i23 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i23)
  %tobool1.not.i.i24 = icmp eq i32 %asmresult.i.i.i.i23, 0
  br i1 %tobool1.not.i.i24, label %refcount_add.exit.if.end15.sink.split.i.i29_crit_edge, label %if.else.i.i27, !prof !264

refcount_add.exit.if.end15.sink.split.i.i29_crit_edge: ; preds = %refcount_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i29

if.else.i.i27:                                    ; preds = %refcount_add.exit
  %add.i.i25 = add i32 %asmresult.i.i.i.i23, 4
  %8 = or i32 %add.i.i25, %asmresult.i.i.i.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i26 = icmp sgt i32 %8, -1
  br i1 %.not.i.i26, label %if.else.i.i27.refcount_add.exit30_crit_edge, label %if.else.i.i27.if.end15.sink.split.i.i29_crit_edge, !prof !266

if.else.i.i27.if.end15.sink.split.i.i29_crit_edge: ; preds = %if.else.i.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i29

if.else.i.i27.refcount_add.exit30_crit_edge:      ; preds = %if.else.i.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_add.exit30

if.end15.sink.split.i.i29:                        ; preds = %if.else.i.i27.if.end15.sink.split.i.i29_crit_edge, %refcount_add.exit.if.end15.sink.split.i.i29_crit_edge
  %.sink.i.i28 = phi i32 [ 2, %refcount_add.exit.if.end15.sink.split.i.i29_crit_edge ], [ 1, %if.else.i.i27.if.end15.sink.split.i.i29_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef %.sink.i.i28) #5
  br label %refcount_add.exit30

refcount_add.exit30:                              ; preds = %if.end15.sink.split.i.i29, %if.else.i.i27.refcount_add.exit30_crit_edge
  %call.i.i.i.i31 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %over, i32 noundef 4) #5
  %9 = ptrtoint ptr %over to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %over, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %10, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %refcount_add.exit30
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #8
  br label %overflow_check.exit

do.end4.i:                                        ; preds = %refcount_add.exit30
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #8
  br label %overflow_check.exit

do.end8.i:                                        ; preds = %refcount_add.exit30
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %over, i32 noundef 4) #5
  %12 = ptrtoint ptr %over to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %over, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %13) #8
  br label %overflow_check.exit

overflow_check.exit:                              ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %over) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW() local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %over = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %over) #5
  %0 = ptrtoint ptr %over to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483647, ptr %over, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %over, i32 noundef 4) #5
  %1 = ptrtoint ptr %over to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %over, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %3 = phi i32 [ %2, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %3, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #5
  %5 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 %6, i32 %add.i.i.i, ptr nonnull elementtype(i32) %over) #5, !srcloc !267
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !266

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %9, 1
  %10 = or i32 %add5.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !266

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef 0) #5
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %12 = phi i32 [ %9, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.i.i.i.not = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #5
  br i1 %tobool12.i.i.i.not, label %do.end4, label %refcount_inc_not_zero.exit.if.end_crit_edge

refcount_inc_not_zero.exit.if.end_crit_edge:      ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end4:                                          ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %if.end

if.end:                                           ; preds = %do.end4, %refcount_inc_not_zero.exit.if.end_crit_edge
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %over, i32 noundef 4) #5
  %13 = ptrtoint ptr %over to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %over, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %14, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #8
  br label %overflow_check.exit

do.end4.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #8
  br label %overflow_check.exit

do.end8.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %over, i32 noundef 4) #5
  %16 = ptrtoint ptr %over to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %over, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %17) #8
  br label %overflow_check.exit

overflow_check.exit:                              ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %over) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW() local_unnamed_addr #0 align 64 {
entry:
  %old.i.i = alloca i32, align 4
  %over = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %over) #5
  %0 = ptrtoint ptr %over to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483647, ptr %over, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i) #5
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %over, i32 noundef 4) #5
  %1 = ptrtoint ptr %over to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %over, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge, %entry
  %3 = phi i32 [ %2, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %old.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end4.i.i_crit_edge, label %do.cond.i.i

do.body.i.i.if.end4.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  %add.i.i = add i32 %3, 6
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %over, i32 noundef 4) #5
  %call.i3.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i, i32 noundef 4) #5
  %5 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %over, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond.i.i
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %over, ptr nonnull %over, i32 %6, i32 %add.i.i, ptr nonnull elementtype(i32) %over) #5, !srcloc !267
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i:         ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge, !prof !266

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge, %do.body.i.i.if.end4.i.i_crit_edge
  %8 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i, align 4
  %add5.i.i = add i32 %9, 6
  %10 = or i32 %add5.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i, label %if.end4.i.i.refcount_add_not_zero.exit_crit_edge, label %if.then10.i.i, !prof !266

if.end4.i.i.refcount_add_not_zero.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_add_not_zero.exit

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %over, i32 noundef 0) #5
  %11 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %old.i.i, align 4
  br label %refcount_add_not_zero.exit

refcount_add_not_zero.exit:                       ; preds = %if.then10.i.i, %if.end4.i.i.refcount_add_not_zero.exit_crit_edge
  %12 = phi i32 [ %9, %if.end4.i.i.refcount_add_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.i.i.not = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i) #5
  br i1 %tobool12.i.i.not, label %do.end4, label %refcount_add_not_zero.exit.if.end_crit_edge

refcount_add_not_zero.exit.if.end_crit_edge:      ; preds = %refcount_add_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end4:                                          ; preds = %refcount_add_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %if.end

if.end:                                           ; preds = %do.end4, %refcount_add_not_zero.exit.if.end_crit_edge
  %call.i.i.i.i7 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %over, i32 noundef 4) #5
  %13 = ptrtoint ptr %over to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %over, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %14, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #8
  br label %overflow_check.exit

do.end4.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #8
  br label %overflow_check.exit

do.end8.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %over, i32 noundef 4) #5
  %16 = ptrtoint ptr %over to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %over, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %17) #8
  br label %overflow_check.exit

overflow_check.exit:                              ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %over) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_DEC_ZERO() local_unnamed_addr #0 align 64 {
entry:
  %zero = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero) #5
  %0 = ptrtoint ptr %zero to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %zero, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %zero, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %zero, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %zero, ptr nonnull %zero, i32 1, ptr nonnull elementtype(i32) %zero) #5, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %entry.refcount_dec.exit_crit_edge, !prof !264

entry.refcount_dec.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %zero, i32 noundef 4) #5
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %entry.refcount_dec.exit_crit_edge
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #8
  %call.i.i.i.i6 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %zero, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %zero, i32 1, i32 3, i32 1) #5
  %2 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %zero, ptr nonnull %zero, i32 1, ptr nonnull elementtype(i32) %zero) #5, !srcloc !263
  %asmresult.i.i.i.i.i7 = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i7)
  %cmp.i.i8 = icmp slt i32 %asmresult.i.i.i.i.i7, 2
  br i1 %cmp.i.i8, label %if.then3.i.i9, label %refcount_dec.exit.refcount_dec.exit10_crit_edge, !prof !264

refcount_dec.exit.refcount_dec.exit10_crit_edge:  ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_dec.exit10

if.then3.i.i9:                                    ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %zero, i32 noundef 4) #5
  br label %refcount_dec.exit10

refcount_dec.exit10:                              ; preds = %if.then3.i.i9, %refcount_dec.exit.refcount_dec.exit10_crit_edge
  %call.i.i.i.i11 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %zero, i32 noundef 4) #5
  %3 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %zero, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %4, label %do.end13.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
    i32 0, label %do.end9.i
  ]

do.end.i:                                         ; preds = %refcount_dec.exit10
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #8
  br label %check_zero.exit

do.end4.i:                                        ; preds = %refcount_dec.exit10
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #8
  br label %check_zero.exit

do.end9.i:                                        ; preds = %refcount_dec.exit10
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #8
  br label %check_zero.exit

do.end13.i:                                       ; preds = %refcount_dec.exit10
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i18.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %zero, i32 noundef 4) #5
  %6 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %zero, align 4
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %7) #8
  br label %check_zero.exit

check_zero.exit:                                  ; preds = %do.end13.i, %do.end9.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_DEC_NEGATIVE() local_unnamed_addr #0 align 64 {
entry:
  %neg = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %neg) #5
  %0 = ptrtoint ptr %neg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %neg, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %neg, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %neg, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %neg, ptr nonnull %neg, i32 1, ptr nonnull elementtype(i32) %neg) #5, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %entry.refcount_dec.exit_crit_edge, !prof !264

entry.refcount_dec.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %neg, i32 noundef 4) #5
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %entry.refcount_dec.exit_crit_edge
  call fastcc void @check_negative(ptr noundef nonnull %neg, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %neg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_negative(ptr noundef %ref, i32 noundef %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #5
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %start)
  %cmp = icmp eq i32 %1, %start
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %start) #8
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %call.i.i.i20 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #5
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %3, label %do.end13 [
    i32 -1073741824, label %do.end4
    i32 2147483647, label %do.end9
  ]

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #8
  br label %sw.epilog

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #8
  br label %sw.epilog

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i21 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #5
  %5 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ref, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %6) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13, %do.end9, %do.end4, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE() local_unnamed_addr #0 align 64 {
entry:
  %neg = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %neg) #5
  %0 = ptrtoint ptr %neg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %neg, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %neg, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %neg, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %neg, ptr nonnull %neg, i32 1, ptr nonnull elementtype(i32) %neg) #5, !srcloc !263
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end4, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !266

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %neg, i32 noundef 3) #5
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !268
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end

if.end:                                           ; preds = %do.end4, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  call fastcc void @check_negative(ptr noundef nonnull %neg, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %neg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE() local_unnamed_addr #0 align 64 {
entry:
  %neg = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %neg) #5
  %0 = ptrtoint ptr %neg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %neg, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %neg, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %neg, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %neg, ptr nonnull %neg, i32 5, ptr nonnull elementtype(i32) %neg) #5, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 5
  br i1 %cmp.i.i, label %do.end4, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %entry
  %sub.i.i = add i32 %asmresult.i.i.i.i.i, -5
  %2 = or i32 %sub.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i, label %if.end5.i.i.if.end_crit_edge, label %if.then10.i.i, !prof !266

if.end5.i.i.if.end_crit_edge:                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %neg, i32 noundef 3) #5
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !268
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %if.end

if.end:                                           ; preds = %do.end4, %if.then10.i.i, %if.end5.i.i.if.end_crit_edge
  call fastcc void @check_negative(ptr noundef nonnull %neg, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %neg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_INC_ZERO() local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %zero = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero) #5
  %0 = ptrtoint ptr %zero to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %zero, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %zero, i32 noundef 4) #5
  %1 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %zero, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %3 = phi i32 [ %2, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %3, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %zero, i32 noundef 4) #5
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #5
  %5 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %zero, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %zero, ptr nonnull %zero, i32 %6, i32 %add.i.i.i, ptr nonnull elementtype(i32) %zero) #5, !srcloc !267
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !266

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %9, 1
  %10 = or i32 %add5.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !266

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %zero, i32 noundef 0) #5
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %12 = phi i32 [ %9, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.i.i.i.not = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #5
  br i1 %tobool12.i.i.i.not, label %do.end4, label %refcount_inc_not_zero.exit.do.end28_crit_edge

refcount_inc_not_zero.exit.do.end28_crit_edge:    ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end4:                                          ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %zero, i32 noundef 4) #5
  %13 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %.str.44..str.47 = select i1 %cmp, ptr @.str.44, ptr @.str.47
  br label %do.end28

do.end28:                                         ; preds = %do.end4, %refcount_inc_not_zero.exit.do.end28_crit_edge
  %.str.50.sink = phi ptr [ %.str.44..str.47, %do.end4 ], [ @.str.50, %refcount_inc_not_zero.exit.do.end28_crit_edge ]
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.50.sink) #8
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #8
  %call.i.i.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %zero, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %zero, i32 1, i32 3, i32 1) #5
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %zero, ptr nonnull %zero, i32 1, ptr nonnull elementtype(i32) %zero) #5, !srcloc !265
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end28.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !264

do.end28.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end28
  %add.i.i.i32 = add i32 %asmresult.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i32, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i33 = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i33, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !266

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end28.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end28.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %zero, i32 noundef %.sink.i.i.i) #5
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call fastcc void @check_from_zero(ptr noundef nonnull %zero)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_from_zero(ptr noundef %ref) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #5
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %1, label %do.end13 [
    i32 0, label %do.end
    i32 -1073741824, label %do.end4
    i32 2147483647, label %do.end9
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #8
  br label %sw.epilog

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #8
  br label %sw.epilog

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #8
  br label %sw.epilog

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i18 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #5
  %3 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ref, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %4) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13, %do.end9, %do.end4, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_ADD_ZERO() local_unnamed_addr #0 align 64 {
entry:
  %old.i.i = alloca i32, align 4
  %zero = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero) #5
  %0 = ptrtoint ptr %zero to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %zero, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i) #5
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %zero, i32 noundef 4) #5
  %1 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %zero, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge, %entry
  %3 = phi i32 [ %2, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %old.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end4.i.i_crit_edge, label %do.cond.i.i

do.body.i.i.if.end4.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  %add.i.i = add i32 %3, 3
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %zero, i32 noundef 4) #5
  %call.i3.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i, i32 noundef 4) #5
  %5 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %zero, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond.i.i
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %zero, ptr nonnull %zero, i32 %6, i32 %add.i.i, ptr nonnull elementtype(i32) %zero) #5, !srcloc !267
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i:         ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge, !prof !266

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge, %do.body.i.i.if.end4.i.i_crit_edge
  %8 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i, align 4
  %add5.i.i = add i32 %9, 3
  %10 = or i32 %add5.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i, label %if.end4.i.i.refcount_add_not_zero.exit_crit_edge, label %if.then10.i.i, !prof !266

if.end4.i.i.refcount_add_not_zero.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_add_not_zero.exit

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %zero, i32 noundef 0) #5
  %11 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %old.i.i, align 4
  br label %refcount_add_not_zero.exit

refcount_add_not_zero.exit:                       ; preds = %if.then10.i.i, %if.end4.i.i.refcount_add_not_zero.exit_crit_edge
  %12 = phi i32 [ %9, %if.end4.i.i.refcount_add_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.i.i.not = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i) #5
  br i1 %tobool12.i.i.not, label %do.end4, label %refcount_add_not_zero.exit.do.end28_crit_edge

refcount_add_not_zero.exit.do.end28_crit_edge:    ; preds = %refcount_add_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end4:                                          ; preds = %refcount_add_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %zero, i32 noundef 4) #5
  %13 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %.str.44..str.62 = select i1 %cmp, ptr @.str.44, ptr @.str.62
  br label %do.end28

do.end28:                                         ; preds = %do.end4, %refcount_add_not_zero.exit.do.end28_crit_edge
  %.str.50.sink = phi ptr [ %.str.44..str.62, %do.end4 ], [ @.str.50, %refcount_add_not_zero.exit.do.end28_crit_edge ]
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.50.sink) #8
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #8
  %call.i.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %zero, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %zero, i32 1, i32 3, i32 1) #5
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %zero, ptr nonnull %zero, i32 3, ptr nonnull elementtype(i32) %zero) #5, !srcloc !265
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %do.end28.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !264

do.end28.if.end15.sink.split.i.i_crit_edge:       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %do.end28
  %add.i.i32 = add i32 %asmresult.i.i.i.i, 3
  %16 = or i32 %add.i.i32, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i33 = icmp sgt i32 %16, -1
  br i1 %.not.i.i33, label %if.else.i.i.refcount_add.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !266

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i

if.else.i.i.refcount_add.exit_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_add.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %do.end28.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %do.end28.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %zero, i32 noundef %.sink.i.i) #5
  br label %refcount_add.exit

refcount_add.exit:                                ; preds = %if.end15.sink.split.i.i, %if.else.i.i.refcount_add.exit_crit_edge
  call fastcc void @check_from_zero(ptr noundef nonnull %zero)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_INC_SATURATED() local_unnamed_addr #0 align 64 {
entry:
  %sat = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sat) #5
  %0 = ptrtoint ptr %sat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1073741824, ptr %sat, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sat, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %sat, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %sat, ptr nonnull %sat, i32 1, ptr nonnull elementtype(i32) %sat) #5, !srcloc !265
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !264

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !266

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %sat, i32 noundef %.sink.i.i.i) #5
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %3 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sat, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %4, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #8
  br label %check_saturated.exit

do.end4.i:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #8
  br label %check_saturated.exit

do.end8.i:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %6 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sat, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %7) #8
  br label %check_saturated.exit

check_saturated.exit:                             ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sat) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_DEC_SATURATED() local_unnamed_addr #0 align 64 {
entry:
  %sat = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sat) #5
  %0 = ptrtoint ptr %sat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1073741824, ptr %sat, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sat, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %sat, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %sat, ptr nonnull %sat, i32 1, ptr nonnull elementtype(i32) %sat) #5, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %entry.refcount_dec.exit_crit_edge, !prof !264

entry.refcount_dec.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %sat, i32 noundef 4) #5
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %entry.refcount_dec.exit_crit_edge
  %call.i.i.i.i1 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %2 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %3, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #8
  br label %check_saturated.exit

do.end4.i:                                        ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #8
  br label %check_saturated.exit

do.end8.i:                                        ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %5 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sat, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %6) #8
  br label %check_saturated.exit

check_saturated.exit:                             ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sat) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_ADD_SATURATED() local_unnamed_addr #0 align 64 {
entry:
  %sat = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sat) #5
  %0 = ptrtoint ptr %sat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1073741824, ptr %sat, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sat, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %sat, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %sat, ptr nonnull %sat, i32 8, ptr nonnull elementtype(i32) %sat) #5, !srcloc !265
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !264

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 8
  %2 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i, label %if.else.i.i.refcount_add.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !266

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i

if.else.i.i.refcount_add.exit_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_add.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %sat, i32 noundef %.sink.i.i) #5
  br label %refcount_add.exit

refcount_add.exit:                                ; preds = %if.end15.sink.split.i.i, %if.else.i.i.refcount_add.exit_crit_edge
  %call.i.i.i.i1 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %3 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sat, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %4, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %refcount_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #8
  br label %check_saturated.exit

do.end4.i:                                        ; preds = %refcount_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #8
  br label %check_saturated.exit

do.end8.i:                                        ; preds = %refcount_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %6 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sat, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %7) #8
  br label %check_saturated.exit

check_saturated.exit:                             ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sat) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED() local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %sat = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sat) #5
  %0 = ptrtoint ptr %sat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1073741824, ptr %sat, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %1 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sat, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %3 = phi i32 [ %2, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %3, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sat, i32 noundef 4) #5
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #5
  %5 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %sat, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %sat, ptr nonnull %sat, i32 %6, i32 %add.i.i.i, ptr nonnull elementtype(i32) %sat) #5, !srcloc !267
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !266

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %9, 1
  %10 = or i32 %add5.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !266

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %sat, i32 noundef 0) #5
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %12 = phi i32 [ %9, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.i.i.i.not = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #5
  br i1 %tobool12.i.i.i.not, label %do.end4, label %refcount_inc_not_zero.exit.if.end_crit_edge

refcount_inc_not_zero.exit.if.end_crit_edge:      ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end4:                                          ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %if.end

if.end:                                           ; preds = %do.end4, %refcount_inc_not_zero.exit.if.end_crit_edge
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %13 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sat, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %14, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #8
  br label %check_saturated.exit

do.end4.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #8
  br label %check_saturated.exit

do.end8.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %16 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sat, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %17) #8
  br label %check_saturated.exit

check_saturated.exit:                             ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sat) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED() local_unnamed_addr #0 align 64 {
entry:
  %old.i.i = alloca i32, align 4
  %sat = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sat) #5
  %0 = ptrtoint ptr %sat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1073741824, ptr %sat, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i) #5
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %1 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sat, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge, %entry
  %3 = phi i32 [ %2, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %old.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end4.i.i_crit_edge, label %do.cond.i.i

do.body.i.i.if.end4.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  %add.i.i = add i32 %3, 7
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sat, i32 noundef 4) #5
  %call.i3.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i, i32 noundef 4) #5
  %5 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %sat, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond.i.i
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %sat, ptr nonnull %sat, i32 %6, i32 %add.i.i, ptr nonnull elementtype(i32) %sat) #5, !srcloc !267
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i:         ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge, !prof !266

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge, %do.body.i.i.if.end4.i.i_crit_edge
  %8 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i, align 4
  %add5.i.i = add i32 %9, 7
  %10 = or i32 %add5.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i, label %if.end4.i.i.refcount_add_not_zero.exit_crit_edge, label %if.then10.i.i, !prof !266

if.end4.i.i.refcount_add_not_zero.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_add_not_zero.exit

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %sat, i32 noundef 0) #5
  %11 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %old.i.i, align 4
  br label %refcount_add_not_zero.exit

refcount_add_not_zero.exit:                       ; preds = %if.then10.i.i, %if.end4.i.i.refcount_add_not_zero.exit_crit_edge
  %12 = phi i32 [ %9, %if.end4.i.i.refcount_add_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.i.i.not = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i) #5
  br i1 %tobool12.i.i.not, label %do.end4, label %refcount_add_not_zero.exit.if.end_crit_edge

refcount_add_not_zero.exit.if.end_crit_edge:      ; preds = %refcount_add_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end4:                                          ; preds = %refcount_add_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %if.end

if.end:                                           ; preds = %do.end4, %refcount_add_not_zero.exit.if.end_crit_edge
  %call.i.i.i.i7 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %13 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sat, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %14, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #8
  br label %check_saturated.exit

do.end4.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #8
  br label %check_saturated.exit

do.end8.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %16 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sat, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %17) #8
  br label %check_saturated.exit

check_saturated.exit:                             ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sat) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED() local_unnamed_addr #0 align 64 {
entry:
  %sat = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sat) #5
  %0 = ptrtoint ptr %sat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1073741824, ptr %sat, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sat, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %sat, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %sat, ptr nonnull %sat, i32 1, ptr nonnull elementtype(i32) %sat) #5, !srcloc !263
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end4, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !266

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %sat, i32 noundef 3) #5
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !268
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #8
  br label %if.end

if.end:                                           ; preds = %do.end4, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %2 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %3, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #8
  br label %check_saturated.exit

do.end4.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #8
  br label %check_saturated.exit

do.end8.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %5 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sat, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %6) #8
  br label %check_saturated.exit

check_saturated.exit:                             ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sat) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED() local_unnamed_addr #0 align 64 {
entry:
  %sat = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sat) #5
  %0 = ptrtoint ptr %sat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1073741824, ptr %sat, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sat, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %sat, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %sat, ptr nonnull %sat, i32 8, ptr nonnull elementtype(i32) %sat) #5, !srcloc !263
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 8
  br i1 %cmp.i.i, label %do.end4, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %entry
  %sub.i.i = add i32 %asmresult.i.i.i.i.i, -8
  %2 = or i32 %sub.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i, label %if.end5.i.i.if.end_crit_edge, label %if.then10.i.i, !prof !266

if.end5.i.i.if.end_crit_edge:                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %sat, i32 noundef 3) #5
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !268
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %if.end

if.end:                                           ; preds = %do.end4, %if.then10.i.i, %if.end5.i.i.if.end_crit_edge
  %call.i.i.i.i7 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %3 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sat, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %4, label %do.end8.i [
    i32 -1073741824, label %do.end.i
    i32 2147483647, label %do.end4.i
  ]

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #8
  br label %check_saturated.exit

do.end4.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #8
  br label %check_saturated.exit

do.end8.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i13.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sat, i32 noundef 4) #5
  %6 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sat, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %7) #8
  br label %check_saturated.exit

check_saturated.exit:                             ; preds = %do.end8.i, %do.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sat) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_ATOMIC_TIMING() local_unnamed_addr #0 align 64 {
entry:
  %count = alloca %struct.atomic_t, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #5
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %count, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %count, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %count, ptr nonnull %count, i32 1, ptr nonnull elementtype(i32) %count) #5, !srcloc !269
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 2147483646
  br i1 %exitcond.not, label %for.body.for.body3_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %for.inc4.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %i.124 = phi i32 [ %dec, %for.inc4.for.body3_crit_edge ], [ 2147483647, %for.body.for.body3_crit_edge ]
  %call.i.i20 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !270
  call void @llvm.prefetch.p0(ptr nonnull %count, i32 1, i32 3, i32 1) #5
  %2 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %count, ptr nonnull %count, i32 1, ptr nonnull elementtype(i32) %count) #5, !srcloc !271
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %for.end5, label %for.inc4

for.inc4:                                         ; preds = %for.body3
  %dec = add nsw i32 %i.124, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %for.inc4.do.end_crit_edge, label %for.inc4.for.body3_crit_edge

for.inc4.for.body3_crit_edge:                     ; preds = %for.inc4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.inc4.do.end_crit_edge:                        ; preds = %for.inc4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.end5:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.124)
  %cmp6.not = icmp eq i32 %i.124, 1
  br i1 %cmp6.not, label %do.end11, label %for.end5.do.end_crit_edge

for.end5.do.end_crit_edge:                        ; preds = %for.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.end5.do.end_crit_edge, %for.inc4.do.end_crit_edge
  %i.122 = phi i32 [ %i.124, %for.end5.do.end_crit_edge ], [ 0, %for.inc4.do.end_crit_edge ]
  %sub = add i32 %i.122, -1
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %sub) #8
  br label %if.end14

do.end11:                                         ; preds = %for.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #8
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_REFCOUNT_TIMING() local_unnamed_addr #0 align 64 {
entry:
  %count = alloca %struct.refcount_struct, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #5
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %count, align 4
  br label %for.body

for.body:                                         ; preds = %refcount_inc.exit.for.body_crit_edge, %entry
  %i.024 = phi i32 [ 0, %entry ], [ %inc, %refcount_inc.exit.for.body_crit_edge ]
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %count, i32 1, i32 3, i32 1) #5
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %count, ptr nonnull %count, i32 1, ptr nonnull elementtype(i32) %count) #5, !srcloc !265
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %for.body.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !264

for.body.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %for.body
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !266

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %count, i32 noundef %.sink.i.i.i) #5
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 2147483646
  br i1 %exitcond.not, label %refcount_inc.exit.for.body3_crit_edge, label %refcount_inc.exit.for.body_crit_edge

refcount_inc.exit.for.body_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

refcount_inc.exit.for.body3_crit_edge:            ; preds = %refcount_inc.exit
  br label %for.body3

for.body3:                                        ; preds = %for.inc4.for.body3_crit_edge, %refcount_inc.exit.for.body3_crit_edge
  %i.125 = phi i32 [ %dec, %for.inc4.for.body3_crit_edge ], [ 2147483647, %refcount_inc.exit.for.body3_crit_edge ]
  %call.i.i.i.i.i20 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @llvm.prefetch.p0(ptr nonnull %count, i32 1, i32 3, i32 1) #5
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %count, ptr nonnull %count, i32 1, ptr nonnull elementtype(i32) %count) #5, !srcloc !263
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %for.end5, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i21 = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i21, label %if.end5.i.i.i.for.inc4_crit_edge, label %if.then10.i.i.i, !prof !266

if.end5.i.i.i.for.inc4_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc4

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %count, i32 noundef 3) #5
  br label %for.inc4

for.inc4:                                         ; preds = %if.then10.i.i.i, %if.end5.i.i.i.for.inc4_crit_edge
  %dec = add nsw i32 %i.125, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %for.inc4.do.end_crit_edge, label %for.inc4.for.body3_crit_edge

for.inc4.for.body3_crit_edge:                     ; preds = %for.inc4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.inc4.do.end_crit_edge:                        ; preds = %for.inc4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.end5:                                         ; preds = %for.body3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.125)
  %cmp6.not = icmp eq i32 %i.125, 1
  br i1 %cmp6.not, label %do.end11, label %for.end5.do.end_crit_edge

for.end5.do.end_crit_edge:                        ; preds = %for.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.end5.do.end_crit_edge, %for.inc4.do.end_crit_edge
  %i.123 = phi i32 [ %i.125, %for.end5.do.end_crit_edge ], [ 0, %for.inc4.do.end_crit_edge ]
  %sub = add i32 %i.123, -1
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %sub) #8
  br label %if.end14

do.end11:                                         ; preds = %for.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #8
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !140, !141, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !156, !157, !158, !159, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !228, !229, !230, !231, !233, !234, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/lkdtm/refcount.c", i32 31, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/misc/lkdtm/refcount.c", i32 35, i32 2}
!8 = !{ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @lkdtm_REFCOUNT_INC_OVERFLOW._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/lkdtm/refcount.c", i32 47, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/misc/lkdtm/refcount.c", i32 54, i32 2}
!17 = !{ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @lkdtm_REFCOUNT_ADD_OVERFLOW._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/lkdtm/refcount.c", i32 65, i32 2}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/lkdtm/refcount.c", i32 67, i32 3}
!26 = !{ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_OVERFLOW._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/lkdtm/refcount.c", i32 77, i32 2}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/lkdtm/refcount.c", i32 79, i32 3}
!35 = !{ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/lkdtm/refcount.c", i32 110, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @lkdtm_REFCOUNT_DEC_ZERO._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @lkdtm_REFCOUNT_DEC_ZERO._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/misc/lkdtm/refcount.c", i32 113, i32 2}
!44 = !{ptr @lkdtm_REFCOUNT_DEC_ZERO._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @lkdtm_REFCOUNT_DEC_ZERO._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/misc/lkdtm/refcount.c", i32 149, i32 2}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @lkdtm_REFCOUNT_DEC_NEGATIVE._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @lkdtm_REFCOUNT_DEC_NEGATIVE._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/lkdtm/refcount.c", i32 163, i32 2}
!53 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/misc/lkdtm/refcount.c", i32 165, i32 3}
!58 = !{ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @lkdtm_REFCOUNT_DEC_AND_TEST_NEGATIVE._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/misc/lkdtm/refcount.c", i32 178, i32 2}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/lkdtm/refcount.c", i32 180, i32 3}
!67 = !{ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/lkdtm/refcount.c", i32 210, i32 2}
!71 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/lkdtm/refcount.c", i32 212, i32 3}
!76 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry.40, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr.42, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/misc/lkdtm/refcount.c", i32 214, i32 4}
!80 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/misc/lkdtm/refcount.c", i32 216, i32 4}
!84 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/lkdtm/refcount.c", i32 218, i32 3}
!88 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry.49, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr.51, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/misc/lkdtm/refcount.c", i32 221, i32 2}
!92 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry.52, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @lkdtm_REFCOUNT_INC_ZERO._entry_ptr.54, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/misc/lkdtm/refcount.c", i32 235, i32 2}
!96 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.57, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/misc/lkdtm/refcount.c", i32 237, i32 3}
!101 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.58, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.59, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/misc/lkdtm/refcount.c", i32 239, i32 4}
!104 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.60, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/misc/lkdtm/refcount.c", i32 241, i32 4}
!107 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.61, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.63, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.64, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/misc/lkdtm/refcount.c", i32 243, i32 3}
!111 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.65, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/misc/lkdtm/refcount.c", i32 246, i32 2}
!114 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry.66, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @lkdtm_REFCOUNT_ADD_ZERO._entry_ptr.68, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/misc/lkdtm/refcount.c", i32 274, i32 2}
!118 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @lkdtm_REFCOUNT_INC_SATURATED._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @lkdtm_REFCOUNT_INC_SATURATED._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/misc/lkdtm/refcount.c", i32 285, i32 2}
!123 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @lkdtm_REFCOUNT_DEC_SATURATED._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @lkdtm_REFCOUNT_DEC_SATURATED._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/misc/lkdtm/refcount.c", i32 296, i32 2}
!128 = !{ptr @lkdtm_REFCOUNT_ADD_SATURATED._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @lkdtm_REFCOUNT_ADD_SATURATED._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.74, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/misc/lkdtm/refcount.c", i32 307, i32 2}
!132 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry.76, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/misc/lkdtm/refcount.c", i32 309, i32 3}
!137 = !{ptr @lkdtm_REFCOUNT_INC_NOT_ZERO_SATURATED._entry_ptr.77, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/misc/lkdtm/refcount.c", i32 319, i32 2}
!140 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry.80, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/misc/lkdtm/refcount.c", i32 321, i32 3}
!145 = !{ptr @lkdtm_REFCOUNT_ADD_NOT_ZERO_SATURATED._entry_ptr.81, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/misc/lkdtm/refcount.c", i32 331, i32 2}
!148 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry.84, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/misc/lkdtm/refcount.c", i32 333, i32 3}
!153 = !{ptr @lkdtm_REFCOUNT_DEC_AND_TEST_SATURATED._entry_ptr.85, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.86, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/misc/lkdtm/refcount.c", i32 343, i32 2}
!156 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry.88, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/misc/lkdtm/refcount.c", i32 345, i32 3}
!161 = !{ptr @lkdtm_REFCOUNT_SUB_AND_TEST_SATURATED._entry_ptr.89, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.90, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/misc/lkdtm/refcount.c", i32 364, i32 3}
!164 = !{ptr @.str.91, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @lkdtm_ATOMIC_TIMING._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @lkdtm_ATOMIC_TIMING._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.93, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/misc/lkdtm/refcount.c", i32 366, i32 3}
!169 = !{ptr @lkdtm_ATOMIC_TIMING._entry.92, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @lkdtm_ATOMIC_TIMING._entry_ptr.94, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.95, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/misc/lkdtm/refcount.c", i32 389, i32 3}
!173 = !{ptr @.str.96, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @lkdtm_REFCOUNT_TIMING._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @lkdtm_REFCOUNT_TIMING._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.98, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/misc/lkdtm/refcount.c", i32 391, i32 3}
!178 = !{ptr @lkdtm_REFCOUNT_TIMING._entry.97, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @lkdtm_REFCOUNT_TIMING._entry_ptr.99, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.100, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/misc/lkdtm/refcount.c", i32 13, i32 3}
!182 = !{ptr @.str.101, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @overflow_check._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @overflow_check._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.103, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/misc/lkdtm/refcount.c", i32 16, i32 3}
!187 = !{ptr @overflow_check._entry.102, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @overflow_check._entry_ptr.104, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.106, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/misc/lkdtm/refcount.c", i32 19, i32 3}
!191 = !{ptr @overflow_check._entry.105, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @overflow_check._entry_ptr.107, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.108, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/misc/lkdtm/refcount.c", i32 88, i32 3}
!195 = !{ptr @.str.109, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @check_zero._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @check_zero._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.111, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/misc/lkdtm/refcount.c", i32 91, i32 3}
!200 = !{ptr @check_zero._entry.110, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @check_zero._entry_ptr.112, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.114, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/misc/lkdtm/refcount.c", i32 94, i32 3}
!204 = !{ptr @check_zero._entry.113, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @check_zero._entry_ptr.115, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.117, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/misc/lkdtm/refcount.c", i32 97, i32 3}
!208 = !{ptr @check_zero._entry.116, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @check_zero._entry_ptr.118, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.119, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/misc/lkdtm/refcount.c", i32 127, i32 3}
!212 = !{ptr @.str.120, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @check_negative._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @check_negative._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.122, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/misc/lkdtm/refcount.c", i32 134, i32 3}
!217 = !{ptr @check_negative._entry.121, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @check_negative._entry_ptr.123, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.125, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/misc/lkdtm/refcount.c", i32 137, i32 3}
!221 = !{ptr @check_negative._entry.124, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @check_negative._entry_ptr.126, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @check_negative._entry.127, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/misc/lkdtm/refcount.c", i32 140, i32 3}
!225 = !{ptr @check_negative._entry_ptr.128, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.129, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/misc/lkdtm/refcount.c", i32 189, i32 3}
!228 = !{ptr @.str.130, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @check_from_zero._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @check_from_zero._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @check_from_zero._entry.131, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../drivers/misc/lkdtm/refcount.c", i32 192, i32 3}
!233 = !{ptr @check_from_zero._entry_ptr.132, !232, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @check_from_zero._entry.133, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../drivers/misc/lkdtm/refcount.c", i32 195, i32 3}
!236 = !{ptr @check_from_zero._entry_ptr.134, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.136, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/misc/lkdtm/refcount.c", i32 198, i32 3}
!239 = !{ptr @check_from_zero._entry.135, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @check_from_zero._entry_ptr.137, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.138, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/misc/lkdtm/refcount.c", i32 256, i32 3}
!243 = !{ptr @.str.139, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @check_saturated._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @check_saturated._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.141, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/misc/lkdtm/refcount.c", i32 259, i32 3}
!248 = !{ptr @check_saturated._entry.140, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @check_saturated._entry_ptr.142, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @check_saturated._entry.143, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../drivers/misc/lkdtm/refcount.c", i32 262, i32 3}
!252 = !{ptr @check_saturated._entry_ptr.144, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!262 = !{i64 2148312555}
!263 = !{i64 2148227019, i64 2148227051, i64 2148227080, i64 2148227114, i64 2148227145, i64 2148227168}
!264 = !{!"branch_weights", i32 1, i32 2000}
!265 = !{i64 2148224554, i64 2148224586, i64 2148224615, i64 2148224649, i64 2148224680, i64 2148224703}
!266 = !{!"branch_weights", i32 2000, i32 1}
!267 = !{i64 706760, i64 706784, i64 706805, i64 706822, i64 706839}
!268 = !{i64 2148753917}
!269 = !{i64 2148223024, i64 2148223050, i64 2148223079, i64 2148223113, i64 2148223144, i64 2148223167}
!270 = !{i64 2148311476}
!271 = !{i64 2148226209, i64 2148226241, i64 2148226270, i64 2148226304, i64 2148226335, i64 2148226358}
!272 = !{i64 2148311705}
