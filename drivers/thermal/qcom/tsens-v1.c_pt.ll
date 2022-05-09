; ModuleID = '/llk/IR_all_yes/drivers/thermal/qcom/tsens-v1.c_pt.bc'
source_filename = "../drivers/thermal/qcom/tsens-v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tsens_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tsens_features = type { i32, i8, i32 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.tsens_plat_data = type { i32, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tsens_priv = type { ptr, i32, ptr, ptr, i32, %struct.spinlock, [320 x ptr], %struct.tsens_context, ptr, ptr, ptr, ptr, ptr, [0 x %struct.tsens_sensor] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tsens_context = type { i32, i32 }
%struct.tsens_sensor = type { ptr, ptr, i32, i32, i32, i32 }

@ops_generic_v1 = internal constant { %struct.tsens_ops, [32 x i8] } { %struct.tsens_ops { ptr @init_common, ptr @calibrate_v1, ptr @get_temp_tsens_valid, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tsens_v1_feat = internal global { %struct.tsens_features, [20 x i8] } { %struct.tsens_features { i32 2, i8 96, i32 11 }, [20 x i8] zeroinitializer }, align 32
@tsens_v1_regfields = internal constant { [320 x %struct.reg_field], [1600 x i8] } { [320 x %struct.reg_field] [%struct.reg_field { i32 0, i32 28, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 16, i32 27, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 3, i32 13, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 132, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 68, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 92, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 96, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 104, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 108, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 68, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 92, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 96, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 104, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 108, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 68, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 92, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 96, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 104, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 108, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 136, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 4, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 24, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 4, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 24, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 68, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 92, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 96, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 104, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 108, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 136, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 136, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 4, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 24, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 4, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 24, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 68, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 92, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 96, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 104, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 108, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 68, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 92, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 96, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 104, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 108, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [1600 x i8] zeroinitializer }, align 32
@data_tsens_v1 = dso_local global { %struct.tsens_plat_data, [44 x i8] } { %struct.tsens_plat_data { i32 0, ptr @ops_generic_v1, ptr null, ptr @tsens_v1_feat, ptr @tsens_v1_regfields }, [44 x i8] zeroinitializer }, align 32
@ops_8976 = internal constant { %struct.tsens_ops, [32 x i8] } { %struct.tsens_ops { ptr @init_common, ptr @calibrate_8976, ptr @get_temp_tsens_valid, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], [52 x i8] zeroinitializer }, align 32
@data_8976 = dso_local global { %struct.tsens_plat_data, [44 x i8] } { %struct.tsens_plat_data { i32 11, ptr @ops_8976, ptr @.compoundliteral, ptr @tsens_v1_feat, ptr @tsens_v1_regfields }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"calib\00", [26 x i8] zeroinitializer }, align 32
@calibrate_v1.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_tsens\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"calibrate_v1\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/thermal/qcom/tsens-v1.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"calibration mode is %d\0A\00", [40 x i8] zeroinitializer }, align 32
@calibrate_8976.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.4, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"calibrate_8976\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"ops_generic_v1\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 365, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"tsens_v1_feat\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 302, i32 30 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"tsens_v1_regfields\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 310, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"data_tsens_v1\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 371, i32 24 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"ops_8976\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 377, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"data_8976\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 384, i32 24 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 177, i32 47 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 182, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [35 x i8] c"../drivers/thermal/qcom/tsens-v1.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 247, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @ops_generic_v1, ptr @tsens_v1_feat, ptr @tsens_v1_regfields, ptr @data_tsens_v1, ptr @ops_8976, ptr @.compoundliteral, ptr @data_8976, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_generic_v1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_v1_feat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_v1_regfields to i32), i32 6400, i32 8000, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_tsens_v1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_8976 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_8976 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_common(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibrate_v1(ptr noundef %priv) #1 align 64 {
entry:
  %p1 = alloca [10 x i32], align 4
  %p2 = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %p1) #3
  %0 = call ptr @memset(ptr %p1, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %p2) #3
  %1 = call ptr @memset(ptr %p2, i32 255, i32 40)
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call ptr @qfprom_read(ptr noundef %3, ptr noundef nonnull @.str) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i32, ptr %call, i32 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and = and i32 %6, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calibrate_v1.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calibrate_v1, %if.then6)) #3
          to label %do.end [label %if.then6], !srcloc !32

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calibrate_v1.__UNIQUE_ID_ddebug187, ptr noundef %8, ptr noundef nonnull @.str.4, i32 noundef %and) #3
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %for.cond118.preheader [
    i32 3, label %sw.bb
    i32 2, label %do.end.sw.bb63_crit_edge
  ]

