; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/process_pptables_v1_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c"
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
%struct._ATOM_Tonga_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i16, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i16] }>
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_Tonga_State_Array = type { i8, i8, [1 x %struct._ATOM_Tonga_State] }
%struct._ATOM_Tonga_State = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i16, [4 x i8] }>
%struct._ATOM_Tonga_Thermal_Controller = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_Tonga_Fan_Table = type <{ i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16, i16, i32, i8, i8, i16 }>
%struct._ATOM_Fiji_Fan_Table = type <{ i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }>
%struct._ATOM_Polaris_Fan_Table = type <{ i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i16 }>
%struct.phm_ppt_v1_information = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_Tonga_MM_Dependency_Table = type { i8, i8, [1 x %struct._ATOM_Tonga_MM_Dependency_Record] }
%struct._ATOM_Tonga_MM_Dependency_Record = type <{ i8, i16, i32, i32, i32, i32, i32 }>
%struct.phm_ppt_v1_mm_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_mm_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_mm_clock_voltage_dependency_record = type { i32, i32, i32, i32, i32, i8, i16, i16, i16, i8 }
%struct._ATOM_Tonga_PowerTune_Table = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16] }>
%struct.phm_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct._ATOM_Fiji_PowerTune_Table = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16 }>
%struct._ATOM_Polaris_PowerTune_Table = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i16 }>
%struct._ATOM_Tonga_SCLK_Dependency_Table = type { i8, i8, [1 x %struct._ATOM_Tonga_SCLK_Dependency_Record] }
%struct._ATOM_Tonga_SCLK_Dependency_Record = type <{ i8, i16, i32, i16, i8, i8 }>
%struct.phm_ppt_v1_clock_voltage_dependency_table = type { i32, [0 x %struct.phm_ppt_v1_clock_voltage_dependency_record] }
%struct.phm_ppt_v1_clock_voltage_dependency_record = type { i32, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i8, i32 }
%struct._ATOM_Polaris_SCLK_Dependency_Table = type { i8, i8, [1 x %struct._ATOM_Polaris_SCLK_Dependency_Record] }
%struct._ATOM_Polaris_SCLK_Dependency_Record = type <{ i8, i16, i32, i16, i8, i8, i32 }>
%struct._ATOM_Tonga_MCLK_Dependency_Table = type { i8, i8, [1 x %struct._ATOM_Tonga_MCLK_Dependency_Record] }
%struct._ATOM_Tonga_MCLK_Dependency_Record = type <{ i8, i16, i16, i16, i32, i16 }>
%struct._ATOM_Tonga_PCIE_Table = type { i8, i8, [1 x %struct._ATOM_Tonga_PCIE_Record] }
%struct._ATOM_Tonga_PCIE_Record = type { i8, i8, [2 x i8] }
%struct.phm_ppt_v1_pcie_table = type { i32, [0 x %struct.phm_ppt_v1_pcie_record] }
%struct.phm_ppt_v1_pcie_record = type { i8, i8, i16, i16, i32 }
%struct._ATOM_Polaris10_PCIE_Table = type <{ i8, i8, [1 x %struct._ATOM_Polaris10_PCIE_Record] }>
%struct._ATOM_Polaris10_PCIE_Record = type { i8, i8, [2 x i8], i32 }
%struct._ATOM_Tonga_Hard_Limit_Table = type { i8, i8, [1 x %struct._ATOM_Tonga_Hard_Limit_Record] }
%struct._ATOM_Tonga_Hard_Limit_Record = type <{ i32, i32, i16, i16, i16 }>
%struct.phm_clock_array = type { i32, [0 x i32] }
%struct._ATOM_Tonga_GPIO_Table = type { i8, i8, [5 x i8] }
%struct._ATOM_Tonga_PPM_Table = type { i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phm_ppm_table = type { i8, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_power_state = type { i32, %struct.PP_StateLinkedList, %struct.PP_StateLinkedList, %struct.PP_StateClassificationBlock, %struct.PP_StateValidationBlock, %struct.PP_StatePcieBlock, %struct.PP_StateDisplayBlock, %struct.PP_StateMemroyBlock, %struct.PP_TemperatureRange, %struct.PP_StateSoftwareAlgorithmBlock, %struct.PP_UVD_CLOCKS, %struct.pp_hw_power_state }
%struct.PP_StateLinkedList = type { ptr, ptr }
%struct.PP_StateClassificationBlock = type { i32, i32, i32, i8, i8 }
%struct.PP_StateValidationBlock = type { i8, i8, i8 }
%struct.PP_StatePcieBlock = type { i32 }
%struct.PP_StateDisplayBlock = type { i8, i8, i32, i32, i32, i8 }
%struct.PP_StateMemroyBlock = type { i8, i8, [3 x i8] }
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PP_StateSoftwareAlgorithmBlock = type { i8, i8 }
%struct.PP_UVD_CLOCKS = type { i32, i32 }
%struct.pp_hw_power_state = type { i32 }
%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._ATOM_Tonga_VCE_State_Table = type { i8, i8, [1 x %struct._ATOM_Tonga_VCE_State_Record] }
%struct._ATOM_Tonga_VCE_State_Record = type { i8, i8, i8, i8 }
%struct._ATOM_Tonga_Voltage_Lookup_Table = type { i8, i8, [1 x %struct._ATOM_Tonga_Voltage_Lookup_Record] }
%struct._ATOM_Tonga_Voltage_Lookup_Record = type { i16, i16, i16, i16 }
%struct.phm_ppt_v1_voltage_lookup_table = type { i32, [0 x %struct.phm_ppt_v1_voltage_lookup_record] }
%struct.phm_ppt_v1_voltage_lookup_record = type { i16, i16, i16, i16, i16 }

@pptable_v1_0_funcs = dso_local constant { %struct.pp_table_func, [16 x i8] } { %struct.pp_table_func { ptr @pp_tables_v1_0_initialize, ptr @pp_tables_v1_0_uninitialize, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@get_number_of_powerplay_table_entries_v1_0._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.get_number_of_powerplay_table_entries_v1_0 = private unnamed_addr constant [43 x i8] c"get_number_of_powerplay_table_entries_v1_0\00", align 1
@get_number_of_powerplay_table_entries_v1_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_number_of_powerplay_table_entries_v1_0, ptr @.str.2, i32 1248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c\00", [55 x i8] zeroinitializer }, align 32
@get_number_of_powerplay_table_entries_v1_0._entry_ptr = internal global ptr @get_number_of_powerplay_table_entries_v1_0._entry, section ".printk_index", align 4
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Missing PowerPlay Table!\00", [39 x i8] zeroinitializer }, align 32
@get_number_of_powerplay_table_entries_v1_0._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_number_of_powerplay_table_entries_v1_0._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_number_of_powerplay_table_entries_v1_0, ptr @.str.2, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_number_of_powerplay_table_entries_v1_0._entry_ptr.6 = internal global ptr @get_number_of_powerplay_table_entries_v1_0._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Incorrect PowerPlay table revision!\00", [60 x i8] zeroinitializer }, align 32
@get_powerplay_table_entry_v1_0._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_powerplay_table_entry_v1_0 = private unnamed_addr constant [31 x i8] c"get_powerplay_table_entry_v1_0\00", align 1
@get_powerplay_table_entry_v1_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_powerplay_table_entry_v1_0, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_powerplay_table_entry_v1_0._entry_ptr = internal global ptr @get_powerplay_table_entry_v1_0._entry, section ".printk_index", align 4
@get_powerplay_table_entry_v1_0._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_powerplay_table_entry_v1_0._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_powerplay_table_entry_v1_0, ptr @.str.2, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_powerplay_table_entry_v1_0._entry_ptr.10 = internal global ptr @get_powerplay_table_entry_v1_0._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid PowerPlay Table State Array Offset.\00", [52 x i8] zeroinitializer }, align 32
@get_powerplay_table_entry_v1_0._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_powerplay_table_entry_v1_0._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_powerplay_table_entry_v1_0, ptr @.str.2, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_powerplay_table_entry_v1_0._entry_ptr.14 = internal global ptr @get_powerplay_table_entry_v1_0._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid PowerPlay Table State Array.\00", [59 x i8] zeroinitializer }, align 32
@get_powerplay_table_entry_v1_0._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_powerplay_table_entry_v1_0._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_powerplay_table_entry_v1_0, ptr @.str.2, i32 1393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_powerplay_table_entry_v1_0._entry_ptr.18 = internal global ptr @get_powerplay_table_entry_v1_0._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid PowerPlay Table State Array Entry.\00", [53 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.pp_tables_v1_0_initialize = private unnamed_addr constant [26 x i8] c"pp_tables_v1_0_initialize\00", align 1
@pp_tables_v1_0_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_v1_0_initialize, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry_ptr = internal global ptr @pp_tables_v1_0_initialize._entry, section ".printk_index", align 4
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate hwmgr->pptable!\00", [61 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_v1_0_initialize, ptr @.str.2, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry_ptr.23 = internal global ptr @pp_tables_v1_0_initialize._entry.22, section ".printk_index", align 4
@pp_tables_v1_0_initialize._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_v1_0_initialize, ptr @.str.2, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry_ptr.26 = internal global ptr @pp_tables_v1_0_initialize._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"check_powerplay_tables failed\00", [34 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_v1_0_initialize, ptr @.str.2, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry_ptr.30 = internal global ptr @pp_tables_v1_0_initialize._entry.29, section ".printk_index", align 4
@pp_tables_v1_0_initialize._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_v1_0_initialize, ptr @.str.2, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry_ptr.34 = internal global ptr @pp_tables_v1_0_initialize._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"init_thermal_controller failed\00", [33 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_v1_0_initialize, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry_ptr.38 = internal global ptr @pp_tables_v1_0_initialize._entry.37, section ".printk_index", align 4
@pp_tables_v1_0_initialize._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_v1_0_initialize, ptr @.str.2, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry_ptr.42 = internal global ptr @pp_tables_v1_0_initialize._entry.41, section ".printk_index", align 4
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"init_clock_voltage_dependency failed\00", [59 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.pp_tables_v1_0_initialize, ptr @.str.2, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pp_tables_v1_0_initialize._entry_ptr.46 = internal global ptr @pp_tables_v1_0_initialize._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"init_dpm_2_parameters failed\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_powerplay_tables._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.check_powerplay_tables = private unnamed_addr constant [23 x i8] c"check_powerplay_tables\00", align 1
@check_powerplay_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr = internal global ptr @check_powerplay_tables._entry, section ".printk_index", align 4
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported PPTable format!\00", [36 x i8] zeroinitializer }, align 32
@check_powerplay_tables._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr.51 = internal global ptr @check_powerplay_tables._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"State table is not set!\00", [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr.55 = internal global ptr @check_powerplay_tables._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid PowerPlay Table!\00", [39 x i8] zeroinitializer }, align 32
@check_powerplay_tables._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.check_powerplay_tables, ptr @.str.2, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_powerplay_tables._entry_ptr.59 = internal global ptr @check_powerplay_tables._entry.58, section ".printk_index", align 4
@set_platform_caps._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.set_platform_caps = private unnamed_addr constant [18 x i8] c"set_platform_caps\00", align 1
@set_platform_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.set_platform_caps, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_platform_caps._entry_ptr = internal global ptr @set_platform_caps._entry, section ".printk_index", align 4
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ATOM_PP_PLATFORM_CAP_ASPM_L1 is not supported!\00", [49 x i8] zeroinitializer }, align 32
@set_platform_caps._rs.61 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_platform_caps._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.set_platform_caps, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_platform_caps._entry_ptr.63 = internal global ptr @set_platform_caps._entry.62, section ".printk_index", align 4
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ATOM_PP_PLATFORM_CAP_GEMINIPRIMARY is not supported!\00", [43 x i8] zeroinitializer }, align 32
@set_platform_caps._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_platform_caps._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.set_platform_caps, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_platform_caps._entry_ptr.67 = internal global ptr @set_platform_caps._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ATOM_PP_PLATFORM_CAP_SIDEPORTCONTROL is not supported!\00", [41 x i8] zeroinitializer }, align 32
@set_platform_caps._rs.69 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_platform_caps._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.set_platform_caps, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_platform_caps._entry_ptr.71 = internal global ptr @set_platform_caps._entry.70, section ".printk_index", align 4
@.str.72 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1 is not supported!\00", [39 x i8] zeroinitializer }, align 32
@set_platform_caps._rs.73 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_platform_caps._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.set_platform_caps, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_platform_caps._entry_ptr.75 = internal global ptr @set_platform_caps._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ATOM_PP_PLATFORM_CAP_HTLINKCONTROL is not supported!\00", [43 x i8] zeroinitializer }, align 32
@init_thermal_controller._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.init_thermal_controller = private unnamed_addr constant [24 x i8] c"init_thermal_controller\00", align 1
@init_thermal_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.init_thermal_controller, ptr @.str.2, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_thermal_controller._entry_ptr = internal global ptr @init_thermal_controller._entry, section ".printk_index", align 4
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Thermal controller table not set!\00", [62 x i8] zeroinitializer }, align 32
@init_thermal_controller._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.init_thermal_controller, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_thermal_controller._entry_ptr.80 = internal global ptr @init_thermal_controller._entry.79, section ".printk_index", align 4
@init_thermal_controller._rs.82 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@init_thermal_controller._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.init_thermal_controller, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_thermal_controller._entry_ptr.84 = internal global ptr @init_thermal_controller._entry.83, section ".printk_index", align 4
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported fan table format!\00", [34 x i8] zeroinitializer }, align 32
@get_mm_clock_voltage_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_mm_clock_voltage_table = private unnamed_addr constant [27 x i8] c"get_mm_clock_voltage_table\00", align 1
@get_mm_clock_voltage_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_mm_clock_voltage_table, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_mm_clock_voltage_table._entry_ptr = internal global ptr @get_mm_clock_voltage_table._entry, section ".printk_index", align 4
@get_sclk_voltage_dependency_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_sclk_voltage_dependency_table = private unnamed_addr constant [34 x i8] c"get_sclk_voltage_dependency_table\00", align 1
@get_sclk_voltage_dependency_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_sclk_voltage_dependency_table, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_sclk_voltage_dependency_table._entry_ptr = internal global ptr @get_sclk_voltage_dependency_table._entry, section ".printk_index", align 4
@get_sclk_voltage_dependency_table._rs.86 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_sclk_voltage_dependency_table._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_sclk_voltage_dependency_table, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_sclk_voltage_dependency_table._entry_ptr.88 = internal global ptr @get_sclk_voltage_dependency_table._entry.87, section ".printk_index", align 4
@get_mclk_voltage_dependency_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_mclk_voltage_dependency_table = private unnamed_addr constant [34 x i8] c"get_mclk_voltage_dependency_table\00", align 1
@get_mclk_voltage_dependency_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_mclk_voltage_dependency_table, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_mclk_voltage_dependency_table._entry_ptr = internal global ptr @get_mclk_voltage_dependency_table._entry, section ".printk_index", align 4
@get_pcie_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_pcie_table = private unnamed_addr constant [15 x i8] c"get_pcie_table\00", align 1
@get_pcie_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_pcie_table, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_pcie_table._entry_ptr = internal global ptr @get_pcie_table._entry, section ".printk_index", align 4
@get_pcie_table._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.get_pcie_table, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013amdgpu: Number of Pcie Entries exceed the number of SCLK Dpm Levels! Disregarding the excess entries...\0A\00", [53 x i8] zeroinitializer }, align 32
@get_pcie_table._entry_ptr.91 = internal global ptr @get_pcie_table._entry.89, section ".printk_index", align 4
@get_pcie_table._rs.92 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_pcie_table._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_pcie_table, ptr @.str.2, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_pcie_table._entry_ptr.94 = internal global ptr @get_pcie_table._entry.93, section ".printk_index", align 4
@get_pcie_table._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.get_pcie_table, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_pcie_table._entry_ptr.96 = internal global ptr @get_pcie_table._entry.95, section ".printk_index", align 4
@get_hard_limits._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_hard_limits = private unnamed_addr constant [16 x i8] c"get_hard_limits\00", align 1
@get_hard_limits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_hard_limits, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_hard_limits._entry_ptr = internal global ptr @get_hard_limits._entry, section ".printk_index", align 4
@__func__.get_valid_clk = private unnamed_addr constant [14 x i8] c"get_valid_clk\00", align 1
@get_valid_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_valid_clk, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_valid_clk._entry_ptr = internal global ptr @get_valid_clk._entry, section ".printk_index", align 4
@get_gpio_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_gpio_table = private unnamed_addr constant [15 x i8] c"get_gpio_table\00", align 1
@get_gpio_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_gpio_table, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_gpio_table._entry_ptr = internal global ptr @get_gpio_table._entry, section ".printk_index", align 4
@.str.97 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"SCLK DPM index for VRHot cannot exceed the total sclk level count!\00", [61 x i8] zeroinitializer }, align 32
@get_vddc_lookup_table._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_vddc_lookup_table = private unnamed_addr constant [22 x i8] c"get_vddc_lookup_table\00", align 1
@get_vddc_lookup_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.get_vddc_lookup_table, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_vddc_lookup_table._entry_ptr = internal global ptr @get_vddc_lookup_table._entry, section ".printk_index", align 4
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid CAC Leakage PowerPlay Table!\00", [59 x i8] zeroinitializer }, align 32
@ppt_get_vce_state_table_entry_v1_0._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ppt_get_vce_state_table_entry_v1_0 = private unnamed_addr constant [35 x i8] c"ppt_get_vce_state_table_entry_v1_0\00", align 1
@ppt_get_vce_state_table_entry_v1_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.ppt_get_vce_state_table_entry_v1_0, ptr @.str.2, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ppt_get_vce_state_table_entry_v1_0._entry_ptr = internal global ptr @ppt_get_vce_state_table_entry_v1_0._entry, section ".printk_index", align 4
@.str.99 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Requested state entry ID is out of range!\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"pptable_v1_0_funcs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1237, i32 28 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1247, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1249, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1380, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1388, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1390, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1392, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1148, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1153, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1158, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1164, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1169, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1174, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1179, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1184, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1128, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1131, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1133, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1135, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 57, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 59, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 61, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 63, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 65, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 919, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 953, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 955, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 725, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 415, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 444, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 371, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 491, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 508, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 528, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 545, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 348, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 321, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 771, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 165, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.398 = private constant [76 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 1323, i32 2 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @check_powerplay_tables._entry, ptr @check_powerplay_tables._entry.50, ptr @check_powerplay_tables._entry.54, ptr @check_powerplay_tables._entry.58, ptr @check_powerplay_tables._entry_ptr, ptr @check_powerplay_tables._entry_ptr.51, ptr @check_powerplay_tables._entry_ptr.55, ptr @check_powerplay_tables._entry_ptr.59, ptr @get_gpio_table._entry, ptr @get_gpio_table._entry_ptr, ptr @get_hard_limits._entry, ptr @get_hard_limits._entry_ptr, ptr @get_mclk_voltage_dependency_table._entry, ptr @get_mclk_voltage_dependency_table._entry_ptr, ptr @get_mm_clock_voltage_table._entry, ptr @get_mm_clock_voltage_table._entry_ptr, ptr @get_number_of_powerplay_table_entries_v1_0._entry, ptr @get_number_of_powerplay_table_entries_v1_0._entry.5, ptr @get_number_of_powerplay_table_entries_v1_0._entry_ptr, ptr @get_number_of_powerplay_table_entries_v1_0._entry_ptr.6, ptr @get_pcie_table._entry, ptr @get_pcie_table._entry.89, ptr @get_pcie_table._entry.93, ptr @get_pcie_table._entry.95, ptr @get_pcie_table._entry_ptr, ptr @get_pcie_table._entry_ptr.91, ptr @get_pcie_table._entry_ptr.94, ptr @get_pcie_table._entry_ptr.96, ptr @get_powerplay_table_entry_v1_0._entry, ptr @get_powerplay_table_entry_v1_0._entry.13, ptr @get_powerplay_table_entry_v1_0._entry.17, ptr @get_powerplay_table_entry_v1_0._entry.9, ptr @get_powerplay_table_entry_v1_0._entry_ptr, ptr @get_powerplay_table_entry_v1_0._entry_ptr.10, ptr @get_powerplay_table_entry_v1_0._entry_ptr.14, ptr @get_powerplay_table_entry_v1_0._entry_ptr.18, ptr @get_sclk_voltage_dependency_table._entry, ptr @get_sclk_voltage_dependency_table._entry.87, ptr @get_sclk_voltage_dependency_table._entry_ptr, ptr @get_sclk_voltage_dependency_table._entry_ptr.88, ptr @get_valid_clk._entry, ptr @get_valid_clk._entry_ptr, ptr @get_vddc_lookup_table._entry, ptr @get_vddc_lookup_table._entry_ptr, ptr @init_thermal_controller._entry, ptr @init_thermal_controller._entry.79, ptr @init_thermal_controller._entry.83, ptr @init_thermal_controller._entry_ptr, ptr @init_thermal_controller._entry_ptr.80, ptr @init_thermal_controller._entry_ptr.84, ptr @pp_tables_v1_0_initialize._entry, ptr @pp_tables_v1_0_initialize._entry.22, ptr @pp_tables_v1_0_initialize._entry.25, ptr @pp_tables_v1_0_initialize._entry.29, ptr @pp_tables_v1_0_initialize._entry.33, ptr @pp_tables_v1_0_initialize._entry.37, ptr @pp_tables_v1_0_initialize._entry.41, ptr @pp_tables_v1_0_initialize._entry.45, ptr @pp_tables_v1_0_initialize._entry_ptr, ptr @pp_tables_v1_0_initialize._entry_ptr.23, ptr @pp_tables_v1_0_initialize._entry_ptr.26, ptr @pp_tables_v1_0_initialize._entry_ptr.30, ptr @pp_tables_v1_0_initialize._entry_ptr.34, ptr @pp_tables_v1_0_initialize._entry_ptr.38, ptr @pp_tables_v1_0_initialize._entry_ptr.42, ptr @pp_tables_v1_0_initialize._entry_ptr.46, ptr @ppt_get_vce_state_table_entry_v1_0._entry, ptr @ppt_get_vce_state_table_entry_v1_0._entry_ptr, ptr @set_platform_caps._entry, ptr @set_platform_caps._entry.62, ptr @set_platform_caps._entry.66, ptr @set_platform_caps._entry.70, ptr @set_platform_caps._entry.74, ptr @set_platform_caps._entry_ptr, ptr @set_platform_caps._entry_ptr.63, ptr @set_platform_caps._entry_ptr.67, ptr @set_platform_caps._entry_ptr.71, ptr @set_platform_caps._entry_ptr.75, ptr @pptable_v1_0_funcs, ptr @get_number_of_powerplay_table_entries_v1_0._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @get_number_of_powerplay_table_entries_v1_0._rs.4, ptr @.str.7, ptr @get_powerplay_table_entry_v1_0._rs, ptr @get_powerplay_table_entry_v1_0._rs.8, ptr @.str.11, ptr @get_powerplay_table_entry_v1_0._rs.12, ptr @.str.15, ptr @get_powerplay_table_entry_v1_0._rs.16, ptr @.str.19, ptr @pp_tables_v1_0_initialize._rs, ptr @.str.20, ptr @pp_tables_v1_0_initialize._rs.21, ptr @pp_tables_v1_0_initialize._rs.24, ptr @.str.27, ptr @pp_tables_v1_0_initialize._rs.32, ptr @.str.35, ptr @pp_tables_v1_0_initialize._rs.40, ptr @.str.43, ptr @pp_tables_v1_0_initialize._rs.44, ptr @.str.47, ptr @check_powerplay_tables._rs, ptr @.str.48, ptr @check_powerplay_tables._rs.49, ptr @.str.52, ptr @check_powerplay_tables._rs.53, ptr @.str.56, ptr @check_powerplay_tables._rs.57, ptr @set_platform_caps._rs, ptr @.str.60, ptr @set_platform_caps._rs.61, ptr @.str.64, ptr @set_platform_caps._rs.65, ptr @.str.68, ptr @set_platform_caps._rs.69, ptr @.str.72, ptr @set_platform_caps._rs.73, ptr @.str.76, ptr @init_thermal_controller._rs, ptr @.str.77, ptr @init_thermal_controller._rs.82, ptr @.str.85, ptr @get_mm_clock_voltage_table._rs, ptr @get_sclk_voltage_dependency_table._rs, ptr @get_sclk_voltage_dependency_table._rs.86, ptr @get_mclk_voltage_dependency_table._rs, ptr @get_pcie_table._rs, ptr @.str.90, ptr @get_pcie_table._rs.92, ptr @get_hard_limits._rs, ptr @get_gpio_table._rs, ptr @.str.97, ptr @get_vddc_lookup_table._rs, ptr @.str.98, ptr @ppt_get_vce_state_table_entry_v1_0._rs, ptr @.str.99], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptable_v1_0_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_number_of_powerplay_table_entries_v1_0._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_number_of_powerplay_table_entries_v1_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_number_of_powerplay_table_entries_v1_0._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_number_of_powerplay_table_entries_v1_0._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_powerplay_table_entry_v1_0._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_powerplay_table_entry_v1_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_powerplay_table_entry_v1_0._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_powerplay_table_entry_v1_0._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_powerplay_table_entry_v1_0._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_powerplay_table_entry_v1_0._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_powerplay_table_entry_v1_0._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_powerplay_table_entry_v1_0._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_tables_v1_0_initialize._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_powerplay_tables._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_platform_caps._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_platform_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_platform_caps._rs.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_platform_caps._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_platform_caps._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_platform_caps._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_platform_caps._rs.69 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_platform_caps._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_platform_caps._rs.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_platform_caps._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_thermal_controller._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_thermal_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_thermal_controller._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_thermal_controller._rs.82 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_thermal_controller._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mm_clock_voltage_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mm_clock_voltage_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_sclk_voltage_dependency_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_sclk_voltage_dependency_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_sclk_voltage_dependency_table._rs.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_sclk_voltage_dependency_table._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mclk_voltage_dependency_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mclk_voltage_dependency_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pcie_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pcie_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pcie_table._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pcie_table._rs.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pcie_table._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pcie_table._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_hard_limits._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_hard_limits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_valid_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gpio_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gpio_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_vddc_lookup_table._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_vddc_lookup_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppt_get_vce_state_table_entry_v1_0._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppt_get_vce_state_table_entry_v1_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_tables_v1_0_initialize(ptr noundef %hwmgr) #0 align 64 {
entry:
  %size.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #10
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %1 = ptrtoint ptr %pptable to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pptable, align 4
  %cmp.not = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not, label %if.then, label %do.end8

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @pp_tables_v1_0_initialize._rs, ptr noundef nonnull @__func__.pp_tables_v1_0_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #11
  br label %cleanup

do.end8:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #7
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size.i, align 2, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #7
  %3 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %frev.i, align 1, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #7
  %4 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %crev.i, align 1, !annotation !210
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
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @pp_tables_v1_0_initialize._rs.21, ptr noundef nonnull @__func__.pp_tables_v1_0_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %do.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.end24:                                         ; preds = %get_powerplay_table.exit.do.end24_crit_edge, %get_powerplay_table.exit.thread
  %table_address.0.i187 = phi ptr [ %6, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.do.end24_crit_edge ]
  %13 = ptrtoint ptr %table_address.0.i187 to i32
  %usStateArrayOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 12
  %14 = ptrtoint ptr %usStateArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usStateArrayOffset.i, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15) #7
  %conv.i148 = zext i16 %16 to i32
  %add.i = add i32 %conv.i148, %13
  %17 = inttoptr i32 %add.i to ptr
  %ucTableFormatRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %table_address.0.i187, i32 0, i32 1
  %18 = ptrtoint ptr %ucTableFormatRevision.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucTableFormatRevision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %cmp.i = icmp ugt i8 %19, 6
  br i1 %cmp.i, label %do.body9.i, label %if.then.i151

if.then.i151:                                     ; preds = %do.end24
  %call.i149 = call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs, ptr noundef nonnull @__func__.check_powerplay_tables) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i150 = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i150, label %if.then.i151.if.then28_crit_edge, label %if.then.i151.cleanup.sink.split.i_crit_edge

if.then.i151.cleanup.sink.split.i_crit_edge:      ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then.i151.if.then28_crit_edge:                 ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

do.body9.i:                                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp12.not.i = icmp eq i16 %15, 0
  br i1 %cmp12.not.i, label %if.then14.i, label %do.body27.i

if.then14.i:                                      ; preds = %do.body9.i
  %call15.i = call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs.49, ptr noundef nonnull @__func__.check_powerplay_tables) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then14.i.if.then28_crit_edge, label %if.then14.i.cleanup.sink.split.i_crit_edge

if.then14.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then14.i.if.then28_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

do.body27.i:                                      ; preds = %do.body9.i
  %20 = ptrtoint ptr %table_address.0.i187 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %table_address.0.i187, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp30.not.i = icmp eq i16 %21, 0
  br i1 %cmp30.not.i, label %if.then32.i, label %do.body45.i

if.then32.i:                                      ; preds = %do.body27.i
  %call33.i = call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs.53, ptr noundef nonnull @__func__.check_powerplay_tables) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then32.i.if.then28_crit_edge, label %if.then32.i.cleanup.sink.split.i_crit_edge

if.then32.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then32.i.if.then28_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

do.body45.i:                                      ; preds = %do.body27.i
  %ucNumEntries.i = getelementptr inbounds %struct._ATOM_Tonga_State_Array, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %ucNumEntries.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucNumEntries.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp47.not.i = icmp eq i8 %23, 0
  br i1 %cmp47.not.i, label %if.then49.i, label %do.end40

if.then49.i:                                      ; preds = %do.body45.i
  %call50.i = call i32 @___ratelimit(ptr noundef nonnull @check_powerplay_tables._rs.57, ptr noundef nonnull @__func__.check_powerplay_tables) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then49.i.if.then28_crit_edge, label %if.then49.i.cleanup.sink.split.i_crit_edge

if.then49.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then49.i.if.then28_crit_edge:                  ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

cleanup.sink.split.i:                             ; preds = %if.then49.i.cleanup.sink.split.i_crit_edge, %if.then32.i.cleanup.sink.split.i_crit_edge, %if.then14.i.cleanup.sink.split.i_crit_edge, %if.then.i151.cleanup.sink.split.i_crit_edge
  %.str.56.sink.i = phi ptr [ @.str.48, %if.then.i151.cleanup.sink.split.i_crit_edge ], [ @.str.52, %if.then14.i.cleanup.sink.split.i_crit_edge ], [ @.str.56, %if.then32.i.cleanup.sink.split.i_crit_edge ], [ @.str.56, %if.then49.i.cleanup.sink.split.i_crit_edge ]
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.56.sink.i) #11
  br label %if.then28

if.then28:                                        ; preds = %cleanup.sink.split.i, %if.then49.i.if.then28_crit_edge, %if.then32.i.if.then28_crit_edge, %if.then14.i.if.then28_crit_edge, %if.then.i151.if.then28_crit_edge
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @pp_tables_v1_0_initialize._rs.24, ptr noundef nonnull @__func__.pp_tables_v1_0_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.cleanup_crit_edge, label %do.end34

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #11
  br label %cleanup

do.end40:                                         ; preds = %do.body45.i
  %ulPlatformCaps = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 7
  %24 = ptrtoint ptr %ulPlatformCaps to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %ulPlatformCaps, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %neg.i = xor i32 %26, -1
  %and.i = and i32 %neg.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i152 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i152, label %if.then.i154, label %do.end40.do.body7.i_crit_edge

do.end40.do.body7.i_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7.i

if.then.i154:                                     ; preds = %do.end40
  %call.i153 = call i32 @___ratelimit(ptr noundef nonnull @set_platform_caps._rs, ptr noundef nonnull @__func__.set_platform_caps) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool1.not.i = icmp eq i32 %call.i153, 0
  br i1 %tobool1.not.i, label %if.then.i154.do.body7.i_crit_edge, label %do.end.i

if.then.i154.do.body7.i_crit_edge:                ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7.i

do.end.i:                                         ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.60) #11
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.end.i, %if.then.i154.do.body7.i_crit_edge, %do.end40.do.body7.i_crit_edge
  %and9.i = and i32 %neg.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %do.body7.i.do.body22.i_crit_edge

do.body7.i.do.body22.i_crit_edge:                 ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22.i

if.then11.i:                                      ; preds = %do.body7.i
  %call12.i = call i32 @___ratelimit(ptr noundef nonnull @set_platform_caps._rs.61, ptr noundef nonnull @__func__.set_platform_caps) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then11.i.do.body22.i_crit_edge, label %do.end16.i

if.then11.i.do.body22.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22.i

do.end16.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.64) #11
  br label %do.body22.i

