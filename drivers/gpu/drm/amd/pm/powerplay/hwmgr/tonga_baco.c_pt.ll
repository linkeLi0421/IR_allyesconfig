; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/tonga_baco.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.baco_cmd_entry = type { i32, i32, i32, i32, i32, i32 }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }

@gpio_tbl_iceland = internal constant { [4 x %struct.baco_cmd_entry], [32 x i8] } { [4 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 388, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 403, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 402, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 386, i32 0, i32 0, i32 0, i32 -8912897 }], [32 x i8] zeroinitializer }, align 32
@gpio_tbl = internal constant { [10 x %struct.baco_cmd_entry], [48 x i8] } { [10 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 388, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 403, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 402, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 386, i32 0, i32 0, i32 0, i32 -8912897 }, %struct.baco_cmd_entry { i32 0, i32 18534, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 18532, i32 0, i32 0, i32 0, i32 -1 }, %struct.baco_cmd_entry { i32 0, i32 18530, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 18528, i32 0, i32 0, i32 0, i32 53687091 }, %struct.baco_cmd_entry { i32 0, i32 18566, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 18564, i32 0, i32 0, i32 0, i32 4369 }], [48 x i8] zeroinitializer }, align 32
@enable_fb_req_rej_tbl = internal constant { [3 x %struct.baco_cmd_entry], [56 x i8] } { [3 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1070596060 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 1, i32 0, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 5412, i32 0, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@use_bclk_tbl = internal constant { [19 x %struct.baco_cmd_entry], [120 x i8] } { [19 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498624 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 8, i32 3, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498620 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 4194304, i32 22, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498596 }, %struct.baco_cmd_entry { i32 2, i32 129, i32 2, i32 0, i32 -1, i32 2 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498620 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 4194304, i32 22, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 8388608, i32 23, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498596 }, %struct.baco_cmd_entry { i32 2, i32 129, i32 2, i32 0, i32 -1, i32 2 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498620 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 8388608, i32 23, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498576 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 67108864, i32 26, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498532 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 65280, i32 8, i32 0, i32 2 }, %struct.baco_cmd_entry { i32 1, i32 2796, i32 256, i32 8, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 2796, i32 2048, i32 11, i32 0, i32 0 }], [120 x i8] zeroinitializer }, align 32
@turn_off_plls_tbl = internal constant { [28 x %struct.baco_cmd_entry], [160 x i8] } { [28 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498624 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 1, i32 0, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 2, i32 1, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498576 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 33554432, i32 25, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 134217728, i32 27, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 2796, i32 -2147483648, i32 31, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 2805, i32 0, i32 0, i32 0, i32 6 }, %struct.baco_cmd_entry { i32 0, i32 2636, i32 0, i32 0, i32 0, i32 30528 }, %struct.baco_cmd_entry { i32 0, i32 2642, i32 0, i32 0, i32 0, i32 30528 }, %struct.baco_cmd_entry { i32 0, i32 2637, i32 0, i32 0, i32 0, i32 30528 }, %struct.baco_cmd_entry { i32 0, i32 2643, i32 0, i32 0, i32 0, i32 30528 }, %struct.baco_cmd_entry { i32 1, i32 2792, i32 256, i32 8, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 2792, i32 512, i32 9, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 2772, i32 16, i32 4, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 2772, i32 32, i32 5, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498524 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 8, i32 3, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498532 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 65280, i32 8, i32 0, i32 4 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498516 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 255, i32 0, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 65280, i32 8, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498528 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 4, i32 2, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 128, i32 0, i32 0, i32 0, i32 -1068498520 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 255, i32 0, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 129, i32 65280, i32 8, i32 0, i32 1 }], [160 x i8] zeroinitializer }, align 32
@enter_baco_tbl = internal constant { [12 x %struct.baco_cmd_entry], [64 x i8] } { [12 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 1, i32 5349, i32 1, i32 0, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 262144, i32 18, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 262144, i32 0, i32 5, i32 262144 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 2, i32 1, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 2, i32 0, i32 5, i32 2 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 4, i32 2, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 4, i32 0, i32 5, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 128, i32 7, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 128, i32 0, i32 5, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 8, i32 3, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 8, i32 0, i32 5, i32 8 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 64, i32 0, i32 -1, i32 64 }], [64 x i8] zeroinitializer }, align 32
@exit_baco_tbl_iceland = internal constant { [13 x %struct.baco_cmd_entry], [72 x i8] } { [13 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 1, i32 5349, i32 16, i32 4, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 2, i32 1, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 8, i32 3, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 3, i32 0, i32 0, i32 0, i32 20, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 512, i32 0, i32 -1, i32 512 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 4, i32 2, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 7168, i32 0, i32 5, i32 7168 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 128, i32 7, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 262144, i32 18, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 16, i32 4, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 256, i32 0, i32 5, i32 256 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 1, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 64, i32 0, i32 -1, i32 0 }], [72 x i8] zeroinitializer }, align 32
@clean_baco_tbl_iceland = internal constant { [1 x %struct.baco_cmd_entry], [40 x i8] } { [1 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 1488, i32 0, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@exit_baco_tbl = internal constant { [12 x %struct.baco_cmd_entry], [64 x i8] } { [12 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 1, i32 5349, i32 16, i32 4, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 2, i32 1, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 8, i32 3, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 512, i32 0, i32 -1, i32 512 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 4, i32 2, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 7168, i32 0, i32 5, i32 7168 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 128, i32 7, i32 0, i32 1 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 262144, i32 18, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 16, i32 4, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 256, i32 0, i32 5, i32 256 }, %struct.baco_cmd_entry { i32 1, i32 5349, i32 1, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 2, i32 5349, i32 64, i32 0, i32 -1, i32 0 }], [64 x i8] zeroinitializer }, align 32
@clean_baco_tbl = internal constant { [2 x %struct.baco_cmd_entry], [48 x i8] } { [2 x %struct.baco_cmd_entry] [%struct.baco_cmd_entry { i32 0, i32 1487, i32 0, i32 0, i32 0, i32 0 }, %struct.baco_cmd_entry { i32 0, i32 1488, i32 0, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"gpio_tbl_iceland\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 155, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"gpio_tbl\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 39, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"enable_fb_req_rej_tbl\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 53, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"use_bclk_tbl\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 60, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"turn_off_plls_tbl\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 83, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"enter_baco_tbl\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 115, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"exit_baco_tbl_iceland\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 163, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"clean_baco_tbl_iceland\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 180, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"exit_baco_tbl\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 133, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"clean_baco_tbl\00", align 1
@___asan_gen_.29 = private constant [65 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 149, i32 36 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @gpio_tbl_iceland, ptr @gpio_tbl, ptr @enable_fb_req_rej_tbl, ptr @use_bclk_tbl, ptr @turn_off_plls_tbl, ptr @enter_baco_tbl, ptr @exit_baco_tbl_iceland, ptr @clean_baco_tbl_iceland, ptr @exit_baco_tbl, ptr @clean_baco_tbl], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_tbl_iceland to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_tbl to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_fb_req_rej_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_bclk_tbl to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turn_off_plls_tbl to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enter_baco_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_baco_tbl_iceland to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clean_baco_tbl_iceland to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_baco_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clean_baco_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tonga_baco_set_state(ptr noundef %hwmgr, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %cur_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_state) #3
  %0 = ptrtoint ptr %cur_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cur_state, align 4, !annotation !29
  %call = call i32 @smu7_baco_get_state(ptr noundef %hwmgr, ptr noundef nonnull %cur_state) #3
  %1 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cur_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %state)
  %cmp = icmp eq i32 %2, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %if.end.if.end35_crit_edge [
    i32 1, label %if.then2
    i32 0, label %if.then16
  ]

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then2:                                         ; preds = %if.end
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp3 = icmp eq i32 %5, 10
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @gpio_tbl_iceland, i32 noundef 4) #3
  br label %if.end7

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @gpio_tbl, i32 noundef 10) #3
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %call8 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @enable_fb_req_rej_tbl, i32 noundef 3) #3
  %call9 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @use_bclk_tbl, i32 noundef 19) #3
  %call10 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @turn_off_plls_tbl, i32 noundef 28) #3
  %call11 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @enter_baco_tbl, i32 noundef 12) #3
  br i1 %call11, label %if.end7.cleanup_crit_edge, label %if.end7.if.end35_crit_edge