do.end.sw.bb63_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb63

for.cond118.preheader:                            ; preds = %do.end
  %num_sensors119 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %num_sensors119 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_sensors119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp120189.not = icmp eq i32 %11, 0
  br i1 %cmp120189.not, label %for.cond118.preheader.sw.epilog_crit_edge, label %for.cond118.preheader.for.body121_crit_edge

for.cond118.preheader.for.body121_crit_edge:      ; preds = %for.cond118.preheader
  br label %for.body121

for.cond118.preheader.sw.epilog_crit_edge:        ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %and10 = lshr i32 %13, 11
  %shr11 = and i32 %and10, 255
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call, align 4
  %and13 = lshr i32 %15, 6
  %shr14 = and i32 %and13, 63
  %16 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr14, ptr %p2, align 4
  %17 = load i32, ptr %call, align 4
  %and17 = lshr i32 %17, 18
  %shr18 = and i32 %and17, 63
  %arrayidx19 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr18, ptr %arrayidx19, align 4
  %19 = load i32, ptr %call, align 4
  %shr22 = lshr i32 %19, 30
  %arrayidx23 = getelementptr i32, ptr %call, i32 1
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx23, align 4
  %and24 = shl i32 %21, 2
  %shl = and i32 %and24, 60
  %or = or i32 %shl, %shr22
  %arrayidx26 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %arrayidx26, align 4
  %23 = load i32, ptr %arrayidx23, align 4
  %and28 = lshr i32 %23, 10
  %shr29 = and i32 %and28, 63
  %arrayidx30 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr29, ptr %arrayidx30, align 4
  %25 = load i32, ptr %arrayidx23, align 4
  %and32 = lshr i32 %25, 22
  %shr33 = and i32 %and32, 63
  %arrayidx34 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr33, ptr %arrayidx34, align 4
  %arrayidx35 = getelementptr i32, ptr %call, i32 2
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx35, align 4
  %and36 = lshr i32 %28, 6
  %shr37 = and i32 %and36, 63
  %arrayidx38 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr37, ptr %arrayidx38, align 4
  %30 = load i32, ptr %arrayidx35, align 4
  %and40 = lshr i32 %30, 18
  %shr41 = and i32 %and40, 63
  %arrayidx42 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 6
  %31 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr41, ptr %arrayidx42, align 4
  %32 = load i32, ptr %arrayidx35, align 4
  %shr45 = lshr i32 %32, 30
  %arrayidx46 = getelementptr i32, ptr %call, i32 3
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx46, align 4
  %and47 = shl i32 %34, 2
  %shl49 = and i32 %and47, 60
  %or50 = or i32 %shl49, %shr45
  %arrayidx51 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 7
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or50, ptr %arrayidx51, align 4
  %36 = load i32, ptr %arrayidx46, align 4
  %and53 = lshr i32 %36, 10
  %shr54 = and i32 %and53, 63
  %arrayidx55 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr54, ptr %arrayidx55, align 4
  %38 = load i32, ptr %arrayidx46, align 4
  %and57 = lshr i32 %38, 22
  %shr58 = and i32 %and57, 63
  %arrayidx59 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 9
  %39 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr58, ptr %arrayidx59, align 4
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %40 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp185.not = icmp eq i32 %41, 0
  br i1 %cmp185.not, label %sw.bb.sw.bb63_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.bb63_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb63

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %i.0186 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %arrayidx60 = getelementptr [10 x i32], ptr %p2, i32 0, i32 %i.0186
  %42 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx60, align 4
  %add = add i32 %43, %shr11
  %shl61 = shl i32 %add, 2
  store i32 %shl61, ptr %arrayidx60, align 4
  %inc = add nuw i32 %i.0186, 1
  %exitcond.not = icmp eq i32 %inc, %41
  br i1 %exitcond.not, label %for.body.sw.bb63_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.sw.bb63_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb63