do.body22.i:                                      ; preds = %do.end16.i, %if.then11.i.do.body22.i_crit_edge, %do.body7.i.do.body22.i_crit_edge
  %and24.i = and i32 %neg.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %do.body22.i.do.body37.i_crit_edge

do.body22.i.do.body37.i_crit_edge:                ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37.i

if.then26.i:                                      ; preds = %do.body22.i
  %call27.i = call i32 @___ratelimit(ptr noundef nonnull @set_platform_caps._rs.65, ptr noundef nonnull @__func__.set_platform_caps) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then26.i.do.body37.i_crit_edge, label %do.end31.i

if.then26.i.do.body37.i_crit_edge:                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37.i

do.end31.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %call33.i155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68) #11
  br label %do.body37.i

do.body37.i:                                      ; preds = %do.end31.i, %if.then26.i.do.body37.i_crit_edge, %do.body22.i.do.body37.i_crit_edge
  %and39.i = and i32 %neg.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %do.body37.i.do.body52.i_crit_edge

do.body37.i.do.body52.i_crit_edge:                ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body52.i

if.then41.i:                                      ; preds = %do.body37.i
  %call42.i = call i32 @___ratelimit(ptr noundef nonnull @set_platform_caps._rs.69, ptr noundef nonnull @__func__.set_platform_caps) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.then41.i.do.body52.i_crit_edge, label %do.end46.i

if.then41.i.do.body52.i_crit_edge:                ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body52.i

do.end46.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.72) #11
  br label %do.body52.i

do.body52.i:                                      ; preds = %do.end46.i, %if.then41.i.do.body52.i_crit_edge, %do.body37.i.do.body52.i_crit_edge
  %and54.i = and i32 %neg.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %do.body52.i.set_platform_caps.exit_crit_edge

do.body52.i.set_platform_caps.exit_crit_edge:     ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_platform_caps.exit

if.then56.i:                                      ; preds = %do.body52.i
  %call57.i156 = call i32 @___ratelimit(ptr noundef nonnull @set_platform_caps._rs.73, ptr noundef nonnull @__func__.set_platform_caps) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i156)
  %tobool58.not.i = icmp eq i32 %call57.i156, 0
  br i1 %tobool58.not.i, label %if.then56.i.set_platform_caps.exit_crit_edge, label %do.end61.i

if.then56.i.set_platform_caps.exit_crit_edge:     ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_platform_caps.exit

do.end61.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.76) #11
  br label %set_platform_caps.exit

set_platform_caps.exit:                           ; preds = %do.end61.i, %if.then56.i.set_platform_caps.exit_crit_edge, %do.body52.i.set_platform_caps.exit_crit_edge
  %and67.i = and i32 %26, 2
  %platform_descriptor.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23
  %27 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %platform_descriptor.i.i, align 4
  %and1.i.i.i = and i32 %28, -16777251
  %and68.i = shl i32 %26, 3
  %29 = and i32 %and68.i, 32
  %and70.i = shl i32 %26, 19
  %30 = and i32 %and70.i, 16777216
  %storemerge.i = or i32 %29, %and67.i
  %storemerge67.i = or i32 %storemerge.i, %30
  %storemerge68.i = or i32 %storemerge67.i, %and1.i.i.i
  store i32 %storemerge68.i, ptr %platform_descriptor.i.i, align 4
  %arrayidx.i8.i.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i8.i.i, align 4
  %and1.i.i16.i = and i32 %32, -12582913
  %and72.i = shl i32 %26, 10
  %33 = and i32 %and72.i, 4194304
  %and74.i = shl i32 %26, 8
  %34 = and i32 %and74.i, 8388608
  %or.i.i14.sink.i = or i32 %34, %33
  %or.i.i21.sink.i = or i32 %or.i.i14.sink.i, %and1.i.i16.i
  store i32 %or.i.i21.sink.i, ptr %arrayidx.i8.i.i, align 4
  %arrayidx.i8.i31.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx.i8.i31.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i8.i31.i, align 4
  %and1.i.i32.i = and i32 %36, -557850625
  %and76.i = shl i32 %26, 22
  %37 = and i32 %and76.i, 4194304
  %or.i.i29.sink.i = or i32 %and1.i.i32.i, %37
  %arrayidx.i8.i39.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx.i8.i39.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i8.i39.i, align 4
  %and1.i.i40.i = and i32 %39, -9
  %and78.i = lshr i32 %26, 14
  %40 = and i32 %and78.i, 8
  %or.i.i37.sink.i = or i32 %and1.i.i40.i, %40
  store i32 %or.i.i37.sink.i, ptr %arrayidx.i8.i39.i, align 4
  %and80.i = shl i32 %26, 21
  %41 = and i32 %and80.i, 16777216
  %and82.i = lshr i32 %26, 11
  %42 = and i32 %and82.i, 8192
  %and84.i = shl i32 %26, 4
  %43 = and i32 %and84.i, 536870912
  %or.i.i45.sink.i = or i32 %42, %41
  %or.i.i53.sink.i = or i32 %or.i.i45.sink.i, %43
  %or.i.i61.sink.i = or i32 %or.i.i53.sink.i, %or.i.i29.sink.i
  store i32 %or.i.i61.sink.i, ptr %arrayidx.i8.i31.i, align 4
  %usThermalControllerOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 14
  %44 = ptrtoint ptr %usThermalControllerOffset.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %usThermalControllerOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp.not.i = icmp eq i16 %45, 0
  br i1 %cmp.not.i, label %if.then.i159, label %do.end9.i

if.then.i159:                                     ; preds = %set_platform_caps.exit
  %call.i157 = call i32 @___ratelimit(ptr noundef nonnull @init_thermal_controller._rs, ptr noundef nonnull @__func__.init_thermal_controller) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %if.then.i159.if.then60_crit_edge, label %if.then.i159.if.then60.sink.split_crit_edge

if.then.i159.if.then60.sink.split_crit_edge:      ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.sink.split

if.then.i159.if.then60_crit_edge:                 ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

do.end9.i:                                        ; preds = %set_platform_caps.exit
  %46 = call i16 @llvm.bswap.i16(i16 %45) #7
  %conv.i161 = zext i16 %46 to i32
  %add.i162 = add i32 %conv.i161, %13
  %47 = inttoptr i32 %add.i162 to ptr
  %ucType.i = getelementptr inbounds %struct._ATOM_Tonga_Thermal_Controller, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ucType.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ucType.i, align 1
  %thermal_controller10.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34
  %50 = ptrtoint ptr %thermal_controller10.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %thermal_controller10.i, align 4
  %ucI2cLine.i = getelementptr inbounds %struct._ATOM_Tonga_Thermal_Controller, ptr %47, i32 0, i32 2
  %51 = ptrtoint ptr %ucI2cLine.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ucI2cLine.i, align 1
  %ucI2cLine13.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 1
  %53 = ptrtoint ptr %ucI2cLine13.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %ucI2cLine13.i, align 1
  %ucI2cAddress.i = getelementptr inbounds %struct._ATOM_Tonga_Thermal_Controller, ptr %47, i32 0, i32 3
  %54 = ptrtoint ptr %ucI2cAddress.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ucI2cAddress.i, align 1
  %ucI2cAddress15.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 2
  %56 = ptrtoint ptr %ucI2cAddress15.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %ucI2cAddress15.i, align 2
  %ucFanParameters.i = getelementptr inbounds %struct._ATOM_Tonga_Thermal_Controller, ptr %47, i32 0, i32 4
  %57 = ptrtoint ptr %ucFanParameters.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ucFanParameters.i, align 1
  %fanInfo.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4
  %.lobit.i = lshr i8 %58, 7
  %59 = ptrtoint ptr %fanInfo.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.lobit.i, ptr %fanInfo.i, align 4
  %60 = load i8, ptr %ucFanParameters.i, align 1
  %61 = and i8 %60, 15
  %ucTachometerPulsesPerRevolution.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 1
  %62 = ptrtoint ptr %ucTachometerPulsesPerRevolution.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %ucTachometerPulsesPerRevolution.i, align 1
  %ucFanMinRPM.i = getelementptr inbounds %struct._ATOM_Tonga_Thermal_Controller, ptr %47, i32 0, i32 5
  %63 = ptrtoint ptr %ucFanMinRPM.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ucFanMinRPM.i, align 1
  %conv26.i = zext i8 %64 to i32
  %mul.i = mul nuw nsw i32 %conv26.i, 100
  %ulMinRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 2
  %65 = ptrtoint ptr %ulMinRPM.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul.i, ptr %ulMinRPM.i, align 4
  %ucFanMaxRPM.i = getelementptr inbounds %struct._ATOM_Tonga_Thermal_Controller, ptr %47, i32 0, i32 6
  %66 = ptrtoint ptr %ucFanMaxRPM.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ucFanMaxRPM.i, align 1
  %conv29.i = zext i8 %67 to i32
  %mul30.i = mul nuw nsw i32 %conv29.i, 100
  %ulMaxRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 4, i32 3
  %68 = ptrtoint ptr %ulMaxRPM.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul30.i, ptr %ulMaxRPM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp36.not.i = icmp eq i8 %49, 0
  %and1.i.i.i164 = and i32 %storemerge68.i, -17
  %masksel.i = select i1 %cmp36.not.i, i32 0, i32 16
  %storemerge.i165 = or i32 %masksel.i, %and1.i.i.i164
  %69 = ptrtoint ptr %platform_descriptor.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %storemerge.i165, ptr %platform_descriptor.i.i, align 4
  %usFanTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 13
  %70 = ptrtoint ptr %usFanTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %usFanTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp39.i = icmp eq i16 %71, 0
  br i1 %cmp39.i, label %if.then41.i166, label %if.end43.i

if.then41.i166:                                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %use_hw_fan_control.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 3
  %72 = ptrtoint ptr %use_hw_fan_control.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %use_hw_fan_control.i, align 1
  br label %do.end72

if.end43.i:                                       ; preds = %do.end9.i
  %73 = call i16 @llvm.bswap.i16(i16 %71) #7
  %conv45.i = zext i16 %73 to i32
  %add46.i = add i32 %conv45.i, %13
  %74 = inttoptr i32 %add46.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp67.not.i = icmp eq i8 %76, 0
  br i1 %cmp67.not.i, label %if.then69.i, label %do.end81.i

if.then69.i:                                      ; preds = %if.end43.i
  %call70.i = call i32 @___ratelimit(ptr noundef nonnull @init_thermal_controller._rs.82, ptr noundef nonnull @__func__.init_thermal_controller) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.then69.i.if.then60_crit_edge, label %if.then69.i.if.then60.sink.split_crit_edge

if.then69.i.if.then60.sink.split_crit_edge:       ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.sink.split

if.then69.i.if.then60_crit_edge:                  ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

do.end81.i:                                       ; preds = %if.end43.i
  %advanceFanControlParameters.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5
  %ulCycleDelay.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 7
  %77 = ptrtoint ptr %ulCycleDelay.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 100000, ptr %ulCycleDelay.i, align 4
  %or.i.i = or i32 %or.i.i21.sink.i, 1073741824
  %78 = ptrtoint ptr %arrayidx.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i.i, ptr %arrayidx.i8.i.i, align 4
  %79 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %80)
  %cmp85.i = icmp ult i8 %80, 8
  br i1 %cmp85.i, label %if.then87.i, label %if.else.i

if.then87.i:                                      ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  %ucTHyst.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 1
  %81 = ptrtoint ptr %ucTHyst.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ucTHyst.i, align 1
  %ucTHyst90.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 6
  %83 = ptrtoint ptr %ucTHyst90.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %ucTHyst90.i, align 4
  %usTMin.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 2
  %84 = ptrtoint ptr %usTMin.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %usTMin.i, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85) #7
  %87 = ptrtoint ptr %advanceFanControlParameters.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %advanceFanControlParameters.i, align 4
  %usTMed.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 3
  %88 = ptrtoint ptr %usTMed.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %usTMed.i, align 1
  %90 = call i16 @llvm.bswap.i16(i16 %89) #7
  %usTMed96.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 1
  %91 = ptrtoint ptr %usTMed96.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %usTMed96.i, align 2
  %usTHigh.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 4
  %92 = ptrtoint ptr %usTHigh.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %usTHigh.i, align 1
  %94 = call i16 @llvm.bswap.i16(i16 %93) #7
  %usTHigh99.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 2
  %95 = ptrtoint ptr %usTHigh99.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %usTHigh99.i, align 4
  %usPWMMin.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 5
  %96 = ptrtoint ptr %usPWMMin.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %usPWMMin.i, align 1
  %98 = call i16 @llvm.bswap.i16(i16 %97) #7
  %usPWMMin102.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %99 = ptrtoint ptr %usPWMMin102.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %usPWMMin102.i, align 2
  %usPWMMed.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 6
  %100 = ptrtoint ptr %usPWMMed.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %usPWMMed.i, align 1
  %102 = call i16 @llvm.bswap.i16(i16 %101) #7
  %usPWMMed105.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 4
  %103 = ptrtoint ptr %usPWMMed105.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %usPWMMed105.i, align 4
  %usPWMHigh.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 7
  %104 = ptrtoint ptr %usPWMHigh.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %usPWMHigh.i, align 1
  %106 = call i16 @llvm.bswap.i16(i16 %105) #7
  %usPWMHigh108.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 5
  %107 = ptrtoint ptr %usPWMHigh108.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %usPWMHigh108.i, align 2
  %usTMax.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %108 = ptrtoint ptr %usTMax.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 10900, ptr %usTMax.i, align 4
  %usTMax111.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 8
  %109 = ptrtoint ptr %usTMax111.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %usTMax111.i, align 1
  %111 = call i16 @llvm.bswap.i16(i16 %110) #7
  %112 = ptrtoint ptr %usTMax.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %usTMax.i, align 4
  %ucFanControlMode.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 9
  %113 = ptrtoint ptr %ucFanControlMode.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ucFanControlMode.i, align 1
  %ucFanControlMode117.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 9
  %115 = ptrtoint ptr %ucFanControlMode117.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %ucFanControlMode117.i, align 2
  %usFanPWMMax.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 10
  %116 = ptrtoint ptr %usFanPWMMax.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %usFanPWMMax.i, align 1
  %118 = call i16 @llvm.bswap.i16(i16 %117) #7
  %usDefaultMaxFanPWM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 13
  %119 = ptrtoint ptr %usDefaultMaxFanPWM.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %usDefaultMaxFanPWM.i, align 2
  %usDefaultFanOutputSensitivity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 15
  %120 = ptrtoint ptr %usDefaultFanOutputSensitivity.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 4836, ptr %usDefaultFanOutputSensitivity.i, align 2
  %usFanOutputSensitivity.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 11
  %121 = ptrtoint ptr %usFanOutputSensitivity.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %usFanOutputSensitivity.i, align 1
  %123 = call i16 @llvm.bswap.i16(i16 %122) #7
  %usFanOutputSensitivity124.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %124 = ptrtoint ptr %usFanOutputSensitivity124.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %usFanOutputSensitivity124.i, align 4
  %usFanRPMMax.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 12
  %125 = ptrtoint ptr %usFanRPMMax.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %usFanRPMMax.i, align 1
  %127 = call i16 @llvm.bswap.i16(i16 %126) #7
  %usDefaultMaxFanRPM.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 20
  %128 = ptrtoint ptr %usDefaultMaxFanRPM.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %usDefaultMaxFanRPM.i, align 4
  %ulMinFanSCLKAcousticLimit.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 13
  %129 = ptrtoint ptr %ulMinFanSCLKAcousticLimit.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %ulMinFanSCLKAcousticLimit.i, align 1
  %131 = call i32 @llvm.bswap.i32(i32 %130) #7
  %div.i = udiv i32 %131, 100
  %ulMinFanSCLKAcousticLimit129.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 26
  %132 = ptrtoint ptr %ulMinFanSCLKAcousticLimit129.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %div.i, ptr %ulMinFanSCLKAcousticLimit129.i, align 4
  %ucTargetTemperature.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 14
  %133 = ptrtoint ptr %ucTargetTemperature.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ucTargetTemperature.i, align 1
  %ucTargetTemperature132.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 27
  %135 = ptrtoint ptr %ucTargetTemperature132.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %ucTargetTemperature132.i, align 4
  %ucMinimumPWMLimit.i = getelementptr inbounds %struct._ATOM_Tonga_Fan_Table, ptr %74, i32 0, i32 15
  %136 = ptrtoint ptr %ucMinimumPWMLimit.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %ucMinimumPWMLimit.i, align 1
  %ucMinimumPWMLimit135.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 28
  %138 = ptrtoint ptr %ucMinimumPWMLimit135.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %ucMinimumPWMLimit135.i, align 1
  br label %do.end72

if.else.i:                                        ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %80)
  %cmp138.i = icmp eq i8 %80, 8
  br i1 %cmp138.i, label %if.then140.i, label %if.then231.i

if.then140.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %ucTHyst141.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 1
  %139 = ptrtoint ptr %ucTHyst141.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %ucTHyst141.i, align 1
  %ucTHyst144.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 6
  %141 = ptrtoint ptr %ucTHyst144.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %ucTHyst144.i, align 4
  %usTMin145.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 2
  %142 = ptrtoint ptr %usTMin145.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %usTMin145.i, align 1
  %144 = call i16 @llvm.bswap.i16(i16 %143) #7
  %145 = ptrtoint ptr %advanceFanControlParameters.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %advanceFanControlParameters.i, align 4
  %usTMed149.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 3
  %146 = ptrtoint ptr %usTMed149.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %147 = load i16, ptr %usTMed149.i, align 1
  %148 = call i16 @llvm.bswap.i16(i16 %147) #7
  %usTMed152.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 1
  %149 = ptrtoint ptr %usTMed152.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %usTMed152.i, align 2
  %usTHigh153.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 4
  %150 = ptrtoint ptr %usTHigh153.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %usTHigh153.i, align 1
  %152 = call i16 @llvm.bswap.i16(i16 %151) #7
  %usTHigh156.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 2
  %153 = ptrtoint ptr %usTHigh156.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %usTHigh156.i, align 4
  %usPWMMin157.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 5
  %154 = ptrtoint ptr %usPWMMin157.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %usPWMMin157.i, align 1
  %156 = call i16 @llvm.bswap.i16(i16 %155) #7
  %usPWMMin160.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %157 = ptrtoint ptr %usPWMMin160.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %usPWMMin160.i, align 2
  %usPWMMed161.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 6
  %158 = ptrtoint ptr %usPWMMed161.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %159 = load i16, ptr %usPWMMed161.i, align 1
  %160 = call i16 @llvm.bswap.i16(i16 %159) #7
  %usPWMMed164.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 4
  %161 = ptrtoint ptr %usPWMMed164.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %usPWMMed164.i, align 4
  %usPWMHigh165.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 7
  %162 = ptrtoint ptr %usPWMHigh165.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 2)
  %163 = load i16, ptr %usPWMHigh165.i, align 1
  %164 = call i16 @llvm.bswap.i16(i16 %163) #7
  %usPWMHigh168.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 5
  %165 = ptrtoint ptr %usPWMHigh168.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %usPWMHigh168.i, align 2
  %usTMax169.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 8
  %166 = ptrtoint ptr %usTMax169.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 2)
  %167 = load i16, ptr %usTMax169.i, align 1
  %168 = call i16 @llvm.bswap.i16(i16 %167) #7
  %usTMax172.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %169 = ptrtoint ptr %usTMax172.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %usTMax172.i, align 4
  %ucFanControlMode173.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 9
  %170 = ptrtoint ptr %ucFanControlMode173.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %ucFanControlMode173.i, align 1
  %ucFanControlMode176.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 9
  %172 = ptrtoint ptr %ucFanControlMode176.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %ucFanControlMode176.i, align 2
  %usFanPWMMax177.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 10
  %173 = ptrtoint ptr %usFanPWMMax177.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %usFanPWMMax177.i, align 1
  %175 = call i16 @llvm.bswap.i16(i16 %174) #7
  %usDefaultMaxFanPWM180.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 13
  %176 = ptrtoint ptr %usDefaultMaxFanPWM180.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %usDefaultMaxFanPWM180.i, align 2
  %usDefaultFanOutputSensitivity183.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 15
  %177 = ptrtoint ptr %usDefaultFanOutputSensitivity183.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 4836, ptr %usDefaultFanOutputSensitivity183.i, align 2
  %usFanOutputSensitivity184.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 11
  %178 = ptrtoint ptr %usFanOutputSensitivity184.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 2)
  %179 = load i16, ptr %usFanOutputSensitivity184.i, align 1
  %180 = call i16 @llvm.bswap.i16(i16 %179) #7
  %usFanOutputSensitivity187.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %181 = ptrtoint ptr %usFanOutputSensitivity187.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %usFanOutputSensitivity187.i, align 4
  %usFanRPMMax188.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 12
  %182 = ptrtoint ptr %usFanRPMMax188.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 2)
  %183 = load i16, ptr %usFanRPMMax188.i, align 1
  %184 = call i16 @llvm.bswap.i16(i16 %183) #7
  %usDefaultMaxFanRPM191.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 20
  %185 = ptrtoint ptr %usDefaultMaxFanRPM191.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %usDefaultMaxFanRPM191.i, align 4
  %ulMinFanSCLKAcousticLimit192.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 13
  %186 = ptrtoint ptr %ulMinFanSCLKAcousticLimit192.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %ulMinFanSCLKAcousticLimit192.i, align 1
  %188 = call i32 @llvm.bswap.i32(i32 %187) #7
  %div193.i = udiv i32 %188, 100
  %ulMinFanSCLKAcousticLimit196.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 26
  %189 = ptrtoint ptr %ulMinFanSCLKAcousticLimit196.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %div193.i, ptr %ulMinFanSCLKAcousticLimit196.i, align 4
  %ucTargetTemperature197.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 14
  %190 = ptrtoint ptr %ucTargetTemperature197.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %ucTargetTemperature197.i, align 1
  %ucTargetTemperature200.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 27
  %192 = ptrtoint ptr %ucTargetTemperature200.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %ucTargetTemperature200.i, align 4
  %ucMinimumPWMLimit201.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 15
  %193 = ptrtoint ptr %ucMinimumPWMLimit201.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %ucMinimumPWMLimit201.i, align 1
  %ucMinimumPWMLimit204.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 28
  %195 = ptrtoint ptr %ucMinimumPWMLimit204.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %ucMinimumPWMLimit204.i, align 1
  %usFanGainEdge.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 16
  %196 = ptrtoint ptr %usFanGainEdge.i to i32
  call void @__asan_loadN_noabort(i32 %196, i32 2)
  %197 = load i16, ptr %usFanGainEdge.i, align 1
  %198 = call i16 @llvm.bswap.i16(i16 %197) #7
  %usFanGainEdge207.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 29
  %199 = ptrtoint ptr %usFanGainEdge207.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %198, ptr %usFanGainEdge207.i, align 2
  %usFanGainHotspot.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 17
  %200 = ptrtoint ptr %usFanGainHotspot.i to i32
  call void @__asan_loadN_noabort(i32 %200, i32 2)
  %201 = load i16, ptr %usFanGainHotspot.i, align 1
  %202 = call i16 @llvm.bswap.i16(i16 %201) #7
  %usFanGainHotspot210.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 30
  %203 = ptrtoint ptr %usFanGainHotspot210.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %usFanGainHotspot210.i, align 4
  %usFanGainLiquid.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 18
  %204 = ptrtoint ptr %usFanGainLiquid.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 2)
  %205 = load i16, ptr %usFanGainLiquid.i, align 1
  %206 = call i16 @llvm.bswap.i16(i16 %205) #7
  %usFanGainLiquid213.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 31
  %207 = ptrtoint ptr %usFanGainLiquid213.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %206, ptr %usFanGainLiquid213.i, align 2
  %usFanGainVrVddc.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 19
  %208 = ptrtoint ptr %usFanGainVrVddc.i to i32
  call void @__asan_loadN_noabort(i32 %208, i32 2)
  %209 = load i16, ptr %usFanGainVrVddc.i, align 1
  %210 = call i16 @llvm.bswap.i16(i16 %209) #7
  %usFanGainVrVddc216.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 32
  %211 = ptrtoint ptr %usFanGainVrVddc216.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %210, ptr %usFanGainVrVddc216.i, align 4
  %usFanGainVrMvdd.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 20
  %212 = ptrtoint ptr %usFanGainVrMvdd.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 2)
  %213 = load i16, ptr %usFanGainVrMvdd.i, align 1
  %214 = call i16 @llvm.bswap.i16(i16 %213) #7
  %usFanGainVrMvdd219.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 33
  %215 = ptrtoint ptr %usFanGainVrMvdd219.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %214, ptr %usFanGainVrMvdd219.i, align 2
  %usFanGainPlx.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 21
  %216 = ptrtoint ptr %usFanGainPlx.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 2)
  %217 = load i16, ptr %usFanGainPlx.i, align 1
  %218 = call i16 @llvm.bswap.i16(i16 %217) #7
  %usFanGainPlx222.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 34
  %219 = ptrtoint ptr %usFanGainPlx222.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %218, ptr %usFanGainPlx222.i, align 4
  %usFanGainHbm.i = getelementptr inbounds %struct._ATOM_Fiji_Fan_Table, ptr %74, i32 0, i32 22
  %220 = ptrtoint ptr %usFanGainHbm.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 2)
  %221 = load i16, ptr %usFanGainHbm.i, align 1
  %222 = call i16 @llvm.bswap.i16(i16 %221) #7
  %usFanGainHbm225.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 35
  %223 = ptrtoint ptr %usFanGainHbm225.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %222, ptr %usFanGainHbm225.i, align 2
  br label %do.end72

