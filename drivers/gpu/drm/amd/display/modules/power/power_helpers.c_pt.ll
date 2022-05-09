; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/power/power_helpers.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.abm_parameters = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.iram_table_v_2_2 = type <{ i16, [5 x [4 x i8]], [5 x [4 x i8]], [5 x [4 x i8]], [5 x [4 x i8]], [4 x i8], [4 x i8], [4 x i8], [5 x i8], [4 x i8], [4 x i8], i16, [19 x i8], [8 x i16], [8 x i16], [8 x i16], [16 x i16], [16 x i16], i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.abm_config_table = type { [8 x i16], [8 x i16], [8 x i16], [16 x i16], [16 x i16], [5 x i16], i16, [5 x [4 x i8]], [5 x [4 x i8]], [5 x [4 x i8]], [5 x [4 x i8]], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [5 x i8], [3 x i8], [4 x i16], [4 x i16] }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.67, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.68, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.67 = type { i8, [3 x i8] }
%struct.anon.68 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.abm = type { ptr, ptr, i8 }
%struct.abm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmcu = type { ptr, ptr, i32, %struct.dmcu_version, i32, i32, i8 }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dmcu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iram_table_v_2 = type <{ i16, [5 x [4 x i8]], [5 x [4 x i8]], [5 x [4 x i8]], [5 x [4 x i8]], [5 x [4 x i8]], [5 x [4 x i8]], [5 x i8], i8, [8 x i16], [8 x i16], [8 x i16], [16 x i16], [16 x i16], i8, i8, i8, i8, i16, i8, i16, i16, i8, i8, i8, i8, i8 }>

@abm_settings = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @abm_settings_config0, ptr @abm_settings_config1], [24 x i8] zeroinitializer }, align 32
@fill_backlight_transform_table_v_2_2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c\00", [60 x i8] zeroinitializer }, align 32
@abm_settings_config0 = internal constant { [4 x %struct.abm_parameters], [40 x i8] } { [4 x %struct.abm_parameters] [%struct.abm_parameters { i8 -1, i8 -65, i8 32, i8 0, i8 -1, i8 -103, i8 -77, i8 64, i8 -32, i16 -2185, i16 -13108 }, %struct.abm_parameters { i8 -34, i8 -123, i8 32, i8 0, i8 -32, i8 -112, i8 -88, i8 64, i8 -56, i16 -2185, i16 -13108 }, %struct.abm_parameters { i8 -80, i8 80, i8 32, i8 0, i8 -64, i8 -120, i8 120, i8 112, i8 -96, i16 -4370, i16 -26215 }, %struct.abm_parameters { i8 -126, i8 64, i8 32, i8 0, i8 0, i8 -72, i8 -77, i8 112, i8 112, i16 -7373, i16 -19661 }], [40 x i8] zeroinitializer }, align 32
@abm_settings_config1 = internal constant { [4 x %struct.abm_parameters], [40 x i8] } { [4 x %struct.abm_parameters] [%struct.abm_parameters { i8 -16, i8 -39, i8 32, i8 0, i8 0, i8 -1, i8 -77, i8 112, i8 112, i16 -13108, i16 -13108 }, %struct.abm_parameters { i8 -51, i8 -91, i8 32, i8 0, i8 0, i8 -1, i8 -77, i8 112, i8 112, i16 -13108, i16 -13108 }, %struct.abm_parameters { i8 -103, i8 101, i8 32, i8 0, i8 0, i8 -1, i8 -77, i8 112, i8 112, i16 -13108, i16 -13108 }, %struct.abm_parameters { i8 -126, i8 77, i8 32, i8 0, i8 0, i8 -1, i8 -77, i8 112, i8 112, i16 -13108, i16 -13108 }], [40 x i8] zeroinitializer }, align 32
@min_reduction_table_v_2_2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\EB\D4\C0\C0", [19 x i8] zeroinitializer }, align 32
@abm_config = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"\02\05\07\08", [4 x i8] c"\02\05\08\0B", [4 x i8] c"\00\02\04\08", [4 x i8] c"\03\06\0A\0C"], [16 x i8] zeroinitializer }, align 32
@max_reduction_table_v_2_2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\F5\E5\BF\B1\A5\85|eM@2  ", [19 x i8] zeroinitializer }, align 32
@min_reduction_table = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\FF\FA\F0\F0\D9\CD\C0\B1\99\93\80\82f", [19 x i8] zeroinitializer }, align 32
@max_reduction_table = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\F5\E5\D9\CD\B1\A5\A5\80eMMM2", [19 x i8] zeroinitializer }, align 32
@fill_backlight_transform_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 34, i64 35, i64 36]
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"abm_settings\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 105, i32 44 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 270, i32 3 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"abm_settings_config0\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 89, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"abm_settings_config1\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 97, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"min_reduction_table_v_2_2\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 54, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"abm_config\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 67, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant [26 x i8] c"max_reduction_table_v_2_2\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 61, i32 28 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"min_reduction_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 40, i32 28 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"max_reduction_table\00", align 1
@___asan_gen_.26 = private constant [71 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 47, i32 28 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @abm_settings, ptr @.str, ptr @abm_settings_config0, ptr @abm_settings_config1, ptr @min_reduction_table_v_2_2, ptr @abm_config, ptr @max_reduction_table_v_2_2, ptr @min_reduction_table, ptr @max_reduction_table], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_settings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_settings_config0 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_settings_config1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_reduction_table_v_2_2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_reduction_table_v_2_2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_reduction_table to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_reduction_table to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmub_init_abm_config(ptr nocapture noundef readonly %res_pool, [7 x i32] %params.coerce, i32 noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  %ram_table = alloca %struct.iram_table_v_2_2, align 1
  %config = alloca %struct.abm_config_table, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %params.coerce.fca.3.extract = extractvalue [7 x i32] %params.coerce, 3
  %params.coerce.fca.4.extract = extractvalue [7 x i32] %params.coerce, 4
  %params.coerce.fca.6.extract = extractvalue [7 x i32] %params.coerce, 6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ram_table) #4
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %config) #4
  %abm = getelementptr inbounds %struct.resource_pool, ptr %res_pool, i32 0, i32 37
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %params.coerce.fca.2.extract = extractvalue [7 x i32] %params.coerce, 2
  %2 = call ptr @memset(ptr %ram_table, i32 0, i32 256)
  %3 = call ptr @memset(ptr %config, i32 0, i32 248)
  call fastcc void @fill_iram_v_2_3(ptr noundef nonnull %ram_table, [7 x i32] %params.coerce, i1 noundef zeroext false)
  %arrayidx = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %config, align 2
  %arrayidx5 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 0
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx7, align 2
  %arrayidx8 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 0
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 2, i32 0
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx10, align 2
  %arrayidx.1 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %arrayidx.1, align 1
  %arrayidx4.1 = getelementptr inbounds [8 x i16], ptr %config, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx4.1, align 2
  %arrayidx5.1 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arrayidx5.1, align 1
  %arrayidx7.1 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx7.1, align 2
  %arrayidx8.1 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %arrayidx8.1, align 1
  %arrayidx10.1 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx10.1, align 2
  %arrayidx.2 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %arrayidx.2, align 1
  %arrayidx4.2 = getelementptr inbounds [8 x i16], ptr %config, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx4.2, align 2
  %arrayidx5.2 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 2
  %25 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %arrayidx5.2, align 1
  %arrayidx7.2 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx7.2, align 2
  %arrayidx8.2 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 2
  %28 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %arrayidx8.2, align 1
  %arrayidx10.2 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx10.2, align 2
  %arrayidx.3 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 3
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %arrayidx.3, align 1
  %arrayidx4.3 = getelementptr inbounds [8 x i16], ptr %config, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx4.3, align 2
  %arrayidx5.3 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 3
  %34 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %arrayidx5.3, align 1
  %arrayidx7.3 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayidx7.3, align 2
  %arrayidx8.3 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 3
  %37 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %arrayidx8.3, align 1
  %arrayidx10.3 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx10.3, align 2
  %arrayidx.4 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 4
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %arrayidx.4, align 1
  %arrayidx4.4 = getelementptr inbounds [8 x i16], ptr %config, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx4.4, align 2
  %arrayidx5.4 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 4
  %43 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %arrayidx5.4, align 1
  %arrayidx7.4 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx7.4, align 2
  %arrayidx8.4 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 4
  %46 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %arrayidx8.4, align 1
  %arrayidx10.4 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 2, i32 4
  %48 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %arrayidx10.4, align 2
  %arrayidx.5 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 5
  %49 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %arrayidx.5, align 1
  %arrayidx4.5 = getelementptr inbounds [8 x i16], ptr %config, i32 0, i32 5
  %51 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx4.5, align 2
  %arrayidx5.5 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 5
  %52 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %arrayidx5.5, align 1
  %arrayidx7.5 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 1, i32 5
  %54 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx7.5, align 2
  %arrayidx8.5 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 5
  %55 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %arrayidx8.5, align 1
  %arrayidx10.5 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 2, i32 5
  %57 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %arrayidx10.5, align 2
  %arrayidx.6 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 6
  %58 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %arrayidx.6, align 1
  %arrayidx4.6 = getelementptr inbounds [8 x i16], ptr %config, i32 0, i32 6
  %60 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %arrayidx4.6, align 2
  %arrayidx5.6 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 6
  %61 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %arrayidx5.6, align 1
  %arrayidx7.6 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 1, i32 6
  %63 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %arrayidx7.6, align 2
  %arrayidx8.6 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 6
  %64 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %arrayidx8.6, align 1
  %arrayidx10.6 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 2, i32 6
  %66 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %arrayidx10.6, align 2
  %arrayidx.7 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 7
  %67 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %arrayidx.7, align 1
  %arrayidx4.7 = getelementptr inbounds [8 x i16], ptr %config, i32 0, i32 7
  %69 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %arrayidx4.7, align 2
  %arrayidx5.7 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 7
  %70 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %arrayidx5.7, align 1
  %arrayidx7.7 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 1, i32 7
  %72 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %arrayidx7.7, align 2
  %arrayidx8.7 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 7
  %73 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %arrayidx8.7, align 1
  %arrayidx10.7 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 2, i32 7
  %75 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %arrayidx10.7, align 2
  %arrayidx14 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 0
  %76 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 0
  %78 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %arrayidx16, align 2
  %arrayidx17 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 0
  %79 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 0
  %81 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %arrayidx19, align 2
  %arrayidx14.1 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 1
  %82 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %arrayidx14.1, align 1
  %arrayidx16.1 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %arrayidx16.1, align 2
  %arrayidx17.1 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 1
  %85 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %arrayidx17.1, align 1
  %arrayidx19.1 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %arrayidx19.1, align 2
  %arrayidx14.2 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 2
  %88 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %arrayidx14.2, align 1
  %arrayidx16.2 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 2
  %90 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %arrayidx16.2, align 2
  %arrayidx17.2 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 2
  %91 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %arrayidx17.2, align 1
  %arrayidx19.2 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 2
  %93 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %arrayidx19.2, align 2
  %arrayidx14.3 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 3
  %94 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %arrayidx14.3, align 1
  %arrayidx16.3 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 3
  %96 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %arrayidx16.3, align 2
  %arrayidx17.3 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 3
  %97 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %arrayidx17.3, align 1
  %arrayidx19.3 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 3
  %99 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %arrayidx19.3, align 2
  %arrayidx14.4 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 4
  %100 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %arrayidx14.4, align 1
  %arrayidx16.4 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 4
  %102 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %arrayidx16.4, align 2
  %arrayidx17.4 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 4
  %103 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %arrayidx17.4, align 1
  %arrayidx19.4 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 4
  %105 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %arrayidx19.4, align 2
  %arrayidx14.5 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 5
  %106 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %arrayidx14.5, align 1
  %arrayidx16.5 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 5
  %108 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %arrayidx16.5, align 2
  %arrayidx17.5 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 5
  %109 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %arrayidx17.5, align 1
  %arrayidx19.5 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 5
  %111 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %arrayidx19.5, align 2
  %arrayidx14.6 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 6
  %112 = ptrtoint ptr %arrayidx14.6 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %arrayidx14.6, align 1
  %arrayidx16.6 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 6
  %114 = ptrtoint ptr %arrayidx16.6 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %arrayidx16.6, align 2
  %arrayidx17.6 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 6
  %115 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %arrayidx17.6, align 1
  %arrayidx19.6 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 6
  %117 = ptrtoint ptr %arrayidx19.6 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %arrayidx19.6, align 2
  %arrayidx14.7 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 7
  %118 = ptrtoint ptr %arrayidx14.7 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %arrayidx14.7, align 1
  %arrayidx16.7 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 7
  %120 = ptrtoint ptr %arrayidx16.7 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %arrayidx16.7, align 2
  %arrayidx17.7 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 7
  %121 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %arrayidx17.7, align 1
  %arrayidx19.7 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 7
  %123 = ptrtoint ptr %arrayidx19.7 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %arrayidx19.7, align 2
  %arrayidx14.8 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 8
  %124 = ptrtoint ptr %arrayidx14.8 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %125 = load i16, ptr %arrayidx14.8, align 1
  %arrayidx16.8 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 8
  %126 = ptrtoint ptr %arrayidx16.8 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %arrayidx16.8, align 2
  %arrayidx17.8 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 8
  %127 = ptrtoint ptr %arrayidx17.8 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %arrayidx17.8, align 1
  %arrayidx19.8 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 8
  %129 = ptrtoint ptr %arrayidx19.8 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %arrayidx19.8, align 2
  %arrayidx14.9 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 9
  %130 = ptrtoint ptr %arrayidx14.9 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %arrayidx14.9, align 1
  %arrayidx16.9 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 9
  %132 = ptrtoint ptr %arrayidx16.9 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %arrayidx16.9, align 2
  %arrayidx17.9 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 9
  %133 = ptrtoint ptr %arrayidx17.9 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %134 = load i16, ptr %arrayidx17.9, align 1
  %arrayidx19.9 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 9
  %135 = ptrtoint ptr %arrayidx19.9 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %arrayidx19.9, align 2
  %arrayidx14.10 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 10
  %136 = ptrtoint ptr %arrayidx14.10 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %arrayidx14.10, align 1
  %arrayidx16.10 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 10
  %138 = ptrtoint ptr %arrayidx16.10 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %arrayidx16.10, align 2
  %arrayidx17.10 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 10
  %139 = ptrtoint ptr %arrayidx17.10 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %arrayidx17.10, align 1
  %arrayidx19.10 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 10
  %141 = ptrtoint ptr %arrayidx19.10 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %arrayidx19.10, align 2
  %arrayidx14.11 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 11
  %142 = ptrtoint ptr %arrayidx14.11 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %arrayidx14.11, align 1
  %arrayidx16.11 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 11
  %144 = ptrtoint ptr %arrayidx16.11 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %arrayidx16.11, align 2
  %arrayidx17.11 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 11
  %145 = ptrtoint ptr %arrayidx17.11 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %arrayidx17.11, align 1
  %arrayidx19.11 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 11
  %147 = ptrtoint ptr %arrayidx19.11 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %arrayidx19.11, align 2
  %arrayidx14.12 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 12
  %148 = ptrtoint ptr %arrayidx14.12 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %arrayidx14.12, align 1
  %arrayidx16.12 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 12
  %150 = ptrtoint ptr %arrayidx16.12 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %arrayidx16.12, align 2
  %arrayidx17.12 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 12
  %151 = ptrtoint ptr %arrayidx17.12 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 2)
  %152 = load i16, ptr %arrayidx17.12, align 1
  %arrayidx19.12 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 12
  %153 = ptrtoint ptr %arrayidx19.12 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %arrayidx19.12, align 2
  %arrayidx14.13 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 13
  %154 = ptrtoint ptr %arrayidx14.13 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %arrayidx14.13, align 1
  %arrayidx16.13 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 13
  %156 = ptrtoint ptr %arrayidx16.13 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %arrayidx16.13, align 2
  %arrayidx17.13 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 13
  %157 = ptrtoint ptr %arrayidx17.13 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %arrayidx17.13, align 1
  %arrayidx19.13 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 13
  %159 = ptrtoint ptr %arrayidx19.13 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %arrayidx19.13, align 2
  %arrayidx14.14 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 14
  %160 = ptrtoint ptr %arrayidx14.14 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %arrayidx14.14, align 1
  %arrayidx16.14 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 14
  %162 = ptrtoint ptr %arrayidx16.14 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %arrayidx16.14, align 2
  %arrayidx17.14 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 14
  %163 = ptrtoint ptr %arrayidx17.14 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %164 = load i16, ptr %arrayidx17.14, align 1
  %arrayidx19.14 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 14
  %165 = ptrtoint ptr %arrayidx19.14 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %arrayidx19.14, align 2
  %arrayidx14.15 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 15
  %166 = ptrtoint ptr %arrayidx14.15 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 2)
  %167 = load i16, ptr %arrayidx14.15, align 1
  %arrayidx16.15 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 3, i32 15
  %168 = ptrtoint ptr %arrayidx16.15 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %arrayidx16.15, align 2
  %arrayidx17.15 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 15
  %169 = ptrtoint ptr %arrayidx17.15 to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %arrayidx17.15, align 1
  %arrayidx19.15 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 4, i32 15
  %171 = ptrtoint ptr %arrayidx19.15 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %arrayidx19.15, align 2
  %uglygep = getelementptr inbounds i8, ptr %config, i32 224
  %uglygep196 = getelementptr inbounds i8, ptr %ram_table, i32 94
  %172 = call ptr @memcpy(ptr %uglygep, ptr %uglygep196, i32 5)
  %uglygep203 = getelementptr inbounds i8, ptr %config, i32 184
  %uglygep204 = getelementptr inbounds i8, ptr %ram_table, i32 62
  %uglygep201 = getelementptr inbounds i8, ptr %config, i32 164
  %uglygep202 = getelementptr inbounds i8, ptr %ram_table, i32 42
  %uglygep199 = getelementptr inbounds i8, ptr %config, i32 144
  %uglygep200 = getelementptr inbounds i8, ptr %ram_table, i32 22
  %uglygep197 = getelementptr inbounds i8, ptr %config, i32 124
  %uglygep198 = getelementptr inbounds i8, ptr %ram_table, i32 2
  %173 = ptrtoint ptr %uglygep198 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %uglygep198, align 1
  %175 = ptrtoint ptr %uglygep197 to i32
  call void @__asan_storeN_noabort(i32 %175, i32 4)
  store i32 %174, ptr %uglygep197, align 2
  %176 = ptrtoint ptr %uglygep200 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %uglygep200, align 1
  %178 = ptrtoint ptr %uglygep199 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %177, ptr %uglygep199, align 2
  %179 = ptrtoint ptr %uglygep202 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %uglygep202, align 1
  %181 = ptrtoint ptr %uglygep201 to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %180, ptr %uglygep201, align 2
  %182 = ptrtoint ptr %uglygep204 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %uglygep204, align 1
  %184 = ptrtoint ptr %uglygep203 to i32
  call void @__asan_storeN_noabort(i32 %184, i32 4)
  store i32 %183, ptr %uglygep203, align 2
  %uglygep203.1 = getelementptr inbounds i8, ptr %config, i32 188
  %uglygep204.1 = getelementptr inbounds i8, ptr %ram_table, i32 66
  %uglygep201.1 = getelementptr inbounds i8, ptr %config, i32 168
  %uglygep202.1 = getelementptr inbounds i8, ptr %ram_table, i32 46
  %uglygep199.1 = getelementptr inbounds i8, ptr %config, i32 148
  %uglygep200.1 = getelementptr inbounds i8, ptr %ram_table, i32 26
  %uglygep197.1 = getelementptr inbounds i8, ptr %config, i32 128
  %uglygep198.1 = getelementptr inbounds i8, ptr %ram_table, i32 6
  %185 = ptrtoint ptr %uglygep198.1 to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %uglygep198.1, align 1
  %187 = ptrtoint ptr %uglygep197.1 to i32
  call void @__asan_storeN_noabort(i32 %187, i32 4)
  store i32 %186, ptr %uglygep197.1, align 2
  %188 = ptrtoint ptr %uglygep200.1 to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %189 = load i32, ptr %uglygep200.1, align 1
  %190 = ptrtoint ptr %uglygep199.1 to i32
  call void @__asan_storeN_noabort(i32 %190, i32 4)
  store i32 %189, ptr %uglygep199.1, align 2
  %191 = ptrtoint ptr %uglygep202.1 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %uglygep202.1, align 1
  %193 = ptrtoint ptr %uglygep201.1 to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store i32 %192, ptr %uglygep201.1, align 2
  %194 = ptrtoint ptr %uglygep204.1 to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %uglygep204.1, align 1
  %196 = ptrtoint ptr %uglygep203.1 to i32
  call void @__asan_storeN_noabort(i32 %196, i32 4)
  store i32 %195, ptr %uglygep203.1, align 2
  %uglygep203.2 = getelementptr inbounds i8, ptr %config, i32 192
  %uglygep204.2 = getelementptr inbounds i8, ptr %ram_table, i32 70
  %uglygep201.2 = getelementptr inbounds i8, ptr %config, i32 172
  %uglygep202.2 = getelementptr inbounds i8, ptr %ram_table, i32 50
  %uglygep199.2 = getelementptr inbounds i8, ptr %config, i32 152
  %uglygep200.2 = getelementptr inbounds i8, ptr %ram_table, i32 30
  %uglygep197.2 = getelementptr inbounds i8, ptr %config, i32 132
  %uglygep198.2 = getelementptr inbounds i8, ptr %ram_table, i32 10
  %197 = ptrtoint ptr %uglygep198.2 to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %uglygep198.2, align 1
  %199 = ptrtoint ptr %uglygep197.2 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 %198, ptr %uglygep197.2, align 2
  %200 = ptrtoint ptr %uglygep200.2 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %uglygep200.2, align 1
  %202 = ptrtoint ptr %uglygep199.2 to i32
  call void @__asan_storeN_noabort(i32 %202, i32 4)
  store i32 %201, ptr %uglygep199.2, align 2
  %203 = ptrtoint ptr %uglygep202.2 to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %uglygep202.2, align 1
  %205 = ptrtoint ptr %uglygep201.2 to i32
  call void @__asan_storeN_noabort(i32 %205, i32 4)
  store i32 %204, ptr %uglygep201.2, align 2
  %206 = ptrtoint ptr %uglygep204.2 to i32
  call void @__asan_loadN_noabort(i32 %206, i32 4)
  %207 = load i32, ptr %uglygep204.2, align 1
  %208 = ptrtoint ptr %uglygep203.2 to i32
  call void @__asan_storeN_noabort(i32 %208, i32 4)
  store i32 %207, ptr %uglygep203.2, align 2
  %uglygep203.3 = getelementptr inbounds i8, ptr %config, i32 196
  %uglygep204.3 = getelementptr inbounds i8, ptr %ram_table, i32 74
  %uglygep201.3 = getelementptr inbounds i8, ptr %config, i32 176
  %uglygep202.3 = getelementptr inbounds i8, ptr %ram_table, i32 54
  %uglygep199.3 = getelementptr inbounds i8, ptr %config, i32 156
  %uglygep200.3 = getelementptr inbounds i8, ptr %ram_table, i32 34
  %uglygep197.3 = getelementptr inbounds i8, ptr %config, i32 136
  %uglygep198.3 = getelementptr inbounds i8, ptr %ram_table, i32 14
  %209 = ptrtoint ptr %uglygep198.3 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %uglygep198.3, align 1
  %211 = ptrtoint ptr %uglygep197.3 to i32
  call void @__asan_storeN_noabort(i32 %211, i32 4)
  store i32 %210, ptr %uglygep197.3, align 2
  %212 = ptrtoint ptr %uglygep200.3 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %uglygep200.3, align 1
  %214 = ptrtoint ptr %uglygep199.3 to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %213, ptr %uglygep199.3, align 2
  %215 = ptrtoint ptr %uglygep202.3 to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load i32, ptr %uglygep202.3, align 1
  %217 = ptrtoint ptr %uglygep201.3 to i32
  call void @__asan_storeN_noabort(i32 %217, i32 4)
  store i32 %216, ptr %uglygep201.3, align 2
  %218 = ptrtoint ptr %uglygep204.3 to i32
  call void @__asan_loadN_noabort(i32 %218, i32 4)
  %219 = load i32, ptr %uglygep204.3, align 1
  %220 = ptrtoint ptr %uglygep203.3 to i32
  call void @__asan_storeN_noabort(i32 %220, i32 4)
  store i32 %219, ptr %uglygep203.3, align 2
  %uglygep203.4 = getelementptr inbounds i8, ptr %config, i32 200
  %uglygep204.4 = getelementptr inbounds i8, ptr %ram_table, i32 78
  %uglygep201.4 = getelementptr inbounds i8, ptr %config, i32 180
  %uglygep202.4 = getelementptr inbounds i8, ptr %ram_table, i32 58
  %uglygep199.4 = getelementptr inbounds i8, ptr %config, i32 160
  %uglygep200.4 = getelementptr inbounds i8, ptr %ram_table, i32 38
  %uglygep197.4 = getelementptr inbounds i8, ptr %config, i32 140
  %uglygep198.4 = getelementptr inbounds i8, ptr %ram_table, i32 18
  %221 = ptrtoint ptr %uglygep198.4 to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load i32, ptr %uglygep198.4, align 1
  %223 = ptrtoint ptr %uglygep197.4 to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %222, ptr %uglygep197.4, align 2
  %224 = ptrtoint ptr %uglygep200.4 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %uglygep200.4, align 1
  %226 = ptrtoint ptr %uglygep199.4 to i32
  call void @__asan_storeN_noabort(i32 %226, i32 4)
  store i32 %225, ptr %uglygep199.4, align 2
  %227 = ptrtoint ptr %uglygep202.4 to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %uglygep202.4, align 1
  %229 = ptrtoint ptr %uglygep201.4 to i32
  call void @__asan_storeN_noabort(i32 %229, i32 4)
  store i32 %228, ptr %uglygep201.4, align 2
  %230 = ptrtoint ptr %uglygep204.4 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %uglygep204.4, align 1
  %232 = ptrtoint ptr %uglygep203.4 to i32
  call void @__asan_storeN_noabort(i32 %232, i32 4)
  store i32 %231, ptr %uglygep203.4, align 2
  %uglygep209 = getelementptr inbounds i8, ptr %config, i32 204
  %uglygep210 = getelementptr inbounds i8, ptr %ram_table, i32 82
  %233 = ptrtoint ptr %uglygep210 to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %234 = load i32, ptr %uglygep210, align 1
  %235 = ptrtoint ptr %uglygep209 to i32
  call void @__asan_storeN_noabort(i32 %235, i32 4)
  store i32 %234, ptr %uglygep209, align 2
  %uglygep211 = getelementptr inbounds i8, ptr %config, i32 208
  %uglygep212 = getelementptr inbounds i8, ptr %ram_table, i32 86
  %236 = ptrtoint ptr %uglygep212 to i32
  call void @__asan_loadN_noabort(i32 %236, i32 4)
  %237 = load i32, ptr %uglygep212, align 1
  %238 = ptrtoint ptr %uglygep211 to i32
  call void @__asan_storeN_noabort(i32 %238, i32 4)
  store i32 %237, ptr %uglygep211, align 2
  %uglygep213 = getelementptr inbounds i8, ptr %config, i32 212
  %uglygep214 = getelementptr inbounds i8, ptr %ram_table, i32 90
  %239 = ptrtoint ptr %uglygep214 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %240 = load i32, ptr %uglygep214, align 1
  %241 = ptrtoint ptr %uglygep213 to i32
  call void @__asan_storeN_noabort(i32 %241, i32 4)
  store i32 %240, ptr %uglygep213, align 2
  %uglygep215 = getelementptr inbounds i8, ptr %config, i32 216
  %uglygep216 = getelementptr inbounds i8, ptr %ram_table, i32 99
  %242 = ptrtoint ptr %uglygep216 to i32
  call void @__asan_loadN_noabort(i32 %242, i32 4)
  %243 = load i32, ptr %uglygep216, align 1
  %244 = ptrtoint ptr %uglygep215 to i32
  call void @__asan_storeN_noabort(i32 %244, i32 4)
  store i32 %243, ptr %uglygep215, align 2
  %uglygep217 = getelementptr inbounds i8, ptr %config, i32 220
  %uglygep218 = getelementptr inbounds i8, ptr %ram_table, i32 103
  %245 = ptrtoint ptr %uglygep218 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 4)
  %246 = load i32, ptr %uglygep218, align 1
  %247 = ptrtoint ptr %uglygep217 to i32
  call void @__asan_storeN_noabort(i32 %247, i32 4)
  store i32 %246, ptr %uglygep217, align 2
  %248 = and i32 %params.coerce.fca.2.extract, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool.not = icmp eq i32 %248, 0
  br i1 %tobool.not, label %for.cond95.preheader, label %for.cond86.preheader