if.end7.if.end35_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @msleep(i32 noundef 20) #3
  %chip_id17 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %6 = ptrtoint ptr %chip_id17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_id17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp18 = icmp eq i32 %7, 10
  br i1 %cmp18, label %if.then19, label %if.else26

if.then19:                                        ; preds = %if.then16
  %call20 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @exit_baco_tbl_iceland, i32 noundef 13) #3
  br i1 %call20, label %if.then21, label %if.then19.if.end35_crit_edge

if.then19.if.end35_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then21:                                        ; preds = %if.then19
  %call22 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @clean_baco_tbl_iceland, i32 noundef 1) #3
  br i1 %call22, label %if.then21.cleanup_crit_edge, label %if.then21.if.end35_crit_edge

if.then21.if.end35_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else26:                                        ; preds = %if.then16
  %call27 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @exit_baco_tbl, i32 noundef 12) #3
  br i1 %call27, label %if.then28, label %if.else26.if.end35_crit_edge

if.else26.if.end35_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then28:                                        ; preds = %if.else26
  %call29 = call zeroext i1 @baco_program_registers(ptr noundef %hwmgr, ptr noundef nonnull @clean_baco_tbl, i32 noundef 2) #3
  br i1 %call29, label %if.then28.cleanup_crit_edge, label %if.then28.if.end35_crit_edge

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end35:                                         ; preds = %if.then28.if.end35_crit_edge, %if.else26.if.end35_crit_edge, %if.then21.if.end35_crit_edge, %if.then19.if.end35_crit_edge, %if.end7.if.end35_crit_edge, %if.end.if.end35_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then28.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end35 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then21.cleanup_crit_edge ], [ 0, %if.then28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_state) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_baco_get_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @baco_program_registers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @gpio_tbl_iceland, !1, !"gpio_tbl_iceland", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c", i32 155, i32 36}
!2 = !{ptr @gpio_tbl, !3, !"gpio_tbl", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c", i32 39, i32 36}
!4 = !{ptr @enable_fb_req_rej_tbl, !5, !"enable_fb_req_rej_tbl", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c", i32 53, i32 36}
!6 = !{ptr @use_bclk_tbl, !7, !"use_bclk_tbl", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c", i32 60, i32 36}
!8 = !{ptr @turn_off_plls_tbl, !9, !"turn_off_plls_tbl", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c", i32 83, i32 36}
!10 = !{ptr @enter_baco_tbl, !11, !"enter_baco_tbl", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c", i32 115, i32 36}
!12 = !{ptr @exit_baco_tbl_iceland, !13, !"exit_baco_tbl_iceland", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c", i32 163, i32 36}
!14 = !{ptr @clean_baco_tbl_iceland, !15, !"clean_baco_tbl_iceland", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c", i32 180, i32 36}
!16 = !{ptr @exit_baco_tbl, !17, !"exit_baco_tbl", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c", i32 133, i32 36}
!18 = !{ptr @clean_baco_tbl, !19, !"clean_baco_tbl", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/tonga_baco.c", i32 149, i32 36}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