if.then231.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %ucTHyst232.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 1
  %224 = ptrtoint ptr %ucTHyst232.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %ucTHyst232.i, align 1
  %ucTHyst235.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 6
  %226 = ptrtoint ptr %ucTHyst235.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %ucTHyst235.i, align 4
  %usTMin236.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 2
  %227 = ptrtoint ptr %usTMin236.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 2)
  %228 = load i16, ptr %usTMin236.i, align 1
  %229 = call i16 @llvm.bswap.i16(i16 %228) #7
  %230 = ptrtoint ptr %advanceFanControlParameters.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %229, ptr %advanceFanControlParameters.i, align 4
  %usTMed240.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 3
  %231 = ptrtoint ptr %usTMed240.i to i32
  call void @__asan_loadN_noabort(i32 %231, i32 2)
  %232 = load i16, ptr %usTMed240.i, align 1
  %233 = call i16 @llvm.bswap.i16(i16 %232) #7
  %usTMed243.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 1
  %234 = ptrtoint ptr %usTMed243.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %233, ptr %usTMed243.i, align 2
  %usTHigh244.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 4
  %235 = ptrtoint ptr %usTHigh244.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 2)
  %236 = load i16, ptr %usTHigh244.i, align 1
  %237 = call i16 @llvm.bswap.i16(i16 %236) #7
  %usTHigh247.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 2
  %238 = ptrtoint ptr %usTHigh247.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %237, ptr %usTHigh247.i, align 4
  %usPWMMin248.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 5
  %239 = ptrtoint ptr %usPWMMin248.i to i32
  call void @__asan_loadN_noabort(i32 %239, i32 2)
  %240 = load i16, ptr %usPWMMin248.i, align 1
  %241 = call i16 @llvm.bswap.i16(i16 %240) #7
  %usPWMMin251.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 3
  %242 = ptrtoint ptr %usPWMMin251.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %241, ptr %usPWMMin251.i, align 2
  %usPWMMed252.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 6
  %243 = ptrtoint ptr %usPWMMed252.i to i32
  call void @__asan_loadN_noabort(i32 %243, i32 2)
  %244 = load i16, ptr %usPWMMed252.i, align 1
  %245 = call i16 @llvm.bswap.i16(i16 %244) #7
  %usPWMMed255.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 4
  %246 = ptrtoint ptr %usPWMMed255.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %245, ptr %usPWMMed255.i, align 4
  %usPWMHigh256.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 7
  %247 = ptrtoint ptr %usPWMHigh256.i to i32
  call void @__asan_loadN_noabort(i32 %247, i32 2)
  %248 = load i16, ptr %usPWMHigh256.i, align 1
  %249 = call i16 @llvm.bswap.i16(i16 %248) #7
  %usPWMHigh259.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 5
  %250 = ptrtoint ptr %usPWMHigh259.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %usPWMHigh259.i, align 2
  %usTMax260.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 8
  %251 = ptrtoint ptr %usTMax260.i to i32
  call void @__asan_loadN_noabort(i32 %251, i32 2)
  %252 = load i16, ptr %usTMax260.i, align 1
  %253 = call i16 @llvm.bswap.i16(i16 %252) #7
  %usTMax263.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 8
  %254 = ptrtoint ptr %usTMax263.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %253, ptr %usTMax263.i, align 4
  %ucFanControlMode264.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 9
  %255 = ptrtoint ptr %ucFanControlMode264.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %ucFanControlMode264.i, align 1
  %ucFanControlMode267.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 9
  %257 = ptrtoint ptr %ucFanControlMode267.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %ucFanControlMode267.i, align 2
  %usFanPWMMax268.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 10
  %258 = ptrtoint ptr %usFanPWMMax268.i to i32
  call void @__asan_loadN_noabort(i32 %258, i32 2)
  %259 = load i16, ptr %usFanPWMMax268.i, align 1
  %260 = call i16 @llvm.bswap.i16(i16 %259) #7
  %usDefaultMaxFanPWM271.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 13
  %261 = ptrtoint ptr %usDefaultMaxFanPWM271.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %260, ptr %usDefaultMaxFanPWM271.i, align 2
  %usDefaultFanOutputSensitivity274.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 15
  %262 = ptrtoint ptr %usDefaultFanOutputSensitivity274.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 4836, ptr %usDefaultFanOutputSensitivity274.i, align 2
  %usFanOutputSensitivity275.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 11
  %263 = ptrtoint ptr %usFanOutputSensitivity275.i to i32
  call void @__asan_loadN_noabort(i32 %263, i32 2)
  %264 = load i16, ptr %usFanOutputSensitivity275.i, align 1
  %265 = call i16 @llvm.bswap.i16(i16 %264) #7
  %usFanOutputSensitivity278.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 14
  %266 = ptrtoint ptr %usFanOutputSensitivity278.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %265, ptr %usFanOutputSensitivity278.i, align 4
  %usFanRPMMax279.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 12
  %267 = ptrtoint ptr %usFanRPMMax279.i to i32
  call void @__asan_loadN_noabort(i32 %267, i32 2)
  %268 = load i16, ptr %usFanRPMMax279.i, align 1
  %269 = call i16 @llvm.bswap.i16(i16 %268) #7
  %usDefaultMaxFanRPM282.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 20
  %270 = ptrtoint ptr %usDefaultMaxFanRPM282.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %269, ptr %usDefaultMaxFanRPM282.i, align 4
  %ulMinFanSCLKAcousticLimit283.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 13
  %271 = ptrtoint ptr %ulMinFanSCLKAcousticLimit283.i to i32
  call void @__asan_loadN_noabort(i32 %271, i32 4)
  %272 = load i32, ptr %ulMinFanSCLKAcousticLimit283.i, align 1
  %273 = call i32 @llvm.bswap.i32(i32 %272) #7
  %div284.i = udiv i32 %273, 100
  %ulMinFanSCLKAcousticLimit287.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 26
  %274 = ptrtoint ptr %ulMinFanSCLKAcousticLimit287.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %div284.i, ptr %ulMinFanSCLKAcousticLimit287.i, align 4
  %ucTargetTemperature288.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 14
  %275 = ptrtoint ptr %ucTargetTemperature288.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %ucTargetTemperature288.i, align 1
  %ucTargetTemperature291.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 27
  %277 = ptrtoint ptr %ucTargetTemperature291.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %ucTargetTemperature291.i, align 4
  %ucMinimumPWMLimit292.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 15
  %278 = ptrtoint ptr %ucMinimumPWMLimit292.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %ucMinimumPWMLimit292.i, align 1
  %ucMinimumPWMLimit295.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 28
  %280 = ptrtoint ptr %ucMinimumPWMLimit295.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %ucMinimumPWMLimit295.i, align 1
  %usFanGainEdge296.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 16
  %281 = ptrtoint ptr %usFanGainEdge296.i to i32
  call void @__asan_loadN_noabort(i32 %281, i32 2)
  %282 = load i16, ptr %usFanGainEdge296.i, align 1
  %283 = call i16 @llvm.bswap.i16(i16 %282) #7
  %usFanGainEdge299.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 29
  %284 = ptrtoint ptr %usFanGainEdge299.i to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %283, ptr %usFanGainEdge299.i, align 2
  %usFanGainHotspot300.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 17
  %285 = ptrtoint ptr %usFanGainHotspot300.i to i32
  call void @__asan_loadN_noabort(i32 %285, i32 2)
  %286 = load i16, ptr %usFanGainHotspot300.i, align 1
  %287 = call i16 @llvm.bswap.i16(i16 %286) #7
  %usFanGainHotspot303.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 30
  %288 = ptrtoint ptr %usFanGainHotspot303.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %287, ptr %usFanGainHotspot303.i, align 4
  %usFanGainLiquid304.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 18
  %289 = ptrtoint ptr %usFanGainLiquid304.i to i32
  call void @__asan_loadN_noabort(i32 %289, i32 2)
  %290 = load i16, ptr %usFanGainLiquid304.i, align 1
  %291 = call i16 @llvm.bswap.i16(i16 %290) #7
  %usFanGainLiquid307.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 31
  %292 = ptrtoint ptr %usFanGainLiquid307.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %291, ptr %usFanGainLiquid307.i, align 2
  %usFanGainVrVddc308.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 19
  %293 = ptrtoint ptr %usFanGainVrVddc308.i to i32
  call void @__asan_loadN_noabort(i32 %293, i32 2)
  %294 = load i16, ptr %usFanGainVrVddc308.i, align 1
  %295 = call i16 @llvm.bswap.i16(i16 %294) #7
  %usFanGainVrVddc311.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 32
  %296 = ptrtoint ptr %usFanGainVrVddc311.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %295, ptr %usFanGainVrVddc311.i, align 4
  %usFanGainVrMvdd312.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 20
  %297 = ptrtoint ptr %usFanGainVrMvdd312.i to i32
  call void @__asan_loadN_noabort(i32 %297, i32 2)
  %298 = load i16, ptr %usFanGainVrMvdd312.i, align 1
  %299 = call i16 @llvm.bswap.i16(i16 %298) #7
  %usFanGainVrMvdd315.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 33
  %300 = ptrtoint ptr %usFanGainVrMvdd315.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %299, ptr %usFanGainVrMvdd315.i, align 2
  %usFanGainPlx316.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 21
  %301 = ptrtoint ptr %usFanGainPlx316.i to i32
  call void @__asan_loadN_noabort(i32 %301, i32 2)
  %302 = load i16, ptr %usFanGainPlx316.i, align 1
  %303 = call i16 @llvm.bswap.i16(i16 %302) #7
  %usFanGainPlx319.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 34
  %304 = ptrtoint ptr %usFanGainPlx319.i to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 %303, ptr %usFanGainPlx319.i, align 4
  %usFanGainHbm320.i = getelementptr inbounds %struct._ATOM_Polaris_Fan_Table, ptr %74, i32 0, i32 22
  %305 = ptrtoint ptr %usFanGainHbm320.i to i32
  call void @__asan_loadN_noabort(i32 %305, i32 2)
  %306 = load i16, ptr %usFanGainHbm320.i, align 1
  %307 = call i16 @llvm.bswap.i16(i16 %306) #7
  %usFanGainHbm323.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 35
  %308 = ptrtoint ptr %usFanGainHbm323.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %307, ptr %usFanGainHbm323.i, align 2
  %ucEnableZeroRPM328.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 36
  %309 = ptrtoint ptr %ucEnableZeroRPM328.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %ucEnableZeroRPM328.i, align 4
  %ucFanStopTemperature333.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 37
  %310 = ptrtoint ptr %ucFanStopTemperature333.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 0, ptr %ucFanStopTemperature333.i, align 1
  %ucFanStartTemperature338.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 34, i32 5, i32 38
  %311 = ptrtoint ptr %ucFanStartTemperature338.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %ucFanStartTemperature338.i, align 2
  br label %do.end72

if.then60.sink.split:                             ; preds = %if.then69.i.if.then60.sink.split_crit_edge, %if.then.i159.if.then60.sink.split_crit_edge
  %.str.85.sink = phi ptr [ @.str.77, %if.then.i159.if.then60.sink.split_crit_edge ], [ @.str.85, %if.then69.i.if.then60.sink.split_crit_edge ]
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.85.sink) #11
  br label %if.then60

if.then60:                                        ; preds = %if.then60.sink.split, %if.then69.i.if.then60_crit_edge, %if.then.i159.if.then60_crit_edge
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @pp_tables_v1_0_initialize._rs.32, ptr noundef nonnull @__func__.pp_tables_v1_0_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.cleanup_crit_edge, label %do.end66

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.35) #11
  br label %cleanup

do.end72:                                         ; preds = %if.then231.i, %if.then140.i, %if.then87.i, %if.then41.i166
  %ulMaxODEngineClock.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 8
  %312 = ptrtoint ptr %ulMaxODEngineClock.i to i32
  call void @__asan_loadN_noabort(i32 %312, i32 4)
  %313 = load i32, ptr %ulMaxODEngineClock.i, align 1
  %314 = call i32 @llvm.bswap.i32(i32 %313) #7
  %overdriveLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 2
  %315 = ptrtoint ptr %overdriveLimit.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %314, ptr %overdriveLimit.i, align 4
  %ulMaxODMemoryClock.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 9
  %316 = ptrtoint ptr %ulMaxODMemoryClock.i to i32
  call void @__asan_loadN_noabort(i32 %316, i32 4)
  %317 = load i32, ptr %ulMaxODMemoryClock.i, align 1
  %318 = call i32 @llvm.bswap.i32(i32 %317) #7
  %memoryClock.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 2, i32 1
  %319 = ptrtoint ptr %memoryClock.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %memoryClock.i, align 4
  %minOverdriveVDDC.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 6
  %320 = ptrtoint ptr %minOverdriveVDDC.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 0, ptr %minOverdriveVDDC.i, align 4
  %maxOverdriveVDDC.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 7
  %321 = ptrtoint ptr %maxOverdriveVDDC.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 0, ptr %maxOverdriveVDDC.i, align 4
  %overdriveVDDCStep.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 8
  %322 = ptrtoint ptr %overdriveVDDCStep.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 0, ptr %overdriveVDDCStep.i, align 4
  %323 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %pptable, align 4
  %usMMDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 20
  %325 = ptrtoint ptr %usMMDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %325, i32 2)
  %326 = load i16, ptr %usMMDependencyTableOffset.i, align 1
  %usPowerTuneTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 23
  %327 = ptrtoint ptr %usPowerTuneTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %327, i32 2)
  %328 = load i16, ptr %usPowerTuneTableOffset.i, align 1
  %329 = call i16 @llvm.bswap.i16(i16 %328) #7
  %conv1.i = zext i16 %329 to i32
  %add2.i = add i32 %conv1.i, %13
  %330 = inttoptr i32 %add2.i to ptr
  %usMclkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 16
  %331 = ptrtoint ptr %usMclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %331, i32 2)
  %332 = load i16, ptr %usMclkDependencyTableOffset.i, align 1
  %333 = call i16 @llvm.bswap.i16(i16 %332) #7
  %conv3.i = zext i16 %333 to i32
  %add4.i = add i32 %conv3.i, %13
  %334 = inttoptr i32 %add4.i to ptr
  %usSclkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 17
  %335 = ptrtoint ptr %usSclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %335, i32 2)
  %336 = load i16, ptr %usSclkDependencyTableOffset.i, align 1
  %337 = call i16 @llvm.bswap.i16(i16 %336) #7
  %conv5.i = zext i16 %337 to i32
  %add6.i = add i32 %conv5.i, %13
  %338 = inttoptr i32 %add6.i to ptr
  %usHardLimitTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 24
  %339 = ptrtoint ptr %usHardLimitTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %339, i32 2)
  %340 = load i16, ptr %usHardLimitTableOffset.i, align 1
  %341 = call i16 @llvm.bswap.i16(i16 %340) #7
  %conv7.i = zext i16 %341 to i32
  %add8.i = add i32 %conv7.i, %13
  %342 = inttoptr i32 %add8.i to ptr
  %usPCIETableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 25
  %343 = ptrtoint ptr %usPCIETableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %343, i32 2)
  %344 = load i16, ptr %usPCIETableOffset.i, align 1
  %345 = call i16 @llvm.bswap.i16(i16 %344) #7
  %conv9.i = zext i16 %345 to i32
  %add10.i = add i32 %conv9.i, %13
  %346 = inttoptr i32 %add10.i to ptr
  %usGPIOTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 26
  %347 = ptrtoint ptr %usGPIOTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %347, i32 2)
  %348 = load i16, ptr %usGPIOTableOffset.i, align 1
  %349 = call i16 @llvm.bswap.i16(i16 %348) #7
  %conv11.i = zext i16 %349 to i32
  %add12.i = add i32 %conv11.i, %13
  %350 = inttoptr i32 %add12.i to ptr
  %351 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr null, ptr %324, align 4
  %vdd_dep_on_mclk.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 1
  %352 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr null, ptr %vdd_dep_on_mclk.i, align 4
  %mm_dep_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 14
  %353 = ptrtoint ptr %mm_dep_table.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr null, ptr %mm_dep_table.i, align 4
  %pcie_table13.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 18
  %354 = ptrtoint ptr %pcie_table13.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr null, ptr %pcie_table13.i, align 4
  %gpio_table14.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 19
  %355 = ptrtoint ptr %gpio_table14.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr null, ptr %gpio_table14.i, align 4
  %356 = ptrtoint ptr %usMMDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %356, i32 2)
  %357 = load i16, ptr %usMMDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %357)
  %cmp.not.i168 = icmp eq i16 %357, 0
  br i1 %cmp.not.i168, label %do.end72.land.lhs.true.i_crit_edge, label %if.then.i171

do.end72.land.lhs.true.i_crit_edge:               ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then.i171:                                     ; preds = %do.end72
  %358 = call i16 @llvm.bswap.i16(i16 %326) #7
  %conv.i169 = zext i16 %358 to i32
  %add.i170 = add i32 %conv.i169, %13
  %359 = inttoptr i32 %add.i170 to ptr
  %ucNumEntries.i.i = getelementptr inbounds %struct._ATOM_Tonga_MM_Dependency_Table, ptr %359, i32 0, i32 1
  %360 = ptrtoint ptr %ucNumEntries.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %ucNumEntries.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %cmp.not.i.i = icmp eq i8 %361, 0
  br i1 %cmp.not.i.i, label %if.then.i.i, label %if.end8.i.i.i.i

if.then.i.i:                                      ; preds = %if.then.i171
  %call.i.i = call i32 @___ratelimit(ptr noundef nonnull @get_mm_clock_voltage_table._rs, ptr noundef nonnull @__func__.get_mm_clock_voltage_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end70.i_crit_edge, label %do.end.i.i

if.then.i.i.if.end70.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end70.i

if.end8.i.i.i.i:                                  ; preds = %if.then.i171
  %conv.i.i = zext i8 %361 to i32
  %362 = shl nuw nsw i32 %conv.i.i, 5
  %spec.select.i1.i.i = or i32 %362, 4
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i.i, i32 noundef 3520) #12
  %tobool12.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool12.not.i.i, label %if.end8.i.i.i.i.if.end70.i_crit_edge, label %if.end14.i.i

if.end8.i.i.i.i.if.end70.i_crit_edge:             ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.end14.i.i:                                     ; preds = %if.end8.i.i.i.i
  %363 = ptrtoint ptr %ucNumEntries.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %ucNumEntries.i.i, align 1
  %conv16.i.i = zext i8 %364 to i32
  %365 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %conv16.i.i, ptr %call9.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %cmp192.not.i.i = icmp eq i8 %364, 0
  br i1 %cmp192.not.i.i, label %if.end14.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end14.i.i.for.end.i.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end14.i.i
  %entries.i.i = getelementptr inbounds %struct._ATOM_Tonga_MM_Dependency_Table, ptr %359, i32 0, i32 2
  %entries21.i.i = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_table, ptr %call9.i.i.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul nuw nsw i32 %i.03.i.i, 23
  %add.ptr.i.i = getelementptr i8, ptr %entries.i.i, i32 %mul.i.i
  %mul22.i.i = shl i32 %i.03.i.i, 5
  %add.ptr23.i.i = getelementptr i8, ptr %entries21.i.i, i32 %mul22.i.i
  %366 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %add.ptr.i.i, align 1
  %vddcInd.i.i = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_record, ptr %add.ptr23.i.i, i32 0, i32 5
  %368 = ptrtoint ptr %vddcInd.i.i to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 %367, ptr %vddcInd.i.i, align 8
  %usVddgfxOffset.i.i = getelementptr inbounds %struct._ATOM_Tonga_MM_Dependency_Record, ptr %add.ptr.i.i, i32 0, i32 1
  %369 = ptrtoint ptr %usVddgfxOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %369, i32 2)
  %370 = load i16, ptr %usVddgfxOffset.i.i, align 1
  %371 = call i16 @llvm.bswap.i16(i16 %370) #7
  %vddgfx_offset.i.i = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_record, ptr %add.ptr23.i.i, i32 0, i32 6
  %372 = ptrtoint ptr %vddgfx_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 %371, ptr %vddgfx_offset.i.i, align 2
  %ulAClk.i.i = getelementptr inbounds %struct._ATOM_Tonga_MM_Dependency_Record, ptr %add.ptr.i.i, i32 0, i32 5
  %373 = ptrtoint ptr %ulAClk.i.i to i32
  call void @__asan_loadN_noabort(i32 %373, i32 4)
  %374 = load i32, ptr %ulAClk.i.i, align 1
  %375 = call i32 @llvm.bswap.i32(i32 %374) #7
  %aclk.i.i = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_record, ptr %add.ptr23.i.i, i32 0, i32 3
  %376 = ptrtoint ptr %aclk.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %375, ptr %aclk.i.i, align 16
  %ulSAMUClk.i.i = getelementptr inbounds %struct._ATOM_Tonga_MM_Dependency_Record, ptr %add.ptr.i.i, i32 0, i32 6
  %377 = ptrtoint ptr %ulSAMUClk.i.i to i32
  call void @__asan_loadN_noabort(i32 %377, i32 4)
  %378 = load i32, ptr %ulSAMUClk.i.i, align 1
  %379 = call i32 @llvm.bswap.i32(i32 %378) #7
  %samclock.i.i = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_record, ptr %add.ptr23.i.i, i32 0, i32 4
  %380 = ptrtoint ptr %samclock.i.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %379, ptr %samclock.i.i, align 4
  %ulEClk.i.i = getelementptr inbounds %struct._ATOM_Tonga_MM_Dependency_Record, ptr %add.ptr.i.i, i32 0, i32 4
  %381 = ptrtoint ptr %ulEClk.i.i to i32
  call void @__asan_loadN_noabort(i32 %381, i32 4)
  %382 = load i32, ptr %ulEClk.i.i, align 1
  %383 = call i32 @llvm.bswap.i32(i32 %382) #7
  %eclk.i.i = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_record, ptr %add.ptr23.i.i, i32 0, i32 2
  %384 = ptrtoint ptr %eclk.i.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %383, ptr %eclk.i.i, align 4
  %ulVClk.i.i = getelementptr inbounds %struct._ATOM_Tonga_MM_Dependency_Record, ptr %add.ptr.i.i, i32 0, i32 3
  %385 = ptrtoint ptr %ulVClk.i.i to i32
  call void @__asan_loadN_noabort(i32 %385, i32 4)
  %386 = load i32, ptr %ulVClk.i.i, align 1
  %387 = call i32 @llvm.bswap.i32(i32 %386) #7
  %vclk.i.i = getelementptr inbounds %struct.phm_ppt_v1_mm_clock_voltage_dependency_record, ptr %add.ptr23.i.i, i32 0, i32 1
  %388 = ptrtoint ptr %vclk.i.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %387, ptr %vclk.i.i, align 8
  %ulDClk.i.i = getelementptr inbounds %struct._ATOM_Tonga_MM_Dependency_Record, ptr %add.ptr.i.i, i32 0, i32 2
  %389 = ptrtoint ptr %ulDClk.i.i to i32
  call void @__asan_loadN_noabort(i32 %389, i32 4)
  %390 = load i32, ptr %ulDClk.i.i, align 1
  %391 = call i32 @llvm.bswap.i32(i32 %390) #7
  %392 = ptrtoint ptr %add.ptr23.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %391, ptr %add.ptr23.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv16.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end14.i.i.for.end.i.i_crit_edge
  %393 = ptrtoint ptr %mm_dep_table.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %call9.i.i.i.i, ptr %mm_dep_table.i, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.end.i.i, %do.end72.land.lhs.true.i_crit_edge
  %394 = ptrtoint ptr %usPowerTuneTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %394, i32 2)
  %395 = load i16, ptr %usPowerTuneTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %395)
  %cmp23.not.i = icmp eq i16 %395, 0
  br i1 %cmp23.not.i, label %land.lhs.true.i.land.lhs.true30.i_crit_edge, label %if.then25.i

land.lhs.true.i.land.lhs.true30.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true30.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  %cac_dtp_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %396 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i187.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %396, i32 noundef 3520, i32 noundef 68) #10
  %cmp.i.i = icmp eq ptr %call7.i.i.i187.i, null
  br i1 %cmp.i.i, label %if.then25.i.if.end70.i_crit_edge, label %if.end.i.i

if.then25.i.if.end70.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.end.i.i:                                       ; preds = %if.then25.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %397 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i267.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %397, i32 noundef 3520, i32 noundef 68) #10
  %cac_dtp_table.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %398 = ptrtoint ptr %cac_dtp_table.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %call7.i.i267.i.i, ptr %cac_dtp_table.i.i, align 4
  %cmp4.i.i = icmp eq ptr %call7.i.i267.i.i, null
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i187.i) #7
  br label %if.end70.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %399 = ptrtoint ptr %330 to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %330, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %400)
  %cmp7.i.i = icmp ult i8 %400, 3
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %usTDP.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 1
  %401 = ptrtoint ptr %usTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %401, i32 2)
  %402 = load i16, ptr %usTDP.i.i, align 1
  %403 = call i16 @llvm.bswap.i16(i16 %402) #7
  %404 = ptrtoint ptr %call7.i.i.i187.i to i32
  call void @__asan_store2_noabort(i32 %404)
  store i16 %403, ptr %call7.i.i.i187.i, align 8
  %usConfigurableTDP.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 2
  %405 = ptrtoint ptr %usConfigurableTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %405, i32 2)
  %406 = load i16, ptr %usConfigurableTDP.i.i, align 1
  %407 = call i16 @llvm.bswap.i16(i16 %406) #7
  %usConfigurableTDP11.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 1
  %408 = ptrtoint ptr %usConfigurableTDP11.i.i to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 %407, ptr %usConfigurableTDP11.i.i, align 2
  %usTDC.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 3
  %409 = ptrtoint ptr %usTDC.i.i to i32
  call void @__asan_loadN_noabort(i32 %409, i32 2)
  %410 = load i16, ptr %usTDC.i.i, align 1
  %411 = call i16 @llvm.bswap.i16(i16 %410) #7
  %usTDC12.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 2
  %412 = ptrtoint ptr %usTDC12.i.i to i32
  call void @__asan_store2_noabort(i32 %412)
  store i16 %411, ptr %usTDC12.i.i, align 4
  %usBatteryPowerLimit.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 4
  %413 = ptrtoint ptr %usBatteryPowerLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %413, i32 2)
  %414 = load i16, ptr %usBatteryPowerLimit.i.i, align 1
  %415 = call i16 @llvm.bswap.i16(i16 %414) #7
  %usBatteryPowerLimit13.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 3
  %416 = ptrtoint ptr %usBatteryPowerLimit13.i.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 %415, ptr %usBatteryPowerLimit13.i.i, align 2
  %usSmallPowerLimit.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 5
  %417 = ptrtoint ptr %usSmallPowerLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %417, i32 2)
  %418 = load i16, ptr %usSmallPowerLimit.i.i, align 1
  %419 = call i16 @llvm.bswap.i16(i16 %418) #7
  %usSmallPowerLimit14.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 4
  %420 = ptrtoint ptr %usSmallPowerLimit14.i.i to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 %419, ptr %usSmallPowerLimit14.i.i, align 8
  %usLowCACLeakage.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 6
  %421 = ptrtoint ptr %usLowCACLeakage.i.i to i32
  call void @__asan_loadN_noabort(i32 %421, i32 2)
  %422 = load i16, ptr %usLowCACLeakage.i.i, align 1
  %423 = call i16 @llvm.bswap.i16(i16 %422) #7
  %usLowCACLeakage15.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 5
  %424 = ptrtoint ptr %usLowCACLeakage15.i.i to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 %423, ptr %usLowCACLeakage15.i.i, align 2
  %usHighCACLeakage.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 7
  %425 = ptrtoint ptr %usHighCACLeakage.i.i to i32
  call void @__asan_loadN_noabort(i32 %425, i32 2)
  %426 = load i16, ptr %usHighCACLeakage.i.i, align 1
  %427 = call i16 @llvm.bswap.i16(i16 %426) #7
  %usHighCACLeakage16.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 6
  %428 = ptrtoint ptr %usHighCACLeakage16.i.i to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 %427, ptr %usHighCACLeakage16.i.i, align 4
  %usMaximumPowerDeliveryLimit.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 8
  %429 = ptrtoint ptr %usMaximumPowerDeliveryLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %429, i32 2)
  %430 = load i16, ptr %usMaximumPowerDeliveryLimit.i.i, align 1
  %431 = call i16 @llvm.bswap.i16(i16 %430) #7
  %usMaximumPowerDeliveryLimit17.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 7
  %432 = ptrtoint ptr %usMaximumPowerDeliveryLimit17.i.i to i32
  call void @__asan_store2_noabort(i32 %432)
  store i16 %431, ptr %usMaximumPowerDeliveryLimit17.i.i, align 2
  %usTjMax.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 9
  %433 = ptrtoint ptr %usTjMax.i.i to i32
  call void @__asan_loadN_noabort(i32 %433, i32 2)
  %434 = load i16, ptr %usTjMax.i.i, align 1
  %435 = call i16 @llvm.bswap.i16(i16 %434) #7
  %usDefaultTargetOperatingTemp.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 13
  %436 = ptrtoint ptr %usDefaultTargetOperatingTemp.i.i to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 %435, ptr %usDefaultTargetOperatingTemp.i.i, align 2
  %usTargetOperatingTemp.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 14
  %437 = ptrtoint ptr %usTargetOperatingTemp.i.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 %435, ptr %usTargetOperatingTemp.i.i, align 4
  %usPowerTuneDataSetID.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 10
  %438 = ptrtoint ptr %usPowerTuneDataSetID.i.i to i32
  call void @__asan_loadN_noabort(i32 %438, i32 2)
  %439 = load i16, ptr %usPowerTuneDataSetID.i.i, align 1
  %440 = call i16 @llvm.bswap.i16(i16 %439) #7
  %usPowerTuneDataSetID19.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 15
  %441 = ptrtoint ptr %usPowerTuneDataSetID19.i.i to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 %440, ptr %usPowerTuneDataSetID19.i.i, align 2
  %usSoftwareShutdownTemp.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 12
  %442 = ptrtoint ptr %usSoftwareShutdownTemp.i.i to i32
  call void @__asan_loadN_noabort(i32 %442, i32 2)
  %443 = load i16, ptr %usSoftwareShutdownTemp.i.i, align 1
  %444 = call i16 @llvm.bswap.i16(i16 %443) #7
  %usSoftwareShutdownTemp20.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 16
  %445 = ptrtoint ptr %usSoftwareShutdownTemp20.i.i to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 %444, ptr %usSoftwareShutdownTemp20.i.i, align 8
  %usClockStretchAmount.i.i = getelementptr inbounds %struct._ATOM_Tonga_PowerTune_Table, ptr %330, i32 0, i32 13
  %446 = ptrtoint ptr %usClockStretchAmount.i.i to i32
  call void @__asan_loadN_noabort(i32 %446, i32 2)
  %447 = load i16, ptr %usClockStretchAmount.i.i, align 1
  %448 = call i16 @llvm.bswap.i16(i16 %447) #7
  %usClockStretchAmount21.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 17
  %449 = ptrtoint ptr %usClockStretchAmount21.i.i to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 %448, ptr %usClockStretchAmount21.i.i, align 2
  br label %if.end124.i.i