for.cond86.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %params.coerce.fca.3.extract to i16
  %conv90 = trunc i32 %params.coerce.fca.4.extract to i16
  %arrayidx89 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 18, i32 0
  %249 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %conv, ptr %arrayidx89, align 2
  %arrayidx91 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 19, i32 0
  %250 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %conv90, ptr %arrayidx91, align 2
  %arrayidx89.1 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 18, i32 1
  %251 = ptrtoint ptr %arrayidx89.1 to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %conv, ptr %arrayidx89.1, align 2
  %arrayidx91.1 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 19, i32 1
  %252 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %conv90, ptr %arrayidx91.1, align 2
  %arrayidx89.2 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 18, i32 2
  %253 = ptrtoint ptr %arrayidx89.2 to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %conv, ptr %arrayidx89.2, align 2
  %arrayidx91.2 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 19, i32 2
  %254 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv90, ptr %arrayidx91.2, align 2
  %arrayidx89.3 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 18, i32 3
  %255 = ptrtoint ptr %arrayidx89.3 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv, ptr %arrayidx89.3, align 2
  br label %if.end112

for.cond95.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx99 = getelementptr [2 x ptr], ptr @abm_settings, i32 0, i32 %params.coerce.fca.6.extract
  %256 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx99, align 4
  %blRampReduction101 = getelementptr %struct.abm_parameters, ptr %257, i32 0, i32 9
  %258 = ptrtoint ptr %blRampReduction101 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %blRampReduction101, align 2
  %arrayidx103 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 18, i32 0
  %260 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %259, ptr %arrayidx103, align 2
  %blRampStart106 = getelementptr %struct.abm_parameters, ptr %257, i32 0, i32 10
  %261 = ptrtoint ptr %blRampStart106 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %blRampStart106, align 2
  %arrayidx108 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 19, i32 0
  %263 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %262, ptr %arrayidx108, align 2
  %blRampReduction101.1 = getelementptr %struct.abm_parameters, ptr %257, i32 1, i32 9
  %264 = ptrtoint ptr %blRampReduction101.1 to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %blRampReduction101.1, align 2
  %arrayidx103.1 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 18, i32 1
  %266 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %265, ptr %arrayidx103.1, align 2
  %blRampStart106.1 = getelementptr %struct.abm_parameters, ptr %257, i32 1, i32 10
  %267 = ptrtoint ptr %blRampStart106.1 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %blRampStart106.1, align 2
  %arrayidx108.1 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 19, i32 1
  %269 = ptrtoint ptr %arrayidx108.1 to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %268, ptr %arrayidx108.1, align 2
  %blRampReduction101.2 = getelementptr %struct.abm_parameters, ptr %257, i32 2, i32 9
  %270 = ptrtoint ptr %blRampReduction101.2 to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %blRampReduction101.2, align 2
  %arrayidx103.2 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 18, i32 2
  %272 = ptrtoint ptr %arrayidx103.2 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %271, ptr %arrayidx103.2, align 2
  %blRampStart106.2 = getelementptr %struct.abm_parameters, ptr %257, i32 2, i32 10
  %273 = ptrtoint ptr %blRampStart106.2 to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %blRampStart106.2, align 2
  %arrayidx108.2 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 19, i32 2
  %275 = ptrtoint ptr %arrayidx108.2 to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %274, ptr %arrayidx108.2, align 2
  %blRampReduction101.3 = getelementptr %struct.abm_parameters, ptr %257, i32 3, i32 9
  %276 = ptrtoint ptr %blRampReduction101.3 to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %blRampReduction101.3, align 2
  %arrayidx103.3 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 18, i32 3
  %278 = ptrtoint ptr %arrayidx103.3 to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %277, ptr %arrayidx103.3, align 2
  %blRampStart106.3 = getelementptr %struct.abm_parameters, ptr %257, i32 3, i32 10
  %279 = ptrtoint ptr %blRampStart106.3 to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %blRampStart106.3, align 2
  br label %if.end112

