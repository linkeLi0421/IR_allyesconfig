; ModuleID = '/llk/IR_all_yes/drivers/thermal/qcom/tsens-v0_1.c_pt.bc'
source_filename = "../drivers/thermal/qcom/tsens-v0_1.c"
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

@ops_8916 = internal constant { %struct.tsens_ops, [32 x i8] } { %struct.tsens_ops { ptr @init_common, ptr @calibrate_8916, ptr @get_temp_common, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@tsens_v0_1_feat = internal global { %struct.tsens_features, [20 x i8] } { %struct.tsens_features { i32 1, i8 96, i32 11 }, [20 x i8] zeroinitializer }, align 32
@tsens_v0_1_regfields = internal constant { [320 x %struct.reg_field], [1600 x i8] } { [320 x %struct.reg_field] [%struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 0, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 92, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 48, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 52, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 56, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 60, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 64, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 68, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 48, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 52, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 56, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 60, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 64, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 68, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 4, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 24, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 4, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 24, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 48, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 52, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 56, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 60, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 64, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 68, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 4, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 24, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 4, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 24, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 10, i32 19, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 48, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 52, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 56, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 60, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 64, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 68, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 48, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 52, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 56, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 60, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 64, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 68, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 72, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 76, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [1600 x i8] zeroinitializer }, align 32
@data_8916 = dso_local global { %struct.tsens_plat_data, [44 x i8] } { %struct.tsens_plat_data { i32 5, ptr @ops_8916, ptr @.compoundliteral, ptr @tsens_v0_1_feat, ptr @tsens_v0_1_regfields }, [44 x i8] zeroinitializer }, align 32
@ops_8939 = internal constant { %struct.tsens_ops, [32 x i8] } { %struct.tsens_ops { ptr @init_common, ptr @calibrate_8939, ptr @get_temp_common, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], [56 x i8] zeroinitializer }, align 32
@data_8939 = dso_local global { %struct.tsens_plat_data, [44 x i8] } { %struct.tsens_plat_data { i32 10, ptr @ops_8939, ptr @.compoundliteral.1, ptr @tsens_v0_1_feat, ptr @tsens_v0_1_regfields }, [44 x i8] zeroinitializer }, align 32
@ops_8974 = internal constant { %struct.tsens_ops, [32 x i8] } { %struct.tsens_ops { ptr @init_common, ptr @calibrate_8974, ptr @get_temp_common, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@data_8974 = dso_local global { %struct.tsens_plat_data, [44 x i8] } { %struct.tsens_plat_data { i32 11, ptr @ops_8974, ptr null, ptr @tsens_v0_1_feat, ptr @tsens_v0_1_regfields }, [44 x i8] zeroinitializer }, align 32
@ops_9607 = internal constant { %struct.tsens_ops, [32 x i8] } { %struct.tsens_ops { ptr @init_common, ptr @calibrate_9607, ptr @get_temp_common, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], [44 x i8] zeroinitializer }, align 32
@data_9607 = dso_local global { %struct.tsens_plat_data, [44 x i8] } { %struct.tsens_plat_data { i32 5, ptr @ops_9607, ptr @.compoundliteral.2, ptr @tsens_v0_1_feat, ptr @tsens_v0_1_regfields }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"calib\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"calib_sel\00", [22 x i8] zeroinitializer }, align 32
@calibrate_8916.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_tsens\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"calibrate_8916\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/thermal/qcom/tsens-v0_1.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"calibration mode is %d\0A\00", [40 x i8] zeroinitializer }, align 32
@calibrate_8939.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.7, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"calibrate_8939\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"calib_backup\00", [19 x i8] zeroinitializer }, align 32
@calibrate_9607.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.7, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"calibrate_9607\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"ops_8916\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 583, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"tsens_v0_1_feat\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 539, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"tsens_v0_1_regfields\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 547, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"data_8916\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 589, i32 24 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"ops_8939\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 598, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"data_8939\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 604, i32 24 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"ops_8974\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 613, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"data_8974\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 619, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant [9 x i8] c"ops_9607\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 626, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"data_9607\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 632, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 233, i32 47 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 237, i32 46 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 244, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 303, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 364, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [37 x i8] c"../drivers/thermal/qcom/tsens-v0_1.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 500, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @ops_8916, ptr @.compoundliteral, ptr @tsens_v0_1_feat, ptr @tsens_v0_1_regfields, ptr @data_8916, ptr @ops_8939, ptr @.compoundliteral.1, ptr @data_8939, ptr @ops_8974, ptr @data_8974, ptr @ops_9607, ptr @.compoundliteral.2, ptr @data_9607, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_8916 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_v0_1_feat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_v0_1_regfields to i32), i32 6400, i32 8000, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_8916 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_8939 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_8939 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_8974 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_8974 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_9607 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_9607 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_common(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibrate_8916(ptr noundef %priv) #1 align 64 {
entry:
  %p1 = alloca [5 x i32], align 4
  %p2 = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %p1) #3
  %0 = getelementptr inbounds [5 x i32], ptr %p1, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i32], ptr %p1, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i32], ptr %p1, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i32], ptr %p1, i32 0, i32 4
  %4 = call ptr @memset(ptr %p1, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %p2) #3
  %5 = getelementptr inbounds [5 x i32], ptr %p2, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i32], ptr %p2, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i32], ptr %p2, i32 0, i32 3
  %8 = getelementptr inbounds [5 x i32], ptr %p2, i32 0, i32 4
  %9 = call ptr @memset(ptr %p2, i32 255, i32 20)
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %call = tail call ptr @qfprom_read(ptr noundef %11, ptr noundef nonnull @.str) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call4 = tail call ptr @qfprom_read(ptr noundef %14, ptr noundef nonnull @.str.3) #3
  %cmp.i128 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree(ptr noundef %call) #3
  %15 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %16 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call4, align 4
  %shr = lshr i32 %17, 29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calibrate_8916.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calibrate_8916, %if.then12)) #3
          to label %do.end [label %if.then12], !srcloc !47

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calibrate_8916.__UNIQUE_ID_ddebug187, ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %shr) #3
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end8
  %20 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %for.cond74.preheader [
    i32 3, label %sw.bb
    i32 2, label %do.end.sw.bb40_crit_edge
  ]

do.end.sw.bb40_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb40