sw.bb63:                                          ; preds = %for.body.sw.bb63_crit_edge, %sw.bb.sw.bb63_crit_edge, %do.end.sw.bb63_crit_edge
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %and65 = lshr i32 %45, 3
  %shr66 = and i32 %and65, 255
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call, align 4
  %and68 = and i32 %47, 63
  %48 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and68, ptr %p1, align 4
  %49 = load i32, ptr %call, align 4
  %and72 = lshr i32 %49, 12
  %shr73 = and i32 %and72, 63
  %arrayidx74 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr73, ptr %arrayidx74, align 4
  %51 = load i32, ptr %call, align 4
  %and76 = lshr i32 %51, 24
  %shr77 = and i32 %and76, 63
  %arrayidx78 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr77, ptr %arrayidx78, align 4
  %arrayidx79 = getelementptr i32, ptr %call, i32 1
  %53 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx79, align 4
  %and80 = lshr i32 %54, 4
  %shr81 = and i32 %and80, 63
  %arrayidx82 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shr81, ptr %arrayidx82, align 4
  %56 = load i32, ptr %arrayidx79, align 4
  %and84 = lshr i32 %56, 16
  %shr85 = and i32 %and84, 63
  %arrayidx86 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 4
  %57 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr85, ptr %arrayidx86, align 4
  %arrayidx87 = getelementptr i32, ptr %call, i32 2
  %58 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx87, align 4
  %and88 = and i32 %59, 63
  %arrayidx90 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 5
  %60 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and88, ptr %arrayidx90, align 4
  %61 = load i32, ptr %arrayidx87, align 4
  %and92 = lshr i32 %61, 12
  %shr93 = and i32 %and92, 63
  %arrayidx94 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 6
  %62 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shr93, ptr %arrayidx94, align 4
  %63 = load i32, ptr %arrayidx87, align 4
  %and96 = lshr i32 %63, 24
  %shr97 = and i32 %and96, 63
  %arrayidx98 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 7
  %64 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shr97, ptr %arrayidx98, align 4
  %arrayidx99 = getelementptr i32, ptr %call, i32 3
  %65 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx99, align 4
  %and100 = lshr i32 %66, 4
  %shr101 = and i32 %and100, 63
  %arrayidx102 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 8
  %67 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr101, ptr %arrayidx102, align 4
  %68 = load i32, ptr %arrayidx99, align 4
  %and104 = lshr i32 %68, 16
  %shr105 = and i32 %and104, 63
  %arrayidx106 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 9
  %69 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shr105, ptr %arrayidx106, align 4
  %num_sensors108 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %70 = ptrtoint ptr %num_sensors108 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_sensors108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp109187.not = icmp eq i32 %71, 0
  br i1 %cmp109187.not, label %sw.bb63.sw.epilog_crit_edge, label %sw.bb63.for.body110_crit_edge

sw.bb63.for.body110_crit_edge:                    ; preds = %sw.bb63
  br label %for.body110

sw.bb63.sw.epilog_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body110:                                      ; preds = %for.body110.for.body110_crit_edge, %sw.bb63.for.body110_crit_edge
  %i.1188 = phi i32 [ %inc116, %for.body110.for.body110_crit_edge ], [ 0, %sw.bb63.for.body110_crit_edge ]
  %arrayidx111 = getelementptr [10 x i32], ptr %p1, i32 0, i32 %i.1188
  %72 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx111, align 4
  %add112 = add i32 %73, %shr66
  %shl113 = shl i32 %add112, 2
  store i32 %shl113, ptr %arrayidx111, align 4
  %inc116 = add nuw i32 %i.1188, 1
  %exitcond192.not = icmp eq i32 %inc116, %71
  br i1 %exitcond192.not, label %for.body110.sw.epilog_crit_edge, label %for.body110.for.body110_crit_edge

