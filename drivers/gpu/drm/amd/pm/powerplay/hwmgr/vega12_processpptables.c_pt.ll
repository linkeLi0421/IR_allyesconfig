; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega12_processpptables.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pp_table_func = type { ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pp_atomfwctrl_smc_dpm_parameters = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8 }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.atom_common_table_header = type { i16, i8, i8 }
%struct._ATOM_VEGA12_POWERPLAYTABLE = type <{ %struct.atom_common_table_header, i8, i16, i32, i32, i16, i32, i8, i16, i16, i16, i16, i16, i16, [10 x i32], [10 x i32], [14 x i32], [14 x i32], [5 x i16], %struct.PPTable_t }>
%struct.PPTable_t = type { i32, [2 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i8, [3 x i8], i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, [10 x %struct.DpmDescriptor_t], [16 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [4 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [10 x i16], [2 x i16], [2 x i16], i16, i16, i16, i16, %struct.QuadraticInt_t, i16, i16, i16, [2 x i8], i8, [3 x i8], [2 x i8], [2 x i8], [2 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, [3 x i8], %struct.QuadraticInt_t, %struct.DroopInt_t, %struct.DroopInt_t, %struct.DroopInt_t, %struct.DroopInt_t, %struct.LinearInt_t, %struct.LinearInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, i16, i16, i8, i8, [2 x i8], i16, i16, i16, i16, i32, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, i16, i16, [14 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, [3 x i8], [9 x i32], [7 x i32] }
%struct.DpmDescriptor_t = type { i8, i8, i8, i8, %struct.LinearInt_t, %struct.QuadraticInt_t }
%struct.DroopInt_t = type { i32, i32, i32 }
%struct.LinearInt_t = type { i32, i32 }
%struct.QuadraticInt_t = type { i32, i32, i32 }
%struct.phm_ppt_v3_information = type { i8, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr }

@vega12_pptable_funcs = dso_local constant { %struct.pp_table_func, [16 x i8] } { %struct.pp_table_func { ptr @vega12_pp_tables_initialize, ptr @vega12_pp_tables_uninitialize, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vega12_pp_tables_initialize = private unnamed_addr constant [28 x i8] c"vega12_pp_tables_initialize\00", align 1
@vega12_pp_tables_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_pp_tables_initialize, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c\00", [54 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._entry_ptr = internal global ptr @vega12_pp_tables_initialize._entry, section ".printk_index", align 4
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate hwmgr->pptable!\00", [61 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_pp_tables_initialize, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._entry_ptr.6 = internal global ptr @vega12_pp_tables_initialize._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Missing PowerPlay Table!\00", [39 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_pp_tables_initialize, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._entry_ptr.10 = internal global ptr @vega12_pp_tables_initialize._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"check_powerplay_tables failed\00", [34 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_pp_tables_initialize, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._entry_ptr.14 = internal global ptr @vega12_pp_tables_initialize._entry.13, section ".printk_index", align 4
@vega12_pp_tables_initialize._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega12_pp_tables_initialize, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega12_pp_tables_initialize._entry_ptr.18 = internal global ptr @vega12_pp_tables_initialize._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"init_powerplay_table_information failed\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_powerplay_tables._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.check_powerplay_tables = private unnamed_addr constant [23 x i8] c"check_powerplay_tables\00", align 1
@check_powerplay_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr = internal global ptr @check_powerplay_tables._entry, section ".printk_index", align 4
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported PPTable format!\00", [36 x i8] zeroinitializer }, align 32
@check_powerplay_tables._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr.23 = internal global ptr @check_powerplay_tables._entry.22, section ".printk_index", align 4
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid PowerPlay Table!\00", [39 x i8] zeroinitializer }, align 32
@append_vbios_pptable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.append_vbios_pptable = private unnamed_addr constant [21 x i8] c"append_vbios_pptable\00", align 1
@append_vbios_pptable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.append_vbios_pptable, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@append_vbios_pptable._entry_ptr = internal global ptr @append_vbios_pptable._entry, section ".printk_index", align 4
@.str.25 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[appendVbiosPPTable] Failed to retrieve Smc Dpm Table from VBIOS!\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"vega12_pptable_funcs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 320, i32 28 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 271, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 275, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 279, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 284, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 288, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 68, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 71, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [77 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 106, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @append_vbios_pptable._entry, ptr @append_vbios_pptable._entry_ptr, ptr @check_powerplay_tables._entry, ptr @check_powerplay_tables._entry.22, ptr @check_powerplay_tables._entry_ptr, ptr @check_powerplay_tables._entry_ptr.23, ptr @vega12_pp_tables_initialize._entry, ptr @vega12_pp_tables_initialize._entry.13, ptr @vega12_pp_tables_initialize._entry.17, ptr @vega12_pp_tables_initialize._entry.5, ptr @vega12_pp_tables_initialize._entry.9, ptr @vega12_pp_tables_initialize._entry_ptr, ptr @vega12_pp_tables_initialize._entry_ptr.10, ptr @vega12_pp_tables_initialize._entry_ptr.14, ptr @vega12_pp_tables_initialize._entry_ptr.18, ptr @vega12_pp_tables_initialize._entry_ptr.6, ptr @vega12_pptable_funcs, ptr @vega12_pp_tables_initialize._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vega12_pp_tables_initialize._rs.4, ptr @.str.7, ptr @vega12_pp_tables_initialize._rs.8, ptr @.str.11, ptr @vega12_pp_tables_initialize._rs.16, ptr @.str.19, ptr @check_powerplay_tables._rs, ptr @.str.20, ptr @check_powerplay_tables._rs.21, ptr @.str.24, ptr @append_vbios_pptable._rs, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_pptable_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_pp_tables_initialize._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_pp_tables_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_pp_tables_initialize._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_pp_tables_initialize._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_pp_tables_initialize._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_pp_tables_initialize._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_pp_tables_initialize._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_pp_tables_initialize._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega12_pp_tables_initialize._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_vbios_pptable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_vbios_pptable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_pp_tables_initialize(ptr noundef %hwmgr) #0 align 64 {
entry:
  %smc_dpm_table.i.i = alloca %struct.pp_atomfwctrl_smc_dpm_parameters, align 2
  %size.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #9
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %1 = ptrtoint ptr %pptable to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pptable, align 4
  %cmp.not = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not, label %if.then, label %do.end8

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @vega12_pp_tables_initialize._rs, ptr noundef nonnull @__func__.vega12_pp_tables_initialize) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  br label %cleanup

do.end8:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #6
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size.i, align 2, !annotation !57
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #6
  %3 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %frev.i, align 1, !annotation !57
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #6
  %4 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %crev.i, align 1, !annotation !57
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %5 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soft_pp_table.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %get_powerplay_table.exit, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #6
  br label %do.end24

get_powerplay_table.exit:                         ; preds = %do.end8
  %7 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %8, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #6
  %9 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %11 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %12 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #6
  %cmp11.not = icmp eq ptr %call.i, null
  br i1 %cmp11.not, label %if.then12, label %get_powerplay_table.exit.do.end24_crit_edge

get_powerplay_table.exit.do.end24_crit_edge:      ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.then12:                                        ; preds = %get_powerplay_table.exit
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @vega12_pp_tables_initialize._rs.4, ptr noundef nonnull @__func__.vega12_pp_tables_initialize) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %do.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

do.end24:                                         ; preds = %get_powerplay_table.exit.do.end24_crit_edge, %get_powerplay_table.exit.thread
  %table_address.0.i98 = phi ptr [ %6, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.do.end24_crit_edge ]
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %table_address.0.i98, i32 0, i32 1
  %13 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %format_revision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp.i = icmp ugt i8 %14, 8
  br i1 %cmp.i, label %do.body7.i, label %if.then.i90

if.then.i90:                                      ; preds = %do.end24
  %call.i88 = call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs, ptr noundef nonnull @__func__.check_powerplay_tables) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %if.then.i90.if.then28_crit_edge, label %if.then.i90.return.sink.split.i_crit_edge

if.then.i90.return.sink.split.i_crit_edge:        ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

if.then.i90.if.then28_crit_edge:                  ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

do.body7.i:                                       ; preds = %do.end24
  %15 = ptrtoint ptr %table_address.0.i98 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %table_address.0.i98, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp10.not.i = icmp eq i16 %16, 0
  br i1 %cmp10.not.i, label %if.then12.i, label %do.end40

if.then12.i:                                      ; preds = %do.body7.i
  %call13.i = call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs.21, ptr noundef nonnull @__func__.check_powerplay_tables) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.then28_crit_edge, label %if.then12.i.return.sink.split.i_crit_edge

if.then12.i.return.sink.split.i_crit_edge:        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

if.then12.i.if.then28_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

return.sink.split.i:                              ; preds = %if.then12.i.return.sink.split.i_crit_edge, %if.then.i90.return.sink.split.i_crit_edge
  %.str.24.sink.i = phi ptr [ @.str.20, %if.then.i90.return.sink.split.i_crit_edge ], [ @.str.24, %if.then12.i.return.sink.split.i_crit_edge ]
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.24.sink.i) #10
  br label %if.then28

if.then28:                                        ; preds = %return.sink.split.i, %if.then12.i.if.then28_crit_edge, %if.then.i90.if.then28_crit_edge
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @vega12_pp_tables_initialize._rs.8, ptr noundef nonnull @__func__.vega12_pp_tables_initialize) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.cleanup_crit_edge, label %do.end34

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #10
  br label %cleanup

do.end40:                                         ; preds = %do.body7.i
  %ulPlatformCaps = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 6
  %17 = ptrtoint ptr %ulPlatformCaps to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %ulPlatformCaps, align 1
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %20 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %21, -35
  %and.i = shl i32 %19, 1
  %22 = and i32 %and.i, 2
  %storemerge.i = or i32 %22, %and1.i.i.i
  %and1.i = shl i32 %19, 4
  %23 = and i32 %and1.i, 32
  %storemerge21.i = or i32 %storemerge.i, %23
  store i32 %storemerge21.i, ptr %platform_descriptor.i.i, align 4
  %and3.i = and i32 %19, 8
  %arrayidx.i8.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i8.i.i, align 4
  %and1.i.i10.i = and i32 %25, -9
  %or.i.i8.sink.i = or i32 %and1.i.i10.i, %and3.i
  store i32 %or.i.i8.sink.i, ptr %arrayidx.i8.i.i, align 4
  %arrayidx.i8.i17.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx.i8.i17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i8.i17.i, align 4
  %and1.i.i18.i = and i32 %27, -5
  %and5.i = lshr i32 %19, 2
  %28 = and i32 %and5.i, 4
  %or.i.i15.sink.i = or i32 %and1.i.i18.i, %28
  store i32 %or.i.i15.sink.i, ptr %arrayidx.i8.i17.i, align 4
  %29 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pptable, align 4
  %ucThermalControllerType.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 7
  %31 = ptrtoint ptr %ucThermalControllerType.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ucThermalControllerType.i, align 1
  %thermal_controller.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34
  %33 = ptrtoint ptr %thermal_controller.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %thermal_controller.i, align 4
  %34 = load i8, ptr %ucThermalControllerType.i, align 1
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %30, align 4
  %36 = load i8, ptr %thermal_controller.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.not.i = icmp eq i8 %36, 0
  %37 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i92 = and i32 %38, -17
  %masksel.i = select i1 %cmp.not.i, i32 0, i32 16
  %storemerge.i93 = or i32 %and1.i.i.i92, %masksel.i
  store i32 %storemerge.i93, ptr %platform_descriptor.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %40, 1073741824
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %ODSettingsMax.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 16
  %41 = ptrtoint ptr %ODSettingsMax.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %ODSettingsMax.i, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42) #6
  %44 = call i32 @llvm.umin.i32(i32 %43, i32 198000) #6
  %45 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %45, align 4
  %arrayidx14.i = getelementptr %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 16, i32 8
  %47 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx14.i, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48) #6
  %memoryClock.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 2, i32 1
  %50 = ptrtoint ptr %memoryClock.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %memoryClock.i, align 4
  %od_settings_max.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 10
  %call.i94 = call i32 @phm_copy_overdrive_settings_limits_array(ptr noundef %hwmgr, ptr noundef %od_settings_max.i, ptr noundef %ODSettingsMax.i, i32 noundef 14) #6
  %od_settings_min.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 11
  %ODSettingsMin.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 17
  %call20.i = call i32 @phm_copy_overdrive_settings_limits_array(ptr noundef %hwmgr, ptr noundef %od_settings_min.i, ptr noundef %ODSettingsMin.i, i32 noundef 14) #6
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp24.not.i = icmp eq i32 %52, 0
  br i1 %cmp24.not.i, label %do.end40.if.end35.i_crit_edge, label %land.lhs.true.i

do.end40.if.end35.i_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %do.end40
  %53 = ptrtoint ptr %memoryClock.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %memoryClock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp29.not.i = icmp eq i32 %54, 0
  br i1 %cmp29.not.i, label %land.lhs.true.i.if.end35.i_crit_edge, label %if.then31.i

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then31.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %platform_descriptor.i.i, align 4
  %or.i111.i = or i32 %56, 4
  store i32 %or.i111.i, ptr %platform_descriptor.i.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %land.lhs.true.i.if.end35.i_crit_edge, %do.end40.if.end35.i_crit_edge
  %usSmallPowerLimit1.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 8
  %57 = ptrtoint ptr %usSmallPowerLimit1.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %usSmallPowerLimit1.i, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58) #6
  %us_small_power_limit1.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 1
  %60 = ptrtoint ptr %us_small_power_limit1.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %us_small_power_limit1.i, align 2
  %usSmallPowerLimit2.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 9
  %61 = ptrtoint ptr %usSmallPowerLimit2.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %usSmallPowerLimit2.i, align 1
  %63 = call i16 @llvm.bswap.i16(i16 %62) #6
  %us_small_power_limit2.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 2
  %64 = ptrtoint ptr %us_small_power_limit2.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %us_small_power_limit2.i, align 4
  %usBoostPowerLimit.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 10
  %65 = ptrtoint ptr %usBoostPowerLimit.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %usBoostPowerLimit.i, align 1
  %67 = call i16 @llvm.bswap.i16(i16 %66) #6
  %us_boost_power_limit.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 3
  %68 = ptrtoint ptr %us_boost_power_limit.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %us_boost_power_limit.i, align 2
  %usODTurboPowerLimit.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 11
  %69 = ptrtoint ptr %usODTurboPowerLimit.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %usODTurboPowerLimit.i, align 1
  %71 = call i16 @llvm.bswap.i16(i16 %70) #6
  %us_od_turbo_power_limit.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 4
  %72 = ptrtoint ptr %us_od_turbo_power_limit.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %us_od_turbo_power_limit.i, align 4
  %usODPowerSavePowerLimit.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 12
  %73 = ptrtoint ptr %usODPowerSavePowerLimit.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %usODPowerSavePowerLimit.i, align 1
  %75 = call i16 @llvm.bswap.i16(i16 %74) #6
  %us_od_powersave_power_limit.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 5
  %76 = ptrtoint ptr %us_od_powersave_power_limit.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %us_od_powersave_power_limit.i, align 2
  %usSoftwareShutdownTemp.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 13
  %77 = ptrtoint ptr %usSoftwareShutdownTemp.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %usSoftwareShutdownTemp.i, align 1
  %79 = call i16 @llvm.bswap.i16(i16 %78) #6
  %us_software_shutdown_temp.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 6
  %80 = ptrtoint ptr %us_software_shutdown_temp.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %us_software_shutdown_temp.i, align 4
  %arrayidx37.i = getelementptr %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 16, i32 9
  %81 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %arrayidx37.i, align 1
  %83 = call i32 @llvm.bswap.i32(i32 %82) #6
  %conv38.i = trunc i32 %83 to i16
  %TDPODLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 16
  %84 = ptrtoint ptr %TDPODLimit.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv38.i, ptr %TDPODLimit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv38.i)
  %tobool43.not.i = icmp eq i16 %conv38.i, 0
  br i1 %tobool43.not.i, label %if.end35.i.if.end49.i_crit_edge, label %if.then44.i