if.end112:                                        ; preds = %for.cond95.preheader, %for.cond86.preheader
  %conv90.sink = phi i16 [ %conv90, %for.cond86.preheader ], [ %280, %for.cond95.preheader ]
  %arrayidx91.3 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 19, i32 3
  %281 = ptrtoint ptr %arrayidx91.3 to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %conv90.sink, ptr %arrayidx91.3, align 2
  %min_abm_backlight = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 11
  %282 = ptrtoint ptr %min_abm_backlight to i32
  call void @__asan_loadN_noabort(i32 %282, i32 2)
  %283 = load i16, ptr %min_abm_backlight, align 1
  %min_abm_backlight113 = getelementptr inbounds %struct.abm_config_table, ptr %config, i32 0, i32 6
  %284 = ptrtoint ptr %min_abm_backlight113 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %283, ptr %min_abm_backlight113, align 2
  %285 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %abm, align 4
  %funcs = getelementptr inbounds %struct.abm, ptr %286, i32 0, i32 1
  %287 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %funcs, align 4
  %init_abm_config = getelementptr inbounds %struct.abm_funcs, ptr %288, i32 0, i32 7
  %289 = ptrtoint ptr %init_abm_config to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %init_abm_config, align 4
  %call = call zeroext i1 %290(ptr noundef %286, ptr noundef nonnull %config, i32 noundef 248, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.end112 ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %config) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ram_table) #4
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_iram_v_2_3(ptr noundef writeonly %ram_table, [7 x i32] %params.coerce, i1 noundef zeroext %big_endian) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %params.coerce.fca.5.extract = extractvalue [7 x i32] %params.coerce, 5
  %params.coerce.fca.6.extract = extractvalue [7 x i32] %params.coerce, 6
  %0 = ptrtoint ptr %ram_table to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 0, ptr %ram_table, align 1
  %conv = trunc i32 %params.coerce.fca.5.extract to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %cond.in = select i1 %big_endian, i16 %conv, i16 %1
  %min_abm_backlight7 = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 11
  %2 = ptrtoint ptr %min_abm_backlight7 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %cond.in, ptr %min_abm_backlight7, align 1
  %arrayidx = getelementptr [2 x ptr], ptr @abm_settings, i32 0, i32 %params.coerce.fca.6.extract
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0306 = phi i32 [ 0, %entry ], [ %inc52, %for.body.for.body_crit_edge ]
  %brightness_gain = getelementptr %struct.abm_parameters, ptr %4, i32 %i.0306, i32 4
  %5 = ptrtoint ptr %brightness_gain to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %brightness_gain, align 2
  %arrayidx10 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 5, i32 %i.0306
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx10, align 1
  %contrast_factor = getelementptr %struct.abm_parameters, ptr %4, i32 %i.0306, i32 5
  %8 = ptrtoint ptr %contrast_factor to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %contrast_factor, align 1
  %arrayidx14 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 6, i32 %i.0306
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx14, align 1
  %deviation_gain = getelementptr %struct.abm_parameters, ptr %4, i32 %i.0306, i32 6
  %11 = ptrtoint ptr %deviation_gain to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %deviation_gain, align 2
  %arrayidx18 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 7, i32 %i.0306
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx18, align 1
  %min_knee = getelementptr %struct.abm_parameters, ptr %4, i32 %i.0306, i32 7
  %14 = ptrtoint ptr %min_knee to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %min_knee, align 1
  %arrayidx22 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 9, i32 %i.0306
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx22, align 1
  %max_knee = getelementptr %struct.abm_parameters, ptr %4, i32 %i.0306, i32 8
  %17 = ptrtoint ptr %max_knee to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_knee, align 2
  %arrayidx26 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 10, i32 %i.0306
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx26, align 1
  %arrayidx32 = getelementptr %struct.abm_parameters, ptr %4, i32 %i.0306
  %max_reduction = getelementptr %struct.abm_parameters, ptr %4, i32 %i.0306, i32 1
  %bright_pos_gain = getelementptr %struct.abm_parameters, ptr %4, i32 %i.0306, i32 2
  %dark_pos_gain = getelementptr %struct.abm_parameters, ptr %4, i32 %i.0306, i32 3
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx32, align 2
  %arrayidx35 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 0, i32 %i.0306
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx35, align 1
  %23 = ptrtoint ptr %max_reduction to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_reduction, align 1
  %arrayidx40 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 0, i32 %i.0306
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx40, align 1
  %26 = ptrtoint ptr %bright_pos_gain to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bright_pos_gain, align 2
  %arrayidx45 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 3, i32 0, i32 %i.0306
  %28 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx45, align 1
  %29 = ptrtoint ptr %dark_pos_gain to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dark_pos_gain, align 1
  %arrayidx50 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 4, i32 0, i32 %i.0306
  %31 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx50, align 1
  %32 = load i8, ptr %arrayidx32, align 2
  %arrayidx35.1 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 1, i32 %i.0306
  %33 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx35.1, align 1
  %34 = load i8, ptr %max_reduction, align 1
  %arrayidx40.1 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 1, i32 %i.0306
  %35 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx40.1, align 1
  %36 = load i8, ptr %bright_pos_gain, align 2
  %arrayidx45.1 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 3, i32 1, i32 %i.0306
  %37 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx45.1, align 1
  %38 = load i8, ptr %dark_pos_gain, align 1
  %arrayidx50.1 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 4, i32 1, i32 %i.0306
  %39 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx50.1, align 1
  %40 = load i8, ptr %arrayidx32, align 2
  %arrayidx35.2 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 2, i32 %i.0306
  %41 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx35.2, align 1
  %42 = load i8, ptr %max_reduction, align 1
  %arrayidx40.2 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 2, i32 %i.0306
  %43 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx40.2, align 1
  %44 = load i8, ptr %bright_pos_gain, align 2
  %arrayidx45.2 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 3, i32 2, i32 %i.0306
  %45 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx45.2, align 1
  %46 = load i8, ptr %dark_pos_gain, align 1
  %arrayidx50.2 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 4, i32 2, i32 %i.0306
  %47 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx50.2, align 1
  %48 = load i8, ptr %arrayidx32, align 2
  %arrayidx35.3 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 3, i32 %i.0306
  %49 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx35.3, align 1
  %50 = load i8, ptr %max_reduction, align 1
  %arrayidx40.3 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 3, i32 %i.0306
  %51 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx40.3, align 1
  %52 = load i8, ptr %bright_pos_gain, align 2
  %arrayidx45.3 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 3, i32 3, i32 %i.0306
  %53 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx45.3, align 1
  %54 = load i8, ptr %dark_pos_gain, align 1
  %arrayidx50.3 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 4, i32 3, i32 %i.0306
  %55 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx50.3, align 1
  %56 = load i8, ptr %arrayidx32, align 2
  %arrayidx35.4 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 4, i32 %i.0306
  %57 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx35.4, align 1
  %58 = load i8, ptr %max_reduction, align 1
  %arrayidx40.4 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 4, i32 %i.0306
  %59 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx40.4, align 1
  %60 = load i8, ptr %bright_pos_gain, align 2
  %arrayidx45.4 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 3, i32 4, i32 %i.0306
  %61 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx45.4, align 1
  %62 = load i8, ptr %dark_pos_gain, align 1
  %arrayidx50.4 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 4, i32 4, i32 %i.0306
  %63 = ptrtoint ptr %arrayidx50.4 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx50.4, align 1
  %inc52 = add nuw nsw i32 %i.0306, 1
  %exitcond.not = icmp eq i32 %inc52, 4
  br i1 %exitcond.not, label %for.end53, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end53:                                        ; preds = %for.body
  %iir_curve = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 8
  %conv66 = select i1 %big_endian, i16 4732, i16 31762
  %crgb_thresh = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13
  %64 = call ptr @memset(ptr %iir_curve, i32 101, i32 5)
  %65 = ptrtoint ptr %crgb_thresh to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %conv66, ptr %crgb_thresh, align 1
  %conv71 = select i1 %big_endian, i16 5403, i16 6933
  %arrayidx73 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 1
  %66 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %conv71, ptr %arrayidx73, align 1
  %conv77 = select i1 %big_endian, i16 6101, i16 -10985
  %arrayidx79 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 2
  %67 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %conv77, ptr %arrayidx79, align 1
  %conv83 = select i1 %big_endian, i16 6742, i16 22042
  %arrayidx85 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 3
  %68 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %conv83, ptr %arrayidx85, align 1
  %conv89 = select i1 %big_endian, i16 7299, i16 -31972
  %arrayidx91 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 4
  %69 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %conv89, ptr %arrayidx91, align 1
  %conv95 = select i1 %big_endian, i16 7794, i16 29214
  %arrayidx97 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 5
  %70 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %conv95, ptr %arrayidx97, align 1
  %conv101 = select i1 %big_endian, i16 8432, i16 -4064
  %arrayidx103 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 6
  %71 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %conv101, ptr %arrayidx103, align 1
  %conv107 = select i1 %big_endian, i16 9003, i16 11043
  %arrayidx109 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 7
  %72 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %conv107, ptr %arrayidx109, align 1
  %conv113 = select i1 %big_endian, i16 10649, i16 -26327
  %crgb_offset = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14
  %73 = ptrtoint ptr %crgb_offset to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %conv113, ptr %crgb_offset, align 1
  %conv118 = select i1 %big_endian, i16 14745, i16 -26311
  %arrayidx120 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 1
  %74 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %conv118, ptr %arrayidx120, align 1
  %conv124 = select i1 %big_endian, i16 18022, i16 26182
  %arrayidx126 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 2
  %75 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %conv124, ptr %arrayidx126, align 1
  %conv130 = select i1 %big_endian, i16 22937, i16 -26279
  %arrayidx132 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 3
  %76 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %conv130, ptr %arrayidx132, align 1
  %conv136 = select i1 %big_endian, i16 25395, i16 13155
  %arrayidx138 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 4
  %77 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %conv136, ptr %arrayidx138, align 1
  %conv142 = select i1 %big_endian, i16 30720, i16 120
  %arrayidx144 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 5
  %78 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %conv142, ptr %arrayidx144, align 1
  %conv148 = select i1 %big_endian, i16 -29696, i16 140
  %arrayidx150 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 6
  %79 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %conv148, ptr %arrayidx150, align 1
  %conv154 = select i1 %big_endian, i16 -24576, i16 160
  %arrayidx156 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 7
  %80 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %conv154, ptr %arrayidx156, align 1
  %conv160 = select i1 %big_endian, i16 13833, i16 2358
  %crgb_slope = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15
  %81 = ptrtoint ptr %crgb_slope to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %conv160, ptr %crgb_slope, align 1
  %conv165 = select i1 %big_endian, i16 11770, i16 -1491
  %arrayidx167 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 1
  %82 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %conv165, ptr %arrayidx167, align 1
  %conv171 = select i1 %big_endian, i16 10218, i16 -5593
  %arrayidx173 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 2
  %83 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %conv171, ptr %arrayidx173, align 1
  %conv177 = select i1 %big_endian, i16 9053, i16 23843
  %arrayidx179 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 3
  %84 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %conv177, ptr %arrayidx179, align 1
  %conv183 = select i1 %big_endian, i16 8258, i16 16928
  %arrayidx185 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 4
  %85 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %conv183, ptr %arrayidx185, align 1
  %conv189 = select i1 %big_endian, i16 7619, i16 -15587
  %arrayidx191 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 5
  %86 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %conv189, ptr %arrayidx191, align 1
  %conv195 = select i1 %big_endian, i16 6938, i16 6683
  %arrayidx197 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 6
  %87 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %conv195, ptr %arrayidx197, align 1
  %conv201 = select i1 %big_endian, i16 6416, i16 4121
  %arrayidx203 = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 7
  %88 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %conv201, ptr %arrayidx203, align 1
  %params.coerce.fca.0.extract.i = extractvalue [7 x i32] %params.coerce, 0
  %89 = inttoptr i32 %params.coerce.fca.0.extract.i to ptr
  %params.coerce.fca.1.extract.i = extractvalue [7 x i32] %params.coerce, 1
  %backlight_thresholds.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16
  %90 = ptrtoint ptr %backlight_thresholds.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 0, ptr %backlight_thresholds.i, align 1
  %91 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %89, align 4
  %conv.i = trunc i32 %92 to i16
  %backlight_offsets.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17
  %93 = ptrtoint ptr %backlight_offsets.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 %conv.i, ptr %backlight_offsets.i, align 1
  %arrayidx4.i = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 15
  %94 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 -1, ptr %arrayidx4.i, align 1
  %sub6.i = add i32 %params.coerce.fca.1.extract.i, -1
  %arrayidx7.i = getelementptr i32, ptr %89, i32 %sub6.i
  %95 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx7.i, align 4
  %conv8.i = trunc i32 %96 to i16
  %arrayidx11.i = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 15
  %97 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 %conv8.i, ptr %arrayidx11.i, align 1
  %cond.v.i = select i1 %big_endian, i32 12, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %do.end61.i.for.body.i_crit_edge, %for.end53
  %add131.i = phi i32 [ 2, %for.end53 ], [ %add.i, %do.end61.i.for.body.i_crit_edge ]
  %i.0130.i = phi i32 [ 1, %for.end53 ], [ %add131.i, %do.end61.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %i.0130.i, %params.coerce.fca.1.extract.i
  %add14.i = add i32 %mul.i, 8
  %div15125.i = lshr i32 %add14.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div15125.i, i32 %params.coerce.fca.1.extract.i)
  %cmp17.not.i = icmp ult i32 %div15125.i, %params.coerce.fca.1.extract.i
  br i1 %cmp17.not.i, label %for.body.i.do.end61.i_crit_edge, label %land.rhs.i

