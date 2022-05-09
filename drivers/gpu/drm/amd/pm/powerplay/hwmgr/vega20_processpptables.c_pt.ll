; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega20_processpptables.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c"
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
%struct._ATOM_VEGA20_POWERPLAYTABLE = type <{ %struct.atom_common_table_header, i8, i16, i32, i32, i16, i32, i8, i16, i16, i16, i16, i16, i16, %struct._ATOM_VEGA20_POWER_SAVING_CLOCK_RECORD, %struct._ATOM_VEGA20_OVERDRIVE8_RECORD, [5 x i16], %struct.PPTable_t }>
%struct._ATOM_VEGA20_POWER_SAVING_CLOCK_RECORD = type <{ i8, i32, [16 x i32], [16 x i32] }>
%struct._ATOM_VEGA20_OVERDRIVE8_RECORD = type <{ i8, i32, [32 x i8], i32, [32 x i32], [32 x i32] }>
%struct.PPTable_t = type { i32, [2 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i8, i8, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, [11 x %struct.DpmDescriptor_t], [16 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [4 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [11 x i16], i16, [2 x i16], [2 x i16], i16, i16, i16, i16, %struct.QuadraticInt_t, [4 x i8], i16, i8, i8, i8, [3 x i8], [2 x i8], [2 x i8], [2 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, [2 x i8], [2 x i8], [2 x %struct.QuadraticInt_t], %struct.DroopInt_t, %struct.DroopInt_t, %struct.DroopInt_t, %struct.DroopInt_t, [2 x %struct.LinearInt_t], [2 x %struct.QuadraticInt_t], [2 x i16], [2 x i8], [2 x i8], [2 x i16], [2 x i16], [2 x i8], [2 x i8], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i32, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, i16, i16, i16, i16, i16, i16, [2 x i16], [11 x i32], [3 x i32], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, [7 x %struct.I2cControllerConfig_t], [10 x i32], [8 x i32] }
%struct.DpmDescriptor_t = type { i8, i8, i8, i8, %struct.LinearInt_t, %struct.QuadraticInt_t }
%struct.LinearInt_t = type { i32, i32 }
%struct.DroopInt_t = type { i32, i32, i32 }
%struct.QuadraticInt_t = type { i32, i32, i32 }
%struct.I2cControllerConfig_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.phm_ppt_v3_information = type { i8, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atom_smc_dpm_info_v4_4 = type { %struct.atom_common_table_header, [3 x i32], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, [7 x %struct.smudpm_i2ccontrollerconfig_t], [10 x i32] }
%struct.smudpm_i2ccontrollerconfig_t = type { i32, i32, i32, i32, i32, i32, i32 }

@vega20_pptable_funcs = dso_local constant { %struct.pp_table_func, [16 x i8] } { %struct.pp_table_func { ptr @vega20_pp_tables_initialize, ptr @vega20_pp_tables_uninitialize, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vega20_pp_tables_initialize = private unnamed_addr constant [28 x i8] c"vega20_pp_tables_initialize\00", align 1
@vega20_pp_tables_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_pp_tables_initialize, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c\00", [54 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._entry_ptr = internal global ptr @vega20_pp_tables_initialize._entry, section ".printk_index", align 4
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate hwmgr->pptable!\00", [61 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_pp_tables_initialize, ptr @.str.2, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._entry_ptr.6 = internal global ptr @vega20_pp_tables_initialize._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Missing PowerPlay Table!\00", [39 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_pp_tables_initialize, ptr @.str.2, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._entry_ptr.10 = internal global ptr @vega20_pp_tables_initialize._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"check_powerplay_tables failed\00", [34 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_pp_tables_initialize, ptr @.str.2, i32 929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._entry_ptr.14 = internal global ptr @vega20_pp_tables_initialize._entry.13, section ".printk_index", align 4
@vega20_pp_tables_initialize._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_pp_tables_initialize, ptr @.str.2, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_pp_tables_initialize._entry_ptr.18 = internal global ptr @vega20_pp_tables_initialize._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"init_powerplay_table_information failed\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_powerplay_tables._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.check_powerplay_tables = private unnamed_addr constant [23 x i8] c"check_powerplay_tables\00", align 1
@check_powerplay_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr = internal global ptr @check_powerplay_tables._entry, section ".printk_index", align 4
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported PPTable format!\00", [36 x i8] zeroinitializer }, align 32
@check_powerplay_tables._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr.23 = internal global ptr @check_powerplay_tables._entry.22, section ".printk_index", align 4
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid PowerPlay Table!\00", [39 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\016amdgpu: [powerplay] Unmatch PPTable version: pptable from VBIOS is V%d while driver supported is V%d!\00", [56 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr.27 = internal global ptr @check_powerplay_tables._entry.25, section ".printk_index", align 4
@append_vbios_pptable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.append_vbios_pptable = private unnamed_addr constant [21 x i8] c"append_vbios_pptable\00", align 1
@append_vbios_pptable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.append_vbios_pptable, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@append_vbios_pptable._entry_ptr = internal global ptr @append_vbios_pptable._entry, section ".printk_index", align 4
@.str.28 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[appendVbiosPPTable] Failed to retrieve Smc Dpm Table from VBIOS!\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"vega20_pptable_funcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 967, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 915, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 919, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 923, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 928, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 932, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 642, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 645, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 649, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [77 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 722, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @append_vbios_pptable._entry, ptr @append_vbios_pptable._entry_ptr, ptr @check_powerplay_tables._entry, ptr @check_powerplay_tables._entry.22, ptr @check_powerplay_tables._entry.25, ptr @check_powerplay_tables._entry_ptr, ptr @check_powerplay_tables._entry_ptr.23, ptr @check_powerplay_tables._entry_ptr.27, ptr @vega20_pp_tables_initialize._entry, ptr @vega20_pp_tables_initialize._entry.13, ptr @vega20_pp_tables_initialize._entry.17, ptr @vega20_pp_tables_initialize._entry.5, ptr @vega20_pp_tables_initialize._entry.9, ptr @vega20_pp_tables_initialize._entry_ptr, ptr @vega20_pp_tables_initialize._entry_ptr.10, ptr @vega20_pp_tables_initialize._entry_ptr.14, ptr @vega20_pp_tables_initialize._entry_ptr.18, ptr @vega20_pp_tables_initialize._entry_ptr.6, ptr @vega20_pptable_funcs, ptr @vega20_pp_tables_initialize._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vega20_pp_tables_initialize._rs.4, ptr @.str.7, ptr @vega20_pp_tables_initialize._rs.8, ptr @.str.11, ptr @vega20_pp_tables_initialize._rs.16, ptr @.str.19, ptr @check_powerplay_tables._rs, ptr @.str.20, ptr @check_powerplay_tables._rs.21, ptr @.str.24, ptr @.str.26, ptr @append_vbios_pptable._rs, ptr @.str.28], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_pptable_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_pp_tables_initialize._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_pp_tables_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_pp_tables_initialize._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_pp_tables_initialize._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_pp_tables_initialize._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_pp_tables_initialize._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_pp_tables_initialize._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_pp_tables_initialize._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_pp_tables_initialize._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_vbios_pptable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_vbios_pptable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_pp_tables_initialize(ptr noundef %hwmgr) #0 align 64 {
entry:
  %size.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #10
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %1 = ptrtoint ptr %pptable to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pptable, align 4
  %cmp.not = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not, label %if.then, label %do.end8

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_pp_tables_initialize._rs, ptr noundef nonnull @__func__.vega20_pp_tables_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.end8:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #7
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size.i, align 2, !annotation !61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #7
  %3 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %frev.i, align 1, !annotation !61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #7
  %4 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %crev.i, align 1, !annotation !61
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %5 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soft_pp_table.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %get_powerplay_table.exit, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  br label %do.end24

get_powerplay_table.exit:                         ; preds = %do.end8
  %7 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %8, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #7
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  %cmp11.not = icmp eq ptr %call.i, null
  br i1 %cmp11.not, label %if.then12, label %get_powerplay_table.exit.do.end24_crit_edge

get_powerplay_table.exit.do.end24_crit_edge:      ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

if.then12:                                        ; preds = %get_powerplay_table.exit
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @vega20_pp_tables_initialize._rs.4, ptr noundef nonnull @__func__.vega20_pp_tables_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %do.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

do.end24:                                         ; preds = %get_powerplay_table.exit.do.end24_crit_edge, %get_powerplay_table.exit.thread
  %table_address.0.i101 = phi ptr [ %6, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.do.end24_crit_edge ]
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %table_address.0.i101, i32 0, i32 1
  %13 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %format_revision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %cmp.i = icmp ugt i8 %14, 10
  br i1 %cmp.i, label %do.body7.i, label %if.then.i90

if.then.i90:                                      ; preds = %do.end24
  %call.i88 = call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs, ptr noundef nonnull @__func__.check_powerplay_tables) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %if.then.i90.if.then28_crit_edge, label %do.end.i

if.then.i90.if.then28_crit_edge:                  ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

do.end.i:                                         ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #11
  br label %if.then28

do.body7.i:                                       ; preds = %do.end24
  %15 = ptrtoint ptr %table_address.0.i101 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %table_address.0.i101, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp10.not.i = icmp eq i16 %16, 0
  br i1 %cmp10.not.i, label %if.then12.i, label %do.end22.i

if.then12.i:                                      ; preds = %do.body7.i
  %call13.i = call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs.21, ptr noundef nonnull @__func__.check_powerplay_tables) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.then28_crit_edge, label %do.end17.i

if.then12.i.if.then28_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

do.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #11
  br label %if.then28

do.end22.i:                                       ; preds = %do.body7.i
  %smcPPTable.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 17
  %17 = ptrtoint ptr %smcPPTable.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %smcPPTable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp23.not.i = icmp eq i32 %18, 3
  br i1 %cmp23.not.i, label %do.end40, label %do.end27.i

do.end27.i:                                       ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %18, i32 noundef 3) #11
  br label %if.then28

if.then28:                                        ; preds = %do.end27.i, %do.end17.i, %if.then12.i.if.then28_crit_edge, %do.end.i, %if.then.i90.if.then28_crit_edge
  %retval.0.i.ph = phi i32 [ -1, %if.then12.i.if.then28_crit_edge ], [ -1, %do.end17.i ], [ -1, %if.then.i90.if.then28_crit_edge ], [ -1, %do.end.i ], [ -22, %do.end27.i ]
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @vega20_pp_tables_initialize._rs.8, ptr noundef nonnull @__func__.vega20_pp_tables_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.cleanup_crit_edge, label %do.end34

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #11
  br label %cleanup

do.end40:                                         ; preds = %do.end22.i
  %ulPlatformCaps = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 6
  %19 = ptrtoint ptr %ulPlatformCaps to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %ulPlatformCaps, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %22 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %23, -35
  %and.i = shl i32 %21, 1
  %24 = and i32 %and.i, 2
  %storemerge.i = or i32 %24, %and1.i.i.i
  %and1.i = shl i32 %21, 4
  %25 = and i32 %and1.i, 32
  %storemerge21.i = or i32 %storemerge.i, %25
  store i32 %storemerge21.i, ptr %platform_descriptor.i.i, align 4
  %and3.i = and i32 %21, 8
  %arrayidx.i8.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i8.i.i, align 4
  %and1.i.i10.i = and i32 %27, -9
  %or.i.i8.sink.i = or i32 %and1.i.i10.i, %and3.i
  store i32 %or.i.i8.sink.i, ptr %arrayidx.i8.i.i, align 4
  %arrayidx.i8.i17.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 6
  %28 = ptrtoint ptr %arrayidx.i8.i17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i8.i17.i, align 4
  %and1.i.i18.i = and i32 %29, -5
  %and5.i = lshr i32 %21, 2
  %30 = and i32 %and5.i, 4
  %or.i.i15.sink.i = or i32 %and1.i.i18.i, %30
  store i32 %or.i.i15.sink.i, ptr %arrayidx.i8.i17.i, align 4
  %31 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pptable, align 4
  %ucThermalControllerType.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 7
  %33 = ptrtoint ptr %ucThermalControllerType.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ucThermalControllerType.i, align 1
  %thermal_controller.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34
  %35 = ptrtoint ptr %thermal_controller.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %thermal_controller.i, align 4
  %36 = load i8, ptr %ucThermalControllerType.i, align 1
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %32, align 4
  %ulMinRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 2
  %38 = ptrtoint ptr %ulMinRPM.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ulMinRPM.i, align 4
  %FanMaximumRpm.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 17, i32 88
  %39 = ptrtoint ptr %FanMaximumRpm.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %FanMaximumRpm.i, align 1
  %conv.i92 = zext i16 %40 to i32
  %ulMaxRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 3
  %41 = ptrtoint ptr %ulMaxRPM.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv.i92, ptr %ulMaxRPM.i, align 4
  %42 = load i8, ptr %thermal_controller.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.not.i = icmp eq i8 %42, 0
  %43 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i94 = and i32 %44, -17
  %masksel.i = select i1 %cmp.not.i, i32 0, i32 16
  %storemerge.i95 = or i32 %and1.i.i.i94, %masksel.i
  store i32 %storemerge.i95, ptr %platform_descriptor.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %46, 1073741824
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %OverDrive8Table.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 15
  %47 = ptrtoint ptr %OverDrive8Table.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %OverDrive8Table.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp10.i = icmp eq i8 %48, 1
  br i1 %cmp10.i, label %if.then.i96, label %do.end40.if.end.i_crit_edge

do.end40.if.end.i_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i96:                                      ; preds = %do.end40
  %ODFeatureCount.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 15, i32 1
  %49 = ptrtoint ptr %ODFeatureCount.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ODFeatureCount.i, align 1
  %51 = call i32 @llvm.bswap.i32(i32 %50) #7
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 10) #7
  %ODSettingCount.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 15, i32 3
  %53 = ptrtoint ptr %ODSettingCount.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %ODSettingCount.i, align 1
  %55 = call i32 @llvm.bswap.i32(i32 %54) #7
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 14) #7
  %od_feature_capabilities.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 9
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #12
  %cmp.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %cmp.i.i, label %if.then.i96.copy_overdrive_feature_capabilities_array.exit.i_crit_edge, label %for.cond.preheader.i.i

if.then.i96.copy_overdrive_feature_capabilities_array.exit.i_crit_edge: ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_overdrive_feature_capabilities_array.exit.i

for.cond.preheader.i.i:                           ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp32.not.i.i = icmp eq i32 %52, 0
  br i1 %cmp32.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = call ptr @memset(ptr %call9.i.i.i.i, i32 0, i32 %52)
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.preheader.i.i, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %58 = ptrtoint ptr %od_feature_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call9.i.i.i.i, ptr %od_feature_capabilities.i, align 4
  br label %copy_overdrive_feature_capabilities_array.exit.i

copy_overdrive_feature_capabilities_array.exit.i: ; preds = %for.end.i.i, %if.then.i96.copy_overdrive_feature_capabilities_array.exit.i_crit_edge
  %od_settings_max.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 10
  %ODSettingsMax.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 15, i32 4
  %call31.i97 = call i32 @phm_copy_overdrive_settings_limits_array(ptr noundef %hwmgr, ptr noundef %od_settings_max.i, ptr noundef %ODSettingsMax.i, i32 noundef %56) #7
  %od_settings_min.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 11
  %ODSettingsMin.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 15, i32 5
  %call34.i = call i32 @phm_copy_overdrive_settings_limits_array(ptr noundef %hwmgr, ptr noundef %od_settings_min.i, ptr noundef %ODSettingsMin.i, i32 noundef %56) #7
  br label %if.end.i

if.end.i:                                         ; preds = %copy_overdrive_feature_capabilities_array.exit.i, %do.end40.if.end.i_crit_edge
  %usSmallPowerLimit1.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 8
  %59 = ptrtoint ptr %usSmallPowerLimit1.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %usSmallPowerLimit1.i, align 1
  %61 = call i16 @llvm.bswap.i16(i16 %60) #7
  %us_small_power_limit1.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 1
  %62 = ptrtoint ptr %us_small_power_limit1.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %us_small_power_limit1.i, align 2
  %usSmallPowerLimit2.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 9
  %63 = ptrtoint ptr %usSmallPowerLimit2.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %usSmallPowerLimit2.i, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #7
  %us_small_power_limit2.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 2
  %66 = ptrtoint ptr %us_small_power_limit2.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %us_small_power_limit2.i, align 4
  %usBoostPowerLimit.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 10
  %67 = ptrtoint ptr %usBoostPowerLimit.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %usBoostPowerLimit.i, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68) #7
  %us_boost_power_limit.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 3
  %70 = ptrtoint ptr %us_boost_power_limit.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %us_boost_power_limit.i, align 2
  %usODTurboPowerLimit.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 11
  %71 = ptrtoint ptr %usODTurboPowerLimit.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %usODTurboPowerLimit.i, align 1
  %73 = call i16 @llvm.bswap.i16(i16 %72) #7
  %us_od_turbo_power_limit.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 4
  %74 = ptrtoint ptr %us_od_turbo_power_limit.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %us_od_turbo_power_limit.i, align 4
  %usODPowerSavePowerLimit.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 12
  %75 = ptrtoint ptr %usODPowerSavePowerLimit.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %usODPowerSavePowerLimit.i, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76) #7
  %us_od_powersave_power_limit.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 5
  %78 = ptrtoint ptr %us_od_powersave_power_limit.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %us_od_powersave_power_limit.i, align 2
  %usSoftwareShutdownTemp.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 13
  %79 = ptrtoint ptr %usSoftwareShutdownTemp.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %usSoftwareShutdownTemp.i, align 1
  %81 = call i16 @llvm.bswap.i16(i16 %80) #7
  %us_software_shutdown_temp.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 6
  %82 = ptrtoint ptr %us_software_shutdown_temp.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %us_software_shutdown_temp.i, align 4
  %arrayidx.i = getelementptr %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 15, i32 4, i32 9
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %arrayidx.i, align 1
  %85 = call i32 @llvm.bswap.i32(i32 %84) #7
  %conv37.i = trunc i32 %85 to i16
  %TDPODLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 16
  %86 = ptrtoint ptr %TDPODLimit.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv37.i, ptr %TDPODLimit.i, align 4
  %conv41.i = and i32 %85, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv41.i)
  %tobool42.not.i = icmp eq i32 %conv41.i, 0
  br i1 %tobool42.not.i, label %if.end.i.if.end47.i_crit_edge, label %if.then43.i

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.then43.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i8.i.i, align 4
  %or.i147.i = or i32 %88, 262144
  store i32 %or.i147.i, ptr %arrayidx.i8.i.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then43.i, %if.end.i.if.end47.i_crit_edge
  %PowerSavingClockTable.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 14
  %89 = ptrtoint ptr %PowerSavingClockTable.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %PowerSavingClockTable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp49.i = icmp eq i8 %90, 1
  br i1 %cmp49.i, label %if.then51.i, label %if.end47.i.if.end67.i_crit_edge

if.end47.i.if.end67.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.then51.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %PowerSavingClockCount.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 14, i32 1
  %91 = ptrtoint ptr %PowerSavingClockCount.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %PowerSavingClockCount.i, align 1
  %93 = call i32 @llvm.bswap.i32(i32 %92) #7
  %94 = call i32 @llvm.umin.i32(i32 %93, i32 11) #7
  %power_saving_clock_max.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 7
  %PowerSavingClockMax.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 14, i32 2
  %call63.i = call i32 @phm_copy_clock_limits_array(ptr noundef %hwmgr, ptr noundef %power_saving_clock_max.i, ptr noundef %PowerSavingClockMax.i, i32 noundef %94) #7
  %power_saving_clock_min.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 8
  %PowerSavingClockMin.i = getelementptr inbounds %struct._ATOM_VEGA20_POWERPLAYTABLE, ptr %table_address.0.i101, i32 0, i32 14, i32 3
  %call66.i = call i32 @phm_copy_clock_limits_array(ptr noundef %hwmgr, ptr noundef %power_saving_clock_min.i, ptr noundef %PowerSavingClockMin.i, i32 noundef %94) #7
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then51.i, %if.end47.i.if.end67.i_crit_edge
  %call69.i = call ptr @kmemdup(ptr noundef %smcPPTable.i, i32 noundef 1256, i32 noundef 3264) #7
  %smc_pptable.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %32, i32 0, i32 12
  %95 = ptrtoint ptr %smc_pptable.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call69.i, ptr %smc_pptable.i, align 4
  %cmp71.i = icmp eq ptr %call69.i, null
  br i1 %cmp71.i, label %if.end67.i.if.then60_crit_edge, label %if.end74.i

if.end67.i.if.then60_crit_edge:                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

if.end74.i:                                       ; preds = %if.end67.i
  %96 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hwmgr, align 4
  %call.i.i = call ptr @smu_atom_get_data_table(ptr noundef %97, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i148.i, label %do.end8.i.i

if.then.i148.i:                                   ; preds = %if.end74.i
  %call1.i.i = call i32 @___ratelimit(ptr noundef nonnull @append_vbios_pptable._rs, ptr noundef nonnull @__func__.append_vbios_pptable) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i148.i.if.then60_crit_edge, label %do.end.i.i

if.then.i148.i.if.then60_crit_edge:               ; preds = %if.then.i148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

do.end.i.i:                                       ; preds = %if.then.i148.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.28) #11
  br label %if.then60

do.end8.i.i:                                      ; preds = %if.end74.i
  %maxvoltagestepgfx.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %maxvoltagestepgfx.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %maxvoltagestepgfx.i.i, align 1
  %MaxVoltageStepGfx.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 131
  %100 = ptrtoint ptr %MaxVoltageStepGfx.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %MaxVoltageStepGfx.i.i, align 4
  %maxvoltagestepsoc.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 3
  %101 = ptrtoint ptr %maxvoltagestepsoc.i.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %maxvoltagestepsoc.i.i, align 1
  %MaxVoltageStepSoc.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 132
  %103 = ptrtoint ptr %MaxVoltageStepSoc.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %MaxVoltageStepSoc.i.i, align 2
  %vddgfxvrmapping.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 4
  %104 = ptrtoint ptr %vddgfxvrmapping.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %vddgfxvrmapping.i.i, align 1
  %VddGfxVrMapping.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 133
  %106 = ptrtoint ptr %VddGfxVrMapping.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %VddGfxVrMapping.i.i, align 4
  %vddsocvrmapping.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 5
  %107 = ptrtoint ptr %vddsocvrmapping.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %vddsocvrmapping.i.i, align 1
  %VddSocVrMapping.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 134
  %109 = ptrtoint ptr %VddSocVrMapping.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %VddSocVrMapping.i.i, align 1
  %vddmem0vrmapping.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 6
  %110 = ptrtoint ptr %vddmem0vrmapping.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %vddmem0vrmapping.i.i, align 1
  %VddMem0VrMapping.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 135
  %112 = ptrtoint ptr %VddMem0VrMapping.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %VddMem0VrMapping.i.i, align 2
  %vddmem1vrmapping.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 7
  %113 = ptrtoint ptr %vddmem1vrmapping.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %vddmem1vrmapping.i.i, align 1
  %VddMem1VrMapping.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 136
  %115 = ptrtoint ptr %VddMem1VrMapping.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %VddMem1VrMapping.i.i, align 1
  %gfxulvphasesheddingmask.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 8
  %116 = ptrtoint ptr %gfxulvphasesheddingmask.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %gfxulvphasesheddingmask.i.i, align 1
  %GfxUlvPhaseSheddingMask.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 137
  %118 = ptrtoint ptr %GfxUlvPhaseSheddingMask.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %GfxUlvPhaseSheddingMask.i.i, align 4
  %soculvphasesheddingmask.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 9
  %119 = ptrtoint ptr %soculvphasesheddingmask.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %soculvphasesheddingmask.i.i, align 1
  %SocUlvPhaseSheddingMask.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 138
  %121 = ptrtoint ptr %SocUlvPhaseSheddingMask.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %SocUlvPhaseSheddingMask.i.i, align 1
  %externalsensorpresent.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 10
  %122 = ptrtoint ptr %externalsensorpresent.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %externalsensorpresent.i.i, align 1
  %ExternalSensorPresent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 139
  %124 = ptrtoint ptr %ExternalSensorPresent.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %ExternalSensorPresent.i.i, align 2
  %gfxmaxcurrent.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 12
  %125 = ptrtoint ptr %gfxmaxcurrent.i.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %gfxmaxcurrent.i.i, align 1
  %GfxMaxCurrent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 141
  %127 = ptrtoint ptr %GfxMaxCurrent.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %GfxMaxCurrent.i.i, align 4
  %gfxoffset.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 13
  %128 = ptrtoint ptr %gfxoffset.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %gfxoffset.i.i, align 1
  %GfxOffset.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 142
  %130 = ptrtoint ptr %GfxOffset.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %GfxOffset.i.i, align 2
  %padding_telemetrygfx.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 14
  %131 = ptrtoint ptr %padding_telemetrygfx.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %padding_telemetrygfx.i.i, align 1
  %Padding_TelemetryGfx.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 143
  %133 = ptrtoint ptr %Padding_TelemetryGfx.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %Padding_TelemetryGfx.i.i, align 1
  %socmaxcurrent.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 15
  %134 = ptrtoint ptr %socmaxcurrent.i.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %socmaxcurrent.i.i, align 1
  %SocMaxCurrent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 144
  %136 = ptrtoint ptr %SocMaxCurrent.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %SocMaxCurrent.i.i, align 4
  %socoffset.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 16
  %137 = ptrtoint ptr %socoffset.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %socoffset.i.i, align 1
  %SocOffset.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 145
  %139 = ptrtoint ptr %SocOffset.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %SocOffset.i.i, align 2
  %padding_telemetrysoc.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 17
  %140 = ptrtoint ptr %padding_telemetrysoc.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %padding_telemetrysoc.i.i, align 1
  %Padding_TelemetrySoc.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 146
  %142 = ptrtoint ptr %Padding_TelemetrySoc.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %Padding_TelemetrySoc.i.i, align 1
  %mem0maxcurrent.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 18
  %143 = ptrtoint ptr %mem0maxcurrent.i.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 2)
  %144 = load i16, ptr %mem0maxcurrent.i.i, align 1
  %Mem0MaxCurrent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 147
  %145 = ptrtoint ptr %Mem0MaxCurrent.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %Mem0MaxCurrent.i.i, align 4
  %mem0offset.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 19
  %146 = ptrtoint ptr %mem0offset.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %mem0offset.i.i, align 1
  %Mem0Offset.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 148
  %148 = ptrtoint ptr %Mem0Offset.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %Mem0Offset.i.i, align 2
  %padding_telemetrymem0.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 20
  %149 = ptrtoint ptr %padding_telemetrymem0.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %padding_telemetrymem0.i.i, align 1
  %Padding_TelemetryMem0.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 149
  %151 = ptrtoint ptr %Padding_TelemetryMem0.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %Padding_TelemetryMem0.i.i, align 1
  %mem1maxcurrent.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 21
  %152 = ptrtoint ptr %mem1maxcurrent.i.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %mem1maxcurrent.i.i, align 1
  %Mem1MaxCurrent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 150
  %154 = ptrtoint ptr %Mem1MaxCurrent.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %Mem1MaxCurrent.i.i, align 4
  %mem1offset.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 22
  %155 = ptrtoint ptr %mem1offset.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %mem1offset.i.i, align 1
  %Mem1Offset.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 151
  %157 = ptrtoint ptr %Mem1Offset.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %Mem1Offset.i.i, align 2
  %padding_telemetrymem1.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 23
  %158 = ptrtoint ptr %padding_telemetrymem1.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %padding_telemetrymem1.i.i, align 1
  %Padding_TelemetryMem1.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 152
  %160 = ptrtoint ptr %Padding_TelemetryMem1.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %Padding_TelemetryMem1.i.i, align 1
  %acdcgpio.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 24
  %161 = ptrtoint ptr %acdcgpio.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %acdcgpio.i.i, align 1
  %AcDcGpio.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 153
  %163 = ptrtoint ptr %AcDcGpio.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %AcDcGpio.i.i, align 4
  %acdcpolarity.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 25
  %164 = ptrtoint ptr %acdcpolarity.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %acdcpolarity.i.i, align 1
  %AcDcPolarity.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 154
  %166 = ptrtoint ptr %AcDcPolarity.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %AcDcPolarity.i.i, align 1
  %vr0hotgpio.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 26
  %167 = ptrtoint ptr %vr0hotgpio.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %vr0hotgpio.i.i, align 1
  %VR0HotGpio.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 155
  %169 = ptrtoint ptr %VR0HotGpio.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %VR0HotGpio.i.i, align 2
  %vr0hotpolarity.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 27
  %170 = ptrtoint ptr %vr0hotpolarity.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %vr0hotpolarity.i.i, align 1
  %VR0HotPolarity.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 156
  %172 = ptrtoint ptr %VR0HotPolarity.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %VR0HotPolarity.i.i, align 1
  %vr1hotgpio.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 28
  %173 = ptrtoint ptr %vr1hotgpio.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %vr1hotgpio.i.i, align 1
  %VR1HotGpio.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 157
  %175 = ptrtoint ptr %VR1HotGpio.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %VR1HotGpio.i.i, align 4
  %vr1hotpolarity.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 29
  %176 = ptrtoint ptr %vr1hotpolarity.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %vr1hotpolarity.i.i, align 1
  %VR1HotPolarity.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 158
  %178 = ptrtoint ptr %VR1HotPolarity.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %VR1HotPolarity.i.i, align 1
  %padding1.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 30
  %179 = ptrtoint ptr %padding1.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %padding1.i.i, align 1
  %Padding1.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 159
  %181 = ptrtoint ptr %Padding1.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %Padding1.i.i, align 2
  %padding2.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 31
  %182 = ptrtoint ptr %padding2.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %padding2.i.i, align 1
  %Padding2.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 160
  %184 = ptrtoint ptr %Padding2.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %Padding2.i.i, align 1
  %ledpin0.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 32
  %185 = ptrtoint ptr %ledpin0.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %ledpin0.i.i, align 1
  %LedPin0.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 161
  %187 = ptrtoint ptr %LedPin0.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %LedPin0.i.i, align 4
  %ledpin1.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 33
  %188 = ptrtoint ptr %ledpin1.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %ledpin1.i.i, align 1
  %LedPin1.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 162
  %190 = ptrtoint ptr %LedPin1.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %LedPin1.i.i, align 1
  %ledpin2.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 34
  %191 = ptrtoint ptr %ledpin2.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %ledpin2.i.i, align 1
  %LedPin2.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 163
  %193 = ptrtoint ptr %LedPin2.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %LedPin2.i.i, align 2
  %pllgfxclkspreadenabled.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 36
  %194 = ptrtoint ptr %pllgfxclkspreadenabled.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %pllgfxclkspreadenabled.i.i, align 1
  %PllGfxclkSpreadEnabled.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 165
  %196 = ptrtoint ptr %PllGfxclkSpreadEnabled.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %PllGfxclkSpreadEnabled.i.i, align 4
  %pllgfxclkspreadpercent.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 37
  %197 = ptrtoint ptr %pllgfxclkspreadpercent.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %pllgfxclkspreadpercent.i.i, align 1
  %PllGfxclkSpreadPercent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 166
  %199 = ptrtoint ptr %PllGfxclkSpreadPercent.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %PllGfxclkSpreadPercent.i.i, align 1
  %pllgfxclkspreadfreq.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 38
  %200 = ptrtoint ptr %pllgfxclkspreadfreq.i.i to i32
  call void @__asan_loadN_noabort(i32 %200, i32 2)
  %201 = load i16, ptr %pllgfxclkspreadfreq.i.i, align 1
  %PllGfxclkSpreadFreq.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 167
  %202 = ptrtoint ptr %PllGfxclkSpreadFreq.i.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %PllGfxclkSpreadFreq.i.i, align 2
  %UclkSpreadEnabled.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 168
  %203 = ptrtoint ptr %UclkSpreadEnabled.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 0, ptr %UclkSpreadEnabled.i.i, align 4
  %uclkspreadpercent.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 40
  %204 = ptrtoint ptr %uclkspreadpercent.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %uclkspreadpercent.i.i, align 1
  %UclkSpreadPercent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 169
  %206 = ptrtoint ptr %UclkSpreadPercent.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %UclkSpreadPercent.i.i, align 1
  %uclkspreadfreq.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 41
  %207 = ptrtoint ptr %uclkspreadfreq.i.i to i32
  call void @__asan_loadN_noabort(i32 %207, i32 2)
  %208 = load i16, ptr %uclkspreadfreq.i.i, align 1
  %UclkSpreadFreq.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 170
  %209 = ptrtoint ptr %UclkSpreadFreq.i.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %208, ptr %UclkSpreadFreq.i.i, align 2
  %fclkspreadenabled.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 42
  %210 = ptrtoint ptr %fclkspreadenabled.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %fclkspreadenabled.i.i, align 1
  %FclkSpreadEnabled.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 171
  %212 = ptrtoint ptr %FclkSpreadEnabled.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %FclkSpreadEnabled.i.i, align 4
  %fclkspreadpercent.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 43
  %213 = ptrtoint ptr %fclkspreadpercent.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %fclkspreadpercent.i.i, align 1
  %FclkSpreadPercent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 172
  %215 = ptrtoint ptr %FclkSpreadPercent.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %FclkSpreadPercent.i.i, align 1
  %fclkspreadfreq.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 44
  %216 = ptrtoint ptr %fclkspreadfreq.i.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 2)
  %217 = load i16, ptr %fclkspreadfreq.i.i, align 1
  %FclkSpreadFreq.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 173
  %218 = ptrtoint ptr %FclkSpreadFreq.i.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %217, ptr %FclkSpreadFreq.i.i, align 2
  %fllgfxclkspreadenabled.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 45
  %219 = ptrtoint ptr %fllgfxclkspreadenabled.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %fllgfxclkspreadenabled.i.i, align 1
  %FllGfxclkSpreadEnabled.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 174
  %221 = ptrtoint ptr %FllGfxclkSpreadEnabled.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %FllGfxclkSpreadEnabled.i.i, align 4
  %fllgfxclkspreadpercent.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 46
  %222 = ptrtoint ptr %fllgfxclkspreadpercent.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %fllgfxclkspreadpercent.i.i, align 1
  %FllGfxclkSpreadPercent.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 175
  %224 = ptrtoint ptr %FllGfxclkSpreadPercent.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %FllGfxclkSpreadPercent.i.i, align 1
  %fllgfxclkspreadfreq.i.i = getelementptr inbounds %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 47
  %225 = ptrtoint ptr %fllgfxclkspreadfreq.i.i to i32
  call void @__asan_loadN_noabort(i32 %225, i32 2)
  %226 = load i16, ptr %fllgfxclkspreadfreq.i.i, align 1
  %FllGfxclkSpreadFreq.i.i = getelementptr inbounds %struct.PPTable_t, ptr %call69.i, i32 0, i32 176
  %227 = ptrtoint ptr %FllGfxclkSpreadFreq.i.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %226, ptr %FllGfxclkSpreadFreq.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end8.i.i
  %i.0142.i.i = phi i32 [ 0, %do.end8.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i149.i = getelementptr %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 48, i32 %i.0142.i.i
  %228 = ptrtoint ptr %arrayidx.i149.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %arrayidx.i149.i, align 1
  %arrayidx9.i.i = getelementptr %struct.PPTable_t, ptr %call69.i, i32 0, i32 177, i32 %i.0142.i.i
  %230 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %arrayidx9.i.i, align 4
  %slaveaddress.i.i = getelementptr %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 48, i32 %i.0142.i.i, i32 1
  %231 = ptrtoint ptr %slaveaddress.i.i to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %232 = load i32, ptr %slaveaddress.i.i, align 1
  %SlaveAddress.i.i = getelementptr %struct.PPTable_t, ptr %call69.i, i32 0, i32 177, i32 %i.0142.i.i, i32 1
  %233 = ptrtoint ptr %SlaveAddress.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %SlaveAddress.i.i, align 4
  %controllerport.i.i = getelementptr %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 48, i32 %i.0142.i.i, i32 2
  %234 = ptrtoint ptr %controllerport.i.i to i32
  call void @__asan_loadN_noabort(i32 %234, i32 4)
  %235 = load i32, ptr %controllerport.i.i, align 1
  %ControllerPort.i.i = getelementptr %struct.PPTable_t, ptr %call69.i, i32 0, i32 177, i32 %i.0142.i.i, i32 2
  %236 = ptrtoint ptr %ControllerPort.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %ControllerPort.i.i, align 4
  %thermalthrottler.i.i = getelementptr %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 48, i32 %i.0142.i.i, i32 4
  %237 = ptrtoint ptr %thermalthrottler.i.i to i32
  call void @__asan_loadN_noabort(i32 %237, i32 4)
  %238 = load i32, ptr %thermalthrottler.i.i, align 1
  %ThermalThrottler.i.i = getelementptr %struct.PPTable_t, ptr %call69.i, i32 0, i32 177, i32 %i.0142.i.i, i32 4
  %239 = ptrtoint ptr %ThermalThrottler.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %ThermalThrottler.i.i, align 4
  %i2cprotocol.i.i = getelementptr %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 48, i32 %i.0142.i.i, i32 5
  %240 = ptrtoint ptr %i2cprotocol.i.i to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %i2cprotocol.i.i, align 1
  %I2cProtocol.i.i = getelementptr %struct.PPTable_t, ptr %call69.i, i32 0, i32 177, i32 %i.0142.i.i, i32 5
  %242 = ptrtoint ptr %I2cProtocol.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %I2cProtocol.i.i, align 4
  %i2cspeed.i.i = getelementptr %struct.atom_smc_dpm_info_v4_4, ptr %call.i.i, i32 0, i32 48, i32 %i.0142.i.i, i32 6
  %243 = ptrtoint ptr %i2cspeed.i.i to i32
  call void @__asan_loadN_noabort(i32 %243, i32 4)
  %244 = load i32, ptr %i2cspeed.i.i, align 1
  %I2cSpeed.i.i = getelementptr %struct.PPTable_t, ptr %call69.i, i32 0, i32 177, i32 %i.0142.i.i, i32 6
  %245 = ptrtoint ptr %I2cSpeed.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %244, ptr %I2cSpeed.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0142.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 7
  br i1 %exitcond.not.i.i, label %init_powerplay_table_information.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

init_powerplay_table_information.exit:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %246 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %pptable, align 4
  %smc_pptable.i.i = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %247, i32 0, i32 12
  %248 = ptrtoint ptr %smc_pptable.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %smc_pptable.i.i, align 4
  %FanTargetTemperature.i.i = getelementptr inbounds %struct.PPTable_t, ptr %249, i32 0, i32 89
  %250 = ptrtoint ptr %FanTargetTemperature.i.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 105, ptr %FanTargetTemperature.i.i, align 2
  br label %cleanup

if.then60:                                        ; preds = %do.end.i.i, %if.then.i148.i.if.then60_crit_edge, %if.end67.i.if.then60_crit_edge
  %retval.0.i98.ph = phi i32 [ -1, %if.then.i148.i.if.then60_crit_edge ], [ -1, %do.end.i.i ], [ -12, %if.end67.i.if.then60_crit_edge ]
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @vega20_pp_tables_initialize._rs.16, ptr noundef nonnull @__func__.vega20_pp_tables_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.cleanup_crit_edge, label %do.end66

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.then60.cleanup_crit_edge, %init_powerplay_table_information.exit, %do.end34, %if.then28.cleanup_crit_edge, %do.end18, %if.then12.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %if.then.cleanup_crit_edge ], [ -1, %do.end18 ], [ -1, %if.then12.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end34 ], [ %retval.0.i.ph, %if.then28.cleanup_crit_edge ], [ %retval.0.i98.ph, %do.end66 ], [ %retval.0.i98.ph, %if.then60.cleanup_crit_edge ], [ 0, %init_powerplay_table_information.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_pp_tables_uninitialize(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %0 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pptable, align 4
  %power_saving_clock_max = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power_saving_clock_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_saving_clock_max, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %power_saving_clock_max to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %power_saving_clock_max, align 4
  %power_saving_clock_min = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %power_saving_clock_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %power_saving_clock_min, align 4
  tail call void @kfree(ptr noundef %6) #7
  %7 = ptrtoint ptr %power_saving_clock_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %power_saving_clock_min, align 4
  %od_feature_capabilities = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %od_feature_capabilities to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %od_feature_capabilities, align 4
  tail call void @kfree(ptr noundef %9) #7
  %10 = ptrtoint ptr %od_feature_capabilities to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %od_feature_capabilities, align 4
  %od_settings_max = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %od_settings_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %od_settings_max, align 4
  tail call void @kfree(ptr noundef %12) #7
  %13 = ptrtoint ptr %od_settings_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %od_settings_max, align 4
  %od_settings_min = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %od_settings_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %od_settings_min, align 4
  tail call void @kfree(ptr noundef %15) #7
  %16 = ptrtoint ptr %od_settings_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %od_settings_min, align 4
  %smc_pptable = getelementptr inbounds %struct.phm_ppt_v3_information, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %smc_pptable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smc_pptable, align 4
  tail call void @kfree(ptr noundef %18) #7
  %19 = ptrtoint ptr %smc_pptable to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %smc_pptable, align 4
  %20 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pptable, align 4
  tail call void @kfree(ptr noundef %21) #7
  %22 = ptrtoint ptr %pptable to i32
  call void @__asan_store4_noabort(i32 %22)
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

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @vega20_pptable_funcs, !1, !"vega20_pptable_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c", i32 967, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c", i32 915, i32 2}
!4 = !{ptr @vega20_pp_tables_initialize._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.vega20_pp_tables_initialize, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vega20_pp_tables_initialize._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vega20_pp_tables_initialize._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vega20_pp_tables_initialize._rs.4, !12, !"_rs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c", i32 919, i32 2}
!13 = !{ptr @vega20_pp_tables_initialize._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @vega20_pp_tables_initialize._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vega20_pp_tables_initialize._rs.8, !17, !"_rs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c", i32 923, i32 2}
!18 = !{ptr @vega20_pp_tables_initialize._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vega20_pp_tables_initialize._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c", i32 928, i32 2}
!23 = !{ptr @vega20_pp_tables_initialize._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @vega20_pp_tables_initialize._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vega20_pp_tables_initialize._rs.16, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c", i32 932, i32 2}
!28 = !{ptr @vega20_pp_tables_initialize._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vega20_pp_tables_initialize._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @check_powerplay_tables._rs, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c", i32 642, i32 2}
!33 = !{ptr @__func__.check_powerplay_tables, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @check_powerplay_tables._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @check_powerplay_tables._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @check_powerplay_tables._rs.21, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c", i32 645, i32 2}
!39 = !{ptr @check_powerplay_tables._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @check_powerplay_tables._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c", i32 649, i32 3}
!44 = !{ptr @check_powerplay_tables._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @check_powerplay_tables._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @append_vbios_pptable._rs, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega20_processpptables.c", i32 722, i32 2}
!48 = !{ptr @__func__.append_vbios_pptable, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @append_vbios_pptable._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @append_vbios_pptable._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