for.body110.for.body110_crit_edge:                ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body110

for.body110.sw.epilog_crit_edge:                  ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %for.cond118.preheader.for.body121_crit_edge
  %i.2190 = phi i32 [ %inc125, %for.body121.for.body121_crit_edge ], [ 0, %for.cond118.preheader.for.body121_crit_edge ]
  %arrayidx122 = getelementptr [10 x i32], ptr %p1, i32 0, i32 %i.2190
  %74 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 500, ptr %arrayidx122, align 4
  %arrayidx123 = getelementptr [10 x i32], ptr %p2, i32 0, i32 %i.2190
  %75 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 780, ptr %arrayidx123, align 4
  %inc125 = add nuw i32 %i.2190, 1
  %exitcond193.not = icmp eq i32 %inc125, %11
  br i1 %exitcond193.not, label %for.body121.sw.epilog_crit_edge, label %for.body121.for.body121_crit_edge

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body121

for.body121.sw.epilog_crit_edge:                  ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body121.sw.epilog_crit_edge, %for.body110.sw.epilog_crit_edge, %sw.bb63.sw.epilog_crit_edge, %for.cond118.preheader.sw.epilog_crit_edge
  call void @compute_intercept_slope(ptr noundef %priv, ptr noundef nonnull %p1, ptr noundef nonnull %p2, i32 noundef %and) #3
  call void @kfree(ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %p2) #3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %p1) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_temp_tsens_valid(ptr noundef, ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qfprom_read(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @compute_intercept_slope(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibrate_8976(ptr nocapture noundef %priv) #1 align 64 {
entry:
  %p1 = alloca [11 x i32], align 4
  %p2 = alloca [11 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %p1) #3
  %0 = call ptr @memset(ptr %p1, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %p2) #3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %call = tail call ptr @qfprom_read(ptr noundef %2, ptr noundef nonnull @.str) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i32, ptr %call, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calibrate_8976.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calibrate_8976, %if.then7)) #3
          to label %do.end [label %if.then7], !srcloc !32

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calibrate_8976.__UNIQUE_ID_ddebug188, ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %and) #3
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and, label %for.cond120.preheader [
    i32 3, label %sw.bb
    i32 2, label %do.end.sw.bb58_crit_edge
  ]

do.end.sw.bb58_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb58

for.cond120.preheader:                            ; preds = %do.end
  %num_sensors121 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %num_sensors121 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_sensors121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp122190.not = icmp eq i32 %10, 0
  br i1 %cmp122190.not, label %for.cond120.preheader.sw.epilog_crit_edge, label %for.cond120.preheader.for.body123_crit_edge

for.cond120.preheader.for.body123_crit_edge:      ; preds = %for.cond120.preheader
  br label %for.body123