for.body.i.do.end61.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end61.i

land.rhs.i:                                       ; preds = %for.body.i
  %.b128.i = load i1, ptr @fill_backlight_transform_table_v_2_2.__already_done, align 1
  br i1 %.b128.i, label %land.rhs.i.if.then58.i_crit_edge, label %if.then.i, !prof !30

land.rhs.i.if.then58.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @fill_backlight_transform_table_v_2_2.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef null) #4
  br label %if.then58.i

if.then58.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then58.i_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end61.i

do.end61.i:                                       ; preds = %if.then58.i, %for.body.i.do.end61.i_crit_edge
  %cond.i = shl nsw i32 %i.0130.i, %cond.v.i
  %conv76.i = trunc i32 %cond.i to i16
  %arrayidx78.i = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 %i.0130.i
  %98 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 %conv76.i, ptr %arrayidx78.i, align 1
  %arrayidx83.i = getelementptr i32, ptr %89, i32 %div15125.i
  %99 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx83.i, align 4
  %conv84.i = trunc i32 %100 to i16
  %101 = tail call i16 @llvm.bswap.i16(i16 %conv84.i) #4
  %cond92.in.i = select i1 %big_endian, i16 %conv84.i, i16 %101
  %arrayidx95.i = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 %i.0130.i
  %102 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 %cond92.in.i, ptr %arrayidx95.i, align 1
  %add.i = add nuw nsw i32 %add131.i, 1
  %exitcond.not.i = icmp eq i32 %add.i, 16
  br i1 %exitcond.not.i, label %fill_backlight_transform_table_v_2_2.exit, label %do.end61.i.for.body.i_crit_edge