if.end35.i.if.end49.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then44.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i8.i.i, align 4
  %or.i113.i = or i32 %86, 262144
  store i32 %or.i113.i, ptr %arrayidx.i8.i.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then44.i, %if.end35.i.if.end49.i_crit_edge
  %power_saving_clock_max.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 7
  %PowerSavingClockMax.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 14
  %call51.i = call i32 @phm_copy_clock_limits_array(ptr noundef %hwmgr, ptr noundef %power_saving_clock_max.i, ptr noundef %PowerSavingClockMax.i, i32 noundef 10) #6
  %power_saving_clock_min.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 8
  %PowerSavingClockMin.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 15
  %call53.i = call i32 @phm_copy_clock_limits_array(ptr noundef %hwmgr, ptr noundef %power_saving_clock_min.i, ptr noundef %PowerSavingClockMin.i, i32 noundef 10) #6
  %smcPPTable.i = getelementptr inbounds %struct._ATOM_VEGA12_POWERPLAYTABLE, ptr %table_address.0.i98, i32 0, i32 19
  %call54.i = call ptr @kmemdup(ptr noundef %smcPPTable.i, i32 noundef 980, i32 noundef 3264) #6
  %smc_pptable.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %30, i32 0, i32 12
  %87 = ptrtoint ptr %smc_pptable.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call54.i, ptr %smc_pptable.i, align 4
  %cmp56.i = icmp eq ptr %call54.i, null
  br i1 %cmp56.i, label %if.end49.i.if.then60_crit_edge, label %if.end59.i