for.cond74.preheader:                             ; preds = %do.end
  %num_sensors75 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %21 = ptrtoint ptr %num_sensors75 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_sensors75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp76135.not = icmp eq i32 %22, 0
  br i1 %cmp76135.not, label %for.cond74.preheader.sw.epilog_crit_edge, label %for.cond74.preheader.for.body77_crit_edge

for.cond74.preheader.for.body77_crit_edge:        ; preds = %for.cond74.preheader
  br label %for.body77

for.cond74.preheader.sw.epilog_crit_edge:         ; preds = %for.cond74.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %arrayidx15 = getelementptr i32, ptr %call, i32 1
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15, align 4
  %shr17 = lshr i32 %24, 25
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call, align 4
  %and19 = lshr i32 %26, 12
  %shr20 = and i32 %and19, 31
  %27 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr20, ptr %p2, align 4
  %28 = load i32, ptr %call, align 4
  %and23 = lshr i32 %28, 22
  %shr24 = and i32 %and23, 31
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr24, ptr %5, align 4
  %30 = load i32, ptr %arrayidx15, align 4
  %and27 = and i32 %30, 31
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and27, ptr %6, align 4
  %32 = load i32, ptr %arrayidx15, align 4
  %and31 = lshr i32 %32, 10
  %shr32 = and i32 %and31, 31
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr32, ptr %7, align 4
  %34 = load i32, ptr %arrayidx15, align 4
  %and35 = lshr i32 %34, 20
  %shr36 = and i32 %and35, 31
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr36, ptr %8, align 4
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %36 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp131.not = icmp eq i32 %37, 0
  br i1 %cmp131.not, label %sw.bb.sw.bb40_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.bb40_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %i.0132 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %arrayidx38 = getelementptr [5 x i32], ptr %p2, i32 0, i32 %i.0132
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx38, align 4
  %add = add i32 %39, %shr17
  %shl = shl i32 %add, 3
  store i32 %shl, ptr %arrayidx38, align 4
  %inc = add nuw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %37
  br i1 %exitcond.not, label %for.body.sw.bb40_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.sw.bb40_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb40

sw.bb40:                                          ; preds = %for.body.sw.bb40_crit_edge, %sw.bb.sw.bb40_crit_edge, %do.end.sw.bb40_crit_edge
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call, align 4
  %and42 = and i32 %41, 127
  %and44 = lshr i32 %41, 7
  %shr45 = and i32 %and44, 31
  %42 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr45, ptr %p1, align 4
  %43 = load i32, ptr %call, align 4
  %and48 = lshr i32 %43, 17
  %shr49 = and i32 %and48, 31
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr49, ptr %0, align 4
  %45 = load i32, ptr %call, align 4
  %shr53 = lshr i32 %45, 27
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr53, ptr %1, align 4
  %arrayidx55 = getelementptr i32, ptr %call, i32 1
  %47 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx55, align 4
  %and56 = lshr i32 %48, 5
  %shr57 = and i32 %and56, 31
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr57, ptr %2, align 4
  %50 = load i32, ptr %arrayidx55, align 4
  %and60 = lshr i32 %50, 15
  %shr61 = and i32 %and60, 31
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr61, ptr %3, align 4
  %num_sensors64 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %52 = ptrtoint ptr %num_sensors64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_sensors64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp65133.not = icmp eq i32 %53, 0
  br i1 %cmp65133.not, label %sw.bb40.sw.epilog_crit_edge, label %sw.bb40.for.body66_crit_edge

sw.bb40.for.body66_crit_edge:                     ; preds = %sw.bb40
  br label %for.body66

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %sw.bb40.for.body66_crit_edge
  %i.1134 = phi i32 [ %inc72, %for.body66.for.body66_crit_edge ], [ 0, %sw.bb40.for.body66_crit_edge ]
  %arrayidx67 = getelementptr [5 x i32], ptr %p1, i32 0, i32 %i.1134
  %54 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx67, align 4
  %add68 = add i32 %55, %and42
  %shl69 = shl i32 %add68, 3
  store i32 %shl69, ptr %arrayidx67, align 4
  %inc72 = add nuw i32 %i.1134, 1
  %exitcond138.not = icmp eq i32 %inc72, %53
  br i1 %exitcond138.not, label %for.body66.sw.epilog_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body66

for.body66.sw.epilog_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body77:                                       ; preds = %for.body77.for.body77_crit_edge, %for.cond74.preheader.for.body77_crit_edge
  %i.2136 = phi i32 [ %inc81, %for.body77.for.body77_crit_edge ], [ 0, %for.cond74.preheader.for.body77_crit_edge ]
  %arrayidx78 = getelementptr [5 x i32], ptr %p1, i32 0, i32 %i.2136
  %56 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 500, ptr %arrayidx78, align 4
  %arrayidx79 = getelementptr [5 x i32], ptr %p2, i32 0, i32 %i.2136
  %57 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 780, ptr %arrayidx79, align 4
  %inc81 = add nuw i32 %i.2136, 1
  %exitcond139.not = icmp eq i32 %inc81, %22
  br i1 %exitcond139.not, label %for.body77.sw.epilog_crit_edge, label %for.body77.for.body77_crit_edge

for.body77.for.body77_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body77

for.body77.sw.epilog_crit_edge:                   ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body77.sw.epilog_crit_edge, %for.body66.sw.epilog_crit_edge, %sw.bb40.sw.epilog_crit_edge, %for.cond74.preheader.sw.epilog_crit_edge
  call void @compute_intercept_slope(ptr noundef %priv, ptr noundef nonnull %p1, ptr noundef nonnull %p2, i32 noundef %shr) #3
  call void @kfree(ptr noundef %call) #3
  call void @kfree(ptr noundef %call4) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then6, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ %15, %if.then6 ], [ 0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %p2) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %p1) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_temp_common(ptr noundef, ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qfprom_read(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @compute_intercept_slope(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibrate_8939(ptr noundef %priv) #1 align 64 {
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
  %arrayidx = getelementptr i32, ptr %call, i32 12
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr i32, ptr %call, i32 13
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 4
  %arrayidx8 = getelementptr i32, ptr %call, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr i32, ptr %call, i32 22
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr i32, ptr %call, i32 21
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12, align 4
  %and = and i32 %6, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calibrate_8939.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calibrate_8939, %if.then18)) #3
          to label %do.end [label %if.then18], !srcloc !47

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calibrate_8939.__UNIQUE_ID_ddebug188, ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef %and) #3
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.end
  %19 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and, label %for.cond132.preheader [
    i32 3, label %sw.bb
    i32 2, label %do.end.sw.bb71_crit_edge
  ]