do.end61.i.for.body.i_crit_edge:                  ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

fill_backlight_transform_table_v_2_2.exit:        ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmcu_load_iram(ptr noundef %dmcu, [7 x i32] %params.coerce) local_unnamed_addr #0 align 64 {
entry:
  %ram_table = alloca [256 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ram_table) #4
  %0 = call ptr @memset(ptr %ram_table, i32 255, i32 256)
  %cmp = icmp eq ptr %dmcu, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.dmcu, ptr %dmcu, i32 0, i32 1
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %funcs, align 4
  %is_dmcu_initialized = getelementptr inbounds %struct.dmcu_funcs, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %is_dmcu_initialized to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %is_dmcu_initialized, align 4
  %call = tail call zeroext i1 %4(ptr noundef nonnull %dmcu) #4
  br i1 %call, label %if.end2, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %land.lhs.true
  %5 = call ptr @memset(ptr %ram_table, i32 0, i32 256)
  %abm_version = getelementptr inbounds %struct.dmcu, ptr %dmcu, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %abm_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %abm_version, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.else26 [
    i32 36, label %if.then4
    i32 35, label %if.then10
    i32 34, label %if.then20
  ]

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @fill_iram_v_2_3(ptr noundef nonnull %ram_table, [7 x i32] %params.coerce, i1 noundef zeroext true)
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 4
  %load_iram = getelementptr inbounds %struct.dmcu_funcs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %load_iram to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %load_iram, align 4
  %call6 = call zeroext i1 %12(ptr noundef nonnull %dmcu, i32 noundef 0, ptr noundef nonnull %ram_table, i32 noundef 240) #4
  br label %cleanup

if.then10:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @fill_iram_v_2_3(ptr noundef nonnull %ram_table, [7 x i32] %params.coerce, i1 noundef zeroext true)
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %load_iram13 = getelementptr inbounds %struct.dmcu_funcs, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %load_iram13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %load_iram13, align 4
  %call14 = call zeroext i1 %16(ptr noundef nonnull %dmcu, i32 noundef 0, ptr noundef nonnull %ram_table, i32 noundef 240) #4
  br label %cleanup