if.end49.i.if.then60_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

if.end59.i:                                       ; preds = %if.end49.i
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %smc_dpm_table.i.i) #6
  %88 = call ptr @memset(ptr %smc_dpm_table.i.i, i32 255, i32 68)
  %call.i.i = call i32 @pp_atomfwctrl_get_smc_dpm_information(ptr noundef %hwmgr, ptr noundef nonnull %smc_dpm_table.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %init_powerplay_table_information.exit, label %if.then.i114.i

if.then.i114.i:                                   ; preds = %if.end59.i
  %call1.i.i = call i32 @___ratelimit(ptr noundef nonnull @append_vbios_pptable._rs, ptr noundef nonnull @__func__.append_vbios_pptable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i114.i.init_powerplay_table_information.exit.thread104_crit_edge, label %do.end.i.i

if.then.i114.i.init_powerplay_table_information.exit.thread104_crit_edge: ; preds = %if.then.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_powerplay_table_information.exit.thread104

do.end.i.i:                                       ; preds = %if.then.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #10
  br label %init_powerplay_table_information.exit.thread104

init_powerplay_table_information.exit.thread104:  ; preds = %do.end.i.i, %if.then.i114.i.init_powerplay_table_information.exit.thread104_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %smc_dpm_table.i.i) #6
  br label %if.then60

init_powerplay_table_information.exit:            ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %smc_dpm_table.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %smc_dpm_table.i.i, align 2
  %Liquid1_I2C_address.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 122
  %91 = ptrtoint ptr %Liquid1_I2C_address.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %Liquid1_I2C_address.i.i, align 4
  %liquid2_i2c_address.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %liquid2_i2c_address.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %liquid2_i2c_address.i.i, align 1
  %Liquid2_I2C_address.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 123
  %94 = ptrtoint ptr %Liquid2_I2C_address.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %Liquid2_I2C_address.i.i, align 1
  %vr_i2c_address.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %vr_i2c_address.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %vr_i2c_address.i.i, align 2
  %Vr_I2C_address.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 124
  %97 = ptrtoint ptr %Vr_I2C_address.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %Vr_I2C_address.i.i, align 2
  %plx_i2c_address.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 3
  %98 = ptrtoint ptr %plx_i2c_address.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %plx_i2c_address.i.i, align 1
  %Plx_I2C_address.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 125
  %100 = ptrtoint ptr %Plx_I2C_address.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %Plx_I2C_address.i.i, align 1
  %liquid_i2c_linescl.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 4
  %101 = ptrtoint ptr %liquid_i2c_linescl.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %liquid_i2c_linescl.i.i, align 2
  %Liquid_I2C_LineSCL.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 126
  %103 = ptrtoint ptr %Liquid_I2C_LineSCL.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %Liquid_I2C_LineSCL.i.i, align 4
  %liquid_i2c_linesda.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 5
  %104 = ptrtoint ptr %liquid_i2c_linesda.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %liquid_i2c_linesda.i.i, align 1
  %Liquid_I2C_LineSDA.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 127
  %106 = ptrtoint ptr %Liquid_I2C_LineSDA.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %Liquid_I2C_LineSDA.i.i, align 1
  %vr_i2c_linescl.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 6
  %107 = ptrtoint ptr %vr_i2c_linescl.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %vr_i2c_linescl.i.i, align 2
  %Vr_I2C_LineSCL.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 128
  %109 = ptrtoint ptr %Vr_I2C_LineSCL.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %Vr_I2C_LineSCL.i.i, align 2
  %vr_i2c_linesda.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 7
  %110 = ptrtoint ptr %vr_i2c_linesda.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %vr_i2c_linesda.i.i, align 1
  %Vr_I2C_LineSDA.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 129
  %112 = ptrtoint ptr %Vr_I2C_LineSDA.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %Vr_I2C_LineSDA.i.i, align 1
  %plx_i2c_linescl.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 8
  %113 = ptrtoint ptr %plx_i2c_linescl.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %plx_i2c_linescl.i.i, align 2
  %Plx_I2C_LineSCL.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 130
  %115 = ptrtoint ptr %Plx_I2C_LineSCL.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %Plx_I2C_LineSCL.i.i, align 4
  %plx_i2c_linesda.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 9
  %116 = ptrtoint ptr %plx_i2c_linesda.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %plx_i2c_linesda.i.i, align 1
  %Plx_I2C_LineSDA.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 131
  %118 = ptrtoint ptr %Plx_I2C_LineSDA.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %Plx_I2C_LineSDA.i.i, align 1
  %vrsensorpresent.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 10
  %119 = ptrtoint ptr %vrsensorpresent.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %vrsensorpresent.i.i, align 2
  %VrSensorPresent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 132
  %121 = ptrtoint ptr %VrSensorPresent.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %VrSensorPresent.i.i, align 2
  %liquidsensorpresent.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 11
  %122 = ptrtoint ptr %liquidsensorpresent.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %liquidsensorpresent.i.i, align 1
  %LiquidSensorPresent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 133
  %124 = ptrtoint ptr %LiquidSensorPresent.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %LiquidSensorPresent.i.i, align 1
  %maxvoltagestepgfx.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 12
  %125 = ptrtoint ptr %maxvoltagestepgfx.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %maxvoltagestepgfx.i.i, align 2
  %MaxVoltageStepGfx.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 134
  %127 = ptrtoint ptr %MaxVoltageStepGfx.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %MaxVoltageStepGfx.i.i, align 4
  %maxvoltagestepsoc.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 13
  %128 = ptrtoint ptr %maxvoltagestepsoc.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %maxvoltagestepsoc.i.i, align 2
  %MaxVoltageStepSoc.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 135
  %130 = ptrtoint ptr %MaxVoltageStepSoc.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %MaxVoltageStepSoc.i.i, align 2
  %vddgfxvrmapping.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 14
  %131 = ptrtoint ptr %vddgfxvrmapping.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %vddgfxvrmapping.i.i, align 2
  %VddGfxVrMapping.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 136
  %133 = ptrtoint ptr %VddGfxVrMapping.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %VddGfxVrMapping.i.i, align 4
  %vddsocvrmapping.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 15
  %134 = ptrtoint ptr %vddsocvrmapping.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %vddsocvrmapping.i.i, align 1
  %VddSocVrMapping.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 137
  %136 = ptrtoint ptr %VddSocVrMapping.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %VddSocVrMapping.i.i, align 1
  %vddmem0vrmapping.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 16
  %137 = ptrtoint ptr %vddmem0vrmapping.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %vddmem0vrmapping.i.i, align 2
  %VddMem0VrMapping.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 138
  %139 = ptrtoint ptr %VddMem0VrMapping.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %VddMem0VrMapping.i.i, align 2
  %vddmem1vrmapping.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 17
  %140 = ptrtoint ptr %vddmem1vrmapping.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %vddmem1vrmapping.i.i, align 1
  %VddMem1VrMapping.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 139
  %142 = ptrtoint ptr %VddMem1VrMapping.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %VddMem1VrMapping.i.i, align 1
  %gfxulvphasesheddingmask.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 18
  %143 = ptrtoint ptr %gfxulvphasesheddingmask.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %gfxulvphasesheddingmask.i.i, align 2
  %GfxUlvPhaseSheddingMask.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 140
  %145 = ptrtoint ptr %GfxUlvPhaseSheddingMask.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %GfxUlvPhaseSheddingMask.i.i, align 4
  %soculvphasesheddingmask.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 19
  %146 = ptrtoint ptr %soculvphasesheddingmask.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %soculvphasesheddingmask.i.i, align 1
  %SocUlvPhaseSheddingMask.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 141
  %148 = ptrtoint ptr %SocUlvPhaseSheddingMask.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %SocUlvPhaseSheddingMask.i.i, align 1
  %gfxmaxcurrent.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 20
  %149 = ptrtoint ptr %gfxmaxcurrent.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %gfxmaxcurrent.i.i, align 2
  %GfxMaxCurrent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 144
  %151 = ptrtoint ptr %GfxMaxCurrent.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %GfxMaxCurrent.i.i, align 4
  %gfxoffset.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 21
  %152 = ptrtoint ptr %gfxoffset.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %gfxoffset.i.i, align 2
  %GfxOffset.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 145
  %154 = ptrtoint ptr %GfxOffset.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %GfxOffset.i.i, align 2
  %padding_telemetrygfx.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 22
  %155 = ptrtoint ptr %padding_telemetrygfx.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %padding_telemetrygfx.i.i, align 1
  %Padding_TelemetryGfx.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 146
  %157 = ptrtoint ptr %Padding_TelemetryGfx.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %Padding_TelemetryGfx.i.i, align 1
  %socmaxcurrent.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 23
  %158 = ptrtoint ptr %socmaxcurrent.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %socmaxcurrent.i.i, align 2
  %SocMaxCurrent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 147
  %160 = ptrtoint ptr %SocMaxCurrent.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %SocMaxCurrent.i.i, align 4
  %socoffset.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 24
  %161 = ptrtoint ptr %socoffset.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %socoffset.i.i, align 2
  %SocOffset.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 148
  %163 = ptrtoint ptr %SocOffset.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %SocOffset.i.i, align 2
  %padding_telemetrysoc.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 25
  %164 = ptrtoint ptr %padding_telemetrysoc.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %padding_telemetrysoc.i.i, align 1
  %Padding_TelemetrySoc.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 149
  %166 = ptrtoint ptr %Padding_TelemetrySoc.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %Padding_TelemetrySoc.i.i, align 1
  %mem0maxcurrent.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 26
  %167 = ptrtoint ptr %mem0maxcurrent.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %mem0maxcurrent.i.i, align 2
  %Mem0MaxCurrent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 150
  %169 = ptrtoint ptr %Mem0MaxCurrent.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %Mem0MaxCurrent.i.i, align 4
  %mem0offset.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 27
  %170 = ptrtoint ptr %mem0offset.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %mem0offset.i.i, align 2
  %Mem0Offset.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 151
  %172 = ptrtoint ptr %Mem0Offset.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %Mem0Offset.i.i, align 2
  %padding_telemetrymem0.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 28
  %173 = ptrtoint ptr %padding_telemetrymem0.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %padding_telemetrymem0.i.i, align 1
  %Padding_TelemetryMem0.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 152
  %175 = ptrtoint ptr %Padding_TelemetryMem0.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %Padding_TelemetryMem0.i.i, align 1
  %mem1maxcurrent.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 29
  %176 = ptrtoint ptr %mem1maxcurrent.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %mem1maxcurrent.i.i, align 2
  %Mem1MaxCurrent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 153
  %178 = ptrtoint ptr %Mem1MaxCurrent.i.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %Mem1MaxCurrent.i.i, align 4
  %mem1offset.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 30
  %179 = ptrtoint ptr %mem1offset.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %mem1offset.i.i, align 2
  %Mem1Offset.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 154
  %181 = ptrtoint ptr %Mem1Offset.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %Mem1Offset.i.i, align 2
  %padding_telemetrymem1.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 31
  %182 = ptrtoint ptr %padding_telemetrymem1.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %padding_telemetrymem1.i.i, align 1
  %Padding_TelemetryMem1.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 155
  %184 = ptrtoint ptr %Padding_TelemetryMem1.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %Padding_TelemetryMem1.i.i, align 1
  %acdcgpio.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 32
  %185 = ptrtoint ptr %acdcgpio.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %acdcgpio.i.i, align 2
  %AcDcGpio.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 156
  %187 = ptrtoint ptr %AcDcGpio.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %AcDcGpio.i.i, align 4
  %acdcpolarity.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 33
  %188 = ptrtoint ptr %acdcpolarity.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %acdcpolarity.i.i, align 1
  %AcDcPolarity.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 157
  %190 = ptrtoint ptr %AcDcPolarity.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %AcDcPolarity.i.i, align 1
  %vr0hotgpio.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 34
  %191 = ptrtoint ptr %vr0hotgpio.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %vr0hotgpio.i.i, align 2
  %VR0HotGpio.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 158
  %193 = ptrtoint ptr %VR0HotGpio.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %VR0HotGpio.i.i, align 2
  %vr0hotpolarity.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 35
  %194 = ptrtoint ptr %vr0hotpolarity.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %vr0hotpolarity.i.i, align 1
  %VR0HotPolarity.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 159
  %196 = ptrtoint ptr %VR0HotPolarity.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %VR0HotPolarity.i.i, align 1
  %vr1hotgpio.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 36
  %197 = ptrtoint ptr %vr1hotgpio.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %vr1hotgpio.i.i, align 2
  %VR1HotGpio.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 160
  %199 = ptrtoint ptr %VR1HotGpio.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %VR1HotGpio.i.i, align 4
  %vr1hotpolarity.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 37
  %200 = ptrtoint ptr %vr1hotpolarity.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %vr1hotpolarity.i.i, align 1
  %VR1HotPolarity.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 161
  %202 = ptrtoint ptr %VR1HotPolarity.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %VR1HotPolarity.i.i, align 1
  %padding1.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 38
  %203 = ptrtoint ptr %padding1.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %padding1.i.i, align 2
  %Padding1.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 162
  %205 = ptrtoint ptr %Padding1.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %Padding1.i.i, align 2
  %padding2.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 39
  %206 = ptrtoint ptr %padding2.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %padding2.i.i, align 1
  %Padding2.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 163
  %208 = ptrtoint ptr %Padding2.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %Padding2.i.i, align 1
  %ledpin0.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 40
  %209 = ptrtoint ptr %ledpin0.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %ledpin0.i.i, align 2
  %LedPin0.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 164
  %211 = ptrtoint ptr %LedPin0.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %LedPin0.i.i, align 4
  %ledpin1.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 41
  %212 = ptrtoint ptr %ledpin1.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %ledpin1.i.i, align 1
  %LedPin1.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 165
  %214 = ptrtoint ptr %LedPin1.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %LedPin1.i.i, align 1
  %ledpin2.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 42
  %215 = ptrtoint ptr %ledpin2.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %ledpin2.i.i, align 2
  %LedPin2.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 166
  %217 = ptrtoint ptr %LedPin2.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %LedPin2.i.i, align 2
  %pllgfxclkspreadenabled.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 43
  %218 = ptrtoint ptr %pllgfxclkspreadenabled.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %pllgfxclkspreadenabled.i.i, align 1
  %PllGfxclkSpreadEnabled.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 168
  %220 = ptrtoint ptr %PllGfxclkSpreadEnabled.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %PllGfxclkSpreadEnabled.i.i, align 4
  %pllgfxclkspreadpercent.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 44
  %221 = ptrtoint ptr %pllgfxclkspreadpercent.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %pllgfxclkspreadpercent.i.i, align 2
  %PllGfxclkSpreadPercent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 169
  %223 = ptrtoint ptr %PllGfxclkSpreadPercent.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %PllGfxclkSpreadPercent.i.i, align 1
  %pllgfxclkspreadfreq.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 45
  %224 = ptrtoint ptr %pllgfxclkspreadfreq.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %pllgfxclkspreadfreq.i.i, align 2
  %PllGfxclkSpreadFreq.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 170
  %226 = ptrtoint ptr %PllGfxclkSpreadFreq.i.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %225, ptr %PllGfxclkSpreadFreq.i.i, align 2
  %UclkSpreadEnabled.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 171
  %227 = ptrtoint ptr %UclkSpreadEnabled.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %UclkSpreadEnabled.i.i, align 4
  %uclkspreadpercent.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 47
  %228 = ptrtoint ptr %uclkspreadpercent.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %uclkspreadpercent.i.i, align 1
  %UclkSpreadPercent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 172
  %230 = ptrtoint ptr %UclkSpreadPercent.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %UclkSpreadPercent.i.i, align 1
  %uclkspreadfreq.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 48
  %231 = ptrtoint ptr %uclkspreadfreq.i.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %uclkspreadfreq.i.i, align 2
  %UclkSpreadFreq.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 173
  %233 = ptrtoint ptr %UclkSpreadFreq.i.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %232, ptr %UclkSpreadFreq.i.i, align 2
  %SocclkSpreadEnabled.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 174
  %234 = ptrtoint ptr %SocclkSpreadEnabled.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 0, ptr %SocclkSpreadEnabled.i.i, align 4
  %socclkspreadpercent.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 50
  %235 = ptrtoint ptr %socclkspreadpercent.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %socclkspreadpercent.i.i, align 1
  %SocclkSpreadPercent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 175
  %237 = ptrtoint ptr %SocclkSpreadPercent.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %SocclkSpreadPercent.i.i, align 1
  %socclkspreadfreq.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 51
  %238 = ptrtoint ptr %socclkspreadfreq.i.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %socclkspreadfreq.i.i, align 2
  %SocclkSpreadFreq.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 176
  %240 = ptrtoint ptr %SocclkSpreadFreq.i.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 %239, ptr %SocclkSpreadFreq.i.i, align 2
  %acggfxclkspreadenabled.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 52
  %241 = ptrtoint ptr %acggfxclkspreadenabled.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %acggfxclkspreadenabled.i.i, align 2
  %AcgGfxclkSpreadEnabled.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 177
  %243 = ptrtoint ptr %AcgGfxclkSpreadEnabled.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %AcgGfxclkSpreadEnabled.i.i, align 4
  %acggfxclkspreadpercent.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 53
  %244 = ptrtoint ptr %acggfxclkspreadpercent.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %acggfxclkspreadpercent.i.i, align 1
  %AcgGfxclkSpreadPercent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 178
  %246 = ptrtoint ptr %AcgGfxclkSpreadPercent.i.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %AcgGfxclkSpreadPercent.i.i, align 1
  %acggfxclkspreadfreq.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 54
  %247 = ptrtoint ptr %acggfxclkspreadfreq.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %acggfxclkspreadfreq.i.i, align 2
  %AcgGfxclkSpreadFreq.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 179
  %249 = ptrtoint ptr %AcgGfxclkSpreadFreq.i.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %248, ptr %AcgGfxclkSpreadFreq.i.i, align 2
  %Vr2_I2C_address.i.i = getelementptr inbounds %struct.pp_atomfwctrl_smc_dpm_parameters, ptr %smc_dpm_table.i.i, i32 0, i32 55
  %250 = ptrtoint ptr %Vr2_I2C_address.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %Vr2_I2C_address.i.i, align 2
  %Vr2_I2C_address8.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call54.i, i32 0, i32 180
  %252 = ptrtoint ptr %Vr2_I2C_address8.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %Vr2_I2C_address8.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %smc_dpm_table.i.i) #6
  br label %cleanup