do.end.sw.bb71_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb71

for.cond132.preheader:                            ; preds = %do.end
  %num_sensors133 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %num_sensors133 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_sensors133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp134200.not = icmp eq i32 %21, 0
  br i1 %cmp134200.not, label %for.cond132.preheader.sw.epilog_crit_edge, label %for.cond132.preheader.for.body135_crit_edge

for.cond132.preheader.for.body135_crit_edge:      ; preds = %for.cond132.preheader
  br label %for.body135

for.cond132.preheader.sw.epilog_crit_edge:        ; preds = %for.cond132.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %shr23 = lshr i32 %12, 24
  %and25 = lshr i32 %6, 9
  %shr26 = and i32 %and25, 63
  %22 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr26, ptr %p2, align 4
  %and29 = lshr i32 %6, 21
  %shr30 = and i32 %and29, 63
  %arrayidx31 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr30, ptr %arrayidx31, align 4
  %and33 = lshr i32 %8, 1
  %shr34 = and i32 %and33, 63
  %arrayidx35 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr34, ptr %arrayidx35, align 4
  %and37 = lshr i32 %8, 13
  %shr38 = and i32 %and37, 63
  %arrayidx39 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr38, ptr %arrayidx39, align 4
  %and41 = lshr i32 %8, 25
  %shr42 = and i32 %and41, 63
  %arrayidx43 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr42, ptr %arrayidx43, align 4
  %and45 = lshr i32 %10, 14
  %shr46 = and i32 %and45, 63
  %arrayidx47 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr46, ptr %arrayidx47, align 4
  %shr50 = lshr i32 %10, 26
  %arrayidx51 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 6
  %28 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr50, ptr %arrayidx51, align 4
  %and53 = lshr i32 %12, 6
  %shr54 = and i32 %and53, 63
  %arrayidx55 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 7
  %29 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr54, ptr %arrayidx55, align 4
  %and57 = lshr i32 %12, 18
  %shr58 = and i32 %and57, 63
  %arrayidx59 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 8
  %30 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr58, ptr %arrayidx59, align 4
  %shr62 = lshr i32 %14, 27
  %arrayidx63 = getelementptr inbounds [10 x i32], ptr %p2, i32 0, i32 9
  %31 = lshr i32 %16, 8
  %shl = and i32 %31, 32
  %or = or i32 %shl, %shr62
  %32 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %arrayidx63, align 4
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %33 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp196.not = icmp eq i32 %34, 0
  br i1 %cmp196.not, label %sw.bb.sw.bb71_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.bb71_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb71

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %i.0197 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %arrayidx68 = getelementptr [10 x i32], ptr %p2, i32 0, i32 %i.0197
  %35 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx68, align 4
  %add = add i32 %36, %shr23
  %shl69 = shl i32 %add, 2
  store i32 %shl69, ptr %arrayidx68, align 4
  %inc = add nuw i32 %i.0197, 1
  %exitcond.not = icmp eq i32 %inc, %34
  br i1 %exitcond.not, label %for.body.sw.bb71_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.sw.bb71_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb71

sw.bb71:                                          ; preds = %for.body.sw.bb71_crit_edge, %sw.bb.sw.bb71_crit_edge, %do.end.sw.bb71_crit_edge
  %and73 = and i32 %10, 255
  %and76 = lshr i32 %6, 3
  %shr77 = and i32 %and76, 63
  %37 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr77, ptr %p1, align 4
  %and80 = lshr i32 %6, 15
  %shr81 = and i32 %and80, 63
  %arrayidx82 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr81, ptr %arrayidx82, align 4
  %shr85 = lshr i32 %6, 27
  %arrayidx86 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 2
  %and88 = shl i32 %8, 5
  %shl90 = and i32 %and88, 32
  %or92 = or i32 %shl90, %shr85
  %39 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or92, ptr %arrayidx86, align 4
  %and94 = lshr i32 %8, 7
  %shr95 = and i32 %and94, 63
  %arrayidx96 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr95, ptr %arrayidx96, align 4
  %and98 = lshr i32 %8, 19
  %shr99 = and i32 %and98, 63
  %arrayidx100 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 4
  %41 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr99, ptr %arrayidx100, align 4
  %and102 = lshr i32 %10, 8
  %shr103 = and i32 %and102, 63
  %arrayidx104 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr103, ptr %arrayidx104, align 4
  %and106 = lshr i32 %10, 20
  %shr107 = and i32 %and106, 63
  %arrayidx108 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 6
  %43 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr107, ptr %arrayidx108, align 4
  %and110 = and i32 %12, 63
  %arrayidx112 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 7
  %44 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and110, ptr %arrayidx112, align 4
  %and114 = lshr i32 %12, 12
  %shr115 = and i32 %and114, 63
  %arrayidx116 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 8
  %45 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr115, ptr %arrayidx116, align 4
  %and118 = lshr i32 %14, 21
  %shr119 = and i32 %and118, 63
  %arrayidx120 = getelementptr inbounds [10 x i32], ptr %p1, i32 0, i32 9
  %46 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr119, ptr %arrayidx120, align 4
  %num_sensors122 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %47 = ptrtoint ptr %num_sensors122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_sensors122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp123198.not = icmp eq i32 %48, 0
  br i1 %cmp123198.not, label %sw.bb71.sw.epilog_crit_edge, label %sw.bb71.for.body124_crit_edge

sw.bb71.for.body124_crit_edge:                    ; preds = %sw.bb71
  br label %for.body124

sw.bb71.sw.epilog_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body124:                                      ; preds = %for.body124.for.body124_crit_edge, %sw.bb71.for.body124_crit_edge
  %i.1199 = phi i32 [ %inc130, %for.body124.for.body124_crit_edge ], [ 0, %sw.bb71.for.body124_crit_edge ]
  %arrayidx125 = getelementptr [10 x i32], ptr %p1, i32 0, i32 %i.1199
  %49 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx125, align 4
  %add126 = add i32 %50, %and73
  %shl127 = shl i32 %add126, 2
  store i32 %shl127, ptr %arrayidx125, align 4
  %inc130 = add nuw i32 %i.1199, 1
  %exitcond203.not = icmp eq i32 %inc130, %48
  br i1 %exitcond203.not, label %for.body124.sw.epilog_crit_edge, label %for.body124.for.body124_crit_edge