if.then20:                                        ; preds = %if.end2
  %params.coerce.fca.5.extract.i = extractvalue [7 x i32] %params.coerce, 5
  %params.coerce.fca.6.extract.i = extractvalue [7 x i32] %params.coerce, 6
  %conv.i = trunc i32 %params.coerce.fca.5.extract.i to i16
  %min_abm_backlight2.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 11
  %17 = ptrtoint ptr %min_abm_backlight2.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %conv.i, ptr %min_abm_backlight2.i, align 1
  %deviation_gain.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 7
  %18 = ptrtoint ptr %deviation_gain.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -77, ptr %deviation_gain.i, align 2
  %arrayidx4.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -88, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -104, ptr %arrayidx6.i, align 2
  %arrayidx8.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 104, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr [4 x [4 x i8]], ptr @abm_config, i32 0, i32 %params.coerce.fca.6.extract.i
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx9.i, align 1
  %idxprom.i = zext i8 %23 to i32
  %arrayidx11.i = getelementptr [13 x i8], ptr @min_reduction_table_v_2_2, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx11.i, align 1
  %min_reduction.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1
  %26 = ptrtoint ptr %min_reduction.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %min_reduction.i, align 2
  %arrayidx19.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %25, ptr %arrayidx19.i, align 2
  %arrayidx26.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %arrayidx26.i, align 2
  %arrayidx33.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %25, ptr %arrayidx33.i, align 2
  %arrayidx40.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %25, ptr %arrayidx40.i, align 2
  %arrayidx45.i = getelementptr [13 x i8], ptr @max_reduction_table_v_2_2, i32 0, i32 %idxprom.i
  %31 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx45.i, align 1
  %max_reduction.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2
  %33 = ptrtoint ptr %max_reduction.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %max_reduction.i, align 2
  %arrayidx53.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %32, ptr %arrayidx53.i, align 2
  %arrayidx60.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %arrayidx60.i, align 2
  %arrayidx67.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %32, ptr %arrayidx67.i, align 2
  %arrayidx74.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %32, ptr %arrayidx74.i, align 2
  %arrayidx77.i = getelementptr [4 x [4 x i8]], ptr @abm_config, i32 0, i32 %params.coerce.fca.6.extract.i, i32 1
  %38 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx77.i, align 1
  %idxprom78.i = zext i8 %39 to i32
  %arrayidx79.i = getelementptr [13 x i8], ptr @min_reduction_table_v_2_2, i32 0, i32 %idxprom78.i
  %40 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx79.i, align 1
  %arrayidx82.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx82.i, align 1
  %arrayidx89.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %41, ptr %arrayidx89.i, align 1
  %arrayidx96.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 2, i32 1
  %44 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %41, ptr %arrayidx96.i, align 1
  %arrayidx103.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 3, i32 1
  %45 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %41, ptr %arrayidx103.i, align 1
  %arrayidx110.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 4, i32 1
  %46 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %41, ptr %arrayidx110.i, align 1
  %arrayidx114.i = getelementptr [13 x i8], ptr @max_reduction_table_v_2_2, i32 0, i32 %idxprom78.i
  %47 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx114.i, align 1
  %arrayidx117.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx117.i, align 1
  %arrayidx124.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 1, i32 1
  %50 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %48, ptr %arrayidx124.i, align 1
  %arrayidx131.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 2, i32 1
  %51 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %arrayidx131.i, align 1
  %arrayidx138.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 3, i32 1
  %52 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %48, ptr %arrayidx138.i, align 1
  %arrayidx145.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 4, i32 1
  %53 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %48, ptr %arrayidx145.i, align 1
  %arrayidx147.i = getelementptr [4 x [4 x i8]], ptr @abm_config, i32 0, i32 %params.coerce.fca.6.extract.i, i32 2
  %54 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx147.i, align 1
  %idxprom148.i = zext i8 %55 to i32
  %arrayidx149.i = getelementptr [13 x i8], ptr @min_reduction_table_v_2_2, i32 0, i32 %idxprom148.i
  %56 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx149.i, align 1
  %arrayidx152.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx152.i, align 2
  %arrayidx159.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %57, ptr %arrayidx159.i, align 2
  %arrayidx166.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 2, i32 2
  %60 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %57, ptr %arrayidx166.i, align 2
  %arrayidx173.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 3, i32 2
  %61 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %57, ptr %arrayidx173.i, align 2
  %arrayidx180.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 4, i32 2
  %62 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %57, ptr %arrayidx180.i, align 2
  %arrayidx184.i = getelementptr [13 x i8], ptr @max_reduction_table_v_2_2, i32 0, i32 %idxprom148.i
  %63 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx184.i, align 1
  %arrayidx187.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx187.i, align 2
  %arrayidx194.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 1, i32 2
  %66 = ptrtoint ptr %arrayidx194.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %64, ptr %arrayidx194.i, align 2
  %arrayidx201.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 2, i32 2
  %67 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %64, ptr %arrayidx201.i, align 2
  %arrayidx208.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 3, i32 2
  %68 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %64, ptr %arrayidx208.i, align 2
  %arrayidx215.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 4, i32 2
  %69 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %64, ptr %arrayidx215.i, align 2
  %arrayidx217.i = getelementptr [4 x [4 x i8]], ptr @abm_config, i32 0, i32 %params.coerce.fca.6.extract.i, i32 3
  %70 = ptrtoint ptr %arrayidx217.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx217.i, align 1
  %idxprom218.i = zext i8 %71 to i32
  %arrayidx219.i = getelementptr [13 x i8], ptr @min_reduction_table_v_2_2, i32 0, i32 %idxprom218.i
  %72 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx219.i, align 1
  %arrayidx222.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 0, i32 3
  %74 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx222.i, align 1
  %arrayidx229.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 1, i32 3
  %75 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %73, ptr %arrayidx229.i, align 1
  %arrayidx236.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 2, i32 3
  %76 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %73, ptr %arrayidx236.i, align 1
  %arrayidx243.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 3, i32 3
  %77 = ptrtoint ptr %arrayidx243.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %73, ptr %arrayidx243.i, align 1
  %arrayidx250.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 1, i32 4, i32 3
  %78 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %73, ptr %arrayidx250.i, align 1
  %arrayidx254.i = getelementptr [13 x i8], ptr @max_reduction_table_v_2_2, i32 0, i32 %idxprom218.i
  %79 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx254.i, align 1
  %arrayidx257.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 0, i32 3
  %81 = ptrtoint ptr %arrayidx257.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx257.i, align 1
  %arrayidx264.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 1, i32 3
  %82 = ptrtoint ptr %arrayidx264.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %80, ptr %arrayidx264.i, align 1
  %arrayidx271.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 2, i32 3
  %83 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %80, ptr %arrayidx271.i, align 1
  %arrayidx278.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 3, i32 3
  %84 = ptrtoint ptr %arrayidx278.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %80, ptr %arrayidx278.i, align 1
  %arrayidx285.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 2, i32 4, i32 3
  %85 = ptrtoint ptr %arrayidx285.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %80, ptr %arrayidx285.i, align 1
  %bright_pos_gain.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 3
  %dark_pos_gain.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 4
  %86 = call ptr @memset(ptr %bright_pos_gain.i, i32 32, i32 20)
  %hybrid_factor.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 5
  %87 = call ptr @memset(ptr %dark_pos_gain.i, i32 0, i32 20)
  %88 = ptrtoint ptr %hybrid_factor.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %hybrid_factor.i, align 2
  %arrayidx406.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %arrayidx406.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %arrayidx406.i, align 1
  %arrayidx408.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 5, i32 2
  %90 = ptrtoint ptr %arrayidx408.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %arrayidx408.i, align 2
  %arrayidx410.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 5, i32 3
  %91 = ptrtoint ptr %arrayidx410.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -64, ptr %arrayidx410.i, align 1
  %contrast_factor.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 6
  %92 = ptrtoint ptr %contrast_factor.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -103, ptr %contrast_factor.i, align 2
  %arrayidx413.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 6, i32 1
  %93 = ptrtoint ptr %arrayidx413.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -103, ptr %arrayidx413.i, align 1
  %arrayidx415.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 6, i32 2
  %94 = ptrtoint ptr %arrayidx415.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -112, ptr %arrayidx415.i, align 2
  %arrayidx417.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 6, i32 3
  %95 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -128, ptr %arrayidx417.i, align 1
  %iir_curve.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 8
  %crgb_thresh.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13
  %96 = call ptr @memset(ptr %iir_curve.i, i32 101, i32 5)
  %97 = ptrtoint ptr %crgb_thresh.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 4732, ptr %crgb_thresh.i, align 2
  %arrayidx429.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 1
  %98 = ptrtoint ptr %arrayidx429.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 5403, ptr %arrayidx429.i, align 2
  %arrayidx431.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 2
  %99 = ptrtoint ptr %arrayidx431.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 6101, ptr %arrayidx431.i, align 2
  %arrayidx433.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 3
  %100 = ptrtoint ptr %arrayidx433.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 6742, ptr %arrayidx433.i, align 2
  %arrayidx435.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 4
  %101 = ptrtoint ptr %arrayidx435.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 7299, ptr %arrayidx435.i, align 2
  %arrayidx437.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 5
  %102 = ptrtoint ptr %arrayidx437.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 7794, ptr %arrayidx437.i, align 2
  %arrayidx439.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 6
  %103 = ptrtoint ptr %arrayidx439.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 8432, ptr %arrayidx439.i, align 2
  %arrayidx441.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 13, i32 7
  %104 = ptrtoint ptr %arrayidx441.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 9003, ptr %arrayidx441.i, align 2
  %crgb_offset.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14
  %105 = ptrtoint ptr %crgb_offset.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 10649, ptr %crgb_offset.i, align 2
  %arrayidx444.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 1
  %106 = ptrtoint ptr %arrayidx444.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 14745, ptr %arrayidx444.i, align 2
  %arrayidx446.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 2
  %107 = ptrtoint ptr %arrayidx446.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 18022, ptr %arrayidx446.i, align 2
  %arrayidx448.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 3
  %108 = ptrtoint ptr %arrayidx448.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 22937, ptr %arrayidx448.i, align 2
  %arrayidx450.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 4
  %109 = ptrtoint ptr %arrayidx450.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 25395, ptr %arrayidx450.i, align 2
  %arrayidx452.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 5
  %110 = ptrtoint ptr %arrayidx452.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 30720, ptr %arrayidx452.i, align 2
  %arrayidx454.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 6
  %111 = ptrtoint ptr %arrayidx454.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -29696, ptr %arrayidx454.i, align 2
  %arrayidx456.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 14, i32 7
  %112 = ptrtoint ptr %arrayidx456.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -24576, ptr %arrayidx456.i, align 2
  %crgb_slope.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15
  %113 = ptrtoint ptr %crgb_slope.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 13833, ptr %crgb_slope.i, align 2
  %arrayidx459.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 1
  %114 = ptrtoint ptr %arrayidx459.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 11770, ptr %arrayidx459.i, align 2
  %arrayidx461.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 2
  %115 = ptrtoint ptr %arrayidx461.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 10218, ptr %arrayidx461.i, align 2
  %arrayidx463.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 3
  %116 = ptrtoint ptr %arrayidx463.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 9053, ptr %arrayidx463.i, align 2
  %arrayidx465.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 4
  %117 = ptrtoint ptr %arrayidx465.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 8258, ptr %arrayidx465.i, align 2
  %arrayidx467.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 5
  %118 = ptrtoint ptr %arrayidx467.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 7619, ptr %arrayidx467.i, align 2
  %arrayidx469.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 6
  %119 = ptrtoint ptr %arrayidx469.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 6938, ptr %arrayidx469.i, align 2
  %arrayidx471.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 15, i32 7
  %120 = ptrtoint ptr %arrayidx471.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 6416, ptr %arrayidx471.i, align 2
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %121 = inttoptr i32 %params.coerce.fca.0.extract.i.i to ptr
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %backlight_thresholds.i.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16
  %122 = ptrtoint ptr %backlight_thresholds.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %backlight_thresholds.i.i, align 2
  %123 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %121, align 4
  %conv.i.i = trunc i32 %124 to i16
  %backlight_offsets.i.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17
  %125 = ptrtoint ptr %backlight_offsets.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i.i, ptr %backlight_offsets.i.i, align 2
  %arrayidx4.i.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 15
  %126 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 -1, ptr %arrayidx4.i.i, align 2
  %sub6.i.i = add i32 %params.coerce.fca.1.extract.i.i, -1
  %arrayidx7.i.i = getelementptr i32, ptr %121, i32 %sub6.i.i
  %127 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx7.i.i, align 4
  %conv8.i.i = trunc i32 %128 to i16
  %arrayidx11.i.i = getelementptr inbounds %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 15
  %129 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv8.i.i, ptr %arrayidx11.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end61.i.i.for.body.i.i_crit_edge, %if.then20
  %add131.i.i = phi i32 [ 2, %if.then20 ], [ %add.i.i, %do.end61.i.i.for.body.i.i_crit_edge ]
  %i.0130.i.i = phi i32 [ 1, %if.then20 ], [ %add131.i.i, %do.end61.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.0130.i.i, %params.coerce.fca.1.extract.i.i
  %add14.i.i = add i32 %mul.i.i, 8
  %div15125.i.i = lshr i32 %add14.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div15125.i.i, i32 %params.coerce.fca.1.extract.i.i)
  %cmp17.not.i.i = icmp ult i32 %div15125.i.i, %params.coerce.fca.1.extract.i.i
  br i1 %cmp17.not.i.i, label %for.body.i.i.do.end61.i.i_crit_edge, label %land.rhs.i.i

for.body.i.i.do.end61.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end61.i.i

land.rhs.i.i:                                     ; preds = %for.body.i.i
  %.b128.i.i = load i1, ptr @fill_backlight_transform_table_v_2_2.__already_done, align 1
  br i1 %.b128.i.i, label %land.rhs.i.i.if.then58.i.i_crit_edge, label %if.then.i.i, !prof !30