if.else.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %400)
  %cmp24.i.i = icmp eq i8 %400, 3
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.else66.i.i

if.then26.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %usTDP27.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 1
  %450 = ptrtoint ptr %usTDP27.i.i to i32
  call void @__asan_loadN_noabort(i32 %450, i32 2)
  %451 = load i16, ptr %usTDP27.i.i, align 1
  %452 = call i16 @llvm.bswap.i16(i16 %451) #7
  %453 = ptrtoint ptr %call7.i.i.i187.i to i32
  call void @__asan_store2_noabort(i32 %453)
  store i16 %452, ptr %call7.i.i.i187.i, align 8
  %usConfigurableTDP29.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 2
  %454 = ptrtoint ptr %usConfigurableTDP29.i.i to i32
  call void @__asan_loadN_noabort(i32 %454, i32 2)
  %455 = load i16, ptr %usConfigurableTDP29.i.i, align 1
  %456 = call i16 @llvm.bswap.i16(i16 %455) #7
  %usConfigurableTDP30.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 1
  %457 = ptrtoint ptr %usConfigurableTDP30.i.i to i32
  call void @__asan_store2_noabort(i32 %457)
  store i16 %456, ptr %usConfigurableTDP30.i.i, align 2
  %usTDC31.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 3
  %458 = ptrtoint ptr %usTDC31.i.i to i32
  call void @__asan_loadN_noabort(i32 %458, i32 2)
  %459 = load i16, ptr %usTDC31.i.i, align 1
  %460 = call i16 @llvm.bswap.i16(i16 %459) #7
  %usTDC32.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 2
  %461 = ptrtoint ptr %usTDC32.i.i to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 %460, ptr %usTDC32.i.i, align 4
  %usBatteryPowerLimit33.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 4
  %462 = ptrtoint ptr %usBatteryPowerLimit33.i.i to i32
  call void @__asan_loadN_noabort(i32 %462, i32 2)
  %463 = load i16, ptr %usBatteryPowerLimit33.i.i, align 1
  %464 = call i16 @llvm.bswap.i16(i16 %463) #7
  %usBatteryPowerLimit34.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 3
  %465 = ptrtoint ptr %usBatteryPowerLimit34.i.i to i32
  call void @__asan_store2_noabort(i32 %465)
  store i16 %464, ptr %usBatteryPowerLimit34.i.i, align 2
  %usSmallPowerLimit35.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 5
  %466 = ptrtoint ptr %usSmallPowerLimit35.i.i to i32
  call void @__asan_loadN_noabort(i32 %466, i32 2)
  %467 = load i16, ptr %usSmallPowerLimit35.i.i, align 1
  %468 = call i16 @llvm.bswap.i16(i16 %467) #7
  %usSmallPowerLimit36.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 4
  %469 = ptrtoint ptr %usSmallPowerLimit36.i.i to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 %468, ptr %usSmallPowerLimit36.i.i, align 8
  %usLowCACLeakage37.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 6
  %470 = ptrtoint ptr %usLowCACLeakage37.i.i to i32
  call void @__asan_loadN_noabort(i32 %470, i32 2)
  %471 = load i16, ptr %usLowCACLeakage37.i.i, align 1
  %472 = call i16 @llvm.bswap.i16(i16 %471) #7
  %usLowCACLeakage38.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 5
  %473 = ptrtoint ptr %usLowCACLeakage38.i.i to i32
  call void @__asan_store2_noabort(i32 %473)
  store i16 %472, ptr %usLowCACLeakage38.i.i, align 2
  %usHighCACLeakage39.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 7
  %474 = ptrtoint ptr %usHighCACLeakage39.i.i to i32
  call void @__asan_loadN_noabort(i32 %474, i32 2)
  %475 = load i16, ptr %usHighCACLeakage39.i.i, align 1
  %476 = call i16 @llvm.bswap.i16(i16 %475) #7
  %usHighCACLeakage40.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 6
  %477 = ptrtoint ptr %usHighCACLeakage40.i.i to i32
  call void @__asan_store2_noabort(i32 %477)
  store i16 %476, ptr %usHighCACLeakage40.i.i, align 4
  %usMaximumPowerDeliveryLimit41.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 8
  %478 = ptrtoint ptr %usMaximumPowerDeliveryLimit41.i.i to i32
  call void @__asan_loadN_noabort(i32 %478, i32 2)
  %479 = load i16, ptr %usMaximumPowerDeliveryLimit41.i.i, align 1
  %480 = call i16 @llvm.bswap.i16(i16 %479) #7
  %usMaximumPowerDeliveryLimit42.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 7
  %481 = ptrtoint ptr %usMaximumPowerDeliveryLimit42.i.i to i32
  call void @__asan_store2_noabort(i32 %481)
  store i16 %480, ptr %usMaximumPowerDeliveryLimit42.i.i, align 2
  %usTjMax43.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 9
  %482 = ptrtoint ptr %usTjMax43.i.i to i32
  call void @__asan_loadN_noabort(i32 %482, i32 2)
  %483 = load i16, ptr %usTjMax43.i.i, align 1
  %484 = call i16 @llvm.bswap.i16(i16 %483) #7
  %usDefaultTargetOperatingTemp44.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 13
  %485 = ptrtoint ptr %usDefaultTargetOperatingTemp44.i.i to i32
  call void @__asan_store2_noabort(i32 %485)
  store i16 %484, ptr %usDefaultTargetOperatingTemp44.i.i, align 2
  %usTargetOperatingTemp46.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 14
  %486 = ptrtoint ptr %usTargetOperatingTemp46.i.i to i32
  call void @__asan_store2_noabort(i32 %486)
  store i16 %484, ptr %usTargetOperatingTemp46.i.i, align 4
  %usPowerTuneDataSetID47.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 10
  %487 = ptrtoint ptr %usPowerTuneDataSetID47.i.i to i32
  call void @__asan_loadN_noabort(i32 %487, i32 2)
  %488 = load i16, ptr %usPowerTuneDataSetID47.i.i, align 1
  %489 = call i16 @llvm.bswap.i16(i16 %488) #7
  %usPowerTuneDataSetID48.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 15
  %490 = ptrtoint ptr %usPowerTuneDataSetID48.i.i to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 %489, ptr %usPowerTuneDataSetID48.i.i, align 2
  %usSoftwareShutdownTemp49.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 12
  %491 = ptrtoint ptr %usSoftwareShutdownTemp49.i.i to i32
  call void @__asan_loadN_noabort(i32 %491, i32 2)
  %492 = load i16, ptr %usSoftwareShutdownTemp49.i.i, align 1
  %493 = call i16 @llvm.bswap.i16(i16 %492) #7
  %usSoftwareShutdownTemp50.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 16
  %494 = ptrtoint ptr %usSoftwareShutdownTemp50.i.i to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 %493, ptr %usSoftwareShutdownTemp50.i.i, align 8
  %usClockStretchAmount51.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 13
  %495 = ptrtoint ptr %usClockStretchAmount51.i.i to i32
  call void @__asan_loadN_noabort(i32 %495, i32 2)
  %496 = load i16, ptr %usClockStretchAmount51.i.i, align 1
  %497 = call i16 @llvm.bswap.i16(i16 %496) #7
  %usClockStretchAmount52.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 17
  %498 = ptrtoint ptr %usClockStretchAmount52.i.i to i32
  call void @__asan_store2_noabort(i32 %498)
  store i16 %497, ptr %usClockStretchAmount52.i.i, align 2
  %usTemperatureLimitHotspot.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 14
  %499 = ptrtoint ptr %usTemperatureLimitHotspot.i.i to i32
  call void @__asan_loadN_noabort(i32 %499, i32 2)
  %500 = load i16, ptr %usTemperatureLimitHotspot.i.i, align 1
  %501 = call i16 @llvm.bswap.i16(i16 %500) #7
  %usTemperatureLimitHotspot53.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 18
  %502 = ptrtoint ptr %usTemperatureLimitHotspot53.i.i to i32
  call void @__asan_store2_noabort(i32 %502)
  store i16 %501, ptr %usTemperatureLimitHotspot53.i.i, align 4
  %usTemperatureLimitLiquid1.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 15
  %503 = ptrtoint ptr %usTemperatureLimitLiquid1.i.i to i32
  call void @__asan_loadN_noabort(i32 %503, i32 2)
  %504 = load i16, ptr %usTemperatureLimitLiquid1.i.i, align 1
  %505 = call i16 @llvm.bswap.i16(i16 %504) #7
  %usTemperatureLimitLiquid154.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 19
  %506 = ptrtoint ptr %usTemperatureLimitLiquid154.i.i to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 %505, ptr %usTemperatureLimitLiquid154.i.i, align 2
  %usTemperatureLimitLiquid2.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 16
  %507 = ptrtoint ptr %usTemperatureLimitLiquid2.i.i to i32
  call void @__asan_loadN_noabort(i32 %507, i32 2)
  %508 = load i16, ptr %usTemperatureLimitLiquid2.i.i, align 1
  %509 = call i16 @llvm.bswap.i16(i16 %508) #7
  %usTemperatureLimitLiquid255.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 20
  %510 = ptrtoint ptr %usTemperatureLimitLiquid255.i.i to i32
  call void @__asan_store2_noabort(i32 %510)
  store i16 %509, ptr %usTemperatureLimitLiquid255.i.i, align 8
  %usTemperatureLimitVrVddc.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 17
  %511 = ptrtoint ptr %usTemperatureLimitVrVddc.i.i to i32
  call void @__asan_loadN_noabort(i32 %511, i32 2)
  %512 = load i16, ptr %usTemperatureLimitVrVddc.i.i, align 1
  %513 = call i16 @llvm.bswap.i16(i16 %512) #7
  %usTemperatureLimitVrVddc56.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 21
  %514 = ptrtoint ptr %usTemperatureLimitVrVddc56.i.i to i32
  call void @__asan_store2_noabort(i32 %514)
  store i16 %513, ptr %usTemperatureLimitVrVddc56.i.i, align 2
  %usTemperatureLimitVrMvdd.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 18
  %515 = ptrtoint ptr %usTemperatureLimitVrMvdd.i.i to i32
  call void @__asan_loadN_noabort(i32 %515, i32 2)
  %516 = load i16, ptr %usTemperatureLimitVrMvdd.i.i, align 1
  %517 = call i16 @llvm.bswap.i16(i16 %516) #7
  %usTemperatureLimitVrMvdd57.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 22
  %518 = ptrtoint ptr %usTemperatureLimitVrMvdd57.i.i to i32
  call void @__asan_store2_noabort(i32 %518)
  store i16 %517, ptr %usTemperatureLimitVrMvdd57.i.i, align 4
  %usTemperatureLimitPlx.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 19
  %519 = ptrtoint ptr %usTemperatureLimitPlx.i.i to i32
  call void @__asan_loadN_noabort(i32 %519, i32 2)
  %520 = load i16, ptr %usTemperatureLimitPlx.i.i, align 1
  %521 = call i16 @llvm.bswap.i16(i16 %520) #7
  %usTemperatureLimitPlx58.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 23
  %522 = ptrtoint ptr %usTemperatureLimitPlx58.i.i to i32
  call void @__asan_store2_noabort(i32 %522)
  store i16 %521, ptr %usTemperatureLimitPlx58.i.i, align 2
  %ucLiquid1_I2C_address.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 20
  %523 = ptrtoint ptr %ucLiquid1_I2C_address.i.i to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %ucLiquid1_I2C_address.i.i, align 1
  %ucLiquid1_I2C_address59.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 24
  %525 = ptrtoint ptr %ucLiquid1_I2C_address59.i.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 %524, ptr %ucLiquid1_I2C_address59.i.i, align 8
  %ucLiquid2_I2C_address.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 21
  %526 = ptrtoint ptr %ucLiquid2_I2C_address.i.i to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %ucLiquid2_I2C_address.i.i, align 1
  %ucLiquid2_I2C_address60.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 25
  %528 = ptrtoint ptr %ucLiquid2_I2C_address60.i.i to i32
  call void @__asan_store1_noabort(i32 %528)
  store i8 %527, ptr %ucLiquid2_I2C_address60.i.i, align 1
  %ucLiquid_I2C_Line.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 22
  %529 = ptrtoint ptr %ucLiquid_I2C_Line.i.i to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %ucLiquid_I2C_Line.i.i, align 1
  %ucLiquid_I2C_Line61.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 26
  %531 = ptrtoint ptr %ucLiquid_I2C_Line61.i.i to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 %530, ptr %ucLiquid_I2C_Line61.i.i, align 2
  %ucVr_I2C_address.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 23
  %532 = ptrtoint ptr %ucVr_I2C_address.i.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %ucVr_I2C_address.i.i, align 1
  %ucVr_I2C_address62.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 27
  %534 = ptrtoint ptr %ucVr_I2C_address62.i.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %533, ptr %ucVr_I2C_address62.i.i, align 1
  %ucVr_I2C_Line.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 24
  %535 = ptrtoint ptr %ucVr_I2C_Line.i.i to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %ucVr_I2C_Line.i.i, align 1
  %ucVr_I2C_Line63.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 28
  %537 = ptrtoint ptr %ucVr_I2C_Line63.i.i to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 %536, ptr %ucVr_I2C_Line63.i.i, align 4
  %ucPlx_I2C_address.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 25
  %538 = ptrtoint ptr %ucPlx_I2C_address.i.i to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %ucPlx_I2C_address.i.i, align 1
  %ucPlx_I2C_address64.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 29
  %540 = ptrtoint ptr %ucPlx_I2C_address64.i.i to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 %539, ptr %ucPlx_I2C_address64.i.i, align 1
  %ucPlx_I2C_Line.i.i = getelementptr inbounds %struct._ATOM_Fiji_PowerTune_Table, ptr %330, i32 0, i32 26
  %541 = ptrtoint ptr %ucPlx_I2C_Line.i.i to i32
  call void @__asan_load1_noabort(i32 %541)
  %542 = load i8, ptr %ucPlx_I2C_Line.i.i, align 1
  %ucPlx_I2C_Line65.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 30
  %543 = ptrtoint ptr %ucPlx_I2C_Line65.i.i to i32
  call void @__asan_store1_noabort(i32 %543)
  store i8 %542, ptr %ucPlx_I2C_Line65.i.i, align 2
  br label %if.end124.i.i

if.else66.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %usTDP67.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 1
  %544 = ptrtoint ptr %usTDP67.i.i to i32
  call void @__asan_loadN_noabort(i32 %544, i32 2)
  %545 = load i16, ptr %usTDP67.i.i, align 1
  %546 = call i16 @llvm.bswap.i16(i16 %545) #7
  %547 = ptrtoint ptr %call7.i.i.i187.i to i32
  call void @__asan_store2_noabort(i32 %547)
  store i16 %546, ptr %call7.i.i.i187.i, align 8
  %usConfigurableTDP69.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 2
  %548 = ptrtoint ptr %usConfigurableTDP69.i.i to i32
  call void @__asan_loadN_noabort(i32 %548, i32 2)
  %549 = load i16, ptr %usConfigurableTDP69.i.i, align 1
  %550 = call i16 @llvm.bswap.i16(i16 %549) #7
  %usConfigurableTDP70.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 1
  %551 = ptrtoint ptr %usConfigurableTDP70.i.i to i32
  call void @__asan_store2_noabort(i32 %551)
  store i16 %550, ptr %usConfigurableTDP70.i.i, align 2
  %usTDC71.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 3
  %552 = ptrtoint ptr %usTDC71.i.i to i32
  call void @__asan_loadN_noabort(i32 %552, i32 2)
  %553 = load i16, ptr %usTDC71.i.i, align 1
  %554 = call i16 @llvm.bswap.i16(i16 %553) #7
  %usTDC72.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 2
  %555 = ptrtoint ptr %usTDC72.i.i to i32
  call void @__asan_store2_noabort(i32 %555)
  store i16 %554, ptr %usTDC72.i.i, align 4
  %usBatteryPowerLimit73.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 4
  %556 = ptrtoint ptr %usBatteryPowerLimit73.i.i to i32
  call void @__asan_loadN_noabort(i32 %556, i32 2)
  %557 = load i16, ptr %usBatteryPowerLimit73.i.i, align 1
  %558 = call i16 @llvm.bswap.i16(i16 %557) #7
  %usBatteryPowerLimit74.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 3
  %559 = ptrtoint ptr %usBatteryPowerLimit74.i.i to i32
  call void @__asan_store2_noabort(i32 %559)
  store i16 %558, ptr %usBatteryPowerLimit74.i.i, align 2
  %usSmallPowerLimit75.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 5
  %560 = ptrtoint ptr %usSmallPowerLimit75.i.i to i32
  call void @__asan_loadN_noabort(i32 %560, i32 2)
  %561 = load i16, ptr %usSmallPowerLimit75.i.i, align 1
  %562 = call i16 @llvm.bswap.i16(i16 %561) #7
  %usSmallPowerLimit76.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 4
  %563 = ptrtoint ptr %usSmallPowerLimit76.i.i to i32
  call void @__asan_store2_noabort(i32 %563)
  store i16 %562, ptr %usSmallPowerLimit76.i.i, align 8
  %usLowCACLeakage77.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 6
  %564 = ptrtoint ptr %usLowCACLeakage77.i.i to i32
  call void @__asan_loadN_noabort(i32 %564, i32 2)
  %565 = load i16, ptr %usLowCACLeakage77.i.i, align 1
  %566 = call i16 @llvm.bswap.i16(i16 %565) #7
  %usLowCACLeakage78.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 5
  %567 = ptrtoint ptr %usLowCACLeakage78.i.i to i32
  call void @__asan_store2_noabort(i32 %567)
  store i16 %566, ptr %usLowCACLeakage78.i.i, align 2
  %usHighCACLeakage79.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 7
  %568 = ptrtoint ptr %usHighCACLeakage79.i.i to i32
  call void @__asan_loadN_noabort(i32 %568, i32 2)
  %569 = load i16, ptr %usHighCACLeakage79.i.i, align 1
  %570 = call i16 @llvm.bswap.i16(i16 %569) #7
  %usHighCACLeakage80.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 6
  %571 = ptrtoint ptr %usHighCACLeakage80.i.i to i32
  call void @__asan_store2_noabort(i32 %571)
  store i16 %570, ptr %usHighCACLeakage80.i.i, align 4
  %usMaximumPowerDeliveryLimit81.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 8
  %572 = ptrtoint ptr %usMaximumPowerDeliveryLimit81.i.i to i32
  call void @__asan_loadN_noabort(i32 %572, i32 2)
  %573 = load i16, ptr %usMaximumPowerDeliveryLimit81.i.i, align 1
  %574 = call i16 @llvm.bswap.i16(i16 %573) #7
  %usMaximumPowerDeliveryLimit82.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 7
  %575 = ptrtoint ptr %usMaximumPowerDeliveryLimit82.i.i to i32
  call void @__asan_store2_noabort(i32 %575)
  store i16 %574, ptr %usMaximumPowerDeliveryLimit82.i.i, align 2
  %usTjMax83.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 9
  %576 = ptrtoint ptr %usTjMax83.i.i to i32
  call void @__asan_loadN_noabort(i32 %576, i32 2)
  %577 = load i16, ptr %usTjMax83.i.i, align 1
  %578 = call i16 @llvm.bswap.i16(i16 %577) #7
  %usDefaultTargetOperatingTemp84.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 13
  %579 = ptrtoint ptr %usDefaultTargetOperatingTemp84.i.i to i32
  call void @__asan_store2_noabort(i32 %579)
  store i16 %578, ptr %usDefaultTargetOperatingTemp84.i.i, align 2
  %usTargetOperatingTemp86.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 14
  %580 = ptrtoint ptr %usTargetOperatingTemp86.i.i to i32
  call void @__asan_store2_noabort(i32 %580)
  store i16 %578, ptr %usTargetOperatingTemp86.i.i, align 4
  %usPowerTuneDataSetID87.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 10
  %581 = ptrtoint ptr %usPowerTuneDataSetID87.i.i to i32
  call void @__asan_loadN_noabort(i32 %581, i32 2)
  %582 = load i16, ptr %usPowerTuneDataSetID87.i.i, align 1
  %583 = call i16 @llvm.bswap.i16(i16 %582) #7
  %usPowerTuneDataSetID88.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 15
  %584 = ptrtoint ptr %usPowerTuneDataSetID88.i.i to i32
  call void @__asan_store2_noabort(i32 %584)
  store i16 %583, ptr %usPowerTuneDataSetID88.i.i, align 2
  %usSoftwareShutdownTemp89.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 12
  %585 = ptrtoint ptr %usSoftwareShutdownTemp89.i.i to i32
  call void @__asan_loadN_noabort(i32 %585, i32 2)
  %586 = load i16, ptr %usSoftwareShutdownTemp89.i.i, align 1
  %587 = call i16 @llvm.bswap.i16(i16 %586) #7
  %usSoftwareShutdownTemp90.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 16
  %588 = ptrtoint ptr %usSoftwareShutdownTemp90.i.i to i32
  call void @__asan_store2_noabort(i32 %588)
  store i16 %587, ptr %usSoftwareShutdownTemp90.i.i, align 8
  %usClockStretchAmount91.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 13
  %589 = ptrtoint ptr %usClockStretchAmount91.i.i to i32
  call void @__asan_loadN_noabort(i32 %589, i32 2)
  %590 = load i16, ptr %usClockStretchAmount91.i.i, align 1
  %591 = call i16 @llvm.bswap.i16(i16 %590) #7
  %usClockStretchAmount92.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 17
  %592 = ptrtoint ptr %usClockStretchAmount92.i.i to i32
  call void @__asan_store2_noabort(i32 %592)
  store i16 %591, ptr %usClockStretchAmount92.i.i, align 2
  %usTemperatureLimitHotspot93.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 14
  %593 = ptrtoint ptr %usTemperatureLimitHotspot93.i.i to i32
  call void @__asan_loadN_noabort(i32 %593, i32 2)
  %594 = load i16, ptr %usTemperatureLimitHotspot93.i.i, align 1
  %595 = call i16 @llvm.bswap.i16(i16 %594) #7
  %usTemperatureLimitHotspot94.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 18
  %596 = ptrtoint ptr %usTemperatureLimitHotspot94.i.i to i32
  call void @__asan_store2_noabort(i32 %596)
  store i16 %595, ptr %usTemperatureLimitHotspot94.i.i, align 4
  %usTemperatureLimitLiquid195.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 15
  %597 = ptrtoint ptr %usTemperatureLimitLiquid195.i.i to i32
  call void @__asan_loadN_noabort(i32 %597, i32 2)
  %598 = load i16, ptr %usTemperatureLimitLiquid195.i.i, align 1
  %599 = call i16 @llvm.bswap.i16(i16 %598) #7
  %usTemperatureLimitLiquid196.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 19
  %600 = ptrtoint ptr %usTemperatureLimitLiquid196.i.i to i32
  call void @__asan_store2_noabort(i32 %600)
  store i16 %599, ptr %usTemperatureLimitLiquid196.i.i, align 2
  %usTemperatureLimitLiquid297.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 16
  %601 = ptrtoint ptr %usTemperatureLimitLiquid297.i.i to i32
  call void @__asan_loadN_noabort(i32 %601, i32 2)
  %602 = load i16, ptr %usTemperatureLimitLiquid297.i.i, align 1
  %603 = call i16 @llvm.bswap.i16(i16 %602) #7
  %usTemperatureLimitLiquid298.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 20
  %604 = ptrtoint ptr %usTemperatureLimitLiquid298.i.i to i32
  call void @__asan_store2_noabort(i32 %604)
  store i16 %603, ptr %usTemperatureLimitLiquid298.i.i, align 8
  %usTemperatureLimitVrVddc99.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 17
  %605 = ptrtoint ptr %usTemperatureLimitVrVddc99.i.i to i32
  call void @__asan_loadN_noabort(i32 %605, i32 2)
  %606 = load i16, ptr %usTemperatureLimitVrVddc99.i.i, align 1
  %607 = call i16 @llvm.bswap.i16(i16 %606) #7
  %usTemperatureLimitVrVddc100.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 21
  %608 = ptrtoint ptr %usTemperatureLimitVrVddc100.i.i to i32
  call void @__asan_store2_noabort(i32 %608)
  store i16 %607, ptr %usTemperatureLimitVrVddc100.i.i, align 2
  %usTemperatureLimitVrMvdd101.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 18
  %609 = ptrtoint ptr %usTemperatureLimitVrMvdd101.i.i to i32
  call void @__asan_loadN_noabort(i32 %609, i32 2)
  %610 = load i16, ptr %usTemperatureLimitVrMvdd101.i.i, align 1
  %611 = call i16 @llvm.bswap.i16(i16 %610) #7
  %usTemperatureLimitVrMvdd102.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 22
  %612 = ptrtoint ptr %usTemperatureLimitVrMvdd102.i.i to i32
  call void @__asan_store2_noabort(i32 %612)
  store i16 %611, ptr %usTemperatureLimitVrMvdd102.i.i, align 4
  %usTemperatureLimitPlx103.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 19
  %613 = ptrtoint ptr %usTemperatureLimitPlx103.i.i to i32
  call void @__asan_loadN_noabort(i32 %613, i32 2)
  %614 = load i16, ptr %usTemperatureLimitPlx103.i.i, align 1
  %615 = call i16 @llvm.bswap.i16(i16 %614) #7
  %usTemperatureLimitPlx104.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 23
  %616 = ptrtoint ptr %usTemperatureLimitPlx104.i.i to i32
  call void @__asan_store2_noabort(i32 %616)
  store i16 %615, ptr %usTemperatureLimitPlx104.i.i, align 2
  %ucLiquid1_I2C_address105.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 20
  %617 = ptrtoint ptr %ucLiquid1_I2C_address105.i.i to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %ucLiquid1_I2C_address105.i.i, align 1
  %ucLiquid1_I2C_address106.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 24
  %619 = ptrtoint ptr %ucLiquid1_I2C_address106.i.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 %618, ptr %ucLiquid1_I2C_address106.i.i, align 8
  %ucLiquid2_I2C_address107.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 21
  %620 = ptrtoint ptr %ucLiquid2_I2C_address107.i.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %ucLiquid2_I2C_address107.i.i, align 1
  %ucLiquid2_I2C_address108.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 25
  %622 = ptrtoint ptr %ucLiquid2_I2C_address108.i.i to i32
  call void @__asan_store1_noabort(i32 %622)
  store i8 %621, ptr %ucLiquid2_I2C_address108.i.i, align 1
  %ucLiquid_I2C_Line109.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 22
  %623 = ptrtoint ptr %ucLiquid_I2C_Line109.i.i to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %ucLiquid_I2C_Line109.i.i, align 1
  %ucLiquid_I2C_Line110.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 26
  %625 = ptrtoint ptr %ucLiquid_I2C_Line110.i.i to i32
  call void @__asan_store1_noabort(i32 %625)
  store i8 %624, ptr %ucLiquid_I2C_Line110.i.i, align 2
  %ucVr_I2C_address111.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 23
  %626 = ptrtoint ptr %ucVr_I2C_address111.i.i to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %ucVr_I2C_address111.i.i, align 1
  %ucVr_I2C_address112.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 27
  %628 = ptrtoint ptr %ucVr_I2C_address112.i.i to i32
  call void @__asan_store1_noabort(i32 %628)
  store i8 %627, ptr %ucVr_I2C_address112.i.i, align 1
  %ucVr_I2C_Line113.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 24
  %629 = ptrtoint ptr %ucVr_I2C_Line113.i.i to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %ucVr_I2C_Line113.i.i, align 1
  %ucVr_I2C_Line114.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 28
  %631 = ptrtoint ptr %ucVr_I2C_Line114.i.i to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 %630, ptr %ucVr_I2C_Line114.i.i, align 4
  %ucPlx_I2C_address115.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 25
  %632 = ptrtoint ptr %ucPlx_I2C_address115.i.i to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %ucPlx_I2C_address115.i.i, align 1
  %ucPlx_I2C_address116.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 29
  %634 = ptrtoint ptr %ucPlx_I2C_address116.i.i to i32
  call void @__asan_store1_noabort(i32 %634)
  store i8 %633, ptr %ucPlx_I2C_address116.i.i, align 1
  %ucPlx_I2C_Line117.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 26
  %635 = ptrtoint ptr %ucPlx_I2C_Line117.i.i to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %ucPlx_I2C_Line117.i.i, align 1
  %ucPlx_I2C_Line118.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 30
  %637 = ptrtoint ptr %ucPlx_I2C_Line118.i.i to i32
  call void @__asan_store1_noabort(i32 %637)
  store i8 %636, ptr %ucPlx_I2C_Line118.i.i, align 2
  %usBoostPowerLimit.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 27
  %638 = ptrtoint ptr %usBoostPowerLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %638, i32 2)
  %639 = load i16, ptr %usBoostPowerLimit.i.i, align 1
  %conv119.i.i = zext i16 %639 to i32
  %usBoostPowerLimit120.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 31
  %640 = ptrtoint ptr %usBoostPowerLimit120.i.i to i32
  call void @__asan_store4_noabort(i32 %640)
  store i32 %conv119.i.i, ptr %usBoostPowerLimit120.i.i, align 8
  %ucCKS_LDO_REFSEL.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 28
  %641 = ptrtoint ptr %ucCKS_LDO_REFSEL.i.i to i32
  call void @__asan_load1_noabort(i32 %641)
  %642 = load i8, ptr %ucCKS_LDO_REFSEL.i.i, align 1
  %ucCKS_LDO_REFSEL121.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 32
  %643 = ptrtoint ptr %ucCKS_LDO_REFSEL121.i.i to i32
  call void @__asan_store1_noabort(i32 %643)
  store i8 %642, ptr %ucCKS_LDO_REFSEL121.i.i, align 4
  %ucHotSpotOnly.i.i = getelementptr inbounds %struct._ATOM_Polaris_PowerTune_Table, ptr %330, i32 0, i32 29
  %644 = ptrtoint ptr %ucHotSpotOnly.i.i to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %ucHotSpotOnly.i.i, align 1
  %ucHotSpotOnly122.i.i = getelementptr inbounds %struct.phm_cac_tdp_table, ptr %call7.i.i.i187.i, i32 0, i32 33
  %646 = ptrtoint ptr %ucHotSpotOnly122.i.i to i32
  call void @__asan_store1_noabort(i32 %646)
  store i8 %645, ptr %ucHotSpotOnly122.i.i, align 1
  br label %if.end124.i.i