for.cond120.preheader.sw.epilog_crit_edge:        ; preds = %for.cond120.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %arrayidx10 = getelementptr i32, ptr %call, i32 2
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call, align 4
  %and13 = lshr i32 %12, 14
  %shr14 = and i32 %and13, 63
  %13 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr14, ptr %p2, align 4
  %shr18 = lshr i32 %12, 26
  %arrayidx19 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr18, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr i32, ptr %call, i32 1
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx20, align 4
  %and21 = lshr i32 %16, 6
  %shr22 = and i32 %and21, 63
  %arrayidx23 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr22, ptr %arrayidx23, align 4
  %and25 = lshr i32 %16, 18
  %shr26 = and i32 %and25, 63
  %arrayidx27 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr26, ptr %arrayidx27, align 4
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx10, align 4
  %and29 = lshr i32 %20, 14
  %shr30 = and i32 %and29, 63
  %arrayidx31 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr30, ptr %arrayidx31, align 4
  %shr34 = lshr i32 %20, 26
  %arrayidx35 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 5
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr34, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr i32, ptr %call, i32 3
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx36, align 4
  %and37 = lshr i32 %24, 6
  %shr38 = and i32 %and37, 63
  %arrayidx39 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 6
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr38, ptr %arrayidx39, align 4
  %and41 = lshr i32 %24, 18
  %shr42 = and i32 %and41, 63
  %arrayidx43 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 7
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr42, ptr %arrayidx43, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %and45 = lshr i32 %28, 9
  %shr46 = and i32 %and45, 63
  %arrayidx47 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 8
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr46, ptr %arrayidx47, align 4
  %and49 = lshr i32 %28, 21
  %shr50 = and i32 %and49, 63
  %arrayidx51 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 9
  %30 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr50, ptr %arrayidx51, align 4
  %arrayidx52 = getelementptr i32, ptr %call, i32 5
  %31 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx52, align 4
  %and53 = lshr i32 %32, 1
  %shr54 = and i32 %and53, 63
  %arrayidx55 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 10
  %33 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr54, ptr %arrayidx55, align 4
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %34 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp186.not = icmp eq i32 %35, 0
  br i1 %cmp186.not, label %sw.bb.sw.bb58_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.bb58_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb58

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %i.0187 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %arrayidx56 = getelementptr [11 x i32], ptr %p2, i32 0, i32 %i.0187
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx56, align 4
  %shl = shl i32 %37, 2
  store i32 %shl, ptr %arrayidx56, align 4
  %inc = add nuw i32 %i.0187, 1
  %exitcond.not = icmp eq i32 %inc, %35
  br i1 %exitcond.not, label %for.body.sw.bb58_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.sw.bb58_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb58

sw.bb58:                                          ; preds = %for.body.sw.bb58_crit_edge, %sw.bb.sw.bb58_crit_edge, %do.end.sw.bb58_crit_edge
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call, align 4
  %and60 = and i32 %39, 255
  %and62 = lshr i32 %39, 8
  %shr63 = and i32 %and62, 63
  %40 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr63, ptr %p1, align 4
  %and66 = lshr i32 %39, 20
  %shr67 = and i32 %and66, 63
  %arrayidx68 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr67, ptr %arrayidx68, align 4
  %arrayidx69 = getelementptr i32, ptr %call, i32 1
  %42 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx69, align 4
  %and70 = and i32 %43, 63
  %arrayidx72 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and70, ptr %arrayidx72, align 4
  %and74 = lshr i32 %43, 12
  %shr75 = and i32 %and74, 63
  %arrayidx76 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr75, ptr %arrayidx76, align 4
  %arrayidx77 = getelementptr i32, ptr %call, i32 2
  %46 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx77, align 4
  %and78 = lshr i32 %47, 8
  %shr79 = and i32 %and78, 63
  %arrayidx80 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shr79, ptr %arrayidx80, align 4
  %and82 = lshr i32 %47, 20
  %shr83 = and i32 %and82, 63
  %arrayidx84 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 5
  %49 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr83, ptr %arrayidx84, align 4
  %arrayidx85 = getelementptr i32, ptr %call, i32 3
  %50 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx85, align 4
  %and86 = and i32 %51, 63
  %arrayidx88 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 6
  %52 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and86, ptr %arrayidx88, align 4
  %and90 = lshr i32 %51, 12
  %shr91 = and i32 %and90, 63
  %arrayidx92 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 7
  %53 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shr91, ptr %arrayidx92, align 4
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %and94 = lshr i32 %55, 3
  %shr95 = and i32 %and94, 63
  %arrayidx96 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 8
  %56 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shr95, ptr %arrayidx96, align 4
  %and98 = lshr i32 %55, 15
  %shr99 = and i32 %and98, 63
  %arrayidx100 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 9
  %57 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr99, ptr %arrayidx100, align 4
  %shr103 = lshr i32 %55, 27
  %arrayidx104 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 10
  %arrayidx105 = getelementptr i32, ptr %call, i32 5
  %58 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx105, align 4
  %and106 = and i32 %59, 1
  %or = or i32 %and106, %shr103
  %60 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or, ptr %arrayidx104, align 4
  %num_sensors110 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %61 = ptrtoint ptr %num_sensors110 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_sensors110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp111188.not = icmp eq i32 %62, 0
  br i1 %cmp111188.not, label %sw.bb58.sw.epilog_crit_edge, label %sw.bb58.for.body112_crit_edge