land.rhs.i.i.if.then58.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then58.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @fill_backlight_transform_table_v_2_2.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef null) #4
  br label %if.then58.i.i

if.then58.i.i:                                    ; preds = %if.then.i.i, %land.rhs.i.i.if.then58.i.i_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end61.i.i

do.end61.i.i:                                     ; preds = %if.then58.i.i, %for.body.i.i.do.end61.i.i_crit_edge
  %i.0130.i.tr.i = trunc i32 %i.0130.i.i to i16
  %conv76.i.i = shl i16 %i.0130.i.tr.i, 12
  %arrayidx78.i.i = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 16, i32 %i.0130.i.i
  %130 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv76.i.i, ptr %arrayidx78.i.i, align 2
  %arrayidx83.i.i = getelementptr i32, ptr %121, i32 %div15125.i.i
  %131 = ptrtoint ptr %arrayidx83.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx83.i.i, align 4
  %conv84.i.i = trunc i32 %132 to i16
  %arrayidx95.i.i = getelementptr %struct.iram_table_v_2_2, ptr %ram_table, i32 0, i32 17, i32 %i.0130.i.i
  %133 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv84.i.i, ptr %arrayidx95.i.i, align 2
  %add.i.i = add nuw nsw i32 %add131.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %add.i.i, 16
  br i1 %exitcond.not.i.i, label %fill_iram_v_2_2.exit, label %do.end61.i.i.for.body.i.i_crit_edge

do.end61.i.i.for.body.i.i_crit_edge:              ; preds = %do.end61.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

fill_iram_v_2_2.exit:                             ; preds = %do.end61.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %134 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %funcs, align 4
  %load_iram23 = getelementptr inbounds %struct.dmcu_funcs, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %load_iram23 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %load_iram23, align 4
  %call24 = call zeroext i1 %137(ptr noundef nonnull %dmcu, i32 noundef 0, ptr noundef nonnull %ram_table, i32 noundef 240) #4
  br label %cleanup

if.else26:                                        ; preds = %if.end2
  %params.coerce.fca.3.extract.i = extractvalue [7 x i32] %params.coerce, 3
  %params.coerce.fca.4.extract.i = extractvalue [7 x i32] %params.coerce, 4
  %params.coerce.fca.5.extract.i146 = extractvalue [7 x i32] %params.coerce, 5
  %params.coerce.fca.6.extract.i147 = extractvalue [7 x i32] %params.coerce, 6
  %conv.i148 = trunc i32 %params.coerce.fca.5.extract.i146 to i16
  %138 = ptrtoint ptr %ram_table to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv.i148, ptr %ram_table, align 2
  %deviation_gain.i149 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 8
  %139 = ptrtoint ptr %deviation_gain.i149 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -77, ptr %deviation_gain.i149, align 1
  %conv3.i = trunc i32 %params.coerce.fca.3.extract.i to i16
  %blRampReduction.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 20
  %140 = ptrtoint ptr %blRampReduction.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 2)
  store i16 %conv3.i, ptr %blRampReduction.i, align 1
  %conv4.i = trunc i32 %params.coerce.fca.4.extract.i to i16
  %blRampStart.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 21
  %141 = ptrtoint ptr %blRampStart.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 %conv4.i, ptr %blRampStart.i, align 1
  %arrayidx.i = getelementptr [4 x [4 x i8]], ptr @abm_config, i32 0, i32 %params.coerce.fca.6.extract.i147
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i150 = zext i8 %143 to i32
  %arrayidx6.i151 = getelementptr [13 x i8], ptr @min_reduction_table, i32 0, i32 %idxprom.i150
  %144 = ptrtoint ptr %arrayidx6.i151 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx6.i151, align 1
  %min_reduction.i152 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1
  %146 = ptrtoint ptr %min_reduction.i152 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %min_reduction.i152, align 2
  %arrayidx14.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 1
  %147 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %145, ptr %arrayidx14.i, align 2
  %arrayidx21.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 2
  %148 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %145, ptr %arrayidx21.i, align 2
  %arrayidx28.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 3
  %149 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %145, ptr %arrayidx28.i, align 2
  %arrayidx35.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 4
  %150 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %145, ptr %arrayidx35.i, align 2
  %arrayidx40.i153 = getelementptr [13 x i8], ptr @max_reduction_table, i32 0, i32 %idxprom.i150
  %151 = ptrtoint ptr %arrayidx40.i153 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx40.i153, align 1
  %max_reduction.i154 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2
  %153 = ptrtoint ptr %max_reduction.i154 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %max_reduction.i154, align 2
  %arrayidx48.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 1
  %154 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %152, ptr %arrayidx48.i, align 2
  %arrayidx55.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 2
  %155 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %152, ptr %arrayidx55.i, align 2
  %arrayidx62.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 3
  %156 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %152, ptr %arrayidx62.i, align 2
  %arrayidx69.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 4
  %157 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %152, ptr %arrayidx69.i, align 2
  %arrayidx72.i = getelementptr [4 x [4 x i8]], ptr @abm_config, i32 0, i32 %params.coerce.fca.6.extract.i147, i32 1
  %158 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx72.i, align 1
  %idxprom73.i = zext i8 %159 to i32
  %arrayidx74.i155 = getelementptr [13 x i8], ptr @min_reduction_table, i32 0, i32 %idxprom73.i
  %160 = ptrtoint ptr %arrayidx74.i155 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx74.i155, align 1
  %arrayidx77.i156 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 0, i32 1
  %162 = ptrtoint ptr %arrayidx77.i156 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %arrayidx77.i156, align 1
  %arrayidx84.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 1, i32 1
  %163 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %161, ptr %arrayidx84.i, align 1
  %arrayidx91.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 2, i32 1
  %164 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %161, ptr %arrayidx91.i, align 1
  %arrayidx98.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 3, i32 1
  %165 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %161, ptr %arrayidx98.i, align 1
  %arrayidx105.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 4, i32 1
  %166 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %161, ptr %arrayidx105.i, align 1
  %arrayidx109.i = getelementptr [13 x i8], ptr @max_reduction_table, i32 0, i32 %idxprom73.i
  %167 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx109.i, align 1
  %arrayidx112.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 0, i32 1
  %169 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %arrayidx112.i, align 1
  %arrayidx119.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 1, i32 1
  %170 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %168, ptr %arrayidx119.i, align 1
  %arrayidx126.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 2, i32 1
  %171 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %168, ptr %arrayidx126.i, align 1
  %arrayidx133.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 3, i32 1
  %172 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %168, ptr %arrayidx133.i, align 1
  %arrayidx140.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 4, i32 1
  %173 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %168, ptr %arrayidx140.i, align 1
  %arrayidx142.i = getelementptr [4 x [4 x i8]], ptr @abm_config, i32 0, i32 %params.coerce.fca.6.extract.i147, i32 2
  %174 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx142.i, align 1
  %idxprom143.i = zext i8 %175 to i32
  %arrayidx144.i = getelementptr [13 x i8], ptr @min_reduction_table, i32 0, i32 %idxprom143.i
  %176 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx144.i, align 1
  %arrayidx147.i157 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 0, i32 2
  %178 = ptrtoint ptr %arrayidx147.i157 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %arrayidx147.i157, align 2
  %arrayidx154.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 1, i32 2
  %179 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %177, ptr %arrayidx154.i, align 2
  %arrayidx161.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 2, i32 2
  %180 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %177, ptr %arrayidx161.i, align 2
  %arrayidx168.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 3, i32 2
  %181 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %177, ptr %arrayidx168.i, align 2
  %arrayidx175.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 4, i32 2
  %182 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %177, ptr %arrayidx175.i, align 2
  %arrayidx179.i = getelementptr [13 x i8], ptr @max_reduction_table, i32 0, i32 %idxprom143.i
  %183 = ptrtoint ptr %arrayidx179.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx179.i, align 1
  %arrayidx182.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 0, i32 2
  %185 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx182.i, align 2
  %arrayidx189.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 1, i32 2
  %186 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %184, ptr %arrayidx189.i, align 2
  %arrayidx196.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 2, i32 2
  %187 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %184, ptr %arrayidx196.i, align 2
  %arrayidx203.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 3, i32 2
  %188 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %184, ptr %arrayidx203.i, align 2
  %arrayidx210.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 4, i32 2
  %189 = ptrtoint ptr %arrayidx210.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %184, ptr %arrayidx210.i, align 2
  %arrayidx212.i = getelementptr [4 x [4 x i8]], ptr @abm_config, i32 0, i32 %params.coerce.fca.6.extract.i147, i32 3
  %190 = ptrtoint ptr %arrayidx212.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx212.i, align 1
  %idxprom213.i = zext i8 %191 to i32
  %arrayidx214.i = getelementptr [13 x i8], ptr @min_reduction_table, i32 0, i32 %idxprom213.i
  %192 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx214.i, align 1
  %arrayidx217.i158 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 0, i32 3
  %194 = ptrtoint ptr %arrayidx217.i158 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %arrayidx217.i158, align 1
  %arrayidx224.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 1, i32 3
  %195 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %193, ptr %arrayidx224.i, align 1
  %arrayidx231.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 2, i32 3
  %196 = ptrtoint ptr %arrayidx231.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %193, ptr %arrayidx231.i, align 1
  %arrayidx238.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 3, i32 3
  %197 = ptrtoint ptr %arrayidx238.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %193, ptr %arrayidx238.i, align 1
  %arrayidx245.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 1, i32 4, i32 3
  %198 = ptrtoint ptr %arrayidx245.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %193, ptr %arrayidx245.i, align 1
  %arrayidx249.i = getelementptr [13 x i8], ptr @max_reduction_table, i32 0, i32 %idxprom213.i
  %199 = ptrtoint ptr %arrayidx249.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx249.i, align 1
  %arrayidx252.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 0, i32 3
  %201 = ptrtoint ptr %arrayidx252.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %arrayidx252.i, align 1
  %arrayidx259.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 1, i32 3
  %202 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %200, ptr %arrayidx259.i, align 1
  %arrayidx266.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 2, i32 3
  %203 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %200, ptr %arrayidx266.i, align 1
  %arrayidx273.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 3, i32 3
  %204 = ptrtoint ptr %arrayidx273.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %200, ptr %arrayidx273.i, align 1
  %arrayidx280.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 2, i32 4, i32 3
  %205 = ptrtoint ptr %arrayidx280.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %200, ptr %arrayidx280.i, align 1
  %bright_pos_gain.i159 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 3
  %bright_neg_gain.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 4
  %206 = call ptr @memset(ptr %bright_pos_gain.i159, i32 32, i32 20)
  %iir_curve.i160 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 7
  %207 = call ptr @memset(ptr %bright_neg_gain.i, i32 0, i32 60)
  %crgb_thresh.i161 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 9
  %208 = call ptr @memset(ptr %iir_curve.i160, i32 101, i32 5)
  %209 = ptrtoint ptr %crgb_thresh.i161 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 5046, ptr %crgb_thresh.i161, align 2
  %arrayidx528.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 9, i32 1
  %210 = ptrtoint ptr %arrayidx528.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 5704, ptr %arrayidx528.i, align 2
  %arrayidx530.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 9, i32 2
  %211 = ptrtoint ptr %arrayidx530.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 6371, ptr %arrayidx530.i, align 2
  %arrayidx532.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 9, i32 3
  %212 = ptrtoint ptr %arrayidx532.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 6977, ptr %arrayidx532.i, align 2
  %arrayidx534.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 9, i32 4
  %213 = ptrtoint ptr %arrayidx534.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 7494, ptr %arrayidx534.i, align 2
  %arrayidx536.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 9, i32 5
  %214 = ptrtoint ptr %arrayidx536.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 7969, ptr %arrayidx536.i, align 2
  %arrayidx538.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 9, i32 6
  %215 = ptrtoint ptr %arrayidx538.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 8551, ptr %arrayidx538.i, align 2
  %arrayidx540.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 9, i32 7
  %216 = ptrtoint ptr %arrayidx540.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 9092, ptr %arrayidx540.i, align 2
  %crgb_offset.i162 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 10
  %217 = ptrtoint ptr %crgb_offset.i162 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 10649, ptr %crgb_offset.i162, align 2
  %arrayidx543.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 10, i32 1
  %218 = ptrtoint ptr %arrayidx543.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 14745, ptr %arrayidx543.i, align 2
  %arrayidx545.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 10, i32 2
  %219 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 18022, ptr %arrayidx545.i, align 2
  %arrayidx547.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 10, i32 3
  %220 = ptrtoint ptr %arrayidx547.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 22937, ptr %arrayidx547.i, align 2
  %arrayidx549.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 10, i32 4
  %221 = ptrtoint ptr %arrayidx549.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 25395, ptr %arrayidx549.i, align 2
  %arrayidx551.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 10, i32 5
  %222 = ptrtoint ptr %arrayidx551.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 30720, ptr %arrayidx551.i, align 2
  %arrayidx553.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 10, i32 6
  %223 = ptrtoint ptr %arrayidx553.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 -29696, ptr %arrayidx553.i, align 2
  %arrayidx555.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 10, i32 7
  %224 = ptrtoint ptr %arrayidx555.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 -24576, ptr %arrayidx555.i, align 2
  %crgb_slope.i163 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 11
  %225 = ptrtoint ptr %crgb_slope.i163 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 12615, ptr %crgb_slope.i163, align 2
  %arrayidx558.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 11, i32 1
  %226 = ptrtoint ptr %arrayidx558.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 10616, ptr %arrayidx558.i, align 2
  %arrayidx560.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 11, i32 2
  %227 = ptrtoint ptr %arrayidx560.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 9122, ptr %arrayidx560.i, align 2
  %arrayidx562.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 11, i32 3
  %228 = ptrtoint ptr %arrayidx562.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 8021, ptr %arrayidx562.i, align 2
  %arrayidx564.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 11, i32 4
  %229 = ptrtoint ptr %arrayidx564.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 7267, ptr %arrayidx564.i, align 2
  %arrayidx566.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 11, i32 5
  %230 = ptrtoint ptr %arrayidx566.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 6671, ptr %arrayidx566.i, align 2
  %arrayidx568.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 11, i32 6
  %231 = ptrtoint ptr %arrayidx568.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 6029, ptr %arrayidx568.i, align 2
  %arrayidx570.i = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 11, i32 7
  %232 = ptrtoint ptr %arrayidx570.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 5547, ptr %arrayidx570.i, align 2
  %params.coerce.fca.0.extract.i.i164 = extractvalue [7 x i32] %params.coerce, 0
  %233 = inttoptr i32 %params.coerce.fca.0.extract.i.i164 to ptr
  %params.coerce.fca.1.extract.i.i165 = extractvalue [7 x i32] %params.coerce, 1
  %backlight_thresholds.i.i166 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 12
  %234 = ptrtoint ptr %backlight_thresholds.i.i166 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 0, ptr %backlight_thresholds.i.i166, align 2
  %235 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %233, align 4
  %conv.i.i167 = trunc i32 %236 to i16
  %backlight_offsets.i.i168 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 13
  %237 = ptrtoint ptr %backlight_offsets.i.i168 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %conv.i.i167, ptr %backlight_offsets.i.i168, align 2
  %arrayidx4.i.i169 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 12, i32 15
  %238 = ptrtoint ptr %arrayidx4.i.i169 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 -1, ptr %arrayidx4.i.i169, align 2
  %sub6.i.i170 = add i32 %params.coerce.fca.1.extract.i.i165, -1
  %arrayidx7.i.i171 = getelementptr i32, ptr %233, i32 %sub6.i.i170
  %239 = ptrtoint ptr %arrayidx7.i.i171 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx7.i.i171, align 4
  %conv8.i.i172 = trunc i32 %240 to i16
  %arrayidx11.i.i173 = getelementptr inbounds %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 13, i32 15
  %241 = ptrtoint ptr %arrayidx11.i.i173 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %conv8.i.i172, ptr %arrayidx11.i.i173, align 2
  br label %for.body.i.i176