if.end124.i.i:                                    ; preds = %if.else66.i.i, %if.then26.i.i, %if.then9.i.i
  %647 = ptrtoint ptr %cac_dtp_table.i to i32
  call void @__asan_store4_noabort(i32 %647)
  store ptr %call7.i.i.i187.i, ptr %cac_dtp_table.i, align 4
  br label %land.lhs.true30.i

land.lhs.true30.i:                                ; preds = %if.end124.i.i, %land.lhs.true.i.land.lhs.true30.i_crit_edge
  %648 = ptrtoint ptr %usSclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %648, i32 2)
  %649 = load i16, ptr %usSclkDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %649)
  %cmp33.not.i = icmp eq i16 %649, 0
  br i1 %cmp33.not.i, label %land.lhs.true30.i.land.lhs.true41.i_crit_edge, label %if.then35.i

land.lhs.true30.i.land.lhs.true41.i_crit_edge:    ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true41.i

if.then35.i:                                      ; preds = %land.lhs.true30.i
  %650 = ptrtoint ptr %338 to i32
  call void @__asan_load1_noabort(i32 %650)
  %651 = load i8, ptr %338, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %651)
  %cmp.i189.i = icmp eq i8 %651, 0
  br i1 %cmp.i189.i, label %if.then.i191.i, label %if.else.i223.i

if.then.i191.i:                                   ; preds = %if.then35.i
  %ucNumEntries.i190.i = getelementptr inbounds %struct._ATOM_Tonga_SCLK_Dependency_Table, ptr %338, i32 0, i32 1
  %652 = ptrtoint ptr %ucNumEntries.i190.i to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %ucNumEntries.i190.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %653)
  %cmp3.not.i.i = icmp eq i8 %653, 0
  br i1 %cmp3.not.i.i, label %if.then5.i194.i, label %if.end8.i.i.i214.i

if.then5.i194.i:                                  ; preds = %if.then.i191.i
  %call.i192.i = call i32 @___ratelimit(ptr noundef nonnull @get_sclk_voltage_dependency_table._rs, ptr noundef nonnull @__func__.get_sclk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192.i)
  %tobool.not.i193.i = icmp eq i32 %call.i192.i, 0
  br i1 %tobool.not.i193.i, label %if.then5.i194.i.if.end70.i_crit_edge, label %do.end.i195.i

if.then5.i194.i.if.end70.i_crit_edge:             ; preds = %if.then5.i194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

do.end.i195.i:                                    ; preds = %if.then5.i194.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end70.i

if.end8.i.i.i214.i:                               ; preds = %if.then.i191.i
  %conv2.i.i = zext i8 %653 to i32
  %654 = mul nuw nsw i32 %conv2.i.i, 28
  %spec.select.i37.i.i = add nuw nsw i32 %654, 4
  %call9.i.i.i213.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i37.i.i, i32 noundef 3520) #12
  %tobool16.not.i.i = icmp eq ptr %call9.i.i.i213.i, null
  br i1 %tobool16.not.i.i, label %if.end8.i.i.i214.i.if.end70.i_crit_edge, label %if.end18.i.i

if.end8.i.i.i214.i.if.end70.i_crit_edge:          ; preds = %if.end8.i.i.i214.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.end18.i.i:                                     ; preds = %if.end8.i.i.i214.i
  %655 = ptrtoint ptr %ucNumEntries.i190.i to i32
  call void @__asan_load1_noabort(i32 %655)
  %656 = load i8, ptr %ucNumEntries.i190.i, align 1
  %conv20.i.i = zext i8 %656 to i32
  %657 = ptrtoint ptr %call9.i.i.i213.i to i32
  call void @__asan_store4_noabort(i32 %657)
  store i32 %conv20.i.i, ptr %call9.i.i.i213.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %656)
  %cmp2342.not.i.i = icmp eq i8 %656, 0
  br i1 %cmp2342.not.i.i, label %if.end18.i.i.if.end105.i.i_crit_edge, label %for.body.lr.ph.i218.i

if.end18.i.i.if.end105.i.i_crit_edge:             ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105.i.i

for.body.lr.ph.i218.i:                            ; preds = %if.end18.i.i
  %entries.i217.i = getelementptr inbounds %struct._ATOM_Tonga_SCLK_Dependency_Table, ptr %338, i32 0, i32 2
  %entries25.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i213.i, i32 0, i32 1
  br label %for.body.i222.i

for.body.i222.i:                                  ; preds = %for.body.i222.i.for.body.i222.i_crit_edge, %for.body.lr.ph.i218.i
  %i.043.i.i = phi i32 [ 0, %for.body.lr.ph.i218.i ], [ %inc.i221.i, %for.body.i222.i.for.body.i222.i_crit_edge ]
  %mul.i219.i = mul nuw nsw i32 %i.043.i.i, 11
  %add.ptr.i220.i = getelementptr i8, ptr %entries.i217.i, i32 %mul.i219.i
  %mul26.i.i = mul nuw nsw i32 %i.043.i.i, 28
  %add.ptr27.i.i = getelementptr i8, ptr %entries25.i.i, i32 %mul26.i.i
  %658 = ptrtoint ptr %add.ptr.i220.i to i32
  call void @__asan_load1_noabort(i32 %658)
  %659 = load i8, ptr %add.ptr.i220.i, align 1
  %vddInd.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr27.i.i, i32 0, i32 1
  %660 = ptrtoint ptr %vddInd.i.i to i32
  call void @__asan_store1_noabort(i32 %660)
  store i8 %659, ptr %vddInd.i.i, align 4
  %usVddcOffset.i.i = getelementptr inbounds %struct._ATOM_Tonga_SCLK_Dependency_Record, ptr %add.ptr.i220.i, i32 0, i32 1
  %661 = ptrtoint ptr %usVddcOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %661, i32 2)
  %662 = load i16, ptr %usVddcOffset.i.i, align 1
  %663 = call i16 @llvm.bswap.i16(i16 %662) #7
  %vdd_offset.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr27.i.i, i32 0, i32 4
  %664 = ptrtoint ptr %vdd_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %664)
  store i16 %663, ptr %vdd_offset.i.i, align 4
  %ulSclk.i.i = getelementptr inbounds %struct._ATOM_Tonga_SCLK_Dependency_Record, ptr %add.ptr.i220.i, i32 0, i32 2
  %665 = ptrtoint ptr %ulSclk.i.i to i32
  call void @__asan_loadN_noabort(i32 %665, i32 4)
  %666 = load i32, ptr %ulSclk.i.i, align 1
  %667 = call i32 @llvm.bswap.i32(i32 %666) #7
  %668 = ptrtoint ptr %add.ptr27.i.i to i32
  call void @__asan_store4_noabort(i32 %668)
  store i32 %667, ptr %add.ptr27.i.i, align 4
  %ucCKSVOffsetandDisable.i.i = getelementptr inbounds %struct._ATOM_Tonga_SCLK_Dependency_Record, ptr %add.ptr.i220.i, i32 0, i32 5
  %669 = ptrtoint ptr %ucCKSVOffsetandDisable.i.i to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %ucCKSVOffsetandDisable.i.i, align 1
  %671 = xor i8 %670, -1
  %.lobit.not1.i.i = lshr i8 %671, 7
  %cks_enable.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr27.i.i, i32 0, i32 10
  %672 = ptrtoint ptr %cks_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %672)
  store i8 %.lobit.not1.i.i, ptr %cks_enable.i.i, align 1
  %673 = and i8 %670, 127
  %cks_voffset.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr27.i.i, i32 0, i32 11
  %674 = ptrtoint ptr %cks_voffset.i.i to i32
  call void @__asan_store1_noabort(i32 %674)
  store i8 %673, ptr %cks_voffset.i.i, align 4
  %inc.i221.i = add nuw nsw i32 %i.043.i.i, 1
  %exitcond45.not.i.i = icmp eq i32 %inc.i221.i, %conv20.i.i
  br i1 %exitcond45.not.i.i, label %for.body.i222.i.if.end105.i.i_crit_edge, label %for.body.i222.i.for.body.i222.i_crit_edge

for.body.i222.i.for.body.i222.i_crit_edge:        ; preds = %for.body.i222.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i222.i

for.body.i222.i.if.end105.i.i_crit_edge:          ; preds = %for.body.i222.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105.i.i

if.else.i223.i:                                   ; preds = %if.then35.i
  %ucNumEntries39.i.i = getelementptr inbounds %struct._ATOM_Polaris_SCLK_Dependency_Table, ptr %338, i32 0, i32 1
  %675 = ptrtoint ptr %ucNumEntries39.i.i to i32
  call void @__asan_load1_noabort(i32 %675)
  %676 = load i8, ptr %ucNumEntries39.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %676)
  %cmp41.not.i.i = icmp eq i8 %676, 0
  br i1 %cmp41.not.i.i, label %if.then43.i.i, label %if.end8.i.i28.i.i

if.then43.i.i:                                    ; preds = %if.else.i223.i
  %call44.i.i = call i32 @___ratelimit(ptr noundef nonnull @get_sclk_voltage_dependency_table._rs.86, ptr noundef nonnull @__func__.get_sclk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %tobool45.not.i.i = icmp eq i32 %call44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.then43.i.i.if.end70.i_crit_edge, label %do.end49.i.i

if.then43.i.i.if.end70.i_crit_edge:               ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

do.end49.i.i:                                     ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call51.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end70.i

if.end8.i.i28.i.i:                                ; preds = %if.else.i223.i
  %conv40.i.i = zext i8 %676 to i32
  %677 = mul nuw nsw i32 %conv40.i.i, 28
  %spec.select.i238.i.i = add nuw nsw i32 %677, 4
  %call9.i.i27.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i238.i.i, i32 noundef 3520) #12
  %tobool60.not.i.i = icmp eq ptr %call9.i.i27.i.i, null
  br i1 %tobool60.not.i.i, label %if.end8.i.i28.i.i.if.end70.i_crit_edge, label %if.end62.i.i

if.end8.i.i28.i.i.if.end70.i_crit_edge:           ; preds = %if.end8.i.i28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.end62.i.i:                                     ; preds = %if.end8.i.i28.i.i
  %678 = ptrtoint ptr %ucNumEntries39.i.i to i32
  call void @__asan_load1_noabort(i32 %678)
  %679 = load i8, ptr %ucNumEntries39.i.i, align 1
  %conv64.i.i = zext i8 %679 to i32
  %680 = ptrtoint ptr %call9.i.i27.i.i to i32
  call void @__asan_store4_noabort(i32 %680)
  store i32 %conv64.i.i, ptr %call9.i.i27.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %679)
  %cmp6940.not.i.i = icmp eq i8 %679, 0
  br i1 %cmp6940.not.i.i, label %if.end62.i.i.if.end105.i.i_crit_edge, label %for.body71.lr.ph.i.i

if.end62.i.i.if.end105.i.i_crit_edge:             ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105.i.i

for.body71.lr.ph.i.i:                             ; preds = %if.end62.i.i
  %entries72.i.i = getelementptr inbounds %struct._ATOM_Polaris_SCLK_Dependency_Table, ptr %338, i32 0, i32 2
  %entries75.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i27.i.i, i32 0, i32 1
  br label %for.body71.i.i

for.body71.i.i:                                   ; preds = %for.body71.i.i.for.body71.i.i_crit_edge, %for.body71.lr.ph.i.i
  %i.141.i.i = phi i32 [ 0, %for.body71.lr.ph.i.i ], [ %inc99.i.i, %for.body71.i.i.for.body71.i.i_crit_edge ]
  %mul73.i.i = mul nuw nsw i32 %i.141.i.i, 15
  %add.ptr74.i.i = getelementptr i8, ptr %entries72.i.i, i32 %mul73.i.i
  %mul76.i.i = mul nuw nsw i32 %i.141.i.i, 28
  %add.ptr77.i.i = getelementptr i8, ptr %entries75.i.i, i32 %mul76.i.i
  %681 = ptrtoint ptr %add.ptr74.i.i to i32
  call void @__asan_load1_noabort(i32 %681)
  %682 = load i8, ptr %add.ptr74.i.i, align 1
  %vddInd79.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr77.i.i, i32 0, i32 1
  %683 = ptrtoint ptr %vddInd79.i.i to i32
  call void @__asan_store1_noabort(i32 %683)
  store i8 %682, ptr %vddInd79.i.i, align 4
  %usVddcOffset80.i.i = getelementptr inbounds %struct._ATOM_Polaris_SCLK_Dependency_Record, ptr %add.ptr74.i.i, i32 0, i32 1
  %684 = ptrtoint ptr %usVddcOffset80.i.i to i32
  call void @__asan_loadN_noabort(i32 %684, i32 2)
  %685 = load i16, ptr %usVddcOffset80.i.i, align 1
  %686 = call i16 @llvm.bswap.i16(i16 %685) #7
  %vdd_offset81.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr77.i.i, i32 0, i32 4
  %687 = ptrtoint ptr %vdd_offset81.i.i to i32
  call void @__asan_store2_noabort(i32 %687)
  store i16 %686, ptr %vdd_offset81.i.i, align 4
  %ulSclk82.i.i = getelementptr inbounds %struct._ATOM_Polaris_SCLK_Dependency_Record, ptr %add.ptr74.i.i, i32 0, i32 2
  %688 = ptrtoint ptr %ulSclk82.i.i to i32
  call void @__asan_loadN_noabort(i32 %688, i32 4)
  %689 = load i32, ptr %ulSclk82.i.i, align 1
  %690 = call i32 @llvm.bswap.i32(i32 %689) #7
  %691 = ptrtoint ptr %add.ptr77.i.i to i32
  call void @__asan_store4_noabort(i32 %691)
  store i32 %690, ptr %add.ptr77.i.i, align 4
  %ucCKSVOffsetandDisable84.i.i = getelementptr inbounds %struct._ATOM_Polaris_SCLK_Dependency_Record, ptr %add.ptr74.i.i, i32 0, i32 5
  %692 = ptrtoint ptr %ucCKSVOffsetandDisable84.i.i to i32
  call void @__asan_load1_noabort(i32 %692)
  %693 = load i8, ptr %ucCKSVOffsetandDisable84.i.i, align 1
  %694 = xor i8 %693, -1
  %.lobit.not.i.i = lshr i8 %694, 7
  %cks_enable92.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr77.i.i, i32 0, i32 10
  %695 = ptrtoint ptr %cks_enable92.i.i to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 %.lobit.not.i.i, ptr %cks_enable92.i.i, align 1
  %696 = and i8 %693, 127
  %cks_voffset97.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr77.i.i, i32 0, i32 11
  %697 = ptrtoint ptr %cks_voffset97.i.i to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 %696, ptr %cks_voffset97.i.i, align 4
  %ulSclkOffset.i.i = getelementptr inbounds %struct._ATOM_Polaris_SCLK_Dependency_Record, ptr %add.ptr74.i.i, i32 0, i32 6
  %698 = ptrtoint ptr %ulSclkOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %698, i32 4)
  %699 = load i32, ptr %ulSclkOffset.i.i, align 1
  %700 = call i32 @llvm.bswap.i32(i32 %699) #7
  %sclk_offset.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr77.i.i, i32 0, i32 12
  %701 = ptrtoint ptr %sclk_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %701)
  store i32 %700, ptr %sclk_offset.i.i, align 4
  %inc99.i.i = add nuw nsw i32 %i.141.i.i, 1
  %exitcond.not.i224.i = icmp eq i32 %inc99.i.i, %conv64.i.i
  br i1 %exitcond.not.i224.i, label %for.body71.i.i.if.end105.i.i_crit_edge, label %for.body71.i.i.for.body71.i.i_crit_edge

for.body71.i.i.for.body71.i.i_crit_edge:          ; preds = %for.body71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body71.i.i

for.body71.i.i.if.end105.i.i_crit_edge:           ; preds = %for.body71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105.i.i

if.end105.i.i:                                    ; preds = %for.body71.i.i.if.end105.i.i_crit_edge, %if.end62.i.i.if.end105.i.i_crit_edge, %for.body.i222.i.if.end105.i.i_crit_edge, %if.end18.i.i.if.end105.i.i_crit_edge
  %sclk_table.2.i.i = phi ptr [ %call9.i.i.i213.i, %if.end18.i.i.if.end105.i.i_crit_edge ], [ %call9.i.i27.i.i, %if.end62.i.i.if.end105.i.i_crit_edge ], [ %call9.i.i.i213.i, %for.body.i222.i.if.end105.i.i_crit_edge ], [ %call9.i.i27.i.i, %for.body71.i.i.if.end105.i.i_crit_edge ]
  %702 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %702)
  store ptr %sclk_table.2.i.i, ptr %324, align 4
  br label %land.lhs.true41.i

land.lhs.true41.i:                                ; preds = %if.end105.i.i, %land.lhs.true30.i.land.lhs.true41.i_crit_edge
  %703 = ptrtoint ptr %usMclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %703, i32 2)
  %704 = load i16, ptr %usMclkDependencyTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %704)
  %cmp44.not.i = icmp eq i16 %704, 0
  br i1 %cmp44.not.i, label %land.lhs.true41.i.land.lhs.true52.i_crit_edge, label %if.then46.i

land.lhs.true41.i.land.lhs.true52.i_crit_edge:    ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true52.i

if.then46.i:                                      ; preds = %land.lhs.true41.i
  %ucNumEntries.i225.i = getelementptr inbounds %struct._ATOM_Tonga_MCLK_Dependency_Table, ptr %334, i32 0, i32 1
  %705 = ptrtoint ptr %ucNumEntries.i225.i to i32
  call void @__asan_load1_noabort(i32 %705)
  %706 = load i8, ptr %ucNumEntries.i225.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %706)
  %cmp.not.i226.i = icmp eq i8 %706, 0
  br i1 %cmp.not.i226.i, label %if.then.i229.i, label %if.end8.i.i.i253.i

if.then.i229.i:                                   ; preds = %if.then46.i
  %call.i227.i = call i32 @___ratelimit(ptr noundef nonnull @get_mclk_voltage_dependency_table._rs, ptr noundef nonnull @__func__.get_mclk_voltage_dependency_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227.i)
  %tobool.not.i228.i = icmp eq i32 %call.i227.i, 0
  br i1 %tobool.not.i228.i, label %if.then.i229.i.if.end70.i_crit_edge, label %do.end.i231.i

if.then.i229.i.if.end70.i_crit_edge:              ; preds = %if.then.i229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

do.end.i231.i:                                    ; preds = %if.then.i229.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i230.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end70.i

if.end8.i.i.i253.i:                               ; preds = %if.then46.i
  %conv.i232.i = zext i8 %706 to i32
  %707 = mul nuw nsw i32 %conv.i232.i, 28
  %spec.select.i1.i233.i = add nuw nsw i32 %707, 4
  %call9.i.i.i252.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1.i233.i, i32 noundef 3520) #12
  %tobool12.not.i255.i = icmp eq ptr %call9.i.i.i252.i, null
  br i1 %tobool12.not.i255.i, label %if.end8.i.i.i253.i.if.end70.i_crit_edge, label %if.end14.i259.i

if.end8.i.i.i253.i.if.end70.i_crit_edge:          ; preds = %if.end8.i.i.i253.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.end14.i259.i:                                  ; preds = %if.end8.i.i.i253.i
  %708 = ptrtoint ptr %ucNumEntries.i225.i to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %ucNumEntries.i225.i, align 1
  %conv16.i257.i = zext i8 %709 to i32
  %710 = ptrtoint ptr %call9.i.i.i252.i to i32
  call void @__asan_store4_noabort(i32 %710)
  store i32 %conv16.i257.i, ptr %call9.i.i.i252.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %709)
  %cmp192.not.i258.i = icmp eq i8 %709, 0
  br i1 %cmp192.not.i258.i, label %if.end14.i259.i.for.end.i274.i_crit_edge, label %for.body.lr.ph.i262.i

if.end14.i259.i.for.end.i274.i_crit_edge:         ; preds = %if.end14.i259.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i274.i

for.body.lr.ph.i262.i:                            ; preds = %if.end14.i259.i
  %entries.i260.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %call9.i.i.i252.i, i32 0, i32 1
  %entries21.i261.i = getelementptr inbounds %struct._ATOM_Tonga_MCLK_Dependency_Table, ptr %334, i32 0, i32 2
  br label %for.body.i273.i

for.body.i273.i:                                  ; preds = %for.body.i273.i.for.body.i273.i_crit_edge, %for.body.lr.ph.i262.i
  %i.03.i263.i = phi i32 [ 0, %for.body.lr.ph.i262.i ], [ %inc.i271.i, %for.body.i273.i.for.body.i273.i_crit_edge ]
  %mul.i264.i = mul nuw nsw i32 %i.03.i263.i, 28
  %add.ptr.i265.i = getelementptr i8, ptr %entries.i260.i, i32 %mul.i264.i
  %mul22.i266.i = mul nuw nsw i32 %i.03.i263.i, 13
  %add.ptr23.i267.i = getelementptr i8, ptr %entries21.i261.i, i32 %mul22.i266.i
  %711 = ptrtoint ptr %add.ptr23.i267.i to i32
  call void @__asan_load1_noabort(i32 %711)
  %712 = load i8, ptr %add.ptr23.i267.i, align 1
  %vddInd.i268.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr.i265.i, i32 0, i32 1
  %713 = ptrtoint ptr %vddInd.i268.i to i32
  call void @__asan_store1_noabort(i32 %713)
  store i8 %712, ptr %vddInd.i268.i, align 4
  %usVddgfxOffset.i269.i = getelementptr inbounds %struct._ATOM_Tonga_MCLK_Dependency_Record, ptr %add.ptr23.i267.i, i32 0, i32 2
  %714 = ptrtoint ptr %usVddgfxOffset.i269.i to i32
  call void @__asan_loadN_noabort(i32 %714, i32 2)
  %715 = load i16, ptr %usVddgfxOffset.i269.i, align 1
  %716 = call i16 @llvm.bswap.i16(i16 %715) #7
  %vdd_offset.i270.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr.i265.i, i32 0, i32 4
  %717 = ptrtoint ptr %vdd_offset.i270.i to i32
  call void @__asan_store2_noabort(i32 %717)
  store i16 %716, ptr %vdd_offset.i270.i, align 4
  %usVddci.i.i = getelementptr inbounds %struct._ATOM_Tonga_MCLK_Dependency_Record, ptr %add.ptr23.i267.i, i32 0, i32 1
  %718 = ptrtoint ptr %usVddci.i.i to i32
  call void @__asan_loadN_noabort(i32 %718, i32 2)
  %719 = load i16, ptr %usVddci.i.i, align 1
  %720 = call i16 @llvm.bswap.i16(i16 %719) #7
  %vddci.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr.i265.i, i32 0, i32 7
  %721 = ptrtoint ptr %vddci.i.i to i32
  call void @__asan_store2_noabort(i32 %721)
  store i16 %720, ptr %vddci.i.i, align 2
  %usMvdd.i.i = getelementptr inbounds %struct._ATOM_Tonga_MCLK_Dependency_Record, ptr %add.ptr23.i267.i, i32 0, i32 3
  %722 = ptrtoint ptr %usMvdd.i.i to i32
  call void @__asan_loadN_noabort(i32 %722, i32 2)
  %723 = load i16, ptr %usMvdd.i.i, align 1
  %724 = call i16 @llvm.bswap.i16(i16 %723) #7
  %mvdd.i.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_record, ptr %add.ptr.i265.i, i32 0, i32 8
  %725 = ptrtoint ptr %mvdd.i.i to i32
  call void @__asan_store2_noabort(i32 %725)
  store i16 %724, ptr %mvdd.i.i, align 4
  %ulMclk.i.i = getelementptr inbounds %struct._ATOM_Tonga_MCLK_Dependency_Record, ptr %add.ptr23.i267.i, i32 0, i32 4
  %726 = ptrtoint ptr %ulMclk.i.i to i32
  call void @__asan_loadN_noabort(i32 %726, i32 4)
  %727 = load i32, ptr %ulMclk.i.i, align 1
  %728 = call i32 @llvm.bswap.i32(i32 %727) #7
  %729 = ptrtoint ptr %add.ptr.i265.i to i32
  call void @__asan_store4_noabort(i32 %729)
  store i32 %728, ptr %add.ptr.i265.i, align 4
  %inc.i271.i = add nuw nsw i32 %i.03.i263.i, 1
  %exitcond.not.i272.i = icmp eq i32 %inc.i271.i, %conv16.i257.i
  br i1 %exitcond.not.i272.i, label %for.body.i273.i.for.end.i274.i_crit_edge, label %for.body.i273.i.for.body.i273.i_crit_edge

for.body.i273.i.for.body.i273.i_crit_edge:        ; preds = %for.body.i273.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i273.i

for.body.i273.i.for.end.i274.i_crit_edge:         ; preds = %for.body.i273.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i274.i

for.end.i274.i:                                   ; preds = %for.body.i273.i.for.end.i274.i_crit_edge, %if.end14.i259.i.for.end.i274.i_crit_edge
  %730 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_store4_noabort(i32 %730)
  store ptr %call9.i.i.i252.i, ptr %vdd_dep_on_mclk.i, align 4
  br label %land.lhs.true52.i

land.lhs.true52.i:                                ; preds = %for.end.i274.i, %land.lhs.true41.i.land.lhs.true52.i_crit_edge
  %731 = ptrtoint ptr %usPCIETableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %731, i32 2)
  %732 = load i16, ptr %usPCIETableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %732)
  %cmp55.not.i = icmp eq i16 %732, 0
  br i1 %cmp55.not.i, label %land.lhs.true52.i.land.lhs.true63.i_crit_edge, label %if.then57.i

land.lhs.true52.i.land.lhs.true63.i_crit_edge:    ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true63.i

if.then57.i:                                      ; preds = %land.lhs.true52.i
  %733 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %pptable, align 4
  %735 = ptrtoint ptr %346 to i32
  call void @__asan_load1_noabort(i32 %735)
  %736 = load i8, ptr %346, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %736)
  %cmp.i276.i = icmp eq i8 %736, 0
  br i1 %cmp.i276.i, label %if.then.i279.i, label %if.else41.i.i

if.then.i279.i:                                   ; preds = %if.then57.i
  %ucNumEntries.i277.i = getelementptr inbounds %struct._ATOM_Tonga_PCIE_Table, ptr %346, i32 0, i32 1
  %737 = ptrtoint ptr %ucNumEntries.i277.i to i32
  call void @__asan_load1_noabort(i32 %737)
  %738 = load i8, ptr %ucNumEntries.i277.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %738)
  %cmp3.not.i278.i = icmp eq i8 %738, 0
  br i1 %cmp3.not.i278.i, label %if.then5.i282.i, label %if.end8.i.i.i302.i

if.then5.i282.i:                                  ; preds = %if.then.i279.i
  %call.i280.i = call i32 @___ratelimit(ptr noundef nonnull @get_pcie_table._rs, ptr noundef nonnull @__func__.get_pcie_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280.i)
  %tobool.not.i281.i = icmp eq i32 %call.i280.i, 0
  br i1 %tobool.not.i281.i, label %if.then5.i282.i.if.end70.i_crit_edge, label %do.end.i284.i

if.then5.i282.i.if.end70.i_crit_edge:             ; preds = %if.then5.i282.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

do.end.i284.i:                                    ; preds = %if.then5.i282.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i283.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end70.i

if.end8.i.i.i302.i:                               ; preds = %if.then.i279.i
  %conv2.i285.i = zext i8 %738 to i32
  %739 = mul nuw nsw i32 %conv2.i285.i, 12
  %spec.select.i189.i.i = add nuw nsw i32 %739, 4
  %call9.i.i.i301.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i189.i.i, i32 noundef 3520) #12
  %tobool16.not.i304.i = icmp eq ptr %call9.i.i.i301.i, null
  br i1 %tobool16.not.i304.i, label %if.end8.i.i.i302.i.if.end70.i_crit_edge, label %if.end18.i307.i

if.end8.i.i.i302.i.if.end70.i_crit_edge:          ; preds = %if.end8.i.i.i302.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.end18.i307.i:                                  ; preds = %if.end8.i.i.i302.i
  %740 = ptrtoint ptr %734 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %734, align 4
  %742 = ptrtoint ptr %741 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %741, align 4
  %add.i.i = add i32 %743, 1
  %744 = ptrtoint ptr %ucNumEntries.i277.i to i32
  call void @__asan_load1_noabort(i32 %744)
  %745 = load i8, ptr %ucNumEntries.i277.i, align 1
  %conv20.i306.i = zext i8 %745 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv20.i306.i)
  %cmp21.not.i.i = icmp ult i32 %add.i.i, %conv20.i306.i
  br i1 %cmp21.not.i.i, label %do.end28.i.i, label %if.end18.i307.i.if.end31.i.i_crit_edge

if.end18.i307.i.if.end31.i.i_crit_edge:           ; preds = %if.end18.i307.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i