sw.bb58.for.body112_crit_edge:                    ; preds = %sw.bb58
  br label %for.body112

sw.bb58.sw.epilog_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body112:                                      ; preds = %for.body112.for.body112_crit_edge, %sw.bb58.for.body112_crit_edge
  %i.1189 = phi i32 [ %inc118, %for.body112.for.body112_crit_edge ], [ 0, %sw.bb58.for.body112_crit_edge ]
  %arrayidx113 = getelementptr [11 x i32], ptr %p1, i32 0, i32 %i.1189
  %63 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx113, align 4
  %add114 = add i32 %64, %and60
  %shl115 = shl i32 %add114, 2
  store i32 %shl115, ptr %arrayidx113, align 4
  %inc118 = add nuw i32 %i.1189, 1
  %exitcond193.not = icmp eq i32 %inc118, %62
  br i1 %exitcond193.not, label %for.body112.sw.epilog_crit_edge, label %for.body112.for.body112_crit_edge

for.body112.for.body112_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body112

for.body112.sw.epilog_crit_edge:                  ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body123:                                      ; preds = %for.body123.for.body123_crit_edge, %for.cond120.preheader.for.body123_crit_edge
  %i.2191 = phi i32 [ %inc127, %for.body123.for.body123_crit_edge ], [ 0, %for.cond120.preheader.for.body123_crit_edge ]
  %arrayidx124 = getelementptr [11 x i32], ptr %p1, i32 0, i32 %i.2191
  %65 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 500, ptr %arrayidx124, align 4
  %arrayidx125 = getelementptr [11 x i32], ptr %p2, i32 0, i32 %i.2191
  %66 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 780, ptr %arrayidx125, align 4
  %inc127 = add nuw i32 %i.2191, 1
  %exitcond194.not = icmp eq i32 %inc127, %10
  br i1 %exitcond194.not, label %for.body123.sw.epilog_crit_edge, label %for.body123.for.body123_crit_edge

for.body123.for.body123_crit_edge:                ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body123

for.body123.sw.epilog_crit_edge:                  ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body123.sw.epilog_crit_edge, %for.body112.sw.epilog_crit_edge, %sw.bb58.sw.epilog_crit_edge, %for.cond120.preheader.sw.epilog_crit_edge
  %slope.i = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 1, i32 4
  %67 = ptrtoint ptr %slope.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3313, ptr %slope.i, align 4
  %slope3.i = getelementptr %struct.tsens_priv, ptr %priv, i32 1, i32 5, i32 0, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %slope3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3275, ptr %slope3.i, align 4
  %slope6.i = getelementptr %struct.tsens_priv, ptr %priv, i32 1, i32 6
  %69 = ptrtoint ptr %slope6.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3320, ptr %slope6.i, align 4
  %slope9.i = getelementptr %struct.tsens_priv, ptr %priv, i32 1, i32 6, i32 6
  %70 = ptrtoint ptr %slope9.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3246, ptr %slope9.i, align 4
  %slope12.i = getelementptr %struct.tsens_priv, ptr %priv, i32 1, i32 6, i32 12
  %71 = ptrtoint ptr %slope12.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3279, ptr %slope12.i, align 4
  %slope15.i = getelementptr %struct.tsens_priv, ptr %priv, i32 1, i32 6, i32 18
  %72 = ptrtoint ptr %slope15.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3257, ptr %slope15.i, align 4
  %slope18.i = getelementptr %struct.tsens_priv, ptr %priv, i32 1, i32 6, i32 24
  %73 = ptrtoint ptr %slope18.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3234, ptr %slope18.i, align 4
  %slope21.i = getelementptr %struct.tsens_priv, ptr %priv, i32 1, i32 6, i32 30
  %74 = ptrtoint ptr %slope21.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 3269, ptr %slope21.i, align 4
  %slope24.i = getelementptr %struct.tsens_priv, ptr %priv, i32 1, i32 6, i32 36
  %75 = ptrtoint ptr %slope24.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3255, ptr %slope24.i, align 4
  %slope27.i = getelementptr %struct.tsens_priv, ptr %priv, i32 1, i32 6, i32 42
  %76 = ptrtoint ptr %slope27.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3239, ptr %slope27.i, align 4
  %slope30.i = getelementptr %struct.tsens_priv, ptr %priv, i32 1, i32 6, i32 48
  %77 = ptrtoint ptr %slope30.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3286, ptr %slope30.i, align 4
  %num_sensors.i = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %78 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_sensors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp1.not.i = icmp eq i32 %79, 0
  br i1 %cmp1.not.i, label %sw.epilog.compute_intercept_slope_8976.exit_crit_edge, label %sw.epilog.for.body.i_crit_edge

