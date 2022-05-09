; ModuleID = '/llk/IR_all_yes/drivers/thermal/qcom/tsens-8960.c_pt.bc'
source_filename = "../drivers/thermal/qcom/tsens-8960.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tsens_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tsens_features = type { i32, i8, i32 }
%struct.tsens_plat_data = type { i32, ptr, ptr, ptr, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.tsens_priv = type { ptr, i32, ptr, ptr, i32, %struct.spinlock, [320 x ptr], %struct.tsens_context, ptr, ptr, ptr, ptr, ptr, [0 x %struct.tsens_sensor] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tsens_context = type { i32, i32 }
%struct.tsens_sensor = type { ptr, ptr, i32, i32, i32, i32 }

@ops_8960 = internal constant { %struct.tsens_ops, [32 x i8] } { %struct.tsens_ops { ptr @init_common, ptr @calibrate_8960, ptr @get_temp_common, ptr @enable_8960, ptr @disable_8960, ptr @suspend_8960, ptr @resume_8960, ptr null }, [32 x i8] zeroinitializer }, align 32
@tsens_8960_feat = internal global { %struct.tsens_features, [20 x i8] } { %struct.tsens_features { i32 0, i8 64, i32 11 }, [20 x i8] zeroinitializer }, align 32
@data_8960 = dso_local global { %struct.tsens_plat_data, [44 x i8] } { %struct.tsens_plat_data { i32 11, ptr @ops_8960, ptr null, ptr @tsens_8960_feat, ptr @tsens_8960_regfields }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"calib\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"calib_backup\00", [19 x i8] zeroinitializer }, align 32
@tsens_msm8960_slope = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 826, i32 826, i32 804, i32 826, i32 761, i32 782, i32 782, i32 849, i32 782, i32 849, i32 782], [52 x i8] zeroinitializer }, align 32
@tsens_8960_regfields = internal constant { <{ [305 x %struct.reg_field], [15 x %struct.reg_field] }>, [1600 x i8] } { <{ [305 x %struct.reg_field], [15 x %struct.reg_field] }> <{ [305 x %struct.reg_field] [%struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13856, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 13856, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 13856, i32 3, i32 7, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13884, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13864, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13868, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13872, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13876, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13880, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13924, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13928, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13932, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13936, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13940, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13944, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13884, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13856, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13860, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13884, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13856, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13860, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13860, i32 24, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 13860, i32 16, i32 23, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13884, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 13884, i32 3, i32 3, i32 0, i32 0 }], [15 x %struct.reg_field] zeroinitializer }>, [1600 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [9 x i8] c"ops_8960\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 259, i32 31 }
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"tsens_8960_feat\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 269, i32 30 }
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"data_8960\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 277, i32 24 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 184, i32 32 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 186, i32 33 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"tsens_msm8960_slope\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 49, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"tsens_8960_regfields\00", align 1
@___asan_gen_.22 = private constant [37 x i8] c"../drivers/thermal/qcom/tsens-8960.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 202, i32 31 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @ops_8960, ptr @tsens_8960_feat, ptr @data_8960, ptr @.str, ptr @.str.1, ptr @tsens_msm8960_slope, ptr @tsens_8960_regfields], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_8960 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_8960_feat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_8960 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_msm8960_slope to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsens_8960_regfields to i32), i32 6400, i32 8000, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_common(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calibrate_8960(ptr noundef %priv) #1 align 64 {
entry:
  %p1 = alloca [11 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %p1) #3
  %0 = call ptr @memset(ptr %p1, i32 255, i32 44)
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %call = tail call ptr @qfprom_read(ptr noundef %2, ptr noundef nonnull @.str) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call3 = tail call ptr @qfprom_read(ptr noundef %4, ptr noundef nonnull @.str.1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi ptr [ %call3, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %cmp.i26 = icmp ugt ptr %data.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp27.not = icmp eq i32 %6, 0
  br i1 %cmp27.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %data.0 to i32
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data.0, i32 %i.028
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %arrayidx8 = getelementptr [11 x i32], ptr %p1, i32 0, i32 %i.028
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr [11 x i32], ptr @tsens_msm8960_slope, i32 0, i32 %i.028
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  %slope = getelementptr %struct.tsens_priv, ptr %priv, i32 0, i32 13, i32 %i.028, i32 4
  %13 = ptrtoint ptr %slope to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %slope, align 4
  %inc = add nuw i32 %i.028, 1
  %14 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sensors, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @compute_intercept_slope(ptr noundef %priv, ptr noundef nonnull %p1, ptr noundef null, i32 noundef 1) #3
  call void @kfree(ptr noundef %data.0) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then5
  %retval.0 = phi i32 [ %7, %if.then5 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %p1) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_temp_common(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_8960(ptr nocapture noundef readonly %priv, i32 noundef %id) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !23
  %tm_map = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %tm_map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tm_map, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 13856, ptr noundef nonnull %reg) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %id)
  %cmp = icmp sgt i32 %id, 5
  %shl.op = shl i32 8, %id
  %shl3 = select i1 %cmp, i32 15872, i32 %shl.op
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, %shl3
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shl3)
  %cmp4 = icmp eq i32 %and, %shl3
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %tm_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tm_map, align 4
  %or = or i32 %4, 2
  %call8 = call i32 @regmap_write(ptr noundef %6, i32 noundef 13856, i32 noundef %or) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp13 = icmp ugt i32 %10, 1
  %or19.pn.v = select i1 %cmp13, i32 67108865, i32 16777217
  %or12 = or i32 %8, %shl3
  %or19.pn = or i32 %or12, %or19.pn.v
  %storemerge = or i32 %or19.pn, 262144
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %reg, align 4
  %12 = ptrtoint ptr %tm_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tm_map, align 4
  %call23 = call i32 @regmap_write(ptr noundef %13, i32 noundef 13856, i32 noundef %storemerge) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ %call23, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @disable_8960(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  %reg_cntl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_cntl) #3
  %0 = ptrtoint ptr %reg_cntl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_cntl, align 4, !annotation !23
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_sensors, align 4
  %tm_map = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %tm_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tm_map, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 13856, ptr noundef nonnull %reg_cntl) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub1 = sub i32 32, %2
  %shr = lshr i32 -1, %sub1
  %shl = shl i32 %shr, 3
  %neg = xor i32 %shl, -2
  %5 = ptrtoint ptr %reg_cntl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_cntl, align 4
  %and2 = and i32 %6, %neg
  %7 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp ugt i32 %8, 1
  %storemerge.v = select i1 %cmp, i32 -67108866, i32 -16777218
  %storemerge = and i32 %storemerge.v, %and2
  %9 = ptrtoint ptr %reg_cntl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge, ptr %reg_cntl, align 4
  %10 = ptrtoint ptr %tm_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tm_map, align 4
  %call9 = call i32 @regmap_write(ptr noundef %11, i32 noundef 13856, i32 noundef %storemerge) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_cntl) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @suspend_8960(ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_map = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %tm_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tm_map, align 4
  %ctx = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 7
  %call = tail call i32 @regmap_read(ptr noundef %1, i32 noundef 13860, ptr noundef %ctx) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %control = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 7, i32 1
  %call2 = tail call i32 @regmap_read(ptr noundef %1, i32 noundef 13856, ptr noundef %control) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  %. = select i1 %cmp, i32 67108865, i32 16777217
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 13856, i32 noundef %., i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resume_8960(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_map = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %tm_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tm_map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 13856, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_sensors = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 13888, i32 noundef 15, i32 noundef 155, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool3.not = icmp eq i32 %call.i30, 0
  br i1 %tobool3.not, label %if.then1.if.end6_crit_edge, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.end6:                                          ; preds = %if.then1.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %ctx = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 13860, i32 noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %control = getelementptr inbounds %struct.tsens_priv, ptr %priv, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 13856, i32 noundef %7) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i30, %if.then1.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call12, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qfprom_read(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @compute_intercept_slope(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @data_8960, !1, !"data_8960", i1 false, i1 false}
!1 = !{!"../drivers/thermal/qcom/tsens-8960.c", i32 277, i32 24}
!2 = !{ptr @ops_8960, !3, !"ops_8960", i1 false, i1 false}
!3 = !{!"../drivers/thermal/qcom/tsens-8960.c", i32 259, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/thermal/qcom/tsens-8960.c", i32 184, i32 32}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thermal/qcom/tsens-8960.c", i32 186, i32 33}
!8 = !{ptr @tsens_msm8960_slope, !9, !"tsens_msm8960_slope", i1 false, i1 false}
!9 = !{!"../drivers/thermal/qcom/tsens-8960.c", i32 49, i32 12}
!10 = !{ptr @tsens_8960_feat, !11, !"tsens_8960_feat", i1 false, i1 false}
!11 = !{!"../drivers/thermal/qcom/tsens-8960.c", i32 269, i32 30}
!12 = !{ptr @tsens_8960_regfields, !13, !"tsens_8960_regfields", i1 false, i1 false}
!13 = !{!"../drivers/thermal/qcom/tsens-8960.c", i32 202, i32 31}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