do.end28.i.i:                                     ; preds = %if.end18.i307.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #11
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %do.end28.i.i, %if.end18.i307.i.if.end31.i.i_crit_edge
  %pcie_count.0.i.i = phi i32 [ %add.i.i, %do.end28.i.i ], [ %conv20.i306.i, %if.end18.i307.i.if.end31.i.i_crit_edge ]
  %746 = ptrtoint ptr %call9.i.i.i301.i to i32
  call void @__asan_store4_noabort(i32 %746)
  store i32 %pcie_count.0.i.i, ptr %call9.i.i.i301.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcie_count.0.i.i)
  %cmp33194.not.i.i = icmp eq i32 %pcie_count.0.i.i, 0
  br i1 %cmp33194.not.i.i, label %if.end31.i.i.land.lhs.true63.sink.split.i_crit_edge, label %for.body.lr.ph.i309.i

if.end31.i.i.land.lhs.true63.sink.split.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true63.sink.split.i

for.body.lr.ph.i309.i:                            ; preds = %if.end31.i.i
  %entries.i308.i = getelementptr inbounds %struct.phm_ppt_v1_pcie_table, ptr %call9.i.i.i301.i, i32 0, i32 1
  %entries35.i.i = getelementptr inbounds %struct._ATOM_Tonga_PCIE_Table, ptr %346, i32 0, i32 2
  br label %for.body.i313.i

for.body.i313.i:                                  ; preds = %for.body.i313.i.for.body.i313.i_crit_edge, %for.body.lr.ph.i309.i
  %i.0195.i.i = phi i32 [ 0, %for.body.lr.ph.i309.i ], [ %inc.i312.i, %for.body.i313.i.for.body.i313.i_crit_edge ]
  %mul.i310.i = mul nuw nsw i32 %i.0195.i.i, 12
  %add.ptr.i311.i = getelementptr i8, ptr %entries.i308.i, i32 %mul.i310.i
  %mul36.i.i = shl i32 %i.0195.i.i, 2
  %add.ptr37.i.i = getelementptr i8, ptr %entries35.i.i, i32 %mul36.i.i
  %747 = ptrtoint ptr %add.ptr37.i.i to i32
  call void @__asan_load1_noabort(i32 %747)
  %748 = load i8, ptr %add.ptr37.i.i, align 1
  %749 = ptrtoint ptr %add.ptr.i311.i to i32
  call void @__asan_store1_noabort(i32 %749)
  store i8 %748, ptr %add.ptr.i311.i, align 4
  %lane_width.i.i = getelementptr inbounds %struct.phm_ppt_v1_pcie_record, ptr %add.ptr.i311.i, i32 0, i32 1
  %750 = ptrtoint ptr %lane_width.i.i to i32
  call void @__asan_store1_noabort(i32 %750)
  store i8 0, ptr %lane_width.i.i, align 1
  %inc.i312.i = add nuw nsw i32 %i.0195.i.i, 1
  %exitcond196.not.i.i = icmp eq i32 %inc.i312.i, %pcie_count.0.i.i
  br i1 %exitcond196.not.i.i, label %for.body.i313.i.land.lhs.true63.sink.split.i_crit_edge, label %for.body.i313.i.for.body.i313.i_crit_edge

for.body.i313.i.for.body.i313.i_crit_edge:        ; preds = %for.body.i313.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i313.i

for.body.i313.i.land.lhs.true63.sink.split.i_crit_edge: ; preds = %for.body.i313.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true63.sink.split.i

if.else41.i.i:                                    ; preds = %if.then57.i
  %ucNumEntries45.i.i = getelementptr inbounds %struct._ATOM_Polaris10_PCIE_Table, ptr %346, i32 0, i32 1
  %751 = ptrtoint ptr %ucNumEntries45.i.i to i32
  call void @__asan_load1_noabort(i32 %751)
  %752 = load i8, ptr %ucNumEntries45.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %752)
  %cmp47.not.i.i = icmp eq i8 %752, 0
  br i1 %cmp47.not.i.i, label %if.then49.i.i, label %if.end8.i.i182.i.i

if.then49.i.i:                                    ; preds = %if.else41.i.i
  %call50.i.i = call i32 @___ratelimit(ptr noundef nonnull @get_pcie_table._rs.92, ptr noundef nonnull @__func__.get_pcie_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.then49.i.i.if.end70.i_crit_edge, label %do.end55.i314.i

if.then49.i.i.if.end70.i_crit_edge:               ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

do.end55.i314.i:                                  ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call57.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end70.i

if.end8.i.i182.i.i:                               ; preds = %if.else41.i.i
  %conv46.i.i = zext i8 %752 to i32
  %753 = mul nuw nsw i32 %conv46.i.i, 12
  %spec.select.i156190.i.i = add nuw nsw i32 %753, 4
  %call9.i.i181.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i156190.i.i, i32 noundef 3520) #12
  %tobool66.not.i.i = icmp eq ptr %call9.i.i181.i.i, null
  br i1 %tobool66.not.i.i, label %if.end8.i.i182.i.i.if.end70.i_crit_edge, label %if.end68.i.i

if.end8.i.i182.i.i.if.end70.i_crit_edge:          ; preds = %if.end8.i.i182.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.end68.i.i:                                     ; preds = %if.end8.i.i182.i.i
  %754 = ptrtoint ptr %734 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %734, align 4
  %756 = ptrtoint ptr %755 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load i32, ptr %755, align 4
  %add71.i.i = add i32 %757, 1
  %758 = ptrtoint ptr %ucNumEntries45.i.i to i32
  call void @__asan_load1_noabort(i32 %758)
  %759 = load i8, ptr %ucNumEntries45.i.i, align 1
  %conv73.i.i = zext i8 %759 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add71.i.i, i32 %conv73.i.i)
  %cmp74.not.i.i = icmp ult i32 %add71.i.i, %conv73.i.i
  br i1 %cmp74.not.i.i, label %do.end82.i.i, label %if.end68.i.i.if.end85.i.i_crit_edge

if.end68.i.i.if.end85.i.i_crit_edge:              ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i.i

do.end82.i.i:                                     ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call84.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #11
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %do.end82.i.i, %if.end68.i.i.if.end85.i.i_crit_edge
  %pcie_count.1.i.i = phi i32 [ %add71.i.i, %do.end82.i.i ], [ %conv73.i.i, %if.end68.i.i.if.end85.i.i_crit_edge ]
  %760 = ptrtoint ptr %call9.i.i181.i.i to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 %pcie_count.1.i.i, ptr %call9.i.i181.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcie_count.1.i.i)
  %cmp88192.not.i.i = icmp eq i32 %pcie_count.1.i.i, 0
  br i1 %cmp88192.not.i.i, label %if.end85.i.i.land.lhs.true63.sink.split.i_crit_edge, label %for.body90.lr.ph.i.i

if.end85.i.i.land.lhs.true63.sink.split.i_crit_edge: ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true63.sink.split.i

for.body90.lr.ph.i.i:                             ; preds = %if.end85.i.i
  %entries91.i.i = getelementptr inbounds %struct.phm_ppt_v1_pcie_table, ptr %call9.i.i181.i.i, i32 0, i32 1
  %entries94.i.i = getelementptr inbounds %struct._ATOM_Polaris10_PCIE_Table, ptr %346, i32 0, i32 2
  br label %for.body90.i.i

for.body90.i.i:                                   ; preds = %for.body90.i.i.for.body90.i.i_crit_edge, %for.body90.lr.ph.i.i
  %i.1193.i.i = phi i32 [ 0, %for.body90.lr.ph.i.i ], [ %inc104.i.i, %for.body90.i.i.for.body90.i.i_crit_edge ]
  %mul92.i.i = mul nuw nsw i32 %i.1193.i.i, 12
  %add.ptr93.i.i = getelementptr i8, ptr %entries91.i.i, i32 %mul92.i.i
  %mul95.i.i = shl i32 %i.1193.i.i, 3
  %add.ptr96.i.i = getelementptr i8, ptr %entries94.i.i, i32 %mul95.i.i
  %761 = ptrtoint ptr %add.ptr96.i.i to i32
  call void @__asan_load1_noabort(i32 %761)
  %762 = load i8, ptr %add.ptr96.i.i, align 1
  %763 = ptrtoint ptr %add.ptr93.i.i to i32
  call void @__asan_store1_noabort(i32 %763)
  store i8 %762, ptr %add.ptr93.i.i, align 4
  %lane_width102.i.i = getelementptr inbounds %struct.phm_ppt_v1_pcie_record, ptr %add.ptr93.i.i, i32 0, i32 1
  %764 = ptrtoint ptr %lane_width102.i.i to i32
  call void @__asan_store1_noabort(i32 %764)
  store i8 0, ptr %lane_width102.i.i, align 1
  %ulPCIE_Sclk.i.i = getelementptr inbounds %struct._ATOM_Polaris10_PCIE_Record, ptr %add.ptr96.i.i, i32 0, i32 3
  %765 = ptrtoint ptr %ulPCIE_Sclk.i.i to i32
  call void @__asan_loadN_noabort(i32 %765, i32 4)
  %766 = load i32, ptr %ulPCIE_Sclk.i.i, align 1
  %767 = call i32 @llvm.bswap.i32(i32 %766) #7
  %pcie_sclk.i.i = getelementptr inbounds %struct.phm_ppt_v1_pcie_record, ptr %add.ptr93.i.i, i32 0, i32 4
  %768 = ptrtoint ptr %pcie_sclk.i.i to i32
  call void @__asan_store4_noabort(i32 %768)
  store i32 %767, ptr %pcie_sclk.i.i, align 4
  %inc104.i.i = add nuw nsw i32 %i.1193.i.i, 1
  %exitcond.not.i315.i = icmp eq i32 %inc104.i.i, %pcie_count.1.i.i
  br i1 %exitcond.not.i315.i, label %for.body90.i.i.land.lhs.true63.sink.split.i_crit_edge, label %for.body90.i.i.for.body90.i.i_crit_edge

for.body90.i.i.for.body90.i.i_crit_edge:          ; preds = %for.body90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body90.i.i

for.body90.i.i.land.lhs.true63.sink.split.i_crit_edge: ; preds = %for.body90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true63.sink.split.i

land.lhs.true63.sink.split.i:                     ; preds = %for.body90.i.i.land.lhs.true63.sink.split.i_crit_edge, %if.end85.i.i.land.lhs.true63.sink.split.i_crit_edge, %for.body.i313.i.land.lhs.true63.sink.split.i_crit_edge, %if.end31.i.i.land.lhs.true63.sink.split.i_crit_edge
  %retval.1.i.i.i303.sink.i = phi ptr [ %call9.i.i.i301.i, %if.end31.i.i.land.lhs.true63.sink.split.i_crit_edge ], [ %call9.i.i181.i.i, %if.end85.i.i.land.lhs.true63.sink.split.i_crit_edge ], [ %call9.i.i.i301.i, %for.body.i313.i.land.lhs.true63.sink.split.i_crit_edge ], [ %call9.i.i181.i.i, %for.body90.i.i.land.lhs.true63.sink.split.i_crit_edge ]
  %769 = ptrtoint ptr %pcie_table13.i to i32
  call void @__asan_store4_noabort(i32 %769)
  store ptr %retval.1.i.i.i303.sink.i, ptr %pcie_table13.i, align 4
  br label %land.lhs.true63.i

land.lhs.true63.i:                                ; preds = %land.lhs.true63.sink.split.i, %land.lhs.true52.i.land.lhs.true63.i_crit_edge
  %770 = ptrtoint ptr %usHardLimitTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %770, i32 2)
  %771 = load i16, ptr %usHardLimitTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %771)
  %cmp66.not.i = icmp eq i16 %771, 0
  br i1 %cmp66.not.i, label %land.lhs.true63.i.if.end70.i_crit_edge, label %if.then68.i

land.lhs.true63.i.if.end70.i_crit_edge:           ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.then68.i:                                      ; preds = %land.lhs.true63.i
  %ucNumEntries.i317.i = getelementptr inbounds %struct._ATOM_Tonga_Hard_Limit_Table, ptr %342, i32 0, i32 1
  %772 = ptrtoint ptr %ucNumEntries.i317.i to i32
  call void @__asan_load1_noabort(i32 %772)
  %773 = load i8, ptr %ucNumEntries.i317.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %773)
  %cmp.not.i318.i = icmp eq i8 %773, 0
  br i1 %cmp.not.i318.i, label %if.then.i321.i, label %do.end6.i.i

if.then.i321.i:                                   ; preds = %if.then68.i
  %call.i319.i = call i32 @___ratelimit(ptr noundef nonnull @get_hard_limits._rs, ptr noundef nonnull @__func__.get_hard_limits) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319.i)
  %tobool.not.i320.i = icmp eq i32 %call.i319.i, 0
  br i1 %tobool.not.i320.i, label %if.then.i321.i.if.end70.i_crit_edge, label %do.end.i323.i

if.then.i321.i.if.end70.i_crit_edge:              ; preds = %if.then.i321.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

do.end.i323.i:                                    ; preds = %if.then.i321.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i322.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56) #11
  br label %if.end70.i

do.end6.i.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_clock_voltage_on_dc.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 8
  %entries.i324.i = getelementptr inbounds %struct._ATOM_Tonga_Hard_Limit_Table, ptr %342, i32 0, i32 2
  %774 = ptrtoint ptr %entries.i324.i to i32
  call void @__asan_loadN_noabort(i32 %774, i32 4)
  %775 = load i32, ptr %entries.i324.i, align 1
  %776 = call i32 @llvm.bswap.i32(i32 %775) #7
  %777 = ptrtoint ptr %max_clock_voltage_on_dc.i to i32
  call void @__asan_store4_noabort(i32 %777)
  store i32 %776, ptr %max_clock_voltage_on_dc.i, align 4
  %ulMCLKLimit.i.i = getelementptr inbounds %struct._ATOM_Tonga_Hard_Limit_Table, ptr %342, i32 0, i32 2, i32 0, i32 1
  %778 = ptrtoint ptr %ulMCLKLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %778, i32 4)
  %779 = load i32, ptr %ulMCLKLimit.i.i, align 1
  %780 = call i32 @llvm.bswap.i32(i32 %779) #7
  %mclk.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 8, i32 1
  %781 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_store4_noabort(i32 %781)
  store i32 %780, ptr %mclk.i.i, align 4
  %usVddcLimit.i.i = getelementptr inbounds %struct._ATOM_Tonga_Hard_Limit_Table, ptr %342, i32 0, i32 2, i32 0, i32 2
  %782 = ptrtoint ptr %usVddcLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %782, i32 2)
  %783 = load i16, ptr %usVddcLimit.i.i, align 1
  %784 = call i16 @llvm.bswap.i16(i16 %783) #7
  %vddc.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 8, i32 3
  %785 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_store2_noabort(i32 %785)
  store i16 %784, ptr %vddc.i.i, align 4
  %usVddciLimit.i.i = getelementptr inbounds %struct._ATOM_Tonga_Hard_Limit_Table, ptr %342, i32 0, i32 2, i32 0, i32 3
  %786 = ptrtoint ptr %usVddciLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %786, i32 2)
  %787 = load i16, ptr %usVddciLimit.i.i, align 1
  %788 = call i16 @llvm.bswap.i16(i16 %787) #7
  %vddci.i325.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 8, i32 4
  %789 = ptrtoint ptr %vddci.i325.i to i32
  call void @__asan_store2_noabort(i32 %789)
  store i16 %788, ptr %vddci.i325.i, align 2
  %usVddgfxLimit.i.i = getelementptr inbounds %struct._ATOM_Tonga_Hard_Limit_Table, ptr %342, i32 0, i32 2, i32 0, i32 4
  %790 = ptrtoint ptr %usVddgfxLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %790, i32 2)
  %791 = load i16, ptr %usVddgfxLimit.i.i, align 1
  %792 = call i16 @llvm.bswap.i16(i16 %791) #7
  %vddgfx.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 8, i32 5
  %793 = ptrtoint ptr %vddgfx.i.i to i32
  call void @__asan_store2_noabort(i32 %793)
  store i16 %792, ptr %vddgfx.i.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.end6.i.i, %do.end.i323.i, %if.then.i321.i.if.end70.i_crit_edge, %land.lhs.true63.i.if.end70.i_crit_edge, %if.end8.i.i182.i.i.if.end70.i_crit_edge, %do.end55.i314.i, %if.then49.i.i.if.end70.i_crit_edge, %if.end8.i.i.i302.i.if.end70.i_crit_edge, %do.end.i284.i, %if.then5.i282.i.if.end70.i_crit_edge, %if.end8.i.i.i253.i.if.end70.i_crit_edge, %do.end.i231.i, %if.then.i229.i.if.end70.i_crit_edge, %if.end8.i.i28.i.i.if.end70.i_crit_edge, %do.end49.i.i, %if.then43.i.i.if.end70.i_crit_edge, %if.end8.i.i.i214.i.if.end70.i_crit_edge, %do.end.i195.i, %if.then5.i194.i.if.end70.i_crit_edge, %if.then5.i.i, %if.then25.i.if.end70.i_crit_edge, %if.end8.i.i.i.i.if.end70.i_crit_edge, %do.end.i.i, %if.then.i.i.if.end70.i_crit_edge
  %cmp86.i = phi i1 [ false, %if.end8.i.i.i.i.if.end70.i_crit_edge ], [ false, %if.then.i.i.if.end70.i_crit_edge ], [ false, %do.end.i.i ], [ false, %if.then25.i.if.end70.i_crit_edge ], [ false, %if.then5.i.i ], [ false, %do.end49.i.i ], [ false, %if.then43.i.i.if.end70.i_crit_edge ], [ false, %if.end8.i.i28.i.i.if.end70.i_crit_edge ], [ false, %do.end.i195.i ], [ false, %if.then5.i194.i.if.end70.i_crit_edge ], [ false, %if.end8.i.i.i214.i.if.end70.i_crit_edge ], [ false, %if.end8.i.i.i253.i.if.end70.i_crit_edge ], [ false, %if.then.i229.i.if.end70.i_crit_edge ], [ false, %do.end.i231.i ], [ false, %do.end55.i314.i ], [ false, %if.then49.i.i.if.end70.i_crit_edge ], [ false, %if.end8.i.i182.i.i.if.end70.i_crit_edge ], [ false, %do.end.i284.i ], [ false, %if.then5.i282.i.if.end70.i_crit_edge ], [ false, %if.end8.i.i.i302.i.if.end70.i_crit_edge ], [ true, %do.end6.i.i ], [ false, %do.end.i323.i ], [ false, %if.then.i321.i.if.end70.i_crit_edge ], [ true, %land.lhs.true63.i.if.end70.i_crit_edge ]
  %result.5.i = phi i32 [ -12, %if.end8.i.i.i.i.if.end70.i_crit_edge ], [ -1, %if.then.i.i.if.end70.i_crit_edge ], [ -1, %do.end.i.i ], [ -12, %if.then25.i.if.end70.i_crit_edge ], [ -12, %if.then5.i.i ], [ -1, %do.end49.i.i ], [ -1, %if.then43.i.i.if.end70.i_crit_edge ], [ -12, %if.end8.i.i28.i.i.if.end70.i_crit_edge ], [ -1, %do.end.i195.i ], [ -1, %if.then5.i194.i.if.end70.i_crit_edge ], [ -12, %if.end8.i.i.i214.i.if.end70.i_crit_edge ], [ -12, %if.end8.i.i.i253.i.if.end70.i_crit_edge ], [ -1, %if.then.i229.i.if.end70.i_crit_edge ], [ -1, %do.end.i231.i ], [ -1, %do.end55.i314.i ], [ -1, %if.then49.i.i.if.end70.i_crit_edge ], [ -12, %if.end8.i.i182.i.i.if.end70.i_crit_edge ], [ -1, %do.end.i284.i ], [ -1, %if.then5.i282.i.if.end70.i_crit_edge ], [ -12, %if.end8.i.i.i302.i.if.end70.i_crit_edge ], [ 0, %do.end6.i.i ], [ -1, %do.end.i323.i ], [ -1, %if.then.i321.i.if.end70.i_crit_edge ], [ 0, %land.lhs.true63.i.if.end70.i_crit_edge ]
  %max_clock_voltage_on_dc71.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 8
  %794 = ptrtoint ptr %max_clock_voltage_on_dc71.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load i32, ptr %max_clock_voltage_on_dc71.i, align 4
  %max_clock_voltage_on_dc72.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7
  %796 = ptrtoint ptr %max_clock_voltage_on_dc72.i to i32
  call void @__asan_store4_noabort(i32 %796)
  store i32 %795, ptr %max_clock_voltage_on_dc72.i, align 4
  %mclk.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 8, i32 1
  %797 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load i32, ptr %mclk.i, align 4
  %mclk77.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 1
  %799 = ptrtoint ptr %mclk77.i to i32
  call void @__asan_store4_noabort(i32 %799)
  store i32 %798, ptr %mclk77.i, align 4
  %vddc.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 8, i32 3
  %800 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %800)
  %801 = load i16, ptr %vddc.i, align 4
  %vddc81.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 3
  %802 = ptrtoint ptr %vddc81.i to i32
  call void @__asan_store2_noabort(i32 %802)
  store i16 %801, ptr %vddc81.i, align 4
  %vddci.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 8, i32 4
  %803 = ptrtoint ptr %vddci.i to i32
  call void @__asan_load2_noabort(i32 %803)
  %804 = load i16, ptr %vddci.i, align 2
  %vddci85.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 7, i32 4
  %805 = ptrtoint ptr %vddci85.i to i32
  call void @__asan_store2_noabort(i32 %805)
  store i16 %804, ptr %vddci85.i, align 2
  br i1 %cmp86.i, label %land.lhs.true88.i, label %if.end70.i.if.then92_crit_edge

if.end70.i.if.then92_crit_edge:                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

land.lhs.true88.i:                                ; preds = %if.end70.i
  %806 = ptrtoint ptr %vdd_dep_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %vdd_dep_on_mclk.i, align 4
  %cmp90.not.i = icmp eq ptr %807, null
  br i1 %cmp90.not.i, label %land.lhs.true88.i.land.lhs.true102.i_crit_edge, label %land.lhs.true92.i

land.lhs.true88.i.land.lhs.true102.i_crit_edge:   ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true102.i

land.lhs.true92.i:                                ; preds = %land.lhs.true88.i
  %808 = ptrtoint ptr %807 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load i32, ptr %807, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %809)
  %cmp94.not.i = icmp eq i32 %809, 0
  br i1 %cmp94.not.i, label %land.lhs.true92.i.land.lhs.true102.i_crit_edge, label %do.end6.i332.i

land.lhs.true92.i.land.lhs.true102.i_crit_edge:   ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true102.i

do.end6.i332.i:                                   ; preds = %land.lhs.true92.i
  %valid_mclk_values.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 5
  %810 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %809, i32 4) #7
  %811 = extractvalue { i32, i1 } %810, 1
  %812 = extractvalue { i32, i1 } %810, 0
  %spec.select.i.i.i = call i32 @llvm.uadd.sat.i32(i32 %812, i32 4) #7
  %retval.0.i.i.i = select i1 %811, i32 -1, i32 %spec.select.i.i.i
  %call9.i.i.i350.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i, i32 noundef 3520) #12
  %tobool10.not.i.i = icmp eq ptr %call9.i.i.i350.i, null
  br i1 %tobool10.not.i.i, label %do.end6.i332.i.if.then92_crit_edge, label %if.end12.i.i

do.end6.i332.i.if.then92_crit_edge:               ; preds = %do.end6.i332.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

if.end12.i.i:                                     ; preds = %do.end6.i332.i
  %813 = ptrtoint ptr %807 to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load i32, ptr %807, align 4
  %815 = ptrtoint ptr %call9.i.i.i350.i to i32
  call void @__asan_store4_noabort(i32 %815)
  store i32 %814, ptr %call9.i.i.i350.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %814)
  %cmp161.not.i.i = icmp eq i32 %814, 0
  br i1 %cmp161.not.i.i, label %if.end12.i.i.for.end.i360.i_crit_edge, label %for.body.lr.ph.i355.i

if.end12.i.i.for.end.i360.i_crit_edge:            ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i360.i

for.body.lr.ph.i355.i:                            ; preds = %if.end12.i.i
  %entries.i354.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %807, i32 0, i32 1
  br label %for.body.i359.i

for.body.i359.i:                                  ; preds = %for.body.i359.i.for.body.i359.i_crit_edge, %for.body.lr.ph.i355.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i355.i ], [ %inc.i358.i, %for.body.i359.i.for.body.i359.i_crit_edge ]
  %mul.i356.i = mul i32 %i.02.i.i, 28
  %add.ptr.i357.i = getelementptr i8, ptr %entries.i354.i, i32 %mul.i356.i
  %816 = ptrtoint ptr %add.ptr.i357.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load i32, ptr %add.ptr.i357.i, align 4
  %arrayidx.i.i172 = getelementptr %struct.phm_clock_array, ptr %call9.i.i.i350.i, i32 0, i32 1, i32 %i.02.i.i
  %818 = ptrtoint ptr %arrayidx.i.i172 to i32
  call void @__asan_store4_noabort(i32 %818)
  store i32 %817, ptr %arrayidx.i.i172, align 4
  %inc.i358.i = add nuw i32 %i.02.i.i, 1
  %819 = ptrtoint ptr %call9.i.i.i350.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load i32, ptr %call9.i.i.i350.i, align 128
  %cmp16.i.i = icmp ult i32 %inc.i358.i, %820
  br i1 %cmp16.i.i, label %for.body.i359.i.for.body.i359.i_crit_edge, label %for.body.i359.i.for.end.i360.i_crit_edge

for.body.i359.i.for.end.i360.i_crit_edge:         ; preds = %for.body.i359.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i360.i

for.body.i359.i.for.body.i359.i_crit_edge:        ; preds = %for.body.i359.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i359.i

for.end.i360.i:                                   ; preds = %for.body.i359.i.for.end.i360.i_crit_edge, %if.end12.i.i.for.end.i360.i_crit_edge
  %821 = ptrtoint ptr %valid_mclk_values.i to i32
  call void @__asan_store4_noabort(i32 %821)
  store ptr %call9.i.i.i350.i, ptr %valid_mclk_values.i, align 4
  br label %land.lhs.true102.i

land.lhs.true102.i:                               ; preds = %for.end.i360.i, %land.lhs.true92.i.land.lhs.true102.i_crit_edge, %land.lhs.true88.i.land.lhs.true102.i_crit_edge
  %822 = ptrtoint ptr %324 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %324, align 4
  %cmp104.not.i = icmp eq ptr %823, null
  br i1 %cmp104.not.i, label %land.lhs.true102.i.land.lhs.true115.i_crit_edge, label %land.lhs.true106.i

land.lhs.true102.i.land.lhs.true115.i_crit_edge:  ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true115.i

land.lhs.true106.i:                               ; preds = %land.lhs.true102.i
  %824 = ptrtoint ptr %823 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %823, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %825)
  %cmp109.not.i = icmp eq i32 %825, 0
  br i1 %cmp109.not.i, label %land.lhs.true106.i.land.lhs.true115.i_crit_edge, label %do.end6.i371.i

land.lhs.true106.i.land.lhs.true115.i_crit_edge:  ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true115.i

do.end6.i371.i:                                   ; preds = %land.lhs.true106.i
  %valid_sclk_values.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %324, i32 0, i32 4
  %826 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %825, i32 4) #7
  %827 = extractvalue { i32, i1 } %826, 1
  %828 = extractvalue { i32, i1 } %826, 0
  %spec.select.i.i369.i = call i32 @llvm.uadd.sat.i32(i32 %828, i32 4) #7
  %retval.0.i.i370.i = select i1 %827, i32 -1, i32 %spec.select.i.i369.i
  %call9.i.i.i395.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i370.i, i32 noundef 3520) #12
  %tobool10.not.i398.i = icmp eq ptr %call9.i.i.i395.i, null
  br i1 %tobool10.not.i398.i, label %do.end6.i371.i.if.then92_crit_edge, label %if.end12.i401.i

do.end6.i371.i.if.then92_crit_edge:               ; preds = %do.end6.i371.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

if.end12.i401.i:                                  ; preds = %do.end6.i371.i
  %829 = ptrtoint ptr %823 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %823, align 4
  %831 = ptrtoint ptr %call9.i.i.i395.i to i32
  call void @__asan_store4_noabort(i32 %831)
  store i32 %830, ptr %call9.i.i.i395.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %830)
  %cmp161.not.i400.i = icmp eq i32 %830, 0
  br i1 %cmp161.not.i400.i, label %if.end12.i401.i.for.end.i411.i_crit_edge, label %for.body.lr.ph.i403.i

if.end12.i401.i.for.end.i411.i_crit_edge:         ; preds = %if.end12.i401.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i411.i

for.body.lr.ph.i403.i:                            ; preds = %if.end12.i401.i
  %entries.i402.i = getelementptr inbounds %struct.phm_ppt_v1_clock_voltage_dependency_table, ptr %823, i32 0, i32 1
  br label %for.body.i410.i