sw.epilog.for.body.i_crit_edge:                   ; preds = %sw.epilog
  br label %for.body.i

sw.epilog.compute_intercept_slope_8976.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %compute_intercept_slope_8976.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.epilog.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.epilog.for.body.i_crit_edge ]
  %arrayidx31.i = getelementptr i32, ptr %p1, i32 %i.02.i
  %80 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx31.i, align 4
  %mul.i = mul i32 %81, 1000
  %slope34.i = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 13, i32 %i.02.i, i32 4
  %82 = ptrtoint ptr %slope34.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %slope34.i, align 4
  %mul35.neg.i = mul i32 %83, -30
  %sub.i = add i32 %mul35.neg.i, %mul.i
  %offset.i = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 13, i32 %i.02.i, i32 2
  %84 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub.i, ptr %offset.i, align 4
  %inc.i = add nuw i32 %i.02.i, 1
  %85 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_sensors.i, align 4
  %cmp.i183 = icmp ult i32 %inc.i, %86
  br i1 %cmp.i183, label %for.body.i.for.body.i_crit_edge, label %for.body.i.compute_intercept_slope_8976.exit_crit_edge

for.body.i.compute_intercept_slope_8976.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %compute_intercept_slope_8976.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

compute_intercept_slope_8976.exit:                ; preds = %for.body.i.compute_intercept_slope_8976.exit_crit_edge, %sw.epilog.compute_intercept_slope_8976.exit_crit_edge
  tail call void @kfree(ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %compute_intercept_slope_8976.exit, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %compute_intercept_slope_8976.exit ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %p2) #3
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %p1) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @data_tsens_v1, !1, !"data_tsens_v1", i1 false, i1 false}
!1 = !{!"../drivers/thermal/qcom/tsens-v1.c", i32 371, i32 24}
!2 = !{ptr @data_8976, !3, !"data_8976", i1 false, i1 false}
!3 = !{!"../drivers/thermal/qcom/tsens-v1.c", i32 384, i32 24}
!4 = !{ptr @ops_generic_v1, !5, !"ops_generic_v1", i1 false, i1 false}
!5 = !{!"../drivers/thermal/qcom/tsens-v1.c", i32 365, i32 31}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thermal/qcom/tsens-v1.c", i32 177, i32 47}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/qcom/tsens-v1.c", i32 182, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @calibrate_v1.__UNIQUE_ID_ddebug187, !9, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!14 = !{ptr @tsens_v1_feat, !15, !"tsens_v1_feat", i1 false, i1 false}
!15 = !{!"../drivers/thermal/qcom/tsens-v1.c", i32 302, i32 30}
!16 = !{ptr @tsens_v1_regfields, !17, !"tsens_v1_regfields", i1 false, i1 false}
!17 = !{!"../drivers/thermal/qcom/tsens-v1.c", i32 310, i32 31}
!18 = !{ptr @ops_8976, !19, !"ops_8976", i1 false, i1 false}
!19 = !{!"../drivers/thermal/qcom/tsens-v1.c", i32 377, i32 31}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/thermal/qcom/tsens-v1.c", i32 247, i32 2}
!22 = !{ptr @calibrate_8976.__UNIQUE_ID_ddebug188, !21, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2148871407, i64 2148871412, i64 2148871425, i64 2148871469, i64 2148871503, i64 2148871524}