for.body124.for.body124_crit_edge:                ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body124

for.body124.sw.epilog_crit_edge:                  ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body135:                                      ; preds = %for.body135.for.body135_crit_edge, %for.cond132.preheader.for.body135_crit_edge
  %i.2201 = phi i32 [ %inc139, %for.body135.for.body135_crit_edge ], [ 0, %for.cond132.preheader.for.body135_crit_edge ]
  %arrayidx136 = getelementptr [10 x i32], ptr %p1, i32 0, i32 %i.2201
  %51 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 500, ptr %arrayidx136, align 4
  %arrayidx137 = getelementptr [10 x i32], ptr %p2, i32 0, i32 %i.2201
  %52 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 780, ptr %arrayidx137, align 4
  %inc139 = add nuw i32 %i.2201, 1
  %exitcond204.not = icmp eq i32 %inc139, %21
  br i1 %exitcond204.not, label %for.body135.sw.epilog_crit_edge, label %for.body135.for.body135_crit_edge

for.body135.for.body135_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body135

for.body135.sw.epilog_crit_edge:                  ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body135.sw.epilog_crit_edge, %for.body124.sw.epilog_crit_edge, %sw.bb71.sw.epilog_crit_edge, %for.cond132.preheader.sw.epilog_crit_edge
  call void @compute_intercept_slope(ptr noundef %priv, ptr noundef nonnull %p1, ptr noundef nonnull %p2, i32 noundef %and) #3
  call void @kfree(ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %p2) #3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %p1) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibrate_8974(ptr noundef %priv) #1 align 64 {
entry:
  %p1 = alloca [11 x i32], align 4
  %p2 = alloca [11 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %p1) #3
  %0 = call ptr @memset(ptr %p1, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %p2) #3
  %1 = call ptr @memset(ptr %p2, i32 255, i32 44)
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
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %call4 = tail call ptr @qfprom_read(ptr noundef %6, ptr noundef nonnull @.str.9) #3
  %cmp.i354 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i354, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree(ptr noundef %call) #3
  %7 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx = getelementptr i32, ptr %call4, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %shr.mask = and i32 %9, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 1610612736
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end8
  %arrayidx10 = getelementptr i32, ptr %call, i32 4
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %shr12 = lshr i32 %11, 30
  %arrayidx13 = getelementptr i32, ptr %call, i32 5
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  %and14 = lshr i32 %13, 28
  %shr15 = and i32 %and14, 4
  %or = or i32 %shr15, %shr12
  %14 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %or, label %if.then9.if.end206_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %if.then9.sw.bb61_crit_edge
    i32 2, label %if.then9.sw.bb61_crit_edge372
  ]

if.then9.sw.bb61_crit_edge372:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb61

if.then9.sw.bb61_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb61

if.then9.if.end206_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end206

sw.bb:                                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx16 = getelementptr i32, ptr %call4, i32 2
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16, align 4
  %and17 = lshr i32 %16, 18
  %shr18 = and i32 %and17, 63
  %shr21 = lshr i32 %16, 26
  %17 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr21, ptr %p2, align 4
  %arrayidx23 = getelementptr i32, ptr %call4, i32 3
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23, align 4
  %and24 = and i32 %19, 63
  %arrayidx25 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and24, ptr %arrayidx25, align 4
  %21 = load i32, ptr %arrayidx23, align 4
  %and27 = lshr i32 %21, 6
  %shr28 = and i32 %and27, 63
  %arrayidx29 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr28, ptr %arrayidx29, align 4
  %23 = load i32, ptr %arrayidx23, align 4
  %and31 = lshr i32 %23, 12
  %shr32 = and i32 %and31, 63
  %arrayidx33 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr32, ptr %arrayidx33, align 4
  %25 = load i32, ptr %arrayidx23, align 4
  %and35 = lshr i32 %25, 18
  %shr36 = and i32 %and35, 63
  %arrayidx37 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr36, ptr %arrayidx37, align 4
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx10, align 4
  %and39 = lshr i32 %28, 24
  %shr40 = and i32 %and39, 63
  %arrayidx41 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr40, ptr %arrayidx41, align 4
  %30 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx13, align 4
  %and43 = and i32 %31, 63
  %arrayidx44 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 6
  %32 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and43, ptr %arrayidx44, align 4
  %33 = load i32, ptr %arrayidx13, align 4
  %and46 = lshr i32 %33, 6
  %shr47 = and i32 %and46, 63
  %arrayidx48 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 7
  %34 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr47, ptr %arrayidx48, align 4
  %35 = load i32, ptr %arrayidx13, align 4
  %and50 = lshr i32 %35, 12
  %shr51 = and i32 %and50, 63
  %arrayidx52 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 8
  %36 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr51, ptr %arrayidx52, align 4
  %37 = load i32, ptr %arrayidx13, align 4
  %and54 = lshr i32 %37, 18
  %shr55 = and i32 %and54, 63
  %arrayidx56 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 9
  %38 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr55, ptr %arrayidx56, align 4
  %39 = load i32, ptr %arrayidx13, align 4
  %and58 = lshr i32 %39, 24
  %shr59 = and i32 %and58, 63
  %arrayidx60 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 10
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr59, ptr %arrayidx60, align 4
  br label %sw.bb61