for.body.i410.i:                                  ; preds = %for.body.i410.i.for.body.i410.i_crit_edge, %for.body.lr.ph.i403.i
  %i.02.i404.i = phi i32 [ 0, %for.body.lr.ph.i403.i ], [ %inc.i408.i, %for.body.i410.i.for.body.i410.i_crit_edge ]
  %mul.i405.i = mul i32 %i.02.i404.i, 28
  %add.ptr.i406.i = getelementptr i8, ptr %entries.i402.i, i32 %mul.i405.i
  %832 = ptrtoint ptr %add.ptr.i406.i to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load i32, ptr %add.ptr.i406.i, align 4
  %arrayidx.i407.i = getelementptr %struct.phm_clock_array, ptr %call9.i.i.i395.i, i32 0, i32 1, i32 %i.02.i404.i
  %834 = ptrtoint ptr %arrayidx.i407.i to i32
  call void @__asan_store4_noabort(i32 %834)
  store i32 %833, ptr %arrayidx.i407.i, align 4
  %inc.i408.i = add nuw i32 %i.02.i404.i, 1
  %835 = ptrtoint ptr %call9.i.i.i395.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %call9.i.i.i395.i, align 128
  %cmp16.i409.i = icmp ult i32 %inc.i408.i, %836
  br i1 %cmp16.i409.i, label %for.body.i410.i.for.body.i410.i_crit_edge, label %for.body.i410.i.for.end.i411.i_crit_edge

for.body.i410.i.for.end.i411.i_crit_edge:         ; preds = %for.body.i410.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i411.i

for.body.i410.i.for.body.i410.i_crit_edge:        ; preds = %for.body.i410.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i410.i

for.end.i411.i:                                   ; preds = %for.body.i410.i.for.end.i411.i_crit_edge, %if.end12.i401.i.for.end.i411.i_crit_edge
  %837 = ptrtoint ptr %valid_sclk_values.i to i32
  call void @__asan_store4_noabort(i32 %837)
  store ptr %call9.i.i.i395.i, ptr %valid_sclk_values.i, align 4
  br label %land.lhs.true115.i

land.lhs.true115.i:                               ; preds = %for.end.i411.i, %land.lhs.true106.i.land.lhs.true115.i_crit_edge, %land.lhs.true102.i.land.lhs.true115.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add12.i)
  %tobool116.not.i = icmp eq i32 %add12.i, 0
  br i1 %tobool116.not.i, label %land.lhs.true115.i.do.end104_crit_edge, label %if.then117.i

land.lhs.true115.i.do.end104_crit_edge:           ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104

if.then117.i:                                     ; preds = %land.lhs.true115.i
  %838 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %pptable, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %840 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i416.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %840, i32 noundef 3520, i32 noundef 1) #10
  %tobool.not.i417.i = icmp eq ptr %call7.i.i.i416.i, null
  br i1 %tobool.not.i417.i, label %if.then117.i.if.then92_crit_edge, label %if.end.i420.i

if.then117.i.if.then92_crit_edge:                 ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

if.end.i420.i:                                    ; preds = %if.then117.i
  %841 = ptrtoint ptr %839 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %839, align 4
  %843 = ptrtoint ptr %842 to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load i32, ptr %842, align 4
  %ucVRHotTriggeredSclkDpmIndex.i.i = getelementptr inbounds %struct._ATOM_Tonga_GPIO_Table, ptr %350, i32 0, i32 1
  %845 = ptrtoint ptr %ucVRHotTriggeredSclkDpmIndex.i.i to i32
  call void @__asan_load1_noabort(i32 %845)
  %846 = load i8, ptr %ucVRHotTriggeredSclkDpmIndex.i.i, align 1
  %conv.i418.i = zext i8 %846 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %844, i32 %conv.i418.i)
  %cmp.i419.i = icmp ult i32 %844, %conv.i418.i
  br i1 %cmp.i419.i, label %do.body.i.i, label %if.else.i423.i

do.body.i.i:                                      ; preds = %if.end.i420.i
  %call3.i421.i = call i32 @___ratelimit(ptr noundef nonnull @get_gpio_table._rs, ptr noundef nonnull @__func__.get_gpio_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i421.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i421.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.if.end12.i424.i_crit_edge, label %do.end.i422.i

do.body.i.i.if.end12.i424.i_crit_edge:            ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i424.i

do.end.i422.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.97) #11
  br label %if.end12.i424.i

if.else.i423.i:                                   ; preds = %if.end.i420.i
  call void @__sanitizer_cov_trace_pc() #9
  %847 = ptrtoint ptr %call7.i.i.i416.i to i32
  call void @__asan_store1_noabort(i32 %847)
  store i8 %846, ptr %call7.i.i.i416.i, align 8
  br label %if.end12.i424.i

if.end12.i424.i:                                  ; preds = %if.else.i423.i, %do.end.i422.i, %do.body.i.i.if.end12.i424.i_crit_edge
  %848 = ptrtoint ptr %gpio_table14.i to i32
  call void @__asan_store4_noabort(i32 %848)
  store ptr %call7.i.i.i416.i, ptr %gpio_table14.i, align 4
  br label %do.end104

if.then92:                                        ; preds = %if.then117.i.if.then92_crit_edge, %do.end6.i371.i.if.then92_crit_edge, %do.end6.i332.i.if.then92_crit_edge, %if.end70.i.if.then92_crit_edge
  %result.8.i198 = phi i32 [ -12, %do.end6.i332.i.if.then92_crit_edge ], [ -12, %do.end6.i371.i.if.then92_crit_edge ], [ -12, %if.then117.i.if.then92_crit_edge ], [ %result.5.i, %if.end70.i.if.then92_crit_edge ]
  %call93 = call i32 @___ratelimit(ptr noundef nonnull @pp_tables_v1_0_initialize._rs.40, ptr noundef nonnull @__func__.pp_tables_v1_0_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then92.cleanup_crit_edge, label %do.end98

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end98:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43) #11
  br label %cleanup

do.end104:                                        ; preds = %if.end12.i424.i, %land.lhs.true115.i.do.end104_crit_edge
  %849 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %pptable, align 4
  %usUlvVoltageOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 11
  %851 = ptrtoint ptr %usUlvVoltageOffset.i to i32
  call void @__asan_loadN_noabort(i32 %851, i32 2)
  %852 = load i16, ptr %usUlvVoltageOffset.i, align 1
  %853 = call i16 @llvm.bswap.i16(i16 %852) #7
  %us_ulv_voltage_offset.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %850, i32 0, i32 20
  %854 = ptrtoint ptr %us_ulv_voltage_offset.i to i32
  call void @__asan_store2_noabort(i32 %854)
  store i16 %853, ptr %us_ulv_voltage_offset.i, align 4
  %ppm_parameter_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %850, i32 0, i32 11
  %855 = ptrtoint ptr %ppm_parameter_table.i to i32
  call void @__asan_store4_noabort(i32 %855)
  store ptr null, ptr %ppm_parameter_table.i, align 4
  %vddc_lookup_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %850, i32 0, i32 15
  %856 = ptrtoint ptr %vddc_lookup_table.i to i32
  call void @__asan_store4_noabort(i32 %856)
  store ptr null, ptr %vddc_lookup_table.i, align 4
  %vddgfx_lookup_table.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %850, i32 0, i32 16
  %857 = ptrtoint ptr %vddgfx_lookup_table.i to i32
  call void @__asan_store4_noabort(i32 %857)
  store ptr null, ptr %vddgfx_lookup_table.i, align 4
  %usPowerControlLimit.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 10
  %858 = ptrtoint ptr %usPowerControlLimit.i to i32
  call void @__asan_loadN_noabort(i32 %858, i32 2)
  %859 = load i16, ptr %usPowerControlLimit.i, align 1
  %860 = call i16 @llvm.bswap.i16(i16 %859) #7
  %TDPODLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 16
  %861 = ptrtoint ptr %TDPODLimit.i to i32
  call void @__asan_store2_noabort(i32 %861)
  store i16 %860, ptr %TDPODLimit.i, align 4
  %TDPAdjustment.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 17
  %862 = ptrtoint ptr %TDPAdjustment.i to i32
  call void @__asan_store4_noabort(i32 %862)
  store i32 0, ptr %TDPAdjustment.i, align 4
  %VidAdjustment.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 23
  %863 = ptrtoint ptr %VidAdjustment.i to i32
  call void @__asan_store4_noabort(i32 %863)
  store i32 0, ptr %VidAdjustment.i, align 4
  %VidAdjustmentPolarity.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 24
  %864 = ptrtoint ptr %VidAdjustmentPolarity.i to i32
  call void @__asan_store1_noabort(i32 %864)
  store i8 0, ptr %VidAdjustmentPolarity.i, align 4
  %VidMinLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 20
  %865 = ptrtoint ptr %VidMinLimit.i to i32
  call void @__asan_store4_noabort(i32 %865)
  store i32 0, ptr %VidMinLimit.i, align 4
  %VidMaxLimit.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 21
  %866 = ptrtoint ptr %VidMaxLimit.i to i32
  call void @__asan_store4_noabort(i32 %866)
  store i32 1500000, ptr %VidMaxLimit.i, align 4
  %VidStep.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 22
  %867 = ptrtoint ptr %VidStep.i to i32
  call void @__asan_store4_noabort(i32 %867)
  store i32 6250, ptr %VidStep.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %859)
  %cmp9.not.i = icmp eq i16 %859, 0
  br i1 %cmp9.not.i, label %do.end104.if.end13.i_crit_edge, label %if.then11.i177

do.end104.if.end13.i_crit_edge:                   ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then11.i177:                                   ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  %868 = ptrtoint ptr %arrayidx.i8.i39.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load i32, ptr %arrayidx.i8.i39.i, align 4
  %or.i.i176 = or i32 %869, 262144
  store i32 %or.i.i176, ptr %arrayidx.i8.i39.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i177, %do.end104.if.end13.i_crit_edge
  %usVddcLookupTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 18
  %870 = ptrtoint ptr %usVddcLookupTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %870, i32 2)
  %871 = load i16, ptr %usVddcLookupTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %871)
  %cmp15.not.i = icmp eq i16 %871, 0
  br i1 %cmp15.not.i, label %if.end13.i.if.end21.i_crit_edge, label %if.then17.i

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %872 = call i16 @llvm.bswap.i16(i16 %871) #7
  %conv19.i = zext i16 %872 to i32
  %add.i178 = add i32 %conv19.i, %13
  %873 = inttoptr i32 %add.i178 to ptr
  %call.i179 = call fastcc i32 @get_vddc_lookup_table(ptr noundef %vddc_lookup_table.i, ptr noundef %873) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end21.i_crit_edge
  %result.0.i = phi i32 [ %call.i179, %if.then17.i ], [ 0, %if.end13.i.if.end21.i_crit_edge ]
  %usVddgfxLookupTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 19
  %874 = ptrtoint ptr %usVddgfxLookupTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %874, i32 2)
  %875 = load i16, ptr %usVddgfxLookupTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %875)
  %cmp23.not.i180 = icmp eq i16 %875, 0
  br i1 %cmp23.not.i180, label %if.end21.i.if.then34.i_crit_edge, label %if.then25.i181

if.end21.i.if.then34.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34.i

if.then25.i181:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %876 = call i16 @llvm.bswap.i16(i16 %875) #7
  %conv27.i = zext i16 %876 to i32
  %add28.i = add i32 %conv27.i, %13
  %877 = inttoptr i32 %add28.i to ptr
  %call30.i = call fastcc i32 @get_vddc_lookup_table(ptr noundef %vddgfx_lookup_table.i, ptr noundef %877) #7
  br label %if.then34.i

if.then34.i:                                      ; preds = %if.then25.i181, %if.end21.i.if.then34.i_crit_edge
  %result.1.i = phi i32 [ %call30.i, %if.then25.i181 ], [ %result.0.i, %if.end21.i.if.then34.i_crit_edge ]
  %usPPMTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i187, i32 0, i32 22
  %878 = ptrtoint ptr %usPPMTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %878, i32 2)
  %879 = load i16, ptr %usPPMTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %879)
  %cmp39.not.i = icmp eq i16 %879, 0
  br i1 %cmp39.not.i, label %if.then34.i.init_dpm_2_parameters.exit_crit_edge, label %if.then41.i184

if.then34.i.init_dpm_2_parameters.exit_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_dpm_2_parameters.exit

if.then41.i184:                                   ; preds = %if.then34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %880 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i182 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %880, i32 noundef 3520, i32 noundef 36) #10
  %cmp.i.i183 = icmp eq ptr %call7.i.i.i.i182, null
  br i1 %cmp.i.i183, label %if.then41.i184.init_dpm_2_parameters.exit_crit_edge, label %if.then45.i

if.then41.i184.init_dpm_2_parameters.exit_crit_edge: ; preds = %if.then41.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_dpm_2_parameters.exit

if.then45.i:                                      ; preds = %if.then41.i184
  call void @__sanitizer_cov_trace_pc() #9
  %881 = call i16 @llvm.bswap.i16(i16 %879) #7
  %conv35.i = zext i16 %881 to i32
  %add36.i = add i32 %conv35.i, %13
  %882 = inttoptr i32 %add36.i to ptr
  %883 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %pptable, align 4
  %ucPpmDesign.i.i = getelementptr inbounds %struct._ATOM_Tonga_PPM_Table, ptr %882, i32 0, i32 1
  %885 = ptrtoint ptr %ucPpmDesign.i.i to i32
  call void @__asan_load1_noabort(i32 %885)
  %886 = load i8, ptr %ucPpmDesign.i.i, align 1
  %887 = ptrtoint ptr %call7.i.i.i.i182 to i32
  call void @__asan_store1_noabort(i32 %887)
  store i8 %886, ptr %call7.i.i.i.i182, align 8
  %usCpuCoreNumber.i.i = getelementptr inbounds %struct._ATOM_Tonga_PPM_Table, ptr %882, i32 0, i32 2
  %888 = ptrtoint ptr %usCpuCoreNumber.i.i to i32
  call void @__asan_loadN_noabort(i32 %888, i32 2)
  %889 = load i16, ptr %usCpuCoreNumber.i.i, align 1
  %890 = call i16 @llvm.bswap.i16(i16 %889) #7
  %cpu_core_number.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i.i182, i32 0, i32 1
  %891 = ptrtoint ptr %cpu_core_number.i.i to i32
  call void @__asan_store2_noabort(i32 %891)
  store i16 %890, ptr %cpu_core_number.i.i, align 2
  %ulPlatformTDP.i.i = getelementptr inbounds %struct._ATOM_Tonga_PPM_Table, ptr %882, i32 0, i32 3
  %892 = ptrtoint ptr %ulPlatformTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %892, i32 4)
  %893 = load i32, ptr %ulPlatformTDP.i.i, align 1
  %894 = call i32 @llvm.bswap.i32(i32 %893) #7
  %platform_tdp.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i.i182, i32 0, i32 2
  %895 = ptrtoint ptr %platform_tdp.i.i to i32
  call void @__asan_store4_noabort(i32 %895)
  store i32 %894, ptr %platform_tdp.i.i, align 4
  %ulSmallACPlatformTDP.i.i = getelementptr inbounds %struct._ATOM_Tonga_PPM_Table, ptr %882, i32 0, i32 4
  %896 = ptrtoint ptr %ulSmallACPlatformTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %896, i32 4)
  %897 = load i32, ptr %ulSmallACPlatformTDP.i.i, align 1
  %898 = call i32 @llvm.bswap.i32(i32 %897) #7
  %small_ac_platform_tdp.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i.i182, i32 0, i32 3
  %899 = ptrtoint ptr %small_ac_platform_tdp.i.i to i32
  call void @__asan_store4_noabort(i32 %899)
  store i32 %898, ptr %small_ac_platform_tdp.i.i, align 8
  %ulPlatformTDC.i.i = getelementptr inbounds %struct._ATOM_Tonga_PPM_Table, ptr %882, i32 0, i32 5
  %900 = ptrtoint ptr %ulPlatformTDC.i.i to i32
  call void @__asan_loadN_noabort(i32 %900, i32 4)
  %901 = load i32, ptr %ulPlatformTDC.i.i, align 1
  %902 = call i32 @llvm.bswap.i32(i32 %901) #7
  %platform_tdc.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i.i182, i32 0, i32 4
  %903 = ptrtoint ptr %platform_tdc.i.i to i32
  call void @__asan_store4_noabort(i32 %903)
  store i32 %902, ptr %platform_tdc.i.i, align 4
  %ulSmallACPlatformTDC.i.i = getelementptr inbounds %struct._ATOM_Tonga_PPM_Table, ptr %882, i32 0, i32 6
  %904 = ptrtoint ptr %ulSmallACPlatformTDC.i.i to i32
  call void @__asan_loadN_noabort(i32 %904, i32 4)
  %905 = load i32, ptr %ulSmallACPlatformTDC.i.i, align 1
  %906 = call i32 @llvm.bswap.i32(i32 %905) #7
  %small_ac_platform_tdc.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i.i182, i32 0, i32 5
  %907 = ptrtoint ptr %small_ac_platform_tdc.i.i to i32
  call void @__asan_store4_noabort(i32 %907)
  store i32 %906, ptr %small_ac_platform_tdc.i.i, align 8
  %ulApuTDP.i.i = getelementptr inbounds %struct._ATOM_Tonga_PPM_Table, ptr %882, i32 0, i32 7
  %908 = ptrtoint ptr %ulApuTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %908, i32 4)
  %909 = load i32, ptr %ulApuTDP.i.i, align 1
  %910 = call i32 @llvm.bswap.i32(i32 %909) #7
  %apu_tdp.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i.i182, i32 0, i32 6
  %911 = ptrtoint ptr %apu_tdp.i.i to i32
  call void @__asan_store4_noabort(i32 %911)
  store i32 %910, ptr %apu_tdp.i.i, align 4
  %ulDGpuTDP.i.i = getelementptr inbounds %struct._ATOM_Tonga_PPM_Table, ptr %882, i32 0, i32 8
  %912 = ptrtoint ptr %ulDGpuTDP.i.i to i32
  call void @__asan_loadN_noabort(i32 %912, i32 4)
  %913 = load i32, ptr %ulDGpuTDP.i.i, align 1
  %914 = call i32 @llvm.bswap.i32(i32 %913) #7
  %dgpu_tdp.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i.i182, i32 0, i32 7
  %915 = ptrtoint ptr %dgpu_tdp.i.i to i32
  call void @__asan_store4_noabort(i32 %915)
  store i32 %914, ptr %dgpu_tdp.i.i, align 8
  %ulDGpuUlvPower.i.i = getelementptr inbounds %struct._ATOM_Tonga_PPM_Table, ptr %882, i32 0, i32 9
  %916 = ptrtoint ptr %ulDGpuUlvPower.i.i to i32
  call void @__asan_loadN_noabort(i32 %916, i32 4)
  %917 = load i32, ptr %ulDGpuUlvPower.i.i, align 1
  %918 = call i32 @llvm.bswap.i32(i32 %917) #7
  %dgpu_ulv_power.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i.i182, i32 0, i32 8
  %919 = ptrtoint ptr %dgpu_ulv_power.i.i to i32
  call void @__asan_store4_noabort(i32 %919)
  store i32 %918, ptr %dgpu_ulv_power.i.i, align 4
  %ulTjmax.i.i = getelementptr inbounds %struct._ATOM_Tonga_PPM_Table, ptr %882, i32 0, i32 10
  %920 = ptrtoint ptr %ulTjmax.i.i to i32
  call void @__asan_loadN_noabort(i32 %920, i32 4)
  %921 = load i32, ptr %ulTjmax.i.i, align 1
  %922 = call i32 @llvm.bswap.i32(i32 %921) #7
  %tj_max.i.i = getelementptr inbounds %struct.phm_ppm_table, ptr %call7.i.i.i.i182, i32 0, i32 9
  %923 = ptrtoint ptr %tj_max.i.i to i32
  call void @__asan_store4_noabort(i32 %923)
  store i32 %922, ptr %tj_max.i.i, align 8
  %ppm_parameter_table.i.i = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %884, i32 0, i32 11
  %924 = ptrtoint ptr %ppm_parameter_table.i.i to i32
  call void @__asan_store4_noabort(i32 %924)
  store ptr %call7.i.i.i.i182, ptr %ppm_parameter_table.i.i, align 4
  %arrayidx.i80.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 23, i32 0, i32 3
  %925 = ptrtoint ptr %arrayidx.i80.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load i32, ptr %arrayidx.i80.i, align 4
  %or.i81.i = or i32 %926, 4096
  store i32 %or.i81.i, ptr %arrayidx.i80.i, align 4
  br label %init_dpm_2_parameters.exit

init_dpm_2_parameters.exit:                       ; preds = %if.then45.i, %if.then41.i184.init_dpm_2_parameters.exit_crit_edge, %if.then34.i.init_dpm_2_parameters.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1.i)
  %cmp107 = icmp eq i32 %result.1.i, 0
  br i1 %cmp107, label %init_dpm_2_parameters.exit.cleanup_crit_edge, label %if.then108

init_dpm_2_parameters.exit.cleanup_crit_edge:     ; preds = %init_dpm_2_parameters.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then108:                                       ; preds = %init_dpm_2_parameters.exit
  %call109 = call i32 @___ratelimit(ptr noundef nonnull @pp_tables_v1_0_initialize._rs.44, ptr noundef nonnull @__func__.pp_tables_v1_0_initialize) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then108.cleanup_crit_edge, label %do.end114

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end114:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.47) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end114, %if.then108.cleanup_crit_edge, %init_dpm_2_parameters.exit.cleanup_crit_edge, %do.end98, %if.then92.cleanup_crit_edge, %do.end66, %if.then60.cleanup_crit_edge, %do.end34, %if.then28.cleanup_crit_edge, %do.end18, %if.then12.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %if.then.cleanup_crit_edge ], [ -1, %do.end18 ], [ -1, %if.then12.cleanup_crit_edge ], [ -1, %do.end34 ], [ -1, %if.then28.cleanup_crit_edge ], [ -1, %do.end66 ], [ -1, %if.then60.cleanup_crit_edge ], [ %result.8.i198, %do.end98 ], [ %result.8.i198, %if.then92.cleanup_crit_edge ], [ %result.1.i, %do.end114 ], [ %result.1.i, %if.then108.cleanup_crit_edge ], [ 0, %init_dpm_2_parameters.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_tables_v1_0_uninitialize(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pptable = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 22
  %0 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pptable, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  %vdd_dep_on_mclk = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %vdd_dep_on_mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdd_dep_on_mclk, align 4
  tail call void @kfree(ptr noundef %6) #7
  %7 = ptrtoint ptr %vdd_dep_on_mclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %vdd_dep_on_mclk, align 4
  %valid_mclk_values = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %valid_mclk_values to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %valid_mclk_values, align 4
  tail call void @kfree(ptr noundef %9) #7
  %10 = ptrtoint ptr %valid_mclk_values to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %valid_mclk_values, align 4
  %valid_sclk_values = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %valid_sclk_values to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %valid_sclk_values, align 4
  tail call void @kfree(ptr noundef %12) #7
  %13 = ptrtoint ptr %valid_sclk_values to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %valid_sclk_values, align 4
  %vddc_lookup_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %vddc_lookup_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vddc_lookup_table, align 4
  tail call void @kfree(ptr noundef %15) #7
  %16 = ptrtoint ptr %vddc_lookup_table to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %vddc_lookup_table, align 4
  %vddgfx_lookup_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %vddgfx_lookup_table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vddgfx_lookup_table, align 4
  tail call void @kfree(ptr noundef %18) #7
  %19 = ptrtoint ptr %vddgfx_lookup_table to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vddgfx_lookup_table, align 4
  %mm_dep_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %mm_dep_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mm_dep_table, align 4
  tail call void @kfree(ptr noundef %21) #7
  %22 = ptrtoint ptr %mm_dep_table to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %mm_dep_table, align 4
  %cac_dtp_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cac_dtp_table, align 4
  tail call void @kfree(ptr noundef %24) #7
  %25 = ptrtoint ptr %cac_dtp_table to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cac_dtp_table, align 4
  %cac_dtp_table9 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 29, i32 20
  %26 = ptrtoint ptr %cac_dtp_table9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cac_dtp_table9, align 4
  tail call void @kfree(ptr noundef %27) #7
  %28 = ptrtoint ptr %cac_dtp_table9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %cac_dtp_table9, align 4
  %ppm_parameter_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %ppm_parameter_table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ppm_parameter_table, align 4
  tail call void @kfree(ptr noundef %30) #7
  %31 = ptrtoint ptr %ppm_parameter_table to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %ppm_parameter_table, align 4
  %pcie_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 18
  %32 = ptrtoint ptr %pcie_table to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcie_table, align 4
  tail call void @kfree(ptr noundef %33) #7
  %34 = ptrtoint ptr %pcie_table to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %pcie_table, align 4
  %gpio_table = getelementptr inbounds %struct.phm_ppt_v1_information, ptr %1, i32 0, i32 19
  %35 = ptrtoint ptr %gpio_table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpio_table, align 4
  tail call void @kfree(ptr noundef %36) #7
  %37 = ptrtoint ptr %gpio_table to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %gpio_table, align 4
  %38 = ptrtoint ptr %pptable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pptable, align 4
  tail call void @kfree(ptr noundef %39) #7
  %40 = ptrtoint ptr %pptable to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %pptable, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_number_of_powerplay_table_entries_v1_0(ptr nocapture noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  %size.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #7
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %size.i, align 2, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #7
  %1 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev.i, align 1, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #7
  %2 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev.i, align 1, !annotation !210
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %3 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_pp_table.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %get_powerplay_table.exit, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  br label %do.body8

get_powerplay_table.exit:                         ; preds = %entry
  %5 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %6, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #7
  %7 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %9 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %10 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %if.then, label %get_powerplay_table.exit.do.body8_crit_edge

get_powerplay_table.exit.do.body8_crit_edge:      ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

if.then:                                          ; preds = %get_powerplay_table.exit
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @get_number_of_powerplay_table_entries_v1_0._rs, ptr noundef nonnull @__func__.get_number_of_powerplay_table_entries_v1_0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.body8:                                         ; preds = %get_powerplay_table.exit.do.body8_crit_edge, %get_powerplay_table.exit.thread
  %table_address.0.i32 = phi ptr [ %4, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.do.body8_crit_edge ]
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %table_address.0.i32, i32 0, i32 1
  %11 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ucTableFormatRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %12)
  %cmp9 = icmp ugt i8 %12, 6
  br i1 %cmp9, label %do.end23, label %if.then11

if.then11:                                        ; preds = %do.body8
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @get_number_of_powerplay_table_entries_v1_0._rs.4, ptr noundef nonnull @__func__.get_number_of_powerplay_table_entries_v1_0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

do.end23:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %table_address.0.i32 to i32
  %usStateArrayOffset = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i32, i32 0, i32 12
  %14 = ptrtoint ptr %usStateArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usStateArrayOffset, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv24 = zext i16 %16 to i32
  %add = add i32 %conv24, %13
  %17 = inttoptr i32 %add to ptr
  %ucNumEntries = getelementptr inbounds %struct._ATOM_Tonga_State_Array, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ucNumEntries to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucNumEntries, align 1
  %conv25 = zext i8 %19 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end17, %if.then11.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv25, %do.end23 ], [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %do.end17 ], [ -1, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_powerplay_table_entry_v1_0(ptr noundef %hwmgr, i32 noundef %entry_index, ptr noundef %power_state, ptr nocapture noundef readonly %call_back_func) local_unnamed_addr #0 align 64 {
entry:
  %size.i.i122 = alloca i16, align 2
  %frev.i.i123 = alloca i8, align 1
  %crev.i.i124 = alloca i8, align 1
  %size.i.i = alloca i16, align 2
  %frev.i.i = alloca i8, align 1
  %crev.i.i = alloca i8, align 1
  %size.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #7
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %size.i, align 2, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #7
  %1 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev.i, align 1, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #7
  %2 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev.i, align 1, !annotation !210
  %soft_pp_table.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 12
  %3 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_pp_table.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %get_powerplay_table.exit, label %get_powerplay_table.exit.thread

get_powerplay_table.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  br label %do.end7

get_powerplay_table.exit:                         ; preds = %entry
  %5 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwmgr, align 4
  %call.i = call ptr @smu_atom_get_data_table(ptr noundef %6, i32 noundef 15, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #7
  %7 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %soft_pp_table.i, align 4
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %9 to i32
  %soft_pp_table_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %10 = ptrtoint ptr %soft_pp_table_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i, ptr %soft_pp_table_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #7
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %if.then, label %get_powerplay_table.exit.do.end7_crit_edge

get_powerplay_table.exit.do.end7_crit_edge:       ; preds = %get_powerplay_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %get_powerplay_table.exit
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @get_powerplay_table_entry_v1_0._rs, ptr noundef nonnull @__func__.get_powerplay_table_entry_v1_0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.end7:                                          ; preds = %get_powerplay_table.exit.do.end7_crit_edge, %get_powerplay_table.exit.thread
  %table_address.0.i141 = phi ptr [ %4, %get_powerplay_table.exit.thread ], [ %call.i, %get_powerplay_table.exit.do.end7_crit_edge ]
  %bios_index = getelementptr inbounds %struct.pp_power_state, ptr %power_state, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %bios_index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %entry_index, ptr %bios_index, align 4
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %table_address.0.i141, i32 0, i32 1
  %12 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ucTableFormatRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp8 = icmp ugt i8 %13, 6
  br i1 %cmp8, label %if.then10, label %do.end7.land.lhs.true_crit_edge

do.end7.land.lhs.true_crit_edge:                  ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then10:                                        ; preds = %do.end7
  %14 = ptrtoint ptr %table_address.0.i141 to i32
  %usStateArrayOffset = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i141, i32 0, i32 12
  %15 = ptrtoint ptr %usStateArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %usStateArrayOffset, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv11 = zext i16 %17 to i32
  %add = add i32 %conv11, %14
  %18 = inttoptr i32 %add to ptr
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp15.not = icmp eq i16 %16, 0
  br i1 %cmp15.not, label %if.then17, label %do.body30

if.then17:                                        ; preds = %if.then10
  %call18 = call i32 @___ratelimit(ptr noundef nonnull @get_powerplay_table_entry_v1_0._rs.8, ptr noundef nonnull @__func__.get_powerplay_table_entry_v1_0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %do.end23

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #11
  br label %cleanup

do.body30:                                        ; preds = %if.then10
  %ucNumEntries = getelementptr inbounds %struct._ATOM_Tonga_State_Array, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ucNumEntries to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ucNumEntries, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp32.not = icmp eq i8 %20, 0
  br i1 %cmp32.not, label %if.then34, label %do.body47

if.then34:                                        ; preds = %do.body30
  %call35 = call i32 @___ratelimit(ptr noundef nonnull @get_powerplay_table_entry_v1_0._rs.12, ptr noundef nonnull @__func__.get_powerplay_table_entry_v1_0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.cleanup_crit_edge, label %do.end40

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #11
  br label %cleanup

do.body47:                                        ; preds = %do.body30
  %conv31 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31, i32 %entry_index)
  %cmp50.not = icmp ult i32 %conv31, %entry_index
  br i1 %cmp50.not, label %if.then52, label %if.end67

if.then52:                                        ; preds = %do.body47
  %call53 = call i32 @___ratelimit(ptr noundef nonnull @get_powerplay_table_entry_v1_0._rs.16, ptr noundef nonnull @__func__.get_powerplay_table_entry_v1_0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.cleanup_crit_edge, label %do.end58

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end58:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end67:                                         ; preds = %do.body47
  %entries = getelementptr inbounds %struct._ATOM_Tonga_State_Array, ptr %18, i32 0, i32 2
  %mul = mul i32 %entry_index, 20
  %add.ptr = getelementptr i8, ptr %entries, i32 %mul
  %usClassification = getelementptr inbounds %struct._ATOM_Tonga_State, ptr %add.ptr, i32 0, i32 8
  %21 = ptrtoint ptr %usClassification to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %usClassification, align 1
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %usClassification2 = getelementptr inbounds %struct._ATOM_Tonga_State, ptr %add.ptr, i32 0, i32 10
  %24 = ptrtoint ptr %usClassification2 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %usClassification2, align 1
  %26 = lshr i16 %25, 8
  %conv.i120 = zext i16 %23 to i32
  %and.i = lshr i32 %conv.i120, 3
  %and26.i = lshr i32 %conv.i120, 1
  %27 = and i32 %and26.i, 2048
  %28 = and i16 %26, 1
  %29 = zext i16 %28 to i32
  %30 = shl nuw nsw i32 %29, 18
  %31 = and i32 %and.i, 31
  %32 = or i32 %31, %27
  %33 = or i32 %32, %30
  %call66 = call i32 %call_back_func(ptr noundef %hwmgr, ptr noundef %add.ptr, ptr noundef %power_state, ptr noundef nonnull %table_address.0.i141, i32 noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool68.not = icmp eq i32 %call66, 0
  br i1 %tobool68.not, label %if.end67.land.lhs.true_crit_edge, label %if.end67.if.end74_crit_edge

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.end67.land.lhs.true_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end67.land.lhs.true_crit_edge, %do.end7.land.lhs.true_crit_edge
  %flags70 = getelementptr inbounds %struct.pp_power_state, ptr %power_state, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags70, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool71.not = icmp eq i32 %and, 0
  br i1 %tobool71.not, label %land.lhs.true.if.end74_crit_edge, label %if.then72

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %36 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwmgr_func, align 4
  %patch_boot_state = getelementptr inbounds %struct.pp_hwmgr_func, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %patch_boot_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %patch_boot_state, align 4
  %hardware = getelementptr inbounds %struct.pp_power_state, ptr %power_state, i32 0, i32 11
  %call73 = call i32 %39(ptr noundef %hwmgr, ptr noundef %hardware) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %land.lhs.true.if.end74_crit_edge, %if.end67.if.end74_crit_edge
  %result.1 = phi i32 [ %call66, %if.end67.if.end74_crit_edge ], [ %call73, %if.then72 ], [ 0, %land.lhs.true.if.end74_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i.i) #7
  %40 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %size.i.i, align 2, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i) #7
  %41 = ptrtoint ptr %frev.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %frev.i.i, align 1, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i) #7
  %42 = ptrtoint ptr %crev.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %crev.i.i, align 1, !annotation !210
  %43 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %soft_pp_table.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %get_powerplay_table.exit.i, label %get_powerplay_table.exit.thread.i

get_powerplay_table.exit.thread.i:                ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i.i) #7
  br label %ppt_get_num_of_vce_state_table_entries_v1_0.exit

get_powerplay_table.exit.i:                       ; preds = %if.end74
  %45 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hwmgr, align 4
  %call.i.i = call ptr @smu_atom_get_data_table(ptr noundef %46, i32 noundef 15, ptr noundef nonnull %size.i.i, ptr noundef nonnull %frev.i.i, ptr noundef nonnull %crev.i.i) #7
  %47 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i, ptr %soft_pp_table.i, align 4
  %48 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %size.i.i, align 2
  %conv.i.i = zext i16 %49 to i32
  %soft_pp_table_size.i.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %50 = ptrtoint ptr %soft_pp_table_size.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv.i.i, ptr %soft_pp_table_size.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i.i) #7
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %ppt_get_num_of_vce_state_table_entries_v1_0.exit.thread, label %get_powerplay_table.exit.i.ppt_get_num_of_vce_state_table_entries_v1_0.exit_crit_edge

get_powerplay_table.exit.i.ppt_get_num_of_vce_state_table_entries_v1_0.exit_crit_edge: ; preds = %get_powerplay_table.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ppt_get_num_of_vce_state_table_entries_v1_0.exit

ppt_get_num_of_vce_state_table_entries_v1_0.exit.thread: ; preds = %get_powerplay_table.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %num_vce_state_tables145 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 17
  %51 = ptrtoint ptr %num_vce_state_tables145 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %num_vce_state_tables145, align 4
  br label %cleanup

ppt_get_num_of_vce_state_table_entries_v1_0.exit: ; preds = %get_powerplay_table.exit.i.ppt_get_num_of_vce_state_table_entries_v1_0.exit_crit_edge, %get_powerplay_table.exit.thread.i
  %table_address.0.i7.i = phi ptr [ %44, %get_powerplay_table.exit.thread.i ], [ %call.i.i, %get_powerplay_table.exit.i.ppt_get_num_of_vce_state_table_entries_v1_0.exit_crit_edge ]
  %usVCEStateTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i7.i, i32 0, i32 21
  %52 = ptrtoint ptr %usVCEStateTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %usVCEStateTableOffset.i, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53) #7
  %conv.i121 = zext i16 %54 to i32
  %add.ptr.i = getelementptr i8, ptr %table_address.0.i7.i, i32 %conv.i121
  %ucNumEntries.i = getelementptr inbounds %struct._ATOM_Tonga_VCE_State_Table, ptr %add.ptr.i, i32 0, i32 1
  %55 = ptrtoint ptr %ucNumEntries.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ucNumEntries.i, align 1
  %conv1.i = zext i8 %56 to i32
  %num_vce_state_tables = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 17
  %57 = ptrtoint ptr %num_vce_state_tables to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv1.i, ptr %num_vce_state_tables, align 4
  %58 = add i8 %56, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %58)
  %59 = icmp ult i8 %58, 6
  br i1 %59, label %for.body.lr.ph, label %ppt_get_num_of_vce_state_table_entries_v1_0.exit.cleanup_crit_edge