if.then60:                                        ; preds = %init_powerplay_table_information.exit.thread104, %if.end49.i.if.then60_crit_edge
  %retval.0.i95103 = phi i32 [ -1, %init_powerplay_table_information.exit.thread104 ], [ -12, %if.end49.i.if.then60_crit_edge ]
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @vega12_pp_tables_initialize._rs.16, ptr noundef nonnull @__func__.vega12_pp_tables_initialize) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.cleanup_crit_edge, label %do.end66

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.then60.cleanup_crit_edge, %init_powerplay_table_information.exit, %do.end34, %if.then28.cleanup_crit_edge, %do.end18, %if.then12.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %if.then.cleanup_crit_edge ], [ -1, %do.end18 ], [ -1, %if.then12.cleanup_crit_edge ], [ -1, %do.end34 ], [ -1, %if.then28.cleanup_crit_edge ], [ %retval.0.i95103, %do.end66 ], [ %retval.0.i95103, %if.then60.cleanup_crit_edge ], [ 0, %init_powerplay_table_information.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega12_pp_tables_uninitialize(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %0 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pptable, align 4
  %power_saving_clock_max = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power_saving_clock_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_saving_clock_max, align 4
  tail call void @kfree(ptr noundef %3) #6
  %4 = ptrtoint ptr %power_saving_clock_max to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %power_saving_clock_max, align 4
  %power_saving_clock_min = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %power_saving_clock_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %power_saving_clock_min, align 4
  tail call void @kfree(ptr noundef %6) #6
  %7 = ptrtoint ptr %power_saving_clock_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %power_saving_clock_min, align 4
  %od_settings_max = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %od_settings_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %od_settings_max, align 4
  tail call void @kfree(ptr noundef %9) #6
  %10 = ptrtoint ptr %od_settings_max to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %od_settings_max, align 4
  %od_settings_min = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %od_settings_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %od_settings_min, align 4
  tail call void @kfree(ptr noundef %12) #6
  %13 = ptrtoint ptr %od_settings_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %od_settings_min, align 4
  %smc_pptable = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %smc_pptable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smc_pptable, align 4
  tail call void @kfree(ptr noundef %15) #6
  %16 = ptrtoint ptr %smc_pptable to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %smc_pptable, align 4
  %17 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pptable, align 4
  tail call void @kfree(ptr noundef %18) #6
  %19 = ptrtoint ptr %pptable to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pptable, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smu_atom_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_copy_overdrive_settings_limits_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_copy_clock_limits_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pp_atomfwctrl_get_smc_dpm_information(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @vega12_pptable_funcs, !1, !"vega12_pptable_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c", i32 320, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c", i32 271, i32 2}
!4 = !{ptr @vega12_pp_tables_initialize._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.vega12_pp_tables_initialize, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vega12_pp_tables_initialize._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vega12_pp_tables_initialize._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vega12_pp_tables_initialize._rs.4, !12, !"_rs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c", i32 275, i32 2}
!13 = !{ptr @vega12_pp_tables_initialize._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @vega12_pp_tables_initialize._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vega12_pp_tables_initialize._rs.8, !17, !"_rs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c", i32 279, i32 2}
!18 = !{ptr @vega12_pp_tables_initialize._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vega12_pp_tables_initialize._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c", i32 284, i32 2}
!23 = !{ptr @vega12_pp_tables_initialize._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @vega12_pp_tables_initialize._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vega12_pp_tables_initialize._rs.16, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c", i32 288, i32 2}
!28 = !{ptr @vega12_pp_tables_initialize._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vega12_pp_tables_initialize._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @check_powerplay_tables._rs, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c", i32 68, i32 2}
!33 = !{ptr @__func__.check_powerplay_tables, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @check_powerplay_tables._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @check_powerplay_tables._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @check_powerplay_tables._rs.21, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c", i32 71, i32 2}
!39 = !{ptr @check_powerplay_tables._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @check_powerplay_tables._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @append_vbios_pptable._rs, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega12_processpptables.c", i32 106, i32 2}
!44 = !{ptr @__func__.append_vbios_pptable, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @append_vbios_pptable._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @append_vbios_pptable._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