sw.bb61:                                          ; preds = %sw.bb, %if.then9.sw.bb61_crit_edge, %if.then9.sw.bb61_crit_edge372
  %base2.0 = phi i32 [ 0, %if.then9.sw.bb61_crit_edge ], [ 0, %if.then9.sw.bb61_crit_edge372 ], [ %shr18, %sw.bb ]
  %41 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call4, align 4
  %and65 = lshr i32 %42, 8
  %shr66 = and i32 %and65, 63
  %43 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr66, ptr %p1, align 4
  %44 = load i32, ptr %call4, align 4
  %and69 = lshr i32 %44, 14
  %shr70 = and i32 %and69, 63
  %arrayidx71 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr70, ptr %arrayidx71, align 4
  %46 = load i32, ptr %call4, align 4
  %and73 = lshr i32 %46, 20
  %shr74 = and i32 %and73, 63
  %arrayidx75 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr74, ptr %arrayidx75, align 4
  %48 = load i32, ptr %call4, align 4
  %shr78 = lshr i32 %48, 26
  %arrayidx79 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr78, ptr %arrayidx79, align 4
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  %and81 = and i32 %51, 63
  %arrayidx82 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and81, ptr %arrayidx82, align 4
  %53 = load i32, ptr %arrayidx, align 4
  %and84 = lshr i32 %53, 6
  %shr85 = and i32 %and84, 63
  %arrayidx86 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr85, ptr %arrayidx86, align 4
  %55 = load i32, ptr %arrayidx, align 4
  %and88 = lshr i32 %55, 12
  %shr89 = and i32 %and88, 63
  %arrayidx90 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 6
  %56 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shr89, ptr %arrayidx90, align 4
  %57 = load i32, ptr %arrayidx, align 4
  %and92 = lshr i32 %57, 18
  %shr93 = and i32 %and92, 63
  %arrayidx94 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 7
  %58 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shr93, ptr %arrayidx94, align 4
  %arrayidx95 = getelementptr i32, ptr %call4, i32 2
  %arrayidx98 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 8
  %59 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx98, align 4
  %60 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx95, align 4
  %and100 = lshr i32 %61, 6
  br label %if.end206.sink.split

if.else:                                          ; preds = %if.end8
  %arrayidx107 = getelementptr i32, ptr %call, i32 1
  %62 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx107, align 4
  %shr109 = lshr i32 %63, 30
  %arrayidx110 = getelementptr i32, ptr %call, i32 3
  %64 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx110, align 4
  %and111 = lshr i32 %65, 28
  %shr112 = and i32 %and111, 4
  %or113 = or i32 %shr112, %shr109
  %66 = zext i32 %or113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %or113, label %if.else.if.end206_crit_edge [
    i32 3, label %sw.bb114
    i32 1, label %if.else.sw.bb160_crit_edge
    i32 2, label %if.else.sw.bb160_crit_edge373
  ]

if.else.sw.bb160_crit_edge373:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb160

if.else.sw.bb160_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb160

if.else.if.end206_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end206

sw.bb114:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx115 = getelementptr i32, ptr %call, i32 2
  %67 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx115, align 4
  %and116 = lshr i32 %68, 12
  %shr117 = and i32 %and116, 255
  %and119 = lshr i32 %68, 20
  %shr120 = and i32 %and119, 63
  %69 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shr120, ptr %p2, align 4
  %70 = load i32, ptr %arrayidx115, align 4
  %shr124 = lshr i32 %70, 26
  %arrayidx125 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shr124, ptr %arrayidx125, align 4
  %72 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx110, align 4
  %and127 = and i32 %73, 63
  %arrayidx128 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 2
  %74 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and127, ptr %arrayidx128, align 4
  %75 = load i32, ptr %arrayidx110, align 4
  %and130 = lshr i32 %75, 6
  %shr131 = and i32 %and130, 63
  %arrayidx132 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 3
  %76 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shr131, ptr %arrayidx132, align 4
  %77 = load i32, ptr %arrayidx110, align 4
  %and134 = lshr i32 %77, 12
  %shr135 = and i32 %and134, 63
  %arrayidx136 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 4
  %78 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %shr135, ptr %arrayidx136, align 4
  %79 = load i32, ptr %arrayidx110, align 4
  %and138 = lshr i32 %79, 18
  %shr139 = and i32 %and138, 63
  %arrayidx140 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 5
  %80 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %shr139, ptr %arrayidx140, align 4
  %81 = load i32, ptr %arrayidx110, align 4
  %and142 = lshr i32 %81, 24
  %shr143 = and i32 %and142, 63
  %arrayidx144 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 6
  %82 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shr143, ptr %arrayidx144, align 4
  %arrayidx145 = getelementptr i32, ptr %call, i32 4
  %83 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx145, align 4
  %and146 = and i32 %84, 63
  %arrayidx147 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 7
  %85 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and146, ptr %arrayidx147, align 4
  %86 = load i32, ptr %arrayidx145, align 4
  %and149 = lshr i32 %86, 6
  %shr150 = and i32 %and149, 63
  %arrayidx151 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 8
  %87 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %shr150, ptr %arrayidx151, align 4
  %88 = load i32, ptr %arrayidx145, align 4
  %and153 = lshr i32 %88, 12
  %shr154 = and i32 %and153, 63
  %arrayidx155 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 9
  %89 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %shr154, ptr %arrayidx155, align 4
  %90 = load i32, ptr %arrayidx145, align 4
  %and157 = lshr i32 %90, 18
  %shr158 = and i32 %and157, 63
  %arrayidx159 = getelementptr inbounds [11 x i32], ptr %p2, i32 0, i32 10
  %91 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %shr158, ptr %arrayidx159, align 4
  br label %sw.bb160

sw.bb160:                                         ; preds = %sw.bb114, %if.else.sw.bb160_crit_edge, %if.else.sw.bb160_crit_edge373
  %base2.1 = phi i32 [ 0, %if.else.sw.bb160_crit_edge ], [ 0, %if.else.sw.bb160_crit_edge373 ], [ %shr117, %sw.bb114 ]
  %92 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %call, align 4
  %and164 = lshr i32 %93, 8
  %shr165 = and i32 %and164, 63
  %94 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %shr165, ptr %p1, align 4
  %95 = load i32, ptr %call, align 4
  %and168 = lshr i32 %95, 14
  %shr169 = and i32 %and168, 63
  %arrayidx170 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %shr169, ptr %arrayidx170, align 4
  %97 = load i32, ptr %call, align 4
  %and172 = lshr i32 %97, 20
  %shr173 = and i32 %and172, 63
  %arrayidx174 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 2
  %98 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %shr173, ptr %arrayidx174, align 4
  %99 = load i32, ptr %call, align 4
  %shr177 = lshr i32 %99, 26
  %arrayidx178 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 3
  %100 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %shr177, ptr %arrayidx178, align 4
  %101 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx107, align 4
  %and180 = and i32 %102, 63
  %arrayidx181 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 4
  %103 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and180, ptr %arrayidx181, align 4
  %104 = load i32, ptr %arrayidx107, align 4
  %and183 = lshr i32 %104, 6
  %shr184 = and i32 %and183, 63
  %arrayidx185 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 5
  %105 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %shr184, ptr %arrayidx185, align 4
  %106 = load i32, ptr %arrayidx107, align 4
  %and187 = lshr i32 %106, 12
  %shr188 = and i32 %and187, 63
  %arrayidx189 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 6
  %107 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %shr188, ptr %arrayidx189, align 4
  %108 = load i32, ptr %arrayidx107, align 4
  %and191 = lshr i32 %108, 18
  %shr192 = and i32 %and191, 63
  %arrayidx193 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 7
  %109 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %shr192, ptr %arrayidx193, align 4
  %110 = load i32, ptr %arrayidx107, align 4
  %and195 = lshr i32 %110, 24
  %shr196 = and i32 %and195, 63
  %arrayidx197 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 8
  %111 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %shr196, ptr %arrayidx197, align 4
  %arrayidx198 = getelementptr i32, ptr %call, i32 2
  %112 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx198, align 4
  br label %if.end206.sink.split