for.body.i.i176:                                  ; preds = %do.end60.i.i.for.body.i.i176_crit_edge, %if.else26
  %add99.i.i = phi i32 [ 2, %if.else26 ], [ %add.i.i179, %do.end60.i.i.for.body.i.i176_crit_edge ]
  %i.098.i.i = phi i32 [ 1, %if.else26 ], [ %add99.i.i, %do.end60.i.i.for.body.i.i176_crit_edge ]
  %mul.i.i174 = mul i32 %i.098.i.i, %sub6.i.i170
  %div.i.i = udiv i32 %mul.i.i174, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %params.coerce.fca.1.extract.i.i165)
  %cmp17.not.i.i175 = icmp ult i32 %div.i.i, %params.coerce.fca.1.extract.i.i165
  br i1 %cmp17.not.i.i175, label %for.body.i.i176.do.end60.i.i_crit_edge, label %land.rhs.i.i177

for.body.i.i176.do.end60.i.i_crit_edge:           ; preds = %for.body.i.i176
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60.i.i

land.rhs.i.i177:                                  ; preds = %for.body.i.i176
  %.b96.i.i = load i1, ptr @fill_backlight_transform_table.__already_done, align 1
  br i1 %.b96.i.i, label %land.rhs.i.i177.if.then57.i.i_crit_edge, label %if.then.i.i178, !prof !30

land.rhs.i.i177.if.then57.i.i_crit_edge:          ; preds = %land.rhs.i.i177
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57.i.i

if.then.i.i178:                                   ; preds = %land.rhs.i.i177
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @fill_backlight_transform_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.then57.i.i

if.then57.i.i:                                    ; preds = %if.then.i.i178, %land.rhs.i.i177.if.then57.i.i_crit_edge
  tail call void @kgdb_breakpoint() #4
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %for.body.i.i176.do.end60.i.i_crit_edge
  %i.0.tr.i.i = trunc i32 %i.098.i.i to i16
  %conv65.i.i = shl i16 %i.0.tr.i.i, 12
  %arrayidx67.i.i = getelementptr %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 12, i32 %i.098.i.i
  %242 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %conv65.i.i, ptr %arrayidx67.i.i, align 2
  %arrayidx69.i.i = getelementptr i32, ptr %233, i32 %div.i.i
  %243 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx69.i.i, align 4
  %conv70.i.i = trunc i32 %244 to i16
  %arrayidx72.i.i = getelementptr %struct.iram_table_v_2, ptr %ram_table, i32 0, i32 13, i32 %i.098.i.i
  %245 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv70.i.i, ptr %arrayidx72.i.i, align 2
  %add.i.i179 = add nuw nsw i32 %add99.i.i, 1
  %exitcond.not.i.i180 = icmp eq i32 %add.i.i179, 16
  br i1 %exitcond.not.i.i180, label %fill_iram_v_2.exit, label %do.end60.i.i.for.body.i.i176_crit_edge

do.end60.i.i.for.body.i.i176_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i176

fill_iram_v_2.exit:                               ; preds = %do.end60.i.i
  %246 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %funcs, align 4
  %load_iram29 = getelementptr inbounds %struct.dmcu_funcs, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %load_iram29 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %load_iram29, align 4
  %call30 = call zeroext i1 %249(ptr noundef nonnull %dmcu, i32 noundef 0, ptr noundef nonnull %ram_table, i32 noundef 240) #4
  br i1 %call30, label %if.then33, label %fill_iram_v_2.exit.cleanup_crit_edge

fill_iram_v_2.exit.cleanup_crit_edge:             ; preds = %fill_iram_v_2.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then33:                                        ; preds = %fill_iram_v_2.exit
  call void @__sanitizer_cov_trace_pc() #6
  %250 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %funcs, align 4
  %load_iram35 = getelementptr inbounds %struct.dmcu_funcs, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %load_iram35 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %load_iram35, align 4
  %call37 = call zeroext i1 %253(ptr noundef nonnull %dmcu, i32 noundef 247, ptr noundef %blRampReduction.i, i32 noundef 9) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %fill_iram_v_2.exit.cleanup_crit_edge, %fill_iram_v_2_2.exit, %if.then10, %if.then4, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ %call6, %if.then4 ], [ %call14, %if.then10 ], [ %call24, %fill_iram_v_2_2.exit ], [ %call37, %if.then33 ], [ false, %fill_iram_v_2.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ram_table) #4
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c", i32 270, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @abm_settings, !4, !"abm_settings", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c", i32 105, i32 44}
!5 = !{ptr @abm_settings_config0, !6, !"abm_settings_config0", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c", i32 89, i32 36}
!7 = !{ptr @abm_settings_config1, !8, !"abm_settings_config1", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c", i32 97, i32 36}
!9 = !{ptr @min_reduction_table_v_2_2, !10, !"min_reduction_table_v_2_2", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c", i32 54, i32 28}
!11 = !{ptr @abm_config, !12, !"abm_config", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c", i32 67, i32 28}
!13 = !{ptr @max_reduction_table_v_2_2, !14, !"max_reduction_table_v_2_2", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c", i32 61, i32 28}
!15 = !{ptr @min_reduction_table, !16, !"min_reduction_table", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c", i32 40, i32 28}
!17 = !{ptr @max_reduction_table, !18, !"max_reduction_table", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c", i32 47, i32 28}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/power/power_helpers.c", i32 238, i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 2000, i32 1}