ppt_get_num_of_vce_state_table_entries_v1_0.exit.cleanup_crit_edge: ; preds = %ppt_get_num_of_vce_state_table_entries_v1_0.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %ppt_get_num_of_vce_state_table_entries_v1_0.exit
  %soft_pp_table_size.i.i129 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 13
  %smax = call i32 @llvm.smax.i32(i32 %conv1.i, i32 1)
  br label %for.body

for.body:                                         ; preds = %ppt_get_vce_state_table_entry_v1_0.exit.for.body_crit_edge, %for.body.lr.ph
  %j.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ppt_get_vce_state_table_entry_v1_0.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 16, i32 %j.0150
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i.i122) #7
  %60 = ptrtoint ptr %size.i.i122 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -1, ptr %size.i.i122, align 2, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i123) #7
  %61 = ptrtoint ptr %frev.i.i123 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %frev.i.i123, align 1, !annotation !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i124) #7
  %62 = ptrtoint ptr %crev.i.i124 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %crev.i.i124, align 1, !annotation !210
  %63 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %soft_pp_table.i, align 4
  %tobool.not.i.i126 = icmp eq ptr %64, null
  br i1 %tobool.not.i.i126, label %if.then.i.i, label %for.body.get_powerplay_table.exit.i134_crit_edge

for.body.get_powerplay_table.exit.i134_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_powerplay_table.exit.i134

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hwmgr, align 4
  %call.i.i127 = call ptr @smu_atom_get_data_table(ptr noundef %66, i32 noundef 15, ptr noundef nonnull %size.i.i122, ptr noundef nonnull %frev.i.i123, ptr noundef nonnull %crev.i.i124) #7
  %67 = ptrtoint ptr %soft_pp_table.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i.i127, ptr %soft_pp_table.i, align 4
  %68 = ptrtoint ptr %size.i.i122 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %size.i.i122, align 2
  %conv.i.i128 = zext i16 %69 to i32
  %70 = ptrtoint ptr %soft_pp_table_size.i.i129 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv.i.i128, ptr %soft_pp_table_size.i.i129, align 4
  br label %get_powerplay_table.exit.i134

get_powerplay_table.exit.i134:                    ; preds = %if.then.i.i, %for.body.get_powerplay_table.exit.i134_crit_edge
  %table_address.0.i.i = phi ptr [ %64, %for.body.get_powerplay_table.exit.i134_crit_edge ], [ %call.i.i127, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i124) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i123) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i.i122) #7
  %71 = ptrtoint ptr %table_address.0.i.i to i32
  %usVCEStateTableOffset.i130 = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i.i, i32 0, i32 21
  %72 = ptrtoint ptr %usVCEStateTableOffset.i130 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %usVCEStateTableOffset.i130, align 1
  %74 = call i16 @llvm.bswap.i16(i16 %73) #7
  %conv.i131 = zext i16 %74 to i32
  %add.i = add i32 %conv.i131, %71
  %75 = inttoptr i32 %add.i to ptr
  %usMclkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i.i, i32 0, i32 16
  %76 = ptrtoint ptr %usMclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %usMclkDependencyTableOffset.i, align 1
  %78 = call i16 @llvm.bswap.i16(i16 %77) #7
  %conv3.i = zext i16 %78 to i32
  %add4.i = add i32 %conv3.i, %71
  %79 = inttoptr i32 %add4.i to ptr
  %ucNumEntries.i132 = getelementptr inbounds %struct._ATOM_Tonga_VCE_State_Table, ptr %75, i32 0, i32 1
  %80 = ptrtoint ptr %ucNumEntries.i132 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ucNumEntries.i132, align 1
  %conv7.i = zext i8 %81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0150, i32 %conv7.i)
  %cmp.i133 = icmp ult i32 %j.0150, %conv7.i
  br i1 %cmp.i133, label %do.end15.i, label %if.then.i136

if.then.i136:                                     ; preds = %get_powerplay_table.exit.i134
  %call9.i = call i32 @___ratelimit(ptr noundef nonnull @ppt_get_vce_state_table_entry_v1_0._rs, ptr noundef nonnull @__func__.ppt_get_vce_state_table_entry_v1_0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i135 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i135, label %if.then.i136.ppt_get_vce_state_table_entry_v1_0.exit_crit_edge, label %do.end.i

if.then.i136.ppt_get_vce_state_table_entry_v1_0.exit_crit_edge: ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %ppt_get_vce_state_table_entry_v1_0.exit

do.end.i:                                         ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.99) #11
  br label %ppt_get_vce_state_table_entry_v1_0.exit

do.end15.i:                                       ; preds = %get_powerplay_table.exit.i134
  %usMMDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i.i, i32 0, i32 20
  %82 = ptrtoint ptr %usMMDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %usMMDependencyTableOffset.i, align 1
  %84 = call i16 @llvm.bswap.i16(i16 %83) #7
  %conv5.i = zext i16 %84 to i32
  %add6.i = add i32 %conv5.i, %71
  %85 = inttoptr i32 %add6.i to ptr
  %usSclkDependencyTableOffset.i = getelementptr inbounds %struct._ATOM_Tonga_POWERPLAYTABLE, ptr %table_address.0.i.i, i32 0, i32 17
  %86 = ptrtoint ptr %usSclkDependencyTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %usSclkDependencyTableOffset.i, align 1
  %88 = call i16 @llvm.bswap.i16(i16 %87) #7
  %conv1.i137 = zext i16 %88 to i32
  %add2.i = add i32 %conv1.i137, %71
  %89 = inttoptr i32 %add2.i to ptr
  %entries.i = getelementptr inbounds %struct._ATOM_Tonga_VCE_State_Table, ptr %75, i32 0, i32 2
  %mul.i = shl i32 %j.0150, 2
  %add.ptr.i138 = getelementptr i8, ptr %entries.i, i32 %mul.i
  %entries16.i = getelementptr inbounds %struct._ATOM_Tonga_SCLK_Dependency_Table, ptr %89, i32 0, i32 2
  %ucSCLKIndex.i = getelementptr inbounds %struct._ATOM_Tonga_VCE_State_Record, ptr %add.ptr.i138, i32 0, i32 2
  %90 = ptrtoint ptr %ucSCLKIndex.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ucSCLKIndex.i, align 1
  %conv17.i = zext i8 %91 to i32
  %mul18.i = mul nuw nsw i32 %conv17.i, 11
  %add.ptr19.i = getelementptr i8, ptr %entries16.i, i32 %mul18.i
  %entries20.i = getelementptr inbounds %struct._ATOM_Tonga_MM_Dependency_Table, ptr %85, i32 0, i32 2
  %92 = ptrtoint ptr %add.ptr.i138 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr.i138, align 1
  %conv21.i = zext i8 %93 to i32
  %mul22.i = mul nuw nsw i32 %conv21.i, 23
  %add.ptr23.i = getelementptr i8, ptr %entries20.i, i32 %mul22.i
  %ulEClk.i = getelementptr inbounds %struct._ATOM_Tonga_MM_Dependency_Record, ptr %add.ptr23.i, i32 0, i32 4
  %94 = ptrtoint ptr %ulEClk.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %ulEClk.i, align 1
  %96 = call i32 @llvm.bswap.i32(i32 %95) #7
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx, align 4
  %98 = ptrtoint ptr %ulEClk.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %ulEClk.i, align 1
  %100 = call i32 @llvm.bswap.i32(i32 %99) #7
  %ecclk.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 16, i32 %j.0150, i32 1
  %101 = ptrtoint ptr %ecclk.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %ecclk.i, align 4
  %ulSclk.i = getelementptr inbounds %struct._ATOM_Tonga_SCLK_Dependency_Record, ptr %add.ptr19.i, i32 0, i32 2
  %102 = ptrtoint ptr %ulSclk.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %ulSclk.i, align 1
  %104 = call i32 @llvm.bswap.i32(i32 %103) #7
  %sclk.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 16, i32 %j.0150, i32 2
  %105 = ptrtoint ptr %sclk.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %sclk.i, align 4
  %ucMCLKIndex.i = getelementptr inbounds %struct._ATOM_Tonga_VCE_State_Record, ptr %add.ptr.i138, i32 0, i32 3
  %106 = ptrtoint ptr %ucMCLKIndex.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ucMCLKIndex.i, align 1
  %ucNumEntries27.i = getelementptr inbounds %struct._ATOM_Tonga_MCLK_Dependency_Table, ptr %79, i32 0, i32 1
  %108 = ptrtoint ptr %ucNumEntries27.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %ucNumEntries27.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %109)
  %cmp29.not.i = icmp ult i8 %107, %109
  br i1 %cmp29.not.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv28.i = zext i8 %109 to i32
  %entries32.i = getelementptr inbounds %struct._ATOM_Tonga_MCLK_Dependency_Table, ptr %79, i32 0, i32 2
  %110 = mul nuw nsw i32 %conv28.i, 13
  %mul35.i = add nsw i32 %110, -13
  %add.ptr36.i = getelementptr i8, ptr %entries32.i, i32 %mul35.i
  br label %if.end42.i

if.else.i:                                        ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv26.i = zext i8 %107 to i32
  %entries37.i = getelementptr inbounds %struct._ATOM_Tonga_MCLK_Dependency_Table, ptr %79, i32 0, i32 2
  %mul40.i = mul nuw nsw i32 %conv26.i, 13
  %add.ptr41.i = getelementptr i8, ptr %entries37.i, i32 %mul40.i
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i, %if.then31.i
  %mclk_dep_record.0.i = phi ptr [ %add.ptr36.i, %if.then31.i ], [ %add.ptr41.i, %if.else.i ]
  %ulMclk.i = getelementptr inbounds %struct._ATOM_Tonga_MCLK_Dependency_Record, ptr %mclk_dep_record.0.i, i32 0, i32 4
  %111 = ptrtoint ptr %ulMclk.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %ulMclk.i, align 1
  %113 = call i32 @llvm.bswap.i32(i32 %112) #7
  %mclk.i = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 16, i32 %j.0150, i32 3
  %114 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %mclk.i, align 4
  br label %ppt_get_vce_state_table_entry_v1_0.exit

ppt_get_vce_state_table_entry_v1_0.exit:          ; preds = %if.end42.i, %do.end.i, %if.then.i136.ppt_get_vce_state_table_entry_v1_0.exit_crit_edge
  %inc = add nuw nsw i32 %j.0150, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %ppt_get_vce_state_table_entry_v1_0.exit.cleanup_crit_edge, label %ppt_get_vce_state_table_entry_v1_0.exit.for.body_crit_edge

ppt_get_vce_state_table_entry_v1_0.exit.for.body_crit_edge: ; preds = %ppt_get_vce_state_table_entry_v1_0.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

ppt_get_vce_state_table_entry_v1_0.exit.cleanup_crit_edge: ; preds = %ppt_get_vce_state_table_entry_v1_0.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %ppt_get_vce_state_table_entry_v1_0.exit.cleanup_crit_edge, %ppt_get_num_of_vce_state_table_entries_v1_0.exit.cleanup_crit_edge, %ppt_get_num_of_vce_state_table_entries_v1_0.exit.thread, %do.end58, %if.then52.cleanup_crit_edge, %do.end40, %if.then34.cleanup_crit_edge, %do.end23, %if.then17.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %do.end23 ], [ -1, %if.then17.cleanup_crit_edge ], [ -1, %do.end40 ], [ -1, %if.then34.cleanup_crit_edge ], [ -1, %do.end58 ], [ -1, %if.then52.cleanup_crit_edge ], [ %result.1, %ppt_get_num_of_vce_state_table_entries_v1_0.exit.cleanup_crit_edge ], [ %result.1, %ppt_get_num_of_vce_state_table_entries_v1_0.exit.thread ], [ %result.1, %ppt_get_vce_state_table_entry_v1_0.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_vddc_lookup_table(ptr nocapture noundef writeonly %lookup_table, ptr nocapture noundef readonly %vddc_lookup_pp_tables) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ucNumEntries = getelementptr inbounds %struct._ATOM_Tonga_Voltage_Lookup_Table, ptr %vddc_lookup_pp_tables, i32 0, i32 1
  %0 = ptrtoint ptr %ucNumEntries to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ucNumEntries, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.then, label %do.end7

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @get_vddc_lookup_table._rs, ptr noundef nonnull @__func__.get_vddc_lookup_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.98) #11
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 164) #10
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %do.end7.cleanup_crit_edge, label %if.end12

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %3 = ptrtoint ptr %ucNumEntries to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ucNumEntries, align 1
  %conv14 = zext i8 %4 to i32
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv14, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp171.not = icmp eq i8 %4, 0
  br i1 %cmp171.not, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %entries = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_table, ptr %call7.i.i, i32 0, i32 1
  %entries19 = getelementptr inbounds %struct._ATOM_Tonga_Voltage_Lookup_Table, ptr %vddc_lookup_pp_tables, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = mul nuw nsw i32 %i.02, 10
  %add.ptr = getelementptr i8, ptr %entries, i32 %mul
  %mul20 = shl i32 %i.02, 3
  %add.ptr21 = getelementptr i8, ptr %entries19, i32 %mul20
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %add.ptr, align 2
  %7 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr21, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %us_vdd = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, ptr %add.ptr, i32 0, i32 1
  %10 = ptrtoint ptr %us_vdd to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %us_vdd, align 2
  %usCACLow = getelementptr inbounds %struct._ATOM_Tonga_Voltage_Lookup_Record, ptr %add.ptr21, i32 0, i32 1
  %11 = ptrtoint ptr %usCACLow to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %usCACLow, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %us_cac_low = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, ptr %add.ptr, i32 0, i32 2
  %14 = ptrtoint ptr %us_cac_low to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %us_cac_low, align 2
  %usCACMid = getelementptr inbounds %struct._ATOM_Tonga_Voltage_Lookup_Record, ptr %add.ptr21, i32 0, i32 2
  %15 = ptrtoint ptr %usCACMid to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %usCACMid, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %us_cac_mid = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, ptr %add.ptr, i32 0, i32 3
  %18 = ptrtoint ptr %us_cac_mid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %us_cac_mid, align 2
  %usCACHigh = getelementptr inbounds %struct._ATOM_Tonga_Voltage_Lookup_Record, ptr %add.ptr21, i32 0, i32 3
  %19 = ptrtoint ptr %usCACHigh to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usCACHigh, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %us_cac_high = getelementptr inbounds %struct.phm_ppt_v1_voltage_lookup_record, ptr %add.ptr, i32 0, i32 4
  %22 = ptrtoint ptr %us_cac_high to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %us_cac_high, align 2
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, %conv14
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end12.for.end_crit_edge
  %23 = ptrtoint ptr %lookup_table to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %lookup_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end7.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %do.end ], [ 1, %if.then.cleanup_crit_edge ], [ -12, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smu_atom_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !189, !191, !192, !193, !194, !195, !197, !198, !199, !200}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @pptable_v1_0_funcs, !1, !"pptable_v1_0_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1237, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1247, i32 2}
!4 = !{ptr @get_number_of_powerplay_table_entries_v1_0._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.get_number_of_powerplay_table_entries_v1_0, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @get_number_of_powerplay_table_entries_v1_0._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @get_number_of_powerplay_table_entries_v1_0._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @get_number_of_powerplay_table_entries_v1_0._rs.4, !12, !"_rs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1249, i32 2}
!13 = !{ptr @get_number_of_powerplay_table_entries_v1_0._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @get_number_of_powerplay_table_entries_v1_0._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @get_powerplay_table_entry_v1_0._rs, !17, !"_rs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1380, i32 2}
!18 = !{ptr @__func__.get_powerplay_table_entry_v1_0, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @get_powerplay_table_entry_v1_0._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @get_powerplay_table_entry_v1_0._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @get_powerplay_table_entry_v1_0._rs.8, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1388, i32 3}
!23 = !{ptr @get_powerplay_table_entry_v1_0._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @get_powerplay_table_entry_v1_0._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @get_powerplay_table_entry_v1_0._rs.12, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1390, i32 3}
!28 = !{ptr @get_powerplay_table_entry_v1_0._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @get_powerplay_table_entry_v1_0._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @get_powerplay_table_entry_v1_0._rs.16, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1392, i32 3}
!33 = !{ptr @get_powerplay_table_entry_v1_0._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @get_powerplay_table_entry_v1_0._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pp_tables_v1_0_initialize._rs, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1148, i32 2}
!38 = !{ptr @__func__.pp_tables_v1_0_initialize, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pp_tables_v1_0_initialize._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @pp_tables_v1_0_initialize._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pp_tables_v1_0_initialize._rs.21, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1153, i32 2}
!44 = !{ptr @pp_tables_v1_0_initialize._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pp_tables_v1_0_initialize._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @pp_tables_v1_0_initialize._rs.24, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1158, i32 2}
!48 = !{ptr @pp_tables_v1_0_initialize._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pp_tables_v1_0_initialize._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1164, i32 2}
!53 = !{ptr @pp_tables_v1_0_initialize._entry.29, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pp_tables_v1_0_initialize._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @pp_tables_v1_0_initialize._rs.32, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1169, i32 2}
!58 = !{ptr @pp_tables_v1_0_initialize._entry.33, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pp_tables_v1_0_initialize._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"_rs", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1174, i32 2}
!63 = !{ptr @pp_tables_v1_0_initialize._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @pp_tables_v1_0_initialize._entry_ptr.38, !62, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pp_tables_v1_0_initialize._rs.40, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1179, i32 2}
!68 = !{ptr @pp_tables_v1_0_initialize._entry.41, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pp_tables_v1_0_initialize._entry_ptr.42, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.43, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @pp_tables_v1_0_initialize._rs.44, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1184, i32 2}
!73 = !{ptr @pp_tables_v1_0_initialize._entry.45, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @pp_tables_v1_0_initialize._entry_ptr.46, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.47, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @check_powerplay_tables._rs, !77, !"_rs", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1128, i32 2}
!78 = !{ptr @__func__.check_powerplay_tables, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @check_powerplay_tables._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @check_powerplay_tables._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @check_powerplay_tables._rs.49, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1131, i32 2}
!84 = !{ptr @check_powerplay_tables._entry.50, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @check_powerplay_tables._entry_ptr.51, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.52, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @check_powerplay_tables._rs.53, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1133, i32 2}
!89 = !{ptr @check_powerplay_tables._entry.54, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @check_powerplay_tables._entry_ptr.55, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.56, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @check_powerplay_tables._rs.57, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1135, i32 2}
!94 = !{ptr @check_powerplay_tables._entry.58, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @check_powerplay_tables._entry_ptr.59, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @set_platform_caps._rs, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 57, i32 2}
!98 = !{ptr @__func__.set_platform_caps, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @set_platform_caps._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @set_platform_caps._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.60, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @set_platform_caps._rs.61, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 59, i32 2}
!104 = !{ptr @set_platform_caps._entry.62, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @set_platform_caps._entry_ptr.63, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.64, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @set_platform_caps._rs.65, !108, !"_rs", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 61, i32 2}
!109 = !{ptr @set_platform_caps._entry.66, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @set_platform_caps._entry_ptr.67, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.68, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @set_platform_caps._rs.69, !113, !"_rs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 63, i32 2}
!114 = !{ptr @set_platform_caps._entry.70, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @set_platform_caps._entry_ptr.71, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.72, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @set_platform_caps._rs.73, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 65, i32 2}
!119 = !{ptr @set_platform_caps._entry.74, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @set_platform_caps._entry_ptr.75, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.76, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @init_thermal_controller._rs, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 919, i32 2}
!124 = !{ptr @__func__.init_thermal_controller, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @init_thermal_controller._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @init_thermal_controller._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.77, !123, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"_rs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 953, i32 2}
!130 = !{ptr @init_thermal_controller._entry.79, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @init_thermal_controller._entry_ptr.80, !129, !"_entry_ptr", i1 false, i1 false}
!132 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @init_thermal_controller._rs.82, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 955, i32 2}
!135 = !{ptr @init_thermal_controller._entry.83, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @init_thermal_controller._entry_ptr.84, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.85, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @get_mm_clock_voltage_table._rs, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 725, i32 2}
!140 = !{ptr @__func__.get_mm_clock_voltage_table, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @get_mm_clock_voltage_table._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @get_mm_clock_voltage_table._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @get_sclk_voltage_dependency_table._rs, !144, !"_rs", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 415, i32 3}
!145 = !{ptr @__func__.get_sclk_voltage_dependency_table, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @get_sclk_voltage_dependency_table._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @get_sclk_voltage_dependency_table._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @get_sclk_voltage_dependency_table._rs.86, !149, !"_rs", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 444, i32 3}
!150 = !{ptr @get_sclk_voltage_dependency_table._entry.87, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @get_sclk_voltage_dependency_table._entry_ptr.88, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @get_mclk_voltage_dependency_table._rs, !153, !"_rs", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 371, i32 2}
!154 = !{ptr @__func__.get_mclk_voltage_dependency_table, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @get_mclk_voltage_dependency_table._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @get_mclk_voltage_dependency_table._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @get_pcie_table._rs, !158, !"_rs", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 491, i32 3}
!159 = !{ptr @__func__.get_pcie_table, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @get_pcie_table._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @get_pcie_table._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.90, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 508, i32 4}
!164 = !{ptr @get_pcie_table._entry.89, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @get_pcie_table._entry_ptr.91, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @get_pcie_table._rs.92, !167, !"_rs", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 528, i32 3}
!168 = !{ptr @get_pcie_table._entry.93, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @get_pcie_table._entry_ptr.94, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @get_pcie_table._entry.95, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 545, i32 4}
!172 = !{ptr @get_pcie_table._entry_ptr.96, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @get_hard_limits._rs, !174, !"_rs", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 348, i32 2}
!175 = !{ptr @__func__.get_hard_limits, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @get_hard_limits._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @get_hard_limits._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = distinct !{null, !179, !"_rs", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 321, i32 2}
!180 = !{ptr @__func__.get_valid_clk, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @get_valid_clk._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @get_valid_clk._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @get_gpio_table._rs, !184, !"_rs", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 771, i32 3}
!185 = !{ptr @__func__.get_gpio_table, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @get_gpio_table._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @get_gpio_table._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @get_vddc_lookup_table._rs, !190, !"_rs", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 165, i32 2}
!191 = !{ptr @__func__.get_vddc_lookup_table, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @get_vddc_lookup_table._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @get_vddc_lookup_table._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @ppt_get_vce_state_table_entry_v1_0._rs, !196, !"_rs", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c", i32 1323, i32 2}
!197 = !{ptr @__func__.ppt_get_vce_state_table_entry_v1_0, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @ppt_get_vce_state_table_entry_v1_0._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @ppt_get_vce_state_table_entry_v1_0._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.99, !196, !"<string literal>", i1 false, i1 false}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{!"auto-init"}