if.end206.sink.split:                             ; preds = %sw.bb160, %sw.bb61
  %.sink = phi i32 [ %113, %sw.bb160 ], [ %and100, %sw.bb61 ]
  %arrayidx198.sink = phi ptr [ %arrayidx198, %sw.bb160 ], [ %arrayidx95, %sw.bb61 ]
  %.sink369 = phi i32 [ 6, %sw.bb160 ], [ 12, %sw.bb61 ]
  %base1.0.ph.in = phi i32 [ %93, %sw.bb160 ], [ %42, %sw.bb61 ]
  %base2.2.ph = phi i32 [ %base2.1, %sw.bb160 ], [ %base2.0, %sw.bb61 ]
  %mode.0.ph = phi i32 [ %or113, %sw.bb160 ], [ %or, %sw.bb61 ]
  %base1.0.ph = and i32 %base1.0.ph.in, 255
  %and199 = and i32 %.sink, 63
  %arrayidx200 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 9
  %114 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and199, ptr %arrayidx200, align 4
  %115 = ptrtoint ptr %arrayidx198.sink to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx198.sink, align 4
  %and202 = lshr i32 %116, %.sink369
  %shr203 = and i32 %and202, 63
  %arrayidx204 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 10
  %117 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %shr203, ptr %arrayidx204, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.end206.sink.split, %if.else.if.end206_crit_edge, %if.then9.if.end206_crit_edge
  %base1.0 = phi i32 [ 0, %if.then9.if.end206_crit_edge ], [ 0, %if.else.if.end206_crit_edge ], [ %base1.0.ph, %if.end206.sink.split ]
  %base2.2 = phi i32 [ 0, %if.then9.if.end206_crit_edge ], [ 0, %if.else.if.end206_crit_edge ], [ %base2.2.ph, %if.end206.sink.split ]
  %mode.0 = phi i32 [ %or, %if.then9.if.end206_crit_edge ], [ %or113, %if.else.if.end206_crit_edge ], [ %mode.0.ph, %if.end206.sink.split ]
  %118 = zext i32 %mode.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %mode.0, label %for.cond239.preheader [
    i32 1, label %for.cond.preheader
    i32 3, label %for.cond212.preheader
    i32 2, label %if.end206.sw.bb225_crit_edge
  ]

if.end206.sw.bb225_crit_edge:                     ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb225

for.cond212.preheader:                            ; preds = %if.end206
  %num_sensors213 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %119 = ptrtoint ptr %num_sensors213 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_sensors213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp214356.not = icmp eq i32 %120, 0
  br i1 %cmp214356.not, label %for.cond212.preheader.sw.bb225_crit_edge, label %for.cond212.preheader.for.body215_crit_edge

for.cond212.preheader.for.body215_crit_edge:      ; preds = %for.cond212.preheader
  br label %for.body215

for.cond212.preheader.sw.bb225_crit_edge:         ; preds = %for.cond212.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb225

for.cond.preheader:                               ; preds = %if.end206
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %121 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp208360.not = icmp eq i32 %122, 0
  br i1 %cmp208360.not, label %for.cond.preheader.sw.epilog258_crit_edge, label %for.body.lr.ph

for.cond.preheader.sw.epilog258_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog258

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %shl = shl nuw nsw i32 %base1.0, 2
  %or209 = or i32 %shl, 3
  br label %for.body

for.cond239.preheader:                            ; preds = %if.end206
  %num_sensors240 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %123 = ptrtoint ptr %num_sensors240 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_sensors240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp241362.not = icmp eq i32 %124, 0
  br i1 %cmp241362.not, label %for.cond239.preheader.for.end246_crit_edge, label %for.cond239.preheader.for.body242_crit_edge

for.cond239.preheader.for.body242_crit_edge:      ; preds = %for.cond239.preheader
  br label %for.body242

for.cond239.preheader.for.end246_crit_edge:       ; preds = %for.cond239.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end246

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0361 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx210 = getelementptr [11 x i32], ptr %p1, i32 0, i32 %i.0361
  %125 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx210, align 4
  %add = add i32 %or209, %126
  store i32 %add, ptr %arrayidx210, align 4
  %inc = add nuw i32 %i.0361, 1
  %exitcond366.not = icmp eq i32 %inc, %122
  br i1 %exitcond366.not, label %for.body.sw.epilog258_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.sw.epilog258_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog258

for.body215:                                      ; preds = %for.body215.for.body215_crit_edge, %for.cond212.preheader.for.body215_crit_edge
  %i.1357 = phi i32 [ %inc223, %for.body215.for.body215_crit_edge ], [ 0, %for.cond212.preheader.for.body215_crit_edge ]
  %arrayidx216 = getelementptr [11 x i32], ptr %p2, i32 0, i32 %i.1357
  %127 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx216, align 4
  %add217 = add i32 %128, %base2.2
  %shl219 = shl i32 %add217, 2
  %or221 = or i32 %shl219, 3
  store i32 %or221, ptr %arrayidx216, align 4
  %inc223 = add nuw i32 %i.1357, 1
  %exitcond.not = icmp eq i32 %inc223, %120
  br i1 %exitcond.not, label %for.body215.sw.bb225_crit_edge, label %for.body215.for.body215_crit_edge

for.body215.for.body215_crit_edge:                ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body215

for.body215.sw.bb225_crit_edge:                   ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb225

sw.bb225:                                         ; preds = %for.body215.sw.bb225_crit_edge, %for.cond212.preheader.sw.bb225_crit_edge, %if.end206.sw.bb225_crit_edge
  %num_sensors227 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %129 = ptrtoint ptr %num_sensors227 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_sensors227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp228358.not = icmp eq i32 %130, 0
  br i1 %cmp228358.not, label %sw.bb225.sw.epilog258_crit_edge, label %sw.bb225.for.body229_crit_edge

