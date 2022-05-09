; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/irq/dce60/irq_service_dce60.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irq_service_funcs = type { ptr }
%struct.irq_source_info_funcs = type { ptr, ptr }
%struct.irq_source_info = type { i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, ptr }
%struct.irq_service = type { ptr, ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@irq_service_funcs_dce60 = internal constant { %struct.irq_service_funcs, [28 x i8] } { %struct.irq_service_funcs { ptr @to_dal_irq_source_dce60 }, [28 x i8] zeroinitializer }, align 32
@dummy_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } { %struct.irq_source_info_funcs { ptr @dal_irq_service_dummy_set, ptr @dal_irq_service_dummy_ack }, [24 x i8] zeroinitializer }, align 32
@hpd_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } { %struct.irq_source_info_funcs { ptr null, ptr @hpd_ack }, [24 x i8] zeroinitializer }, align 32
@hpd_rx_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } zeroinitializer, align 32
@pflip_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } zeroinitializer, align 32
@vblank_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } { %struct.irq_source_info_funcs { ptr @dce110_vblank_set, ptr null }, [24 x i8] zeroinitializer }, align 32
@vblank_irq_info_funcs_dce60 = internal constant { %struct.irq_source_info_funcs, [24 x i8] } zeroinitializer, align 32
@irq_source_info_dce60 = internal constant { <{ [84 x %struct.irq_source_info], [15 x %struct.irq_source_info] }>, [1116 x i8] } { <{ [84 x %struct.irq_source_info], [15 x %struct.irq_source_info] }> <{ [84 x %struct.irq_source_info] [%struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6152, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6152, i32 1, i32 1, i32 6151, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6155, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6155, i32 1, i32 1, i32 6154, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6158, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6158, i32 1, i32 1, i32 6157, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6161, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6161, i32 1, i32 1, i32 6160, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6164, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6164, i32 1, i32 1, i32 6163, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6167, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6167, i32 1, i32 1, i32 6166, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6152, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6152, i32 1048576, i32 1048576, i32 6151, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6155, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6155, i32 1048576, i32 1048576, i32 6154, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6158, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6158, i32 1048576, i32 1048576, i32 6157, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6161, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6161, i32 1048576, i32 1048576, i32 6160, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6164, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6164, i32 1048576, i32 1048576, i32 6163, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6167, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6167, i32 1048576, i32 1048576, i32 6166, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6679, i32 1, [2 x i32] [i32 1, i32 -2], i32 6678, i32 256, i32 256, i32 6678, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 7447, i32 1, [2 x i32] [i32 1, i32 -2], i32 7446, i32 256, i32 256, i32 7446, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 16407, i32 1, [2 x i32] [i32 1, i32 -2], i32 16406, i32 256, i32 256, i32 16406, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 17175, i32 1, [2 x i32] [i32 1, i32 -2], i32 17174, i32 256, i32 256, i32 17174, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 17943, i32 1, [2 x i32] [i32 1, i32 -2], i32 17942, i32 256, i32 256, i32 17942, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 18711, i32 1, [2 x i32] [i32 1, i32 -2], i32 18710, i32 256, i32 256, i32 18710, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 7092, i32 16, [2 x i32] [i32 16, i32 -17], i32 7108, i32 256, i32 256, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 7860, i32 16, [2 x i32] [i32 16, i32 -17], i32 7876, i32 256, i32 256, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 16820, i32 16, [2 x i32] [i32 16, i32 -17], i32 16836, i32 256, i32 256, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 17588, i32 16, [2 x i32] [i32 16, i32 -17], i32 17604, i32 256, i32 256, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 18356, i32 16, [2 x i32] [i32 16, i32 -17], i32 18372, i32 256, i32 256, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 19124, i32 16, [2 x i32] [i32 16, i32 -17], i32 19140, i32 256, i32 256, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6864, i32 1, [2 x i32] [i32 1, i32 -2], i32 6895, i32 16, i32 16, i32 0, ptr @vblank_irq_info_funcs_dce60 }, %struct.irq_source_info { i32 0, i32 0, i32 7632, i32 1, [2 x i32] [i32 1, i32 -2], i32 7663, i32 16, i32 16, i32 0, ptr @vblank_irq_info_funcs_dce60 }, %struct.irq_source_info { i32 0, i32 0, i32 16592, i32 1, [2 x i32] [i32 1, i32 -2], i32 16623, i32 16, i32 16, i32 0, ptr @vblank_irq_info_funcs_dce60 }, %struct.irq_source_info { i32 0, i32 0, i32 17360, i32 1, [2 x i32] [i32 1, i32 -2], i32 17391, i32 16, i32 16, i32 0, ptr @vblank_irq_info_funcs_dce60 }, %struct.irq_source_info { i32 0, i32 0, i32 18128, i32 1, [2 x i32] [i32 1, i32 -2], i32 18159, i32 16, i32 16, i32 0, ptr @vblank_irq_info_funcs_dce60 }, %struct.irq_source_info { i32 0, i32 0, i32 18896, i32 1, [2 x i32] [i32 1, i32 -2], i32 18927, i32 16, i32 16, i32 0, ptr @vblank_irq_info_funcs_dce60 }], [15 x %struct.irq_source_info] zeroinitializer }>, [1116 x i8] zeroinitializer }, align 32
@__func__.hpd_ack = private unnamed_addr constant [8 x i8] c"hpd_ack\00", align 1
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 42]
@___asan_gen_.2 = private unnamed_addr constant [24 x i8] c"irq_service_funcs_dce60\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 368, i32 39 }
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"dummy_irq_info_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 195, i32 43 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"hpd_irq_info_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 76, i32 43 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"hpd_rx_irq_info_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 81, i32 43 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"pflip_irq_info_funcs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 86, i32 43 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"vblank_irq_info_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 91, i32 43 }
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"vblank_irq_info_funcs_dce60\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 96, i32 43 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"irq_source_info_dce60\00", align 1
@___asan_gen_.24 = private constant [74 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 201, i32 1 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @irq_service_funcs_dce60, ptr @dummy_irq_info_funcs, ptr @hpd_irq_info_funcs, ptr @hpd_rx_irq_info_funcs, ptr @pflip_irq_info_funcs, ptr @vblank_irq_info_funcs, ptr @vblank_irq_info_funcs_dce60, ptr @irq_source_info_dce60], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_service_funcs_dce60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_rx_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pflip_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vblank_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vblank_irq_info_funcs_dce60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_source_info_dce60 to i32), i32 4356, i32 5472, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @to_dal_irq_source_dce60(ptr nocapture readnone %irq_service, i32 noundef %src_id, i32 noundef %ext_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %src_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %src_id, label %sw.default31 [
    i32 1, label %entry.return_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 9, label %sw.bb7
    i32 11, label %sw.bb8
    i32 13, label %sw.bb9
    i32 15, label %sw.bb10
    i32 17, label %sw.bb11
    i32 8, label %sw.bb12
    i32 10, label %sw.bb13
    i32 12, label %sw.bb14
    i32 14, label %sw.bb15
    i32 16, label %sw.bb16
    i32 18, label %sw.bb17
    i32 42, label %sw.bb18
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %ext_id)
  %1 = icmp ult i32 %ext_id, 12
  %switch.offset = add i32 %ext_id, 1
  %spec.select = select i1 %1, i32 %switch.offset, i32 0
  br label %return

sw.default31:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %sw.default31, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default31 ], [ 31, %sw.bb17 ], [ 30, %sw.bb16 ], [ 29, %sw.bb15 ], [ 28, %sw.bb14 ], [ 27, %sw.bb13 ], [ 26, %sw.bb12 ], [ 77, %sw.bb11 ], [ 76, %sw.bb10 ], [ 75, %sw.bb9 ], [ 74, %sw.bb8 ], [ 73, %sw.bb7 ], [ 72, %sw.bb6 ], [ 83, %sw.bb5 ], [ 82, %sw.bb4 ], [ 81, %sw.bb3 ], [ 80, %sw.bb2 ], [ 79, %sw.bb1 ], [ 78, %entry.return_crit_edge ], [ %spec.select, %sw.bb18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_irq_service_dce60_create(ptr noundef %init_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dal_irq_service_construct(ptr noundef nonnull %call7.i.i, ptr noundef %init_data) #4
  %info.i = getelementptr inbounds %struct.irq_service, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @irq_source_info_dce60, ptr %info.i, align 4
  %funcs.i = getelementptr inbounds %struct.irq_service, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @irq_service_funcs_dce60, ptr %funcs.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_construct(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_irq_service_dummy_set(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_irq_service_dummy_ack(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hpd_ack(ptr noundef %irq_service, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %status_reg = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 8
  %0 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_reg, align 4
  %2 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_service, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %1, ptr noundef nonnull @__func__.hpd_ack) #4
  tail call void @dal_irq_service_ack_generic(ptr noundef %irq_service, ptr noundef %info) #4
  %4 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_service, align 4
  %enable_reg = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_reg, align 4
  %call3 = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %7, ptr noundef nonnull @__func__.hpd_ack) #4
  %and.i15 = and i32 %call3, -257
  %8 = shl i32 %call, 4
  %9 = and i32 %8, 256
  %10 = or i32 %and.i15, %9
  %or.i = xor i32 %10, 256
  %11 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_service, align 4
  %13 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_reg, align 4
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef %14, i32 noundef %or.i, ptr noundef nonnull @__func__.hpd_ack) #4
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_ack_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_vblank_set(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @irq_source_info_dce60, !1, !"irq_source_info_dce60", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c", i32 201, i32 1}
!2 = !{ptr @dummy_irq_info_funcs, !3, !"dummy_irq_info_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c", i32 195, i32 43}
!4 = !{ptr @hpd_irq_info_funcs, !5, !"hpd_irq_info_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c", i32 76, i32 43}
!6 = !{ptr @__func__.hpd_ack, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c", i32 54, i32 19}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!10 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hpd_rx_irq_info_funcs, !12, !"hpd_rx_irq_info_funcs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c", i32 81, i32 43}
!13 = !{ptr @pflip_irq_info_funcs, !14, !"pflip_irq_info_funcs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c", i32 86, i32 43}
!15 = !{ptr @vblank_irq_info_funcs, !16, !"vblank_irq_info_funcs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c", i32 91, i32 43}
!17 = !{ptr @vblank_irq_info_funcs_dce60, !18, !"vblank_irq_info_funcs_dce60", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c", i32 96, i32 43}
!19 = !{ptr @irq_service_funcs_dce60, !20, !"irq_service_funcs_dce60", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce60/irq_service_dce60.c", i32 368, i32 39}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
