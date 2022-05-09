; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/irq/dce80/irq_service_dce80.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irq_service_funcs = type { ptr }
%struct.irq_source_info_funcs = type { ptr, ptr }
%struct.irq_source_info = type { i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, ptr }
%struct.irq_service = type { ptr, ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@irq_service_funcs_dce80 = internal constant { %struct.irq_service_funcs, [28 x i8] } { %struct.irq_service_funcs { ptr @to_dal_irq_source_dce110 }, [28 x i8] zeroinitializer }, align 32
@dummy_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } { %struct.irq_source_info_funcs { ptr @dal_irq_service_dummy_set, ptr @dal_irq_service_dummy_ack }, [24 x i8] zeroinitializer }, align 32
@hpd_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } { %struct.irq_source_info_funcs { ptr null, ptr @hpd_ack }, [24 x i8] zeroinitializer }, align 32
@hpd_rx_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } zeroinitializer, align 32
@pflip_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } zeroinitializer, align 32
@vupdate_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } zeroinitializer, align 32
@vblank_irq_info_funcs = internal constant { %struct.irq_source_info_funcs, [24 x i8] } { %struct.irq_source_info_funcs { ptr @dce110_vblank_set, ptr null }, [24 x i8] zeroinitializer }, align 32
@irq_source_info_dce80 = internal constant { <{ [84 x %struct.irq_source_info], [15 x %struct.irq_source_info] }>, [1116 x i8] } { <{ [84 x %struct.irq_source_info], [15 x %struct.irq_source_info] }> <{ [84 x %struct.irq_source_info] [%struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6152, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6152, i32 1, i32 1, i32 6151, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6155, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6155, i32 1, i32 1, i32 6154, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6158, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6158, i32 1, i32 1, i32 6157, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6161, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6161, i32 1, i32 1, i32 6160, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6164, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6164, i32 1, i32 1, i32 6163, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6167, i32 65536, [2 x i32] [i32 65536, i32 -65537], i32 6167, i32 1, i32 1, i32 6166, ptr @hpd_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6152, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6152, i32 1048576, i32 1048576, i32 6151, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6155, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6155, i32 1048576, i32 1048576, i32 6154, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6158, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6158, i32 1048576, i32 1048576, i32 6157, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6161, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6161, i32 1048576, i32 1048576, i32 6160, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6164, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6164, i32 1048576, i32 1048576, i32 6163, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6167, i32 16777216, [2 x i32] [i32 16777216, i32 -16777217], i32 6167, i32 1048576, i32 1048576, i32 6166, ptr @hpd_rx_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 6679, i32 1, [2 x i32] [i32 1, i32 -2], i32 6678, i32 256, i32 256, i32 6678, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 7447, i32 1, [2 x i32] [i32 1, i32 -2], i32 7446, i32 256, i32 256, i32 7446, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 16407, i32 1, [2 x i32] [i32 1, i32 -2], i32 16406, i32 256, i32 256, i32 16406, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 17175, i32 1, [2 x i32] [i32 1, i32 -2], i32 17174, i32 256, i32 256, i32 17174, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 17943, i32 1, [2 x i32] [i32 1, i32 -2], i32 17942, i32 256, i32 256, i32 17942, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 18711, i32 1, [2 x i32] [i32 1, i32 -2], i32 18710, i32 256, i32 256, i32 18710, ptr @pflip_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr @dummy_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 7092, i32 16, [2 x i32] [i32 16, i32 -17], i32 7108, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 7860, i32 16, [2 x i32] [i32 16, i32 -17], i32 7876, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 16820, i32 16, [2 x i32] [i32 16, i32 -17], i32 16836, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 17588, i32 16, [2 x i32] [i32 16, i32 -17], i32 17604, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 18356, i32 16, [2 x i32] [i32 16, i32 -17], i32 18372, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 0, i32 0, i32 19124, i32 16, [2 x i32] [i32 16, i32 -17], i32 19140, i32 256, i32 256, i32 0, ptr @vupdate_irq_info_funcs }, %struct.irq_source_info { i32 19, i32 0, i32 7119, i32 256, [2 x i32] [i32 256, i32 -257], i32 7119, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 20, i32 0, i32 7887, i32 256, [2 x i32] [i32 256, i32 -257], i32 7887, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 21, i32 0, i32 16847, i32 256, [2 x i32] [i32 256, i32 -257], i32 16847, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 22, i32 0, i32 17615, i32 256, [2 x i32] [i32 256, i32 -257], i32 17615, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 23, i32 0, i32 18383, i32 256, [2 x i32] [i32 256, i32 -257], i32 18383, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }, %struct.irq_source_info { i32 24, i32 0, i32 19151, i32 256, [2 x i32] [i32 256, i32 -257], i32 19151, i32 1048576, i32 1048576, i32 0, ptr @vblank_irq_info_funcs }], [15 x %struct.irq_source_info] zeroinitializer }>, [1116 x i8] zeroinitializer }, align 32
@__func__.hpd_ack = private unnamed_addr constant [8 x i8] c"hpd_ack\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [24 x i8] c"irq_service_funcs_dce80\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 282, i32 39 }
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"dummy_irq_info_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 189, i32 43 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"hpd_irq_info_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 69, i32 43 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"hpd_rx_irq_info_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 74, i32 43 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"pflip_irq_info_funcs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 79, i32 43 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"vupdate_irq_info_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 89, i32 43 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"vblank_irq_info_funcs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 84, i32 43 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"irq_source_info_dce80\00", align 1
@___asan_gen_.24 = private constant [74 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 195, i32 1 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @irq_service_funcs_dce80, ptr @dummy_irq_info_funcs, ptr @hpd_irq_info_funcs, ptr @hpd_rx_irq_info_funcs, ptr @pflip_irq_info_funcs, ptr @vupdate_irq_info_funcs, ptr @vblank_irq_info_funcs, ptr @irq_source_info_dce80], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_service_funcs_dce80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_rx_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pflip_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vupdate_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vblank_irq_info_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_source_info_dce80 to i32), i32 4356, i32 5472, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_irq_service_dce80_create(ptr noundef %init_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dal_irq_service_construct(ptr noundef nonnull %call7.i.i, ptr noundef %init_data) #3
  %info.i = getelementptr inbounds %struct.irq_service, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @irq_source_info_dce80, ptr %info.i, align 4
  %funcs.i = getelementptr inbounds %struct.irq_service, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @irq_service_funcs_dce80, ptr %funcs.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_construct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_irq_service_dummy_set(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_irq_service_dummy_ack(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hpd_ack(ptr noundef %irq_service, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %status_reg = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 8
  %0 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_reg, align 4
  %2 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_service, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %1, ptr noundef nonnull @__func__.hpd_ack) #3
  tail call void @dal_irq_service_ack_generic(ptr noundef %irq_service, ptr noundef %info) #3
  %4 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_service, align 4
  %enable_reg = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_reg, align 4
  %call3 = tail call i32 @dm_read_reg_func(ptr noundef %5, i32 noundef %7, ptr noundef nonnull @__func__.hpd_ack) #3
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
  tail call void @dm_write_reg_func(ptr noundef %12, i32 noundef %14, i32 noundef %or.i, ptr noundef nonnull @__func__.hpd_ack) #3
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_ack_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_vblank_set(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @to_dal_irq_source_dce110(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @irq_source_info_dce80, !1, !"irq_source_info_dce80", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c", i32 195, i32 1}
!2 = !{ptr @dummy_irq_info_funcs, !3, !"dummy_irq_info_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c", i32 189, i32 43}
!4 = !{ptr @hpd_irq_info_funcs, !5, !"hpd_irq_info_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c", i32 69, i32 43}
!6 = !{ptr @__func__.hpd_ack, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c", i32 47, i32 19}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h", i32 107, i32 2}
!10 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hpd_rx_irq_info_funcs, !12, !"hpd_rx_irq_info_funcs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c", i32 74, i32 43}
!13 = !{ptr @pflip_irq_info_funcs, !14, !"pflip_irq_info_funcs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c", i32 79, i32 43}
!15 = !{ptr @vupdate_irq_info_funcs, !16, !"vupdate_irq_info_funcs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c", i32 89, i32 43}
!17 = !{ptr @vblank_irq_info_funcs, !18, !"vblank_irq_info_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c", i32 84, i32 43}
!19 = !{ptr @irq_service_funcs_dce80, !20, !"irq_service_funcs_dce80", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dce80/irq_service_dce80.c", i32 282, i32 39}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