sw.bb225.for.body229_crit_edge:                   ; preds = %sw.bb225
  br label %for.body229

sw.bb225.sw.epilog258_crit_edge:                  ; preds = %sw.bb225
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog258

for.body229:                                      ; preds = %for.body229.for.body229_crit_edge, %sw.bb225.for.body229_crit_edge
  %i.2359 = phi i32 [ %inc237, %for.body229.for.body229_crit_edge ], [ 0, %sw.bb225.for.body229_crit_edge ]
  %arrayidx230 = getelementptr [11 x i32], ptr %p1, i32 0, i32 %i.2359
  %131 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx230, align 4
  %add231 = add i32 %132, %base1.0
  %shl233 = shl i32 %add231, 2
  %or235 = or i32 %shl233, 3
  store i32 %or235, ptr %arrayidx230, align 4
  %inc237 = add nuw i32 %i.2359, 1
  %exitcond365.not = icmp eq i32 %inc237, %130
  br i1 %exitcond365.not, label %for.body229.sw.epilog258_crit_edge, label %for.body229.for.body229_crit_edge

for.body229.for.body229_crit_edge:                ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body229

for.body229.sw.epilog258_crit_edge:               ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog258

for.body242:                                      ; preds = %for.body242.for.body242_crit_edge, %for.cond239.preheader.for.body242_crit_edge
  %i.3363 = phi i32 [ %inc245, %for.body242.for.body242_crit_edge ], [ 0, %for.cond239.preheader.for.body242_crit_edge ]
  %arrayidx243 = getelementptr [11 x i32], ptr %p2, i32 0, i32 %i.3363
  %133 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 780, ptr %arrayidx243, align 4
  %inc245 = add nuw i32 %i.3363, 1
  %exitcond367.not = icmp eq i32 %inc245, %124
  br i1 %exitcond367.not, label %for.body242.for.end246_crit_edge, label %for.body242.for.body242_crit_edge

for.body242.for.body242_crit_edge:                ; preds = %for.body242
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body242

for.body242.for.end246_crit_edge:                 ; preds = %for.body242
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end246

for.end246:                                       ; preds = %for.body242.for.end246_crit_edge, %for.cond239.preheader.for.end246_crit_edge
  %134 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 502, ptr %p1, align 4
  %arrayidx248 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 509, ptr %arrayidx248, align 4
  %arrayidx249 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 2
  %136 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 503, ptr %arrayidx249, align 4
  %arrayidx250 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 3
  %137 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 509, ptr %arrayidx250, align 4
  %arrayidx251 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 4
  %138 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 505, ptr %arrayidx251, align 4
  %arrayidx252 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 5
  %139 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 509, ptr %arrayidx252, align 4
  %arrayidx253 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 6
  %140 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 507, ptr %arrayidx253, align 4
  %arrayidx254 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 7
  %141 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 510, ptr %arrayidx254, align 4
  %arrayidx255 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 8
  %142 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 508, ptr %arrayidx255, align 4
  %arrayidx256 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 9
  %143 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 509, ptr %arrayidx256, align 4
  %arrayidx257 = getelementptr inbounds [11 x i32], ptr %p1, i32 0, i32 10
  %144 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 508, ptr %arrayidx257, align 4
  br label %sw.epilog258

sw.epilog258:                                     ; preds = %for.end246, %for.body229.sw.epilog258_crit_edge, %sw.bb225.sw.epilog258_crit_edge, %for.body.sw.epilog258_crit_edge, %for.cond.preheader.sw.epilog258_crit_edge
  call void @compute_intercept_slope(ptr noundef %priv, ptr noundef nonnull %p1, ptr noundef nonnull %p2, i32 noundef %mode.0) #3
  call void @kfree(ptr noundef %call) #3
  call void @kfree(ptr noundef %call4) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog258, %if.then6, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %7, %if.then6 ], [ 0, %sw.epilog258 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %p2) #3
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %p1) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibrate_9607(ptr noundef %priv) #1 align 64 {
entry:
  %p1 = alloca [5 x i32], align 4
  %p2 = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %p1) #3
  %0 = getelementptr inbounds [5 x i32], ptr %p1, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i32], ptr %p1, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i32], ptr %p1, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i32], ptr %p1, i32 0, i32 4
  %4 = call ptr @memset(ptr %p1, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %p2) #3
  %5 = getelementptr inbounds [5 x i32], ptr %p2, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i32], ptr %p2, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i32], ptr %p2, i32 0, i32 3
  %8 = getelementptr inbounds [5 x i32], ptr %p2, i32 0, i32 4
  %9 = call ptr @memset(ptr %p2, i32 255, i32 20)
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %call = tail call ptr @qfprom_read(ptr noundef %11, ptr noundef nonnull @.str) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i32, ptr %call, i32 2
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %and = lshr i32 %14, 20
  %shr = and i32 %and, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calibrate_9607.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calibrate_9607, %if.then6)) #3
          to label %do.end [label %if.then6], !srcloc !47

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calibrate_9607.__UNIQUE_ID_ddebug189, ptr noundef %16, ptr noundef nonnull @.str.7, i32 noundef %shr) #3
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %17 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr, label %for.cond68.preheader [
    i32 3, label %sw.bb
    i32 2, label %do.end.sw.bb34_crit_edge
  ]

do.end.sw.bb34_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb34

for.cond68.preheader:                             ; preds = %do.end
  %num_sensors69 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %18 = ptrtoint ptr %num_sensors69 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_sensors69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp70123.not = icmp eq i32 %19, 0
  br i1 %cmp70123.not, label %for.cond68.preheader.sw.epilog_crit_edge, label %for.cond68.preheader.for.body71_crit_edge

for.cond68.preheader.for.body71_crit_edge:        ; preds = %for.cond68.preheader
  br label %for.body71

for.cond68.preheader.sw.epilog_crit_edge:         ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %and10 = lshr i32 %21, 12
  %shr11 = and i32 %and10, 255
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call, align 4
  %and13 = lshr i32 %23, 14
  %shr14 = and i32 %and13, 63
  %24 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr14, ptr %p2, align 4
  %25 = load i32, ptr %call, align 4
  %shr18 = lshr i32 %25, 26
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr18, ptr %5, align 4
  %arrayidx20 = getelementptr i32, ptr %call, i32 1
  %27 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx20, align 4
  %and21 = lshr i32 %28, 6
  %shr22 = and i32 %and21, 63
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr22, ptr %6, align 4
  %30 = load i32, ptr %arrayidx20, align 4
  %and25 = lshr i32 %30, 18
  %shr26 = and i32 %and25, 63
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr26, ptr %7, align 4
  %32 = load i32, ptr %arrayidx, align 4
  %and29 = lshr i32 %32, 6
  %shr30 = and i32 %and29, 63
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr30, ptr %8, align 4
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %34 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp119.not = icmp eq i32 %35, 0
  br i1 %cmp119.not, label %sw.bb.sw.bb34_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.bb34_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb34

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %arrayidx32 = getelementptr [5 x i32], ptr %p2, i32 0, i32 %i.0120
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx32, align 4
  %add = add i32 %37, %shr11
  %shl = shl i32 %add, 2
  store i32 %shl, ptr %arrayidx32, align 4
  %inc = add nuw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, %35
  br i1 %exitcond.not, label %for.body.sw.bb34_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.sw.bb34_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb34

sw.bb34:                                          ; preds = %for.body.sw.bb34_crit_edge, %sw.bb.sw.bb34_crit_edge, %do.end.sw.bb34_crit_edge
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call, align 4
  %and36 = and i32 %39, 255
  %and38 = lshr i32 %39, 8
  %shr39 = and i32 %and38, 63
  %40 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr39, ptr %p1, align 4
  %41 = load i32, ptr %call, align 4
  %and42 = lshr i32 %41, 20
  %shr43 = and i32 %and42, 63
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr43, ptr %0, align 4
  %arrayidx45 = getelementptr i32, ptr %call, i32 1
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx45, align 4
  %and46 = and i32 %44, 63
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and46, ptr %1, align 4
  %46 = load i32, ptr %arrayidx45, align 4
  %and50 = lshr i32 %46, 12
  %shr51 = and i32 %and50, 63
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr51, ptr %2, align 4
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 4
  %and54 = and i32 %49, 63
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and54, ptr %3, align 4
  %num_sensors58 = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %51 = ptrtoint ptr %num_sensors58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_sensors58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp59121.not = icmp eq i32 %52, 0
  br i1 %cmp59121.not, label %sw.bb34.sw.epilog_crit_edge, label %sw.bb34.for.body60_crit_edge

sw.bb34.for.body60_crit_edge:                     ; preds = %sw.bb34
  br label %for.body60

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %sw.bb34.for.body60_crit_edge
  %i.1122 = phi i32 [ %inc66, %for.body60.for.body60_crit_edge ], [ 0, %sw.bb34.for.body60_crit_edge ]
  %arrayidx61 = getelementptr [5 x i32], ptr %p1, i32 0, i32 %i.1122
  %53 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx61, align 4
  %add62 = add i32 %54, %and36
  %shl63 = shl i32 %add62, 2
  store i32 %shl63, ptr %arrayidx61, align 4
  %inc66 = add nuw i32 %i.1122, 1
  %exitcond126.not = icmp eq i32 %inc66, %52
  br i1 %exitcond126.not, label %for.body60.sw.epilog_crit_edge, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body60

for.body60.sw.epilog_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body71:                                       ; preds = %for.body71.for.body71_crit_edge, %for.cond68.preheader.for.body71_crit_edge
  %i.2124 = phi i32 [ %inc75, %for.body71.for.body71_crit_edge ], [ 0, %for.cond68.preheader.for.body71_crit_edge ]
  %arrayidx72 = getelementptr [5 x i32], ptr %p1, i32 0, i32 %i.2124
  %55 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 500, ptr %arrayidx72, align 4
  %arrayidx73 = getelementptr [5 x i32], ptr %p2, i32 0, i32 %i.2124
  %56 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 780, ptr %arrayidx73, align 4
  %inc75 = add nuw i32 %i.2124, 1
  %exitcond127.not = icmp eq i32 %inc75, %19
  br i1 %exitcond127.not, label %for.body71.sw.epilog_crit_edge, label %for.body71.for.body71_crit_edge

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body71

for.body71.sw.epilog_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body71.sw.epilog_crit_edge, %for.body60.sw.epilog_crit_edge, %sw.bb34.sw.epilog_crit_edge, %for.cond68.preheader.sw.epilog_crit_edge
  call void @compute_intercept_slope(ptr noundef %priv, ptr noundef nonnull %p1, ptr noundef nonnull %p2, i32 noundef %shr) #3
  call void @kfree(ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ 0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %p2) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %p1) #3
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @data_8916, !1, !"data_8916", i1 false, i1 false}
!1 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 589, i32 24}
!2 = !{ptr @data_8939, !3, !"data_8939", i1 false, i1 false}
!3 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 604, i32 24}
!4 = !{ptr @data_8974, !5, !"data_8974", i1 false, i1 false}
!5 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 619, i32 24}
!6 = !{ptr @data_9607, !7, !"data_9607", i1 false, i1 false}
!7 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 632, i32 24}
!8 = !{ptr @ops_8916, !9, !"ops_8916", i1 false, i1 false}
!9 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 583, i32 31}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 233, i32 47}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 237, i32 46}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 244, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @calibrate_8916.__UNIQUE_ID_ddebug187, !15, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!20 = !{ptr @tsens_v0_1_feat, !21, !"tsens_v0_1_feat", i1 false, i1 false}
!21 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 539, i32 30}
!22 = !{ptr @tsens_v0_1_regfields, !23, !"tsens_v0_1_regfields", i1 false, i1 false}
!23 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 547, i32 31}
!24 = !{ptr @ops_8939, !25, !"ops_8939", i1 false, i1 false}
!25 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 598, i32 31}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 303, i32 2}
!28 = !{ptr @calibrate_8939.__UNIQUE_ID_ddebug188, !27, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!29 = !{ptr @ops_8974, !30, !"ops_8974", i1 false, i1 false}
!30 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 613, i32 31}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 364, i32 38}
!33 = !{ptr @ops_9607, !34, !"ops_9607", i1 false, i1 false}
!34 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 626, i32 31}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thermal/qcom/tsens-v0_1.c", i32 500, i32 2}
!37 = !{ptr @calibrate_9607.__UNIQUE_ID_ddebug189, !36, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148307300, i64 2148307305, i64 2148307318, i64 2148307362, i64 2148307396, i64 2148307417}
