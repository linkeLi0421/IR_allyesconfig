; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/smu7_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.PWR_Command_Table = type { i32, i32 }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.cgs_firmware_info = type { i16, i16, i16, i32, i64, i32, ptr, i8 }
%struct.smu7_smumgr = type { %struct.smu7_buffer_entry, %struct.smu7_buffer_entry, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.smu7_buffer_entry = type { i32, i64, ptr, ptr }
%struct.SMU_DRAMData_TOC = type { i32, i32, [12 x %struct.SMU_Entry] }
%struct.SMU_Entry = type { i16, i16, i32, i32, i32, i32, i32, i16, i16 }
%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PWR_DFY_Section = type { i32, i32, i32, i32, [0 x i32] }

@smu7_copy_bytes_from_smc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smu7_copy_bytes_from_smc = private unnamed_addr constant [25 x i8] c"smu7_copy_bytes_from_smc\00", align 1
@smu7_copy_bytes_from_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_copy_bytes_from_smc, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\014amdgpu: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c\00", [32 x i8] zeroinitializer }, align 32
@smu7_copy_bytes_from_smc._entry_ptr = internal global ptr @smu7_copy_bytes_from_smc._entry, section ".printk_index", align 4
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SMC address must be 4 byte aligned.\00", [60 x i8] zeroinitializer }, align 32
@smu7_copy_bytes_from_smc._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_copy_bytes_from_smc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_copy_bytes_from_smc, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_copy_bytes_from_smc._entry_ptr.6 = internal global ptr @smu7_copy_bytes_from_smc._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SMC address is beyond the SMC RAM area.\00", [56 x i8] zeroinitializer }, align 32
@smu7_copy_bytes_to_smc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu7_copy_bytes_to_smc = private unnamed_addr constant [23 x i8] c"smu7_copy_bytes_to_smc\00", align 1
@smu7_copy_bytes_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_copy_bytes_to_smc, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_copy_bytes_to_smc._entry_ptr = internal global ptr @smu7_copy_bytes_to_smc._entry, section ".printk_index", align 4
@smu7_copy_bytes_to_smc._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_copy_bytes_to_smc._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_copy_bytes_to_smc, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_copy_bytes_to_smc._entry_ptr.10 = internal global ptr @smu7_copy_bytes_to_smc._entry.9, section ".printk_index", align 4
@smu7_program_jump_on_start.data = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\E0\00\80@", [28 x i8] zeroinitializer }, align 32
@smu7_send_msg_to_smc.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smu7_send_msg_to_smc\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"last message was not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: last message was not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@smu7_send_msg_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016amdgpu: \0A last message was failed ret is %d\0A\00", [49 x i8] zeroinitializer }, align 32
@smu7_send_msg_to_smc._entry_ptr = internal global ptr @smu7_send_msg_to_smc._entry, section ".printk_index", align 4
@smu7_send_msg_to_smc.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"message %x was not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: message %x was not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@smu7_send_msg_to_smc._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016amdgpu: \0A failed to send message %x ret is %d \0A\00", [46 x i8] zeroinitializer }, align 32
@smu7_send_msg_to_smc._entry_ptr.20 = internal global ptr @smu7_send_msg_to_smc._entry.18, section ".printk_index", align 4
@__func__.smu7_request_smu_load_fw = private unnamed_addr constant [25 x i8] c"smu7_request_smu_load_fw\00", align 1
@smu7_request_smu_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr = internal global ptr @smu7_request_smu_load_fw._entry, section ".printk_index", align 4
@smu7_request_smu_load_fw._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr.24 = internal global ptr @smu7_request_smu_load_fw._entry.23, section ".printk_index", align 4
@smu7_request_smu_load_fw._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr.27 = internal global ptr @smu7_request_smu_load_fw._entry.26, section ".printk_index", align 4
@smu7_request_smu_load_fw._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr.30 = internal global ptr @smu7_request_smu_load_fw._entry.29, section ".printk_index", align 4
@smu7_request_smu_load_fw._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr.33 = internal global ptr @smu7_request_smu_load_fw._entry.32, section ".printk_index", align 4
@smu7_request_smu_load_fw._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr.36 = internal global ptr @smu7_request_smu_load_fw._entry.35, section ".printk_index", align 4
@smu7_request_smu_load_fw._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr.39 = internal global ptr @smu7_request_smu_load_fw._entry.38, section ".printk_index", align 4
@smu7_request_smu_load_fw._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr.42 = internal global ptr @smu7_request_smu_load_fw._entry.41, section ".printk_index", align 4
@smu7_request_smu_load_fw._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr.45 = internal global ptr @smu7_request_smu_load_fw._entry.44, section ".printk_index", align 4
@smu7_request_smu_load_fw._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr.48 = internal global ptr @smu7_request_smu_load_fw._entry.47, section ".printk_index", align 4
@smu7_request_smu_load_fw._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.smu7_request_smu_load_fw, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013amdgpu: SMU load firmware failed\0A\00", [60 x i8] zeroinitializer }, align 32
@smu7_request_smu_load_fw._entry_ptr.51 = internal global ptr @smu7_request_smu_load_fw._entry.49, section ".printk_index", align 4
@pwr_virus_table_pre = internal constant { [206 x %struct.PWR_Command_Table], [400 x i8] } { [206 x %struct.PWR_Command_Table] [%struct.PWR_Command_Table { i32 0, i32 60416 }, %struct.PWR_Command_Table { i32 2, i32 60544 }, %struct.PWR_Command_Table { i32 352321536, i32 8630 }, %struct.PWR_Command_Table { i32 1342177280, i32 8333 }, %struct.PWR_Command_Table { i32 -2147483644, i32 12320 }, %struct.PWR_Command_Table { i32 138444810, i32 12353 }, %struct.PWR_Command_Table { i32 -217055473, i32 11136 }, %struct.PWR_Command_Table { i32 2, i32 11140 }, %struct.PWR_Command_Table { i32 255, i32 11013 }, %struct.PWR_Command_Table { i32 1410330624, i32 12473 }, %struct.PWR_Command_Table { i32 180, i32 12474 }, %struct.PWR_Command_Table { i32 65536, i32 63514 }, %struct.PWR_Command_Table { i32 269173, i32 63515 }, %struct.PWR_Command_Table { i32 463080, i32 63515 }, %struct.PWR_Command_Table { i32 594141, i32 63515 }, %struct.PWR_Command_Table { i32 659585, i32 63515 }, %struct.PWR_Command_Table { i32 721263, i32 63515 }, %struct.PWR_Command_Table { i32 790076, i32 63515 }, %struct.PWR_Command_Table { i32 856300, i32 63515 }, %struct.PWR_Command_Table { i32 917896, i32 63515 }, %struct.PWR_Command_Table { i32 1055581, i32 63515 }, %struct.PWR_Command_Table { i32 1378924, i32 63515 }, %struct.PWR_Command_Table { i32 1510494, i32 63515 }, %struct.PWR_Command_Table { i32 1903756, i32 63515 }, %struct.PWR_Command_Table { i32 1969406, i32 63515 }, %struct.PWR_Command_Table { i32 2233352, i32 63515 }, %struct.PWR_Command_Table { i32 3607931, i32 63515 }, %struct.PWR_Command_Table { i32 3739083, i32 63515 }, %struct.PWR_Command_Table { i32 3937327, i32 63515 }, %struct.PWR_Command_Table { i32 4131623, i32 63515 }, %struct.PWR_Command_Table { i32 4197987, i32 63515 }, %struct.PWR_Command_Table { i32 5246818, i32 63515 }, %struct.PWR_Command_Table { i32 4591527, i32 63515 }, %struct.PWR_Command_Table { i32 4788135, i32 63515 }, %struct.PWR_Command_Table { i32 5771732, i32 63515 }, %struct.PWR_Command_Table { i32 6818518, i32 63515 }, %struct.PWR_Command_Table { i32 7736064, i32 63515 }, %struct.PWR_Command_Table { i32 7867148, i32 63515 }, %struct.PWR_Command_Table { i32 7932663, i32 63515 }, %struct.PWR_Command_Table { i32 8198842, i32 63515 }, %struct.PWR_Command_Table { i32 8264382, i32 63515 }, %struct.PWR_Command_Table { i32 5837408, i32 63515 }, %struct.PWR_Command_Table { i32 5903099, i32 63515 }, %struct.PWR_Command_Table { i32 8788679, i32 63515 }, %struct.PWR_Command_Table { i32 9181953, i32 63515 }, %struct.PWR_Command_Table { i32 9247540, i32 63515 }, %struct.PWR_Command_Table { i32 10491065, i32 63515 }, %struct.PWR_Command_Table { i32 10556718, i32 63515 }, %struct.PWR_Command_Table { i32 10622715, i32 63515 }, %struct.PWR_Command_Table { i32 10754192, i32 63515 }, %struct.PWR_Command_Table { i32 10688774, i32 63515 }, %struct.PWR_Command_Table { i32 10816276, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 6427527, i32 63515 }, %struct.PWR_Command_Table { i32 6032167, i32 63515 }, %struct.PWR_Command_Table { i32 1444469, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 983402, i32 63515 }, %struct.PWR_Command_Table { i32 65536, i32 63516 }, %struct.PWR_Command_Table { i32 269173, i32 63517 }, %struct.PWR_Command_Table { i32 463080, i32 63517 }, %struct.PWR_Command_Table { i32 594141, i32 63517 }, %struct.PWR_Command_Table { i32 659585, i32 63517 }, %struct.PWR_Command_Table { i32 721263, i32 63517 }, %struct.PWR_Command_Table { i32 790076, i32 63517 }, %struct.PWR_Command_Table { i32 856300, i32 63517 }, %struct.PWR_Command_Table { i32 917896, i32 63517 }, %struct.PWR_Command_Table { i32 1055581, i32 63517 }, %struct.PWR_Command_Table { i32 1378924, i32 63517 }, %struct.PWR_Command_Table { i32 1510494, i32 63517 }, %struct.PWR_Command_Table { i32 1903756, i32 63517 }, %struct.PWR_Command_Table { i32 1969406, i32 63517 }, %struct.PWR_Command_Table { i32 2233352, i32 63517 }, %struct.PWR_Command_Table { i32 3607931, i32 63517 }, %struct.PWR_Command_Table { i32 3739083, i32 63517 }, %struct.PWR_Command_Table { i32 3937327, i32 63517 }, %struct.PWR_Command_Table { i32 4131623, i32 63517 }, %struct.PWR_Command_Table { i32 4197987, i32 63517 }, %struct.PWR_Command_Table { i32 5246818, i32 63517 }, %struct.PWR_Command_Table { i32 4591527, i32 63517 }, %struct.PWR_Command_Table { i32 4788135, i32 63517 }, %struct.PWR_Command_Table { i32 5771732, i32 63517 }, %struct.PWR_Command_Table { i32 6818518, i32 63517 }, %struct.PWR_Command_Table { i32 7736064, i32 63517 }, %struct.PWR_Command_Table { i32 7867148, i32 63517 }, %struct.PWR_Command_Table { i32 7932663, i32 63517 }, %struct.PWR_Command_Table { i32 8198842, i32 63517 }, %struct.PWR_Command_Table { i32 8264382, i32 63517 }, %struct.PWR_Command_Table { i32 5837408, i32 63517 }, %struct.PWR_Command_Table { i32 5903099, i32 63517 }, %struct.PWR_Command_Table { i32 8788679, i32 63517 }, %struct.PWR_Command_Table { i32 9181953, i32 63517 }, %struct.PWR_Command_Table { i32 9247540, i32 63517 }, %struct.PWR_Command_Table { i32 10491065, i32 63517 }, %struct.PWR_Command_Table { i32 10556718, i32 63517 }, %struct.PWR_Command_Table { i32 10622715, i32 63517 }, %struct.PWR_Command_Table { i32 10754192, i32 63517 }, %struct.PWR_Command_Table { i32 10688774, i32 63517 }, %struct.PWR_Command_Table { i32 10816276, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 6427527, i32 63517 }, %struct.PWR_Command_Table { i32 6032167, i32 63517 }, %struct.PWR_Command_Table { i32 1444469, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 983402, i32 63517 }, %struct.PWR_Command_Table { i32 0, i32 -1 }], [400 x i8] zeroinitializer }, align 32
@pwr_virus_table_post = internal constant { [288 x %struct.PWR_Command_Table], [576 x i8] } { [288 x %struct.PWR_Command_Table] [%struct.PWR_Command_Table { i32 0, i32 8333 }, %struct.PWR_Command_Table { i32 0, i32 8333 }, %struct.PWR_Command_Table { i32 4, i32 913 }, %struct.PWR_Command_Table { i32 1410428672, i32 12869 }, %struct.PWR_Command_Table { i32 180, i32 12870 }, %struct.PWR_Command_Table { i32 -1269559313, i32 12877 }, %struct.PWR_Command_Table { i32 0, i32 12878 }, %struct.PWR_Command_Table { i32 1410330144, i32 12882 }, %struct.PWR_Command_Table { i32 180, i32 12883 }, %struct.PWR_Command_Table { i32 21249, i32 12873 }, %struct.PWR_Command_Table { i32 65536, i32 12872 }, %struct.PWR_Command_Table { i32 -936278775, i32 12886 }, %struct.PWR_Command_Table { i32 5, i32 913 }, %struct.PWR_Command_Table { i32 1410429696, i32 12869 }, %struct.PWR_Command_Table { i32 180, i32 12870 }, %struct.PWR_Command_Table { i32 -1269559313, i32 12877 }, %struct.PWR_Command_Table { i32 0, i32 12878 }, %struct.PWR_Command_Table { i32 1410330144, i32 12882 }, %struct.PWR_Command_Table { i32 180, i32 12883 }, %struct.PWR_Command_Table { i32 21249, i32 12873 }, %struct.PWR_Command_Table { i32 65536, i32 12872 }, %struct.PWR_Command_Table { i32 -936278775, i32 12886 }, %struct.PWR_Command_Table { i32 6, i32 913 }, %struct.PWR_Command_Table { i32 1410430720, i32 12869 }, %struct.PWR_Command_Table { i32 180, i32 12870 }, %struct.PWR_Command_Table { i32 -1269559313, i32 12877 }, %struct.PWR_Command_Table { i32 0, i32 12878 }, %struct.PWR_Command_Table { i32 1410330144, i32 12882 }, %struct.PWR_Command_Table { i32 180, i32 12883 }, %struct.PWR_Command_Table { i32 21249, i32 12873 }, %struct.PWR_Command_Table { i32 65536, i32 12872 }, %struct.PWR_Command_Table { i32 -936278775, i32 12886 }, %struct.PWR_Command_Table { i32 7, i32 913 }, %struct.PWR_Command_Table { i32 1410431744, i32 12869 }, %struct.PWR_Command_Table { i32 180, i32 12870 }, %struct.PWR_Command_Table { i32 -1269559313, i32 12877 }, %struct.PWR_Command_Table { i32 0, i32 12878 }, %struct.PWR_Command_Table { i32 1410330144, i32 12882 }, %struct.PWR_Command_Table { i32 180, i32 12883 }, %struct.PWR_Command_Table { i32 21249, i32 12873 }, %struct.PWR_Command_Table { i32 65536, i32 12872 }, %struct.PWR_Command_Table { i32 -936278775, i32 12886 }, %struct.PWR_Command_Table { i32 4, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 260, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 516, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 772, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1028, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1284, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1540, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1796, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 5, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 261, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 517, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 773, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1029, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1285, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1541, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1797, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 6, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 262, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 518, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 774, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1030, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1286, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1542, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1798, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 7, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 263, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 519, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 775, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1031, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1287, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1543, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1799, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 8, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 264, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 520, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 776, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1032, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1288, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1544, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1800, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 9, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 265, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 521, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 777, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1033, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1289, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1545, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 1801, i32 913 }, %struct.PWR_Command_Table { i32 0, i32 12871 }, %struct.PWR_Command_Table { i32 0, i32 12879 }, %struct.PWR_Command_Table { i32 0, i32 12885 }, %struct.PWR_Command_Table { i32 1, i32 12871 }, %struct.PWR_Command_Table { i32 4, i32 913 }, %struct.PWR_Command_Table { i32 16843009, i32 12420 }, %struct.PWR_Command_Table { i32 0, i32 8196 }, %struct.PWR_Command_Table { i32 0, i32 8196 }, %struct.PWR_Command_Table { i32 0, i32 8196 }, %struct.PWR_Command_Table { i32 0, i32 -1 }], [576 x i8] zeroinitializer }, align 32
@smu7_set_smc_sram_address._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu7_set_smc_sram_address = private unnamed_addr constant [26 x i8] c"smu7_set_smc_sram_address\00", align 1
@smu7_set_smc_sram_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_set_smc_sram_address, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_set_smc_sram_address._entry_ptr = internal global ptr @smu7_set_smc_sram_address._entry, section ".printk_index", align 4
@smu7_set_smc_sram_address._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_set_smc_sram_address._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_set_smc_sram_address, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_set_smc_sram_address._entry_ptr.54 = internal global ptr @smu7_set_smc_sram_address._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SMC addr is beyond the SMC RAM area.\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smu7_upload_smc_firmware_data._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smu7_upload_smc_firmware_data = private unnamed_addr constant [30 x i8] c"smu7_upload_smc_firmware_data\00", align 1
@smu7_upload_smc_firmware_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_upload_smc_firmware_data, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_upload_smc_firmware_data._entry_ptr = internal global ptr @smu7_upload_smc_firmware_data._entry, section ".printk_index", align 4
@smu7_upload_smc_firmware_data._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smu7_upload_smc_firmware_data._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smu7_upload_smc_firmware_data, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu7_upload_smc_firmware_data._entry_ptr.58 = internal global ptr @smu7_upload_smc_firmware_data._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SMC size must be divisible by 4.\00", [63 x i8] zeroinitializer }, align 32
@pwr_virus_section1 = internal constant { { i32, i32, i32, i32, <{ [404 x i32], [12 x i32] }> }, [432 x i8] } { { i32, i32, i32, i32, <{ [404 x i32], [12 x i32] }> } { i32 -2147483644, i32 180, i32 1410328576, i32 416, <{ [404 x i32], [12 x i32] }> <{ [404 x i32] [i32 2113929728, i32 2114060801, i32 2114191876, i32 2114322949, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 168296706, i32 168429313, i32 168296706, i32 168429313, i32 168297728, i32 168428291, i32 168297728, i32 168428291, i32 -1082064896, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1410363136, i32 262324, i32 16384, i32 8409004], [12 x i32] zeroinitializer }> }, [432 x i8] zeroinitializer }, align 32
@pwr_virus_section2 = internal constant { { i32, i32, i32, i32, <{ i32, i32, i32, i32, i32, [11 x i32] }> }, [48 x i8] } { { i32, i32, i32, i32, <{ i32, i32, i32, i32, i32, [11 x i32] }> } { i32 -2147483644, i32 180, i32 1410330368, i32 16, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 -1073539838, i32 7680, i32 1, i32 1, i32 1, [11 x i32] zeroinitializer }> }, [48 x i8] zeroinitializer }, align 32
@pwr_virus_section3 = internal constant { { i32, i32, i32, i32, <{ [7425 x i32], [15 x i32] }> }, [7440 x i8] } { { i32, i32, i32, i32, <{ [7425 x i32], [15 x i32] }> } { i32 -2147483644, i32 180, i32 1410330624, i32 7440, <{ [7425 x i32], [15 x i32] }> <{ [7425 x i32] [i32 -1004273653, i32 -2147483323, i32 -1803550719, i32 -1799356415, i32 -1795162111, i32 -1790967807, i32 -1786773503, i32 -595525632, i32 -591331328, i32 -587137024, i32 -582942720, i32 -578748416, i32 -1006108575, i32 -666894317, i32 -671088637, i32 -1005846527, i32 617414655, i32 1020297216, i32 -1795096579, i32 483459023, i32 2097250305, i32 -1005322236, i32 84672537, i32 -666894328, i32 -2067791872, i32 -2147483613, i32 -2147483545, i32 -2147483542, i32 -2147483539, i32 -2147483527, i32 -2147483516, i32 -2147483505, i32 -2147483495, i32 -2147483488, i32 -2147483473, i32 -666894253, i32 -1006108665, i32 948699137, i32 143130626, i32 68157443, i32 -1799356411, i32 -1736441853, i32 68157444, i32 -2147483603, i32 68157445, i32 -1946156993, i32 -1946156989, i32 684457984, i32 -859832240, i32 -1946156971, i32 671612929, i32 -872415228, i32 2105573377, i32 -666894317, i32 -662622024, i32 -851443704, i32 -602406912, i32 -602669056, i32 -602931200, i32 -603193344, i32 -864026619, i32 -603455488, i32 -2147483288, i32 -1005846514, i32 684457992, i32 -859832301, i32 -1879048192, i32 -855559560, i32 -1005505928, i32 -1795162111, i32 617350912, i32 -666894295, i32 -1005505963, i32 -855559601, i32 -1005505964, i32 487653343, i32 -855559596, i32 281804820, i32 487637015, i32 2098003978, i32 -666894317, i32 -666894328, i32 -855560009, i32 348913680, i32 -1879048192, i32 -641728458, i32 -2147483555, i32 -666894317, i32 -1072939008, i32 -859754315, i32 -1005846514, i32 684457992, i32 -859832301, i32 -1005846495, i32 349175825, i32 -1795096578, i32 -603783168, i32 -671088628, i32 -671088627, i32 -1005846434, i32 -1799349488, i32 -666894317, i32 -1879048192, i32 -1072824192, i32 -859754315, i32 -2147483333, i32 -1072822272, i32 -859754315, i32 -2147483333, i32 -666894253, i32 68157446, i32 -1946156993, i32 -1946156989, i32 684457984, i32 -859832240, i32 -1946156971, i32 671875080, i32 -859832238, i32 -671088607, i32 672661561, i32 -2147483596, i32 -666894253, i32 68157447, i32 -1946156993, i32 -1946156989, i32 684457985, i32 -859832240, i32 -1946156971, i32 671875088, i32 -859832238, i32 672661561, i32 -2147483596, i32 -666894253, i32 68157448, i32 -1946156993, i32 -1946156989, i32 684457987, i32 -859832240, i32 -1946156971, i32 671875104, i32 -859832238, i32 672661561, i32 -2147483596, i32 -603783168, i32 -671088535, i32 671612929, i32 -1004011507, i32 2091417604, i32 -864026503, i32 69730305, i32 -872415121, i32 -2147483333, i32 -2147483596, i32 68157456, i32 -1946156993, i32 -1946156989, i32 -859832200, i32 -1946156971, i32 672661632, i32 -2147483596, i32 68157441, i32 -1005846514, i32 684457992, i32 -859832301, i32 -855559560, i32 -1005505928, i32 -1795162111, i32 -1072939008, i32 -1005505964, i32 487637015, i32 -666894317, i32 -666894328, i32 -859754315, i32 -855560009, i32 -2147483333, i32 -1782579199, i32 -1778384895, i32 -1774190591, i32 -1769996287, i32 -1765801983, i32 -1761607679, i32 -1757413375, i32 -1753219071, i32 -1749024767, i32 -595525632, i32 -1005846516, i32 -850656384, i32 -842267768, i32 1440481312, i32 -842267764, i32 -838073456, i32 1444937760, i32 -838073452, i32 -833879144, i32 1449394208, i32 -833879140, i32 -829684832, i32 1453850656, i32 -829684828, i32 -825490520, i32 1458307104, i32 -825490516, i32 -821296208, i32 1462763552, i32 -821296204, i32 -817101896, i32 1467220000, i32 -817101892, i32 -812907584, i32 1471676448, i32 -812907580, i32 -808713272, i32 1476132896, i32 -808713268, i32 -654311373, i32 -1004797943, i32 635174928, i32 -1782513666, i32 -666894317, i32 -1004797940, i32 98304047, i32 -842981367, i32 -1004724214, i32 -666894317, i32 -872341495, i32 -654311372, i32 635444224, i32 304087059, i32 635699968, i32 308543496, i32 635961536, i32 312999938, i32 636223551, i32 2116403210, i32 2125348874, i32 2112208906, i32 -574554112, i32 -1070669824, i32 -826162688, i32 -1005846433, i32 -859832265, i32 617611519, i32 823132166, i32 -1795161989, i32 -1946156656, i32 -602144768, i32 -666894317, i32 -842939904, i32 -1005846516, i32 -992017528, i32 -992541812, i32 1364459552, i32 2103296026, i32 -991755376, i32 -992541804, i32 1364459552, i32 2103574554, i32 -991493224, i32 -992541796, i32 1364459552, i32 2103853082, i32 -991231072, i32 -992541788, i32 1364459552, i32 2104131610, i32 -990968920, i32 -992541780, i32 1364459552, i32 2104410138, i32 -990706768, i32 -992541772, i32 1364459552, i32 2104688666, i32 -990444616, i32 -992541764, i32 1364459552, i32 2104967194, i32 -990182464, i32 -992541756, i32 1364459552, i32 2105245722, i32 -989920312, i32 -992541748, i32 1364459552, i32 2105524250, i32 -603455488, i32 -864026605, i32 -992541824, i32 -1006108671, i32 478674972, i32 -851443704, i32 -1005846397, i32 -1799356400, i32 -603062272, i32 -1799356402, i32 -1005846398, i32 617611265, i32 -1728053237, i32 416023011, i32 1020264452, i32 -1795162104, i32 -1005846395, i32 416022634, i32 -1732247547, i32 -1005846398, i32 416023011, i32 1020264452, i32 -1727987718, i32 -602406912, i32 -602669056, i32 -602931200, i32 -603193344, i32 -864026620, i32 -603455488, i32 -1879048192, i32 -1006108671, i32 478674972, i32 -851443704, i32 -602406912, i32 -602669056, i32 -602931200, i32 -603193344, i32 -864026620, i32 -603455488, i32 -1879048192, i32 -666894255, i32 -1004011508, i32 68681752, i32 845414402, i32 -1702887393, i32 -1707081698, i32 -847249389, i32 -1003933083, i32 67895296, i32 447479847, i32 715653248, i32 -830393755, i32 -1698693097, i32 -671087887, i32 67633154, i32 143130625, i32 -670563760, i32 -670563752, i32 -670563792, i32 -670563784, i32 -670563776, i32 -670563768, i32 -670563736, i32 -670563728, i32 -670563720, i32 -670563712, i32 -670563800, i32 -671087769, i32 -1736376333, i32 67633168, i32 143130625, i32 -670301431, i32 -670301415, i32 80478209, i32 -1736376324, i32 2084601857, i32 -2013265920, i32 -1072824064, i32 -666894317, i32 -666894328, i32 -859754315, i32 -2147483282, i32 -1005060046, i32 697827336, i32 -847249389, i32 -1786773503, i32 2084618241, i32 416284735, i32 617873439, i32 618135553, i32 358350849, i32 99090816, i32 -1728053237, i32 539754557, i32 -847249392, i32 -826199461, i32 -1003670949, i32 -1765801983, i32 -2038431744, i32 -2147483288, i32 -2147480921, i32 -2147480580, i32 -2147478807, i32 -1004535801, i32 169869313, i32 -838860784, i32 -2147476624, i32 2084618241, i32 -1946156656, i32 -1005584357, i32 -671088590, i32 -671088591, i32 -1728050918, i32 2084601857, i32 -2013265920, i32 617611519, i32 86507926, i32 416611844, i32 693370888, i32 -851443693, i32 -2038431744, i32 -2147483212, i32 -2147482837, i32 -2147482800, i32 -2147482798, i32 -2147482785, i32 -2147481855, i32 -2147482500, i32 -2147483233, i32 -2147481600, i32 -1004981669, i32 496500767, i32 -847170981, i32 -1946156993, i32 -1005322236, i32 -666894328, i32 68157442, i32 -1946156989, i32 684457986, i32 -859832240, i32 -1002700732, i32 670826499, i32 -1681915902, i32 -1749024762, i32 -1072939008, i32 -859754315, i32 -1946156971, i32 -666894317, i32 -662622024, i32 -851443704, i32 -1879048192, i32 -666894328, i32 -851443693, i32 2101395457, i32 -666894296, i32 -666894295, i32 -650117066, i32 -1004981674, i32 -1004719532, i32 357826568, i32 -851443703, i32 -851443621, i32 -851443618, i32 -851443619, i32 -666894227, i32 -1004457382, i32 -1003670967, i32 290717717, i32 430178364, i32 429391935, i32 451936381, i32 299630603, i32 308543519, i32 366739469, i32 2103787530, i32 321912856, i32 439877695, i32 2111160330, i32 2112995338, i32 -847249339, i32 -843054848, i32 -1005505942, i32 -1005243797, i32 -1004981652, i32 -1004719507, i32 -1004195218, i32 -1003933063, i32 -830472073, i32 -855637930, i32 -851443625, i32 -847249320, i32 -843055015, i32 -1004981659, i32 631013376, i32 -1715470332, i32 -834666406, i32 697860096, i32 -847170971, i32 -1005505976, i32 621805583, i32 -855637901, i32 -1005060083, i32 -1005505937, i32 389021721, i32 -1761607671, i32 622071807, i32 -1790967801, i32 -671088582, i32 -1946150035, i32 -1005243783, i32 -851443593, i32 -855637921, i32 -671088523, i32 653262849, i32 353370128, i32 2098790404, i32 -855637963, i32 -1761607627, i32 451969000, i32 -662700013, i32 -666894320, i32 -666894328, i32 -822083571, i32 -822083574, i32 -1946151897, i32 70516770, i32 125042689, i32 70254608, i32 -549257216, i32 2084782081, i32 2084601857, i32 -733925887, i32 70516766, i32 -549257216, i32 -734003080, i32 -553451520, i32 -733925824, i32 -666894317, i32 -868106192, i32 -868106191, i32 -1002586063, i32 -859832301, i32 70529024, i32 -1005505978, i32 -1004719547, i32 -817810841, i32 1360003104, i32 2110898202, i32 -1003146649, i32 1172046176, i32 -938475489, i32 457965655, i32 460325395, i32 460587417, i32 2135900170, i32 2138259466, i32 1427636256, i32 563609663, i32 -775946203, i32 -817889244, i32 -855637978, i32 -847249370, i32 -666894297, i32 -1681915903, i32 613285886, i32 -662700013, i32 -859755008, i32 2084782081, i32 2084782081, i32 -1946151893, i32 -1002700786, i32 452198525, i32 737935368, i32 863240195, i32 651689985, i32 -809500653, i32 451412030, i32 -1769996276, i32 -1004195209, i32 644349953, i32 -1769996279, i32 711196674, i32 -834588041, i32 -666894317, i32 -1004195000, i32 -834587832, i32 -1004195000, i32 -1774190591, i32 -809500653, i32 -1690304509, i32 -1786773288, i32 -2147482859, i32 -1004195209, i32 70266880, i32 644349953, i32 -822005145, i32 -1004981690, i32 -1004719547, i32 -1003408793, i32 -1769996223, i32 1368916000, i32 456400912, i32 2107473946, i32 387186700, i32 626264064, i32 456179730, i32 1167589808, i32 2104967178, i32 2134310922, i32 724566016, i32 -822083556, i32 -780140514, i32 -666894303, i32 69468176, i32 429654498, i32 2120105986, i32 1046216708, i32 1045692418, i32 -1004011505, i32 -1702821889, i32 -1782579194, i32 -938737647, i32 -938213359, i32 1422917664, i32 1431830560, i32 -2147483006, i32 -1790967787, i32 -938737647, i32 174325762, i32 68943873, i32 1167589384, i32 1422917664, i32 -1774190588, i32 -938213359, i32 1167589380, i32 68943872, i32 -822083556, i32 -780140514, i32 -666894303, i32 -1004011505, i32 -1702821889, i32 -1715470333, i32 -937951215, i32 -2147483006, i32 -938213359, i32 1431830560, i32 -2147483006, i32 1167589380, i32 -938737647, i32 -822083556, i32 -780140514, i32 -666894303, i32 -1004011505, i32 -1702821889, i32 -938475503, i32 -938213359, i32 1431830560, i32 -666894317, i32 -859753650, i32 -855559345, i32 -851365040, i32 -847170735, i32 -662621363, i32 -809500653, i32 -1004981645, i32 -1004719499, i32 -1005768079, i32 -1005505936, i32 -1005243788, i32 1355546656, i32 2094055450, i32 2094841873, i32 93323272, i32 -855637910, i32 -843054997, i32 -1004719502, i32 2103001090, i32 1422917664, i32 -662700013, i32 -859754973, i32 -855560668, i32 -842977755, i32 -809500653, i32 -1004981690, i32 -1004719547, i32 -1003408793, i32 357826562, i32 1368916000, i32 2107473946, i32 -937689057, i32 456392791, i32 455606803, i32 456130969, i32 1167589784, i32 2134310922, i32 2133524490, i32 1441005600, i32 -822083548, i32 -780140507, i32 -843055066, i32 -834666458, i32 -666894297, i32 -851443699, i32 -851443702, i32 -1005768119, i32 550240316, i32 -859753911, i32 -1005505932, i32 -582811648, i32 -1071775743, i32 702283778, i32 69730304, i32 -671088586, i32 -868220808, i32 -868220808, i32 760479746, i32 -1790967774, i32 126615552, i32 131334144, i32 -1946152435, i32 -1946152391, i32 -1946152398, i32 83361792, i32 92012544, i32 -843055085, i32 -1005322227, i32 -1004797927, i32 2111160325, i32 635174913, i32 -666894212, i32 -666894220, i32 -666894231, i32 -1005846434, i32 -1799350106, i32 -733925854, i32 -671088516, i32 -1005846434, i32 -1799350110, i32 -1782579193, i32 -1005846503, i32 2094317573, i32 617349121, i32 -1799356408, i32 -1769930756, i32 -2147482909, i32 -1005846441, i32 2094055426, i32 -1799356413, i32 -1769930755, i32 -2147482909, i32 -671088535, i32 -809500653, i32 -855559565, i32 -855559563, i32 -671088524, i32 -1005322146, i32 -1790961521, i32 -809500653, i32 -1005768119, i32 -1072443393, i32 2094055433, i32 -859753911, i32 -1769996277, i32 -1005846409, i32 953155585, i32 -1728053242, i32 80478210, i32 -591200256, i32 -1005846434, i32 -1799350142, i32 -734003080, i32 -671088627, i32 -2147482876, i32 2084683777, i32 2084683777, i32 -666894289, i32 -1004797931, i32 -1782513665, i32 -666894288, i32 -1004797930, i32 -1782513665, i32 -671088592, i32 -1004797930, i32 -1715404801, i32 -671088593, i32 -1004797931, i32 -1715404801, i32 -937689057, i32 1234698648, i32 1441005600, i32 1167589792, i32 -822083548, i32 -780140507, i32 -843055066, i32 -834666458, i32 -666894297, i32 70262784, i32 -809500653, i32 -822005145, i32 -1003408793, i32 -1769996284, i32 -1761607679, i32 -671088586, i32 -2147482839, i32 -662700013, i32 -863949312, i32 70262784, i32 -809500653, i32 -822005145, i32 -1003408793, i32 -1761607679, i32 -1004981674, i32 -1003670967, i32 384565279, i32 -671088600, i32 -671088597, i32 429391934, i32 -826277839, i32 -671088586, i32 -671088624, i32 -1753219068, i32 -666894320, i32 -838860790, i32 437780542, i32 -847249400, i32 -1879048192, i32 -1002962940, i32 -666894328, i32 -666894317, i32 -662622024, i32 68157440, i32 2101592065, i32 -851443693, i32 -1006030263, i32 411566142, i32 -1803550699, i32 -666894220, i32 -1946155407, i32 -851443693, i32 -1707081722, i32 -1004981684, i32 630980609, i32 362283039, i32 -1782579187, i32 -1786773492, i32 -1728053245, i32 -666894282, i32 68157441, i32 -1005846495, i32 349700113, i32 618397951, i32 836763650, i32 836501507, i32 -1786707984, i32 -1711276029, i32 -1715470334, i32 -641728458, i32 -1803550716, i32 -671088524, i32 -1005060002, i32 -1786767321, i32 -813694968, i32 -1879048192, i32 -662699978, i32 -1879048192, i32 -658505674, i32 -1004273653, i32 845414402, i32 -1707081724, i32 -1005060076, i32 -1786707969, i32 -666894289, i32 -1005846495, i32 349962257, i32 -1782513666, i32 -859832265, i32 -1946156656, i32 -1879048192, i32 -666894328, i32 -671088531, i32 -1004719546, i32 -1004981691, i32 1373372448, i32 2107473946, i32 -666894296, i32 -666894295, i32 -1004535797, i32 840957954, i32 -1711275859, i32 69206066, i32 -654311408, i32 -570228736, i32 -666894285, i32 67633152, i32 -1002700791, i32 670826498, i32 -1748959234, i32 -1003749355, i32 -1765736449, i32 -671088594, i32 -1003670967, i32 452198462, i32 -1757413299, i32 -1004011507, i32 -1006108576, i32 2091417605, i32 612892673, i32 2135638025, i32 -1757413306, i32 -1003408780, i32 -1005584297, i32 2100510732, i32 -1757413367, i32 673448192, i32 2120892420, i32 -834666375, i32 518848477, i32 -826199479, i32 -822005133, i32 -822005131, i32 -2147482685, i32 -1003933073, i32 447217712, i32 -1769996282, i32 673447937, i32 -1004011507, i32 111673352, i32 2120908804, i32 -830472139, i32 -1004719502, i32 634126337, i32 281804804, i32 434634818, i32 635174918, i32 299630593, i32 2123268106, i32 2112471050, i32 -1005768079, i32 -1003933072, i32 1355546656, i32 2095628314, i32 2094202897, i32 300417031, i32 715653120, i32 -830472164, i32 -754974690, i32 -666894303, i32 -1004011505, i32 -1702821889, i32 -1003487215, i32 456130623, i32 858783744, i32 -1004273575, i32 375390239, i32 2117206025, i32 -1070432256, i32 2121416714, i32 70254604, i32 -1711276030, i32 70254600, i32 -1070940160, i32 2100363266, i32 389021698, i32 715683328, i32 2094055441, i32 -843055068, i32 -792723419, i32 -830472154, i32 69730850, i32 -830472154, i32 -1778384894, i32 -834666458, i32 -666894297, i32 -1004011432, i32 585891901, i32 -826199479, i32 -855559565, i32 -830393739, i32 -671088517, i32 -935854056, i32 1471152160, i32 70529288, i32 -1003933091, i32 67907584, i32 326369288, i32 594804862, i32 849870851, i32 -859753881, i32 -1005768089, i32 418119767, i32 417595923, i32 416022937, i32 2095890442, i32 2095366154, i32 -1803550717, i32 -734003080, i32 -2147482649, i32 69206050, i32 -570228736, i32 -859832284, i32 -780140507, i32 -817889242, i32 -734003162, i32 -666894297, i32 69206032, i32 -570228736, i32 -859832284, i32 1167589636, i32 -780140507, i32 -734003162, i32 -813694938, i32 -822083546, i32 -666894297, i32 1234698500, i32 -1702887414, i32 -937689057, i32 1167589736, i32 1440743456, i32 -859832284, i32 -780140507, i32 -843055066, i32 -838860762, i32 -666894297, i32 -2147482638, i32 -1946155960, i32 -851443693, i32 67903488, i32 -859753881, i32 -1005768089, i32 -1799356415, i32 -1005768119, i32 416022590, i32 -666894288, i32 -1003749354, i32 -1765736449, i32 -671088592, i32 -1003749354, i32 -1698627585, i32 -671088593, i32 -1003749355, i32 -1698627585, i32 -666894284, i32 -1003487195, i32 -1003225052, i32 -1002962815, i32 -813616519, i32 -817810834, i32 -822005139, i32 -1799356403, i32 625739520, i32 -1004273634, i32 281804816, i32 442769384, i32 684459814, i32 711197184, i32 -666894317, i32 -859757701, i32 576979007, i32 -851443693, i32 -662621600, i32 -834588069, i32 -1004273613, i32 -1004011468, i32 -654311370, i32 -671088624, i32 -1946151897, i32 -1774190586, i32 -566034432, i32 -834666484, i32 -1005846434, i32 -1799350443, i32 -734003080, i32 -1769996278, i32 -830472182, i32 111673346, i32 -666894320, i32 -561840128, i32 -830472179, i32 -1005846434, i32 -1799350452, i32 -734003080, i32 -671088624, i32 -1946151893, i32 -1002884507, i32 733478976, i32 -666894286, i32 -813616539, i32 -1004535790, i32 -1711210497, i32 -1005584316, i32 421003300, i32 -938475406, i32 1427898431, i32 -1715470333, i32 -1786773488, i32 -2147482563, i32 -1072922624, i32 -666894228, i32 673185792, i32 -2147482561, i32 -1072939008, i32 673186032, i32 -851443693, i32 -666894328, i32 -1005505963, i32 -855559601, i32 -666894317, i32 -662622024, i32 -859754315, i32 -838860717, i32 -1879048192, i32 425459944, i32 -1005584380, i32 626393072, i32 -1070202879, i32 69992448, i32 693370881, i32 -666894328, i32 69468160, i32 69730308, i32 -1004535797, i32 840957954, i32 -1711276023, i32 -851443693, i32 -826162688, i32 -975100708, i32 178782209, i32 2130100225, i32 2120368129, i32 -1778384895, i32 -1702821895, i32 -1070669824, i32 -851443693, i32 626393072, i32 -826162688, i32 693370888, i32 -937689057, i32 -851443693, i32 1440743456, i32 -1003670955, i32 -1003146663, i32 -671010208, i32 1167589720, i32 -859832284, i32 -780140507, i32 -843055066, i32 -838860762, i32 -666894297, i32 1234698584, i32 1167589744, i32 -1004535790, i32 371195920, i32 -1711210498, i32 -859832284, i32 -780140507, i32 -1003933105, i32 -834666458, i32 -830472154, i32 -826277850, i32 -817889242, i32 -666894297, i32 -855638008, i32 -1879048192, i32 -1005768101, i32 2101592065, i32 424935656, i32 290717706, i32 417071336, i32 99091592, i32 416284780, i32 418908144, i32 417595511, i32 418120089, i32 2121154570, i32 -2038431744, i32 -2147482482, i32 -2147482476, i32 -2147482402, i32 -2147481979, i32 -2147481978, i32 -2147481940, i32 483131423, i32 -859753893, i32 -1005505955, i32 621806063, i32 -855559587, i32 -1879048192, i32 -1003933100, i32 308543498, i32 -1003487228, i32 2105098250, i32 2121941002, i32 1386741790, i32 353894401, i32 2104049690, i32 539754621, i32 -826199461, i32 -1795162104, i32 -1786773464, i32 -1003670937, i32 -1004981690, i32 -1004719547, i32 451674152, i32 -1005768100, i32 -2147482420, i32 -1003670954, i32 -1004981682, i32 652738623, i32 451674174, i32 317980686, i32 -1004719539, i32 -1005768113, i32 2104836122, i32 68157442, i32 2099838980, i32 2140094465, i32 2136113167, i32 1368916000, i32 2107473946, i32 1356857346, i32 1368915976, i32 -1702887422, i32 -2147482415, i32 2098053122, i32 1717959680, i32 2120106010, i32 -826277880, i32 2107752465, i32 -784334837, i32 -775946238, i32 711213056, i32 -834666494, i32 2136162306, i32 1717959680, i32 2121678874, i32 -780140542, i32 -834666494, i32 -2147482409, i32 -1003670950, i32 -1004981672, i32 451674174, i32 -1004719529, i32 -1004457383, i32 317980686, i32 2104836122, i32 1368916000, i32 1377828866, i32 2107473946, i32 -826277880, i32 2107752465, i32 -784334837, i32 -775946238, i32 711213056, i32 -834666494, i32 539754557, i32 -822083576, i32 -809500653, i32 -826199461, i32 -1003670949, i32 -1765801983, i32 -1879048192, i32 -1004981664, i32 630980615, i32 362283012, i32 99091683, i32 -2038431744, i32 -2147482393, i32 -2147482384, i32 -2147482363, i32 -2147483286, i32 -1002962940, i32 -809500653, i32 -666894328, i32 -1003146659, i32 -671010213, i32 661914095, i32 -817810851, i32 -813694968, i32 -1879048192, i32 -1002962940, i32 -666894328, i32 -1946155407, i32 -1774125068, i32 400556040, i32 -1005060083, i32 -838860791, i32 -666816037, i32 -813694968, i32 -847249399, i32 -1003487202, i32 -809500653, i32 -1003670949, i32 456138744, i32 724567040, i32 590348351, i32 653127680, i32 2129838090, i32 -666815904, i32 -826199461, i32 -1879048192, i32 94897415, i32 -2038431744, i32 -2147482356, i32 -2147482328, i32 -2147482243, i32 -2147482174, i32 -2147482125, i32 -1002962940, i32 -666894328, i32 -1946155407, i32 -809500653, i32 -1707081710, i32 466878696, i32 -1003749302, i32 -851443618, i32 -1004797875, i32 -826277794, i32 -1715470324, i32 -1005584359, i32 2098528261, i32 621805569, i32 -1728053240, i32 -1946155461, i32 -809500653, i32 -1005505929, i32 621936637, i32 -855559561, i32 -671010193, i32 -2147482076, i32 69468178, i32 467668964, i32 -834588064, i32 -838860698, i32 -813694968, i32 -1879048192, i32 -666894232, i32 -1002962940, i32 -666894328, i32 -1946155407, i32 -809500653, i32 -1707081709, i32 466878696, i32 -1003749302, i32 -851443618, i32 -1004797875, i32 -826277794, i32 -1715470323, i32 -1005584359, i32 2098528261, i32 621805569, i32 -1728053239, i32 -666894233, i32 -1946155461, i32 -809500653, i32 -1005505929, i32 621936637, i32 -855559561, i32 -671010193, i32 -2147482076, i32 466878696, i32 -1003749280, i32 2128003077, i32 653000705, i32 -1005505935, i32 -1005243792, i32 -1004981646, i32 -1004719501, i32 69730338, i32 1360003104, i32 2102476826, i32 -1005505932, i32 -1004457355, i32 -1004195210, i32 -1003408824, i32 -784334751, i32 657457167, i32 321912848, i32 2108784650, i32 -847249312, i32 -1765801982, i32 98304008, i32 -843055006, i32 70004736, i32 -855637917, i32 -838860700, i32 -834666395, i32 -826199449, i32 -1003670970, i32 -1003408827, i32 -1003146649, i32 -830393760, i32 1391198240, i32 2129838106, i32 -937426913, i32 460324951, i32 459801107, i32 460587417, i32 1189872008, i32 2138259466, i32 2137735178, i32 1445199904, i32 -817889244, i32 -759168987, i32 -838860762, i32 -834666458, i32 70000640, i32 -666894297, i32 -1005060083, i32 400556040, i32 -838860791, i32 -826199449, i32 -1003670937, i32 652218368, i32 -1711210498, i32 -666894317, i32 -641650180, i32 -847249399, i32 -813694968, i32 -1765801983, i32 -1879048192, i32 -1002962940, i32 -666894328, i32 -1005505929, i32 -1004797941, i32 -1004535796, i32 299630594, i32 2111946753, i32 299630600, i32 702283777, i32 622067713, i32 421005284, i32 421529580, i32 -1790967804, i32 -666894317, i32 -842976438, i32 -809500653, i32 -1786773490, i32 160956417, i32 68943873, i32 -1786773499, i32 160956417, i32 1373372417, i32 1776025601, i32 -1719599107, i32 2111963156, i32 1444675616, i32 -666894317, i32 -838782140, i32 -842976443, i32 -809500653, i32 -1790967774, i32 70004736, i32 -826199449, i32 -1003670970, i32 -1003408827, i32 -1003146649, i32 -666894317, i32 -1004194995, i32 644087809, i32 -1774125058, i32 -1004981426, i32 -1004719281, i32 -1004457136, i32 -1004194991, i32 1391198240, i32 459800663, i32 2129838106, i32 460325395, i32 460587417, i32 1189872048, i32 2137735178, i32 2138259466, i32 -809500653, i32 -817889244, i32 -759168987, i32 -847249370, i32 -843055066, i32 -838860762, i32 -834666458, i32 70000640, i32 -666894297, i32 -826199449, i32 -1003670937, i32 -1765801983, i32 69730354, i32 -830393760, i32 -662699928, i32 -813694968, i32 -1879048192, i32 -1002962940, i32 -666894328, i32 537919613, i32 -855559589, i32 -1005505957, i32 420479038, i32 -1795096578, i32 68157504, i32 -855637989, i32 -666894303, i32 -1005584369, i32 -1727987713, i32 68157536, i32 -855637989, i32 -666894303, i32 -1005584369, i32 -1727987713, i32 -809500653, i32 537919549, i32 -855559589, i32 -1005505929, i32 622067713, i32 421005284, i32 -1790967797, i32 621936637, i32 -855559561, i32 -1004797941, i32 -1004535796, i32 299630594, i32 2111946753, i32 299630600, i32 -666894317, i32 -842976438, i32 -809500653, i32 -1786773499, i32 -666894317, i32 -671009980, i32 -671009979, i32 -809500653, i32 -1005060016, i32 -1004797870, i32 69730370, i32 -847170957, i32 -842976651, i32 -830393760, i32 -654311320, i32 -666894233, i32 -813694968, i32 -1879048192, i32 131334144, i32 -1946152435, i32 -1946152369, i32 -1946152398, i32 92012544, i32 70004736, i32 -1002962940, i32 -809500653, i32 -666894328, i32 -826199449, i32 -1003670970, i32 -1003408827, i32 -1003146649, i32 1391198240, i32 2129838106, i32 459800663, i32 460325395, i32 460587417, i32 -937426913, i32 1189872016, i32 2137735178, i32 2138259466, i32 1445199904, i32 -817889244, i32 -759168987, i32 -838860762, i32 -834666458, i32 70000640, i32 -666894297, i32 -809500653, i32 -826199449, i32 -1005243831, i32 559153213, i32 -1004797927, i32 467140840, i32 2111422469, i32 635174913, i32 -1003749302, i32 -847249314, i32 -1004535731, i32 -826277794, i32 299630608, i32 2115895306, i32 -851365303, i32 -838782353, i32 674496513, i32 93847560, i32 2136571908, i32 -847249355, i32 468189416, i32 -1003749302, i32 -830472098, i32 -671010182, i32 -671088545, i32 -671088523, i32 -671088513, i32 -1004273588, i32 -834588050, i32 -826277794, i32 673448192, i32 2120892420, i32 -834666375, i32 -1003146659, i32 661914095, i32 69468192, i32 -834588066, i32 -671010213, i32 -671010208, i32 -817810851, i32 -637534104, i32 -813694968, i32 -1879048192, i32 -1005505929, i32 -1004797941, i32 -1004535796, i32 299630594, i32 2111946753, i32 299630600, i32 702283777, i32 622067713, i32 -1790967763, i32 -666894317, i32 -842976438, i32 -809500653, i32 70004736, i32 -826199449, i32 -1003670970, i32 -1003408827, i32 -1003146649, i32 -666894317, i32 -1004194995, i32 644087809, i32 -1774125058, i32 -1004981426, i32 -1004719281, i32 -1004457136, i32 -1004194991, i32 1391198240, i32 459800663, i32 2129838106, i32 460325395, i32 460587417, i32 1189872048, i32 2137735178, i32 2138259466, i32 -809500653, i32 -817889244, i32 -759168987, i32 -847249370, i32 -843055066, i32 -838860762, i32 -834666458, i32 70000640, i32 -666894297, i32 -826199449, i32 -1003670937, i32 -1765801983, i32 -1004797941, i32 -1004535796, i32 299630594, i32 2111946753, i32 299630600, i32 -666894317, i32 -842976438, i32 -809500653, i32 -1879048192, i32 -1003487221, i32 858783746, i32 69468160, i32 -1694498800, i32 467665128, i32 69992448, i32 -1070202879, i32 69730308, i32 -666894317, i32 -826162688, i32 -969857828, i32 178782209, i32 2130100225, i32 2121416705, i32 -1761607679, i32 -1702821895, i32 -1070669824, i32 -666894317, i32 -826162688, i32 -1879048192, i32 -1879048192, i32 -1004195232, i32 2143371265, i32 -1005768119, i32 416022590, i32 -1732247547, i32 424418307, i32 -859832261, i32 -1005846483, i32 -2147481961, i32 -1004535734, i32 424411368, i32 -859832226, i32 -1005846452, i32 -1003408787, i32 657465343, i32 -838860706, i32 2096152589, i32 -1732247549, i32 -1946155040, i32 -1782579192, i32 -1003487202, i32 456138744, i32 724567040, i32 590348351, i32 -851443693, i32 -822005157, i32 -1879048192, i32 -851443693, i32 -671010213, i32 -1005505955, i32 621806063, i32 -855559587, i32 621805575, i32 823132165, i32 -1728053106, i32 -1005846521, i32 -654311408, i32 -2147481762, i32 539754621, i32 -826199461, i32 -1003933083, i32 -1003146668, i32 648675071, i32 -1002962940, i32 -666894328, i32 326369291, i32 -1005846515, i32 -671088631, i32 393478157, i32 -666894317, i32 -1004719944, i32 -809500653, i32 -1782579192, i32 -1005505955, i32 -671010213, i32 -859832311, i32 -813694968, i32 621806063, i32 -855559587, i32 -1879048192, i32 -830393755, i32 -817889024, i32 -1073037306, i32 -1072824320, i32 680003328, i32 684458004, i32 -1946155298, i32 348913680, i32 819200015, i32 80478209, i32 281804816, i32 684458004, i32 -1723858935, i32 -666894317, i32 -1005244232, i32 -809500653, i32 -1004981659, i32 429391912, i32 -1723858941, i32 -1719664638, i32 -2147481912, i32 -809500653, i32 -1005505955, i32 -671010213, i32 -813694968, i32 621806063, i32 -855559587, i32 -1879048192, i32 358613000, i32 -838860791, i32 -935854045, i32 -1005059967, i32 295698434, i32 2141421585, i32 -1005584346, i32 93847560, i32 2098855938, i32 673980418, i32 1042808840, i32 -826277869, i32 -1003487193, i32 69992456, i32 -746586075, i32 -822083548, i32 539230416, i32 2091155457, i32 -864026586, i32 -859832282, i32 673447942, i32 -872415194, i32 174325761, i32 -1707016194, i32 -1702887420, i32 841482240, i32 -1702887422, i32 -1711276032, i32 -666894297, i32 618135615, i32 -666894276, i32 -826277830, i32 -662700013, i32 -847142236, i32 -1879048192, i32 -1004719523, i32 635174919, i32 -1005768119, i32 416022590, i32 -1799356406, i32 -1004535734, i32 424411368, i32 -859832226, i32 -1005846452, i32 -1003408787, i32 657465343, i32 -838860706, i32 2096152589, i32 -2147481838, i32 424418307, i32 -859832261, i32 -1005846483, i32 99092244, i32 -2038431744, i32 -2147481828, i32 -2147481824, i32 -2147481785, i32 -2147481827, i32 -2147481660, i32 -2147481806, i32 -2147481787, i32 -2147481788, i32 -1879048192, i32 -1732247546, i32 -2147481810, i32 -1879048192, i32 -1732247549, i32 -1946155040, i32 -1782579188, i32 -851443693, i32 -1004195227, i32 711196812, i32 -834588059, i32 -1003487202, i32 456138728, i32 724567040, i32 590348351, i32 -671010208, i32 -822005157, i32 -1879048192, i32 -1005846521, i32 -654311408, i32 69468160, i32 -2147481762, i32 -1732182031, i32 -1946155040, i32 -1782579198, i32 -2147481821, i32 -851443693, i32 -1004600591, i32 -1782579196, i32 -671010233, i32 -671010211, i32 -2147481789, i32 -662621625, i32 -671010211, i32 -1005584380, i32 -666894328, i32 -666894317, i32 -662622024, i32 -855638008, i32 -1879048192, i32 68157441, i32 -1732182050, i32 -2147481810, i32 -1732247549, i32 -1946155040, i32 -1782579182, i32 -1003225084, i32 -666894328, i32 358613000, i32 -1005060083, i32 -838860791, i32 -666894317, i32 -666816037, i32 -817889272, i32 -847249399, i32 -1003487202, i32 456138744, i32 724567040, i32 590348351, i32 -851443693, i32 -666815904, i32 -822005157, i32 -1879048192, i32 -1005846521, i32 -654311408, i32 69468160, i32 -851443693, i32 68956160, i32 -842976665, i32 -1004719513, i32 -1004719515, i32 635207680, i32 -1782579193, i32 -1004797878, i32 425197800, i32 -847249314, i32 -1005060020, i32 -847170962, i32 -843055010, i32 -1004719515, i32 635273215, i32 -842976667, i32 -1004719546, i32 -1004981691, i32 -1003670937, i32 1373634592, i32 2115633178, i32 1176502784, i32 69743175, i32 70254643, i32 452460631, i32 452198931, i32 69992460, i32 2138783754, i32 2137997322, i32 -817889244, i32 -771751899, i32 -847249370, i32 -843055066, i32 -963051520, i32 849097309, i32 -1715470328, i32 849097321, i32 -1715470330, i32 849097319, i32 -1782579195, i32 -1071779841, i32 2107473929, i32 -2147481718, i32 630718464, i32 187695105, i32 111673345, i32 -847249370, i32 -1694433294, i32 -666894297, i32 -1002700782, i32 -1681850369, i32 -851443693, i32 -671010213, i32 -1003408806, i32 -1069645840, i32 2134835209, i32 -822005158, i32 -1003408823, i32 523239455, i32 -822005175, i32 -1069662208, i32 -809422252, i32 -851443693, i32 -671010220, i32 -1003408803, i32 -671010225, i32 -671010219, i32 -671010233, i32 -671010211, i32 456130600, i32 -1946152435, i32 -1946152423, i32 -1946152398, i32 -1002962940, i32 -666894328, i32 -666894317, i32 -1728053235, i32 -662622024, i32 -1761607669, i32 -1002622795, i32 468713530, i32 -1694495872, i32 540803130, i32 -1003487218, i32 657458944, i32 321912852, i32 724566017, i32 -822005577, i32 -809422667, i32 1176502280, i32 -817889244, i32 -771751899, i32 -671088602, i32 -666894297, i32 71049216, i32 -851443693, i32 -809422233, i32 -1002622361, i32 -1681915903, i32 -859832304, i32 -813694968, i32 -1879048192, i32 -1006108665, i32 -654311408, i32 -1004981664, i32 630980611, i32 836501507, i32 -1782579180, i32 67907584, i32 -666894328, i32 -859753881, i32 -1005768089, i32 418119767, i32 417595923, i32 416022937, i32 2095890442, i32 2095366154, i32 -1004981690, i32 -1004719547, i32 1368916000, i32 2107473946, i32 -1946155960, i32 -851443693, i32 67903488, i32 -859753881, i32 -1005768089, i32 -1799356415, i32 -864026608, i32 -671010211, i32 -1879048192, i32 -1005060085, i32 832045058, i32 68943872, i32 -1719664612, i32 425197670, i32 358613000, i32 67895296, i32 -1072562175, i32 295174147, i32 69468164, i32 2107736065, i32 -1004535801, i32 -1003225084, i32 -654311408, i32 -666894328, i32 -666894317, i32 -859717120, i32 -1004722981, i32 2094055425, i32 174325761, i32 2111422469, i32 635174913, i32 -1715470334, i32 -1707016200, i32 -1005060002, i32 -1786768517, i32 -1072766976, i32 -666894317, i32 -859717120, i32 -838860784, i32 -817889272, i32 -1879048192, i32 -666894257, i32 -1005505943, i32 419954800, i32 420217064, i32 621805631, i32 622329871, i32 -847170968, i32 94898185, i32 -2038431744, i32 -2147481586, i32 -2147481585, i32 -2147481448, i32 -2147481274, i32 -2147481119, i32 -2147480998, i32 78120977, i32 -2038431744, i32 -2147481579, i32 -2147481548, i32 -2147481506, i32 -2147481506, i32 70520833, i32 -817889261, i32 -1002962940, i32 -666894328, i32 -1003671483, i32 -826163055, i32 825229345, i32 -1761607669, i32 -666893583, i32 -666894317, i32 -1003409224, i32 657457153, i32 -1003933607, i32 1453850655, i32 2133524490, i32 -813694968, i32 -1694498239, i32 -2147481526, i32 -817889261, i32 -666894328, i32 -1003409226, i32 -1694498813, i32 -1070661631, i32 -826199882, i32 -1004199801, i32 1449656346, i32 648544261, i32 -1702821891, i32 -817889261, i32 -671010634, i32 -2147481526, i32 -1002962940, i32 -666894328, i32 70520833, i32 -817889261, i32 -1003361110, i32 657457280, i32 -1694498800, i32 -1070727167, i32 -826199882, i32 -817889261, i32 -671010634, i32 825229345, i32 -1761607670, i32 -666893583, i32 -666894317, i32 -1003409224, i32 657457153, i32 -1003933607, i32 1453850655, i32 2133524490, i32 -813694968, i32 -1694498275, i32 -582942720, i32 67895301, i32 -666369303, i32 -1946150335, i32 -1002765583, i32 -1686110202, i32 -1002962940, i32 -666894328, i32 -666894317, i32 -662622024, i32 -813694968, i32 -825752968, i32 1458569248, i32 -821558656, i32 -1946151416, i32 -602669056, i32 -851443693, i32 -662621625, i32 -670563607, i32 -2147481506, i32 -851443693, i32 823132177, i32 -1795161606, i32 -1070727167, i32 720109576, i32 -1071906784, i32 -1072168959, i32 -1072955385, i32 295960582, i32 2112225290, i32 283377672, i32 2116419594, i32 2116943882, i32 -838860781, i32 -1005505964, i32 487653343, i32 554696766, i32 -855559596, i32 -671010225, i32 -671010219, i32 487653278, i32 -855559596, i32 -671010233, i32 -671010211, i32 -671010210, i32 -1071361279, i32 -834588087, i32 -671010209, i32 -1004195220, i32 -1072553985, i32 688951039, i32 2119319561, i32 -834588052, i32 -1004195238, i32 -1072529424, i32 2119319561, i32 -834588070, i32 -1004195237, i32 -1072488449, i32 2119319561, i32 -834588069, i32 -671010195, i32 -671010194, i32 -671010183, i32 -1799356413, i32 147587073, i32 -2147481498, i32 -1072955385, i32 -1786773501, i32 160956417, i32 -2147481498, i32 -1072693232, i32 2110930956, i32 -1707081724, i32 -1072168957, i32 2110898178, i32 -2147481498, i32 -2147480998, i32 78121114, i32 -2038431744, i32 -2147481442, i32 -2147481350, i32 -2147481275, i32 -2147481275, i32 825229346, i32 -1761607673, i32 -1002962940, i32 -666894328, i32 -666894317, i32 -1003409224, i32 657457153, i32 -813694968, i32 -851443693, i32 68694016, i32 -847170969, i32 -1005505978, i32 -1004981691, i32 1360003104, i32 2106687514, i32 1167589856, i32 -1003408793, i32 657981455, i32 456400912, i32 388759564, i32 653002752, i32 456179730, i32 2130133002, i32 2134310922, i32 724566016, i32 -822083556, i32 -780140514, i32 -666894303, i32 -1003749361, i32 -1698627585, i32 -936378351, i32 -1761607626, i32 1167589384, i32 -780140514, i32 -666894303, i32 -1003749361, i32 -1698627585, i32 -936116207, i32 -1757413329, i32 -1002700796, i32 -666894328, i32 -666894317, i32 330825729, i32 -945999104, i32 -945736959, i32 -1778384895, i32 -667340032, i32 -1071251455, i32 -830917887, i32 -1004273570, i32 -1774185820, i32 2080538633, i32 -1757413348, i32 660078593, i32 -1719664636, i32 1467219969, i32 111674368, i32 -2147481390, i32 -1005060090, i32 -1719599105, i32 694419457, i32 -834666470, i32 606863360, i32 116130816, i32 1467219969, i32 660078593, i32 -1719599107, i32 -1071243072, i32 -834551688, i32 -830357376, i32 -872300415, i32 -821968766, i32 1461977120, i32 -834551677, i32 -1071250432, i32 2121154570, i32 -834551676, i32 2125365249, i32 2133786641, i32 -2147481390, i32 -1005060090, i32 -1719599105, i32 -839306496, i32 -835112191, i32 -809500664, i32 -851443693, i32 -1002700796, i32 -666894328, i32 68689920, i32 -847170969, i32 -809500664, i32 -2147481341, i32 824442914, i32 -1774190584, i32 68157441, i32 -1002962940, i32 -666894328, i32 -666894317, i32 -1003409224, i32 657457153, i32 -813694968, i32 -995163520, i32 -994901384, i32 1391198240, i32 2129838106, i32 2126708753, i32 855113728, i32 -1686110191, i32 71041056, i32 69730304, i32 1729626113, i32 201064449, i32 1462763521, i32 -1786773498, i32 -1946151384, i32 -1707081725, i32 -645844387, i32 -2147481323, i32 -641650083, i32 111673345, i32 -1681850378, i32 2139193345, i32 -1946151418, i32 2105769985, i32 -1803550704, i32 -851443693, i32 -1004719527, i32 -1004457382, i32 371458068, i32 308543508, i32 438829552, i32 312999952, i32 639696895, i32 2116681738, i32 2111946753, i32 2120105994, i32 -1686110206, i32 576979007, i32 -834588070, i32 -671010215, i32 -1005846521, i32 -654311408, i32 -1946155170, i32 -995163608, i32 71041024, i32 1725431809, i32 -1786773488, i32 70254594, i32 321912845, i32 334757908, i32 2138259466, i32 -817889261, i32 70778944, i32 -813694949, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 70778976, i32 -813694949, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 133955585, i32 1458307073, i32 870842384, i32 -1769930772, i32 -2147480998, i32 -2147480998, i32 78121288, i32 -2038431744, i32 -2147481268, i32 -2147481189, i32 -2147481120, i32 -2147481120, i32 -1002700796, i32 -666894328, i32 -851443693, i32 68694016, i32 -847170969, i32 -1005505978, i32 -1004981691, i32 1360003104, i32 2106687514, i32 1167589856, i32 -1003408793, i32 657981455, i32 456400912, i32 388759564, i32 653002752, i32 456179730, i32 2130133002, i32 2134310922, i32 724566016, i32 -822083556, i32 -780140514, i32 -666894303, i32 -1003749361, i32 -1698627585, i32 -936378351, i32 -1761607629, i32 1167589384, i32 -780140514, i32 -666894303, i32 -1003749361, i32 -1698627585, i32 -936116207, i32 -1757413332, i32 -666894317, i32 330825729, i32 -945999104, i32 -945736959, i32 -1778384895, i32 -667340032, i32 -1071251455, i32 -830917887, i32 -1004273570, i32 -1774185986, i32 2080538633, i32 -1757413348, i32 660078593, i32 -1719664636, i32 1467219969, i32 111674368, i32 -2147481224, i32 -1005060090, i32 -1719599105, i32 694419457, i32 -834666470, i32 606863360, i32 116130816, i32 1467219969, i32 660078593, i32 -1719599107, i32 -1071251440, i32 -834551688, i32 -821968768, i32 1461977120, i32 -834551679, i32 -830357374, i32 -872300413, i32 -1071249408, i32 2121154570, i32 -834551676, i32 2125365249, i32 2133786641, i32 -2147481224, i32 -1005060090, i32 -1719599105, i32 -839306496, i32 -835112191, i32 68689920, i32 -847170969, i32 -809500664, i32 -851443693, i32 -1004981690, i32 -1004719547, i32 1368916000, i32 2111471642, i32 2101460993, i32 2122547217, i32 -666369303, i32 -1946150910, i32 1184629648, i32 -1003408793, i32 68694016, i32 -847170969, i32 456400912, i32 388759564, i32 653002752, i32 456179730, i32 2130133002, i32 2134310922, i32 724566016, i32 -822083556, i32 1172045828, i32 -775946210, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -1004535791, i32 1172045828, i32 -775946210, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -1004273647, i32 1172045828, i32 -775946210, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -1004011503, i32 1172045828, i32 -775946210, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -1003749359, i32 1172045828, i32 -775946210, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -1003487215, i32 1172045828, i32 -775946210, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -1003225071, i32 1172045828, i32 -775946210, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -1002962927, i32 -851443693, i32 68689920, i32 -847170969, i32 71041025, i32 -1946151713, i32 -2147480998, i32 -2147480998, i32 824705044, i32 -829947153, i32 -1702887326, i32 824705076, i32 -1702887328, i32 78121448, i32 -2038431744, i32 -2147481108, i32 -2147481019, i32 -2147480999, i32 -2147480999, i32 -851443693, i32 -1005505978, i32 -1004981691, i32 1360003104, i32 2106687514, i32 1167590400, i32 -994901416, i32 -995687856, i32 1395654688, i32 2121416730, i32 -1003408793, i32 456400912, i32 388759564, i32 653002752, i32 456179730, i32 2130133002, i32 2134310922, i32 724566016, i32 -822083556, i32 69992480, i32 1718878209, i32 -1757413311, i32 -851443693, i32 70791168, i32 -813616537, i32 -1002884505, i32 -1686110207, i32 -780140514, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 -1003487215, i32 456654974, i32 867434499, i32 -1690304509, i32 1167589404, i32 -1757413329, i32 1167589380, i32 -780140514, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 -1005846511, i32 1167589380, i32 -780140514, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 -1005584367, i32 1167589380, i32 -780140514, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 -1003225071, i32 -817888533, i32 1167589380, i32 -780140514, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 -1003225071, i32 -817888532, i32 1167589380, i32 -780140514, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 -1003225071, i32 -817888531, i32 1167589380, i32 -780140514, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 -1003225071, i32 -817888530, i32 1167589380, i32 -851443693, i32 70787072, i32 -813616537, i32 -666369303, i32 -1946151147, i32 -851443693, i32 70787072, i32 -813616537, i32 1449394177, i32 183238657, i32 -1698627652, i32 -1002962940, i32 -666894328, i32 70520833, i32 -817889261, i32 -1803550715, i32 -1003361110, i32 657457280, i32 -1761607678, i32 -2147481003, i32 -1003409226, i32 591134770, i32 -809422666, i32 -817889261, i32 -822005578, i32 -996998417, i32 -1728053245, i32 -851443693, i32 -666815929, i32 -813694968, i32 -2147480998, i32 -2147480998, i32 -851443693, i32 68681729, i32 1368915999, i32 -847170968, i32 -1004981655, i32 630718479, i32 -1719599106, i32 -671087887, i32 -851443693, i32 -671010200, i32 -671088561, i32 -1879048192, i32 -851443693, i32 70778881, i32 1404567583, i32 2109308954, i32 -847170968, i32 -2147480994, i32 -666894295, i32 -1005846434, i32 -1799352058, i32 -662700013, i32 -868143615, i32 -868143614, i32 -868143613, i32 -868143616, i32 -2147480921, i32 -666894295, i32 -1005846434, i32 -1799352067, i32 2084618241, i32 1348730912, i32 2095366170, i32 -792723342, i32 -938737550, i32 1491599868, i32 312999945, i32 715653120, i32 -792723426, i32 -830472164, i32 -666894303, i32 -1004273649, i32 -1707016193, i32 69468176, i32 417071586, i32 2120105986, i32 1046216707, i32 1045692418, i32 -1782579194, i32 -937951215, i32 -938475503, i32 -938475503, i32 1427374112, i32 -2147480926, i32 -1790967798, i32 -937951215, i32 1154220040, i32 1435500576, i32 -792723426, i32 -666894303, i32 -1004273649, i32 -1707016193, i32 -1005322223, i32 -2147480926, i32 1154220036, i32 -1005060079, i32 -792723426, i32 -666894303, i32 -1004273649, i32 -1707016193, i32 -938475503, i32 1427374112, i32 -662700013, i32 -847172095, i32 -855560702, i32 -851366397, i32 -868143616, i32 -1004011506, i32 715653128, i32 -830472173, i32 -1004195255, i32 576979007, i32 -834588087, i32 -830472173, i32 -1004195255, i32 -1774190591, i32 -671088598, i32 -1005584358, i32 -1005846495, i32 -1005322200, i32 -1795162107, i32 509870111, i32 -830472173, i32 -834588087, i32 -2147476624, i32 349175824, i32 -1005060048, i32 -1004797945, i32 -1728053244, i32 -1723858935, i32 -1719664628, i32 -2147480911, i32 -859832265, i32 -1946156656, i32 -1004535780, i32 -671088590, i32 -1711271764, i32 -2147480921, i32 -662699969, i32 -1782579198, i32 -658505665, i32 -2147479422, i32 -662699968, i32 -1782579198, i32 -658505664, i32 -2147479330, i32 -1072627713, i32 416547831, i32 2097987593, i32 -1004862617, i32 2106949636, i32 2105901066, i32 -602013696, i32 -1879048192, i32 -1004273653, i32 845414402, i32 2084618241, i32 416285180, i32 86510300, i32 -2038431744, i32 -2147480847, i32 -2147480865, i32 -2147480857, i32 -1946154290, i32 -658505709, i32 -1774190590, i32 -666894317, i32 -846389248, i32 -1715470320, i32 2084601857, i32 -2013265920, i32 416809975, i32 -1072627713, i32 2097987593, i32 68419584, i32 294912020, i32 693387265, i32 -1707081726, i32 693387267, i32 -851443693, i32 -2147480844, i32 -658505709, i32 -1774190590, i32 -666894317, i32 -733143040, i32 2084601857, i32 -2013265920, i32 -1004273653, i32 845414402, i32 2084618241, i32 -658505709, i32 -1774190590, i32 -666894317, i32 -733102080, i32 2084601857, i32 -2013265920, i32 2084618241, i32 416284732, i32 -1795162106, i32 -1946154290, i32 -662700013, i32 -846386176, i32 -1715470333, i32 -2147480822, i32 -662700013, i32 -733139968, i32 2084601857, i32 -2013265920, i32 2084618241, i32 672432132, i32 618135807, i32 -859832295, i32 -851443693, i32 -732351936, i32 2084601857, i32 -2013265920, i32 -666894295, i32 -1005846434, i32 -1799352226, i32 2084634625, i32 1347682336, i32 2084667393, i32 563609663, i32 429654068, i32 -1005846521, i32 -1782579160, i32 -1004011506, i32 715653128, i32 -830472173, i32 -1003670961, i32 -1003408811, i32 2129870860, i32 -1690304479, i32 -671088598, i32 -2147476624, i32 -1005846521, i32 350748673, i32 -1702887249, i32 -654311408, i32 68943874, i32 69992904, i32 -1946153631, i32 -859832304, i32 -666894295, i32 -1005846434, i32 -1799352253, i32 2084634625, i32 1347682336, i32 2084667393, i32 413147112, i32 908066908, i32 -1711276018, i32 610533439, i32 -666894317, i32 -970388249, i32 380370975, i32 -1765801980, i32 648806463, i32 2129051661, i32 -1765801979, i32 102760449, i32 639631375, i32 -1711210504, i32 -2147483286, i32 -838859929, i32 -1004273570, i32 -1774186450, i32 -1004011506, i32 429654071, i32 429916213, i32 715653128, i32 -830472173, i32 -1782579107, i32 -671088598, i32 -1003670954, i32 -1003408806, i32 590348351, i32 385351711, i32 -1753219059, i32 -1004195256, i32 -1070206721, i32 2121678857, i32 431227384, i32 326369288, i32 2121678858, i32 -830472173, i32 -834588088, i32 -822005158, i32 -830472173, i32 -1003408806, i32 -1761607679, i32 2098528282, i32 -788529038, i32 -938475406, i32 1427374112, i32 429654068, i32 -666894320, i32 -666894295, i32 -1686110204, i32 451149886, i32 -834666488, i32 -2147480708, i32 -1003146668, i32 380108808, i32 451674172, i32 430178367, i32 312999957, i32 317456415, i32 326369291, i32 2125365258, i32 -1070710784, i32 393478157, i32 2125365258, i32 -834666488, i32 2137735178, i32 -1782579195, i32 -1002622392, i32 469500392, i32 335282200, i32 2109571082, i32 496566037, i32 1496056060, i32 -847249398, i32 316669974, i32 2107736074, i32 1496055934, i32 316669973, i32 2107736074, i32 -788529151, i32 -847249407, i32 295698444, i32 308543518, i32 371195916, i32 2116419594, i32 2117206026, i32 316932123, i32 2116419594, i32 1495531646, i32 308543511, i32 2116419594, i32 430178364, i32 308543512, i32 2116419594, i32 -671088598, i32 -838782374, i32 -855559593, i32 -851365288, i32 -1003933094, i32 -1005846434, i32 -1799352357, i32 -1769996287, i32 -1782579197, i32 2084618241, i32 2084634625, i32 -1753156150, i32 -817889024, i32 -1005846521, i32 -654311408, i32 -1946152435, i32 -1946152423, i32 -1946152398, i32 -859832304, i32 -1946150035, i32 2084601857, i32 -2013265920, i32 -1003670962, i32 -1003408819, i32 1391198240, i32 2129838106, i32 -1003146673, i32 -1003933098, i32 1391198216, i32 125042691, i32 69468162, i32 647757887, i32 2120105988, i32 2137456655, i32 -1761607677, i32 2137473026, i32 192151553, i32 1400111106, i32 2130100241, i32 448012304, i32 448315398, i32 380108812, i32 648546304, i32 729022464, i32 2138783754, i32 2137735178, i32 -817889252, i32 -759168994, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 -1005060079, i32 -1711276029, i32 -1946154004, i32 -2147480761, i32 -1003749347, i32 -1003408810, i32 456394251, i32 456130679, i32 2134310921, i32 321912855, i32 70516992, i32 653000959, i32 -1069907964, i32 2130100234, i32 2134573066, i32 2129838090, i32 -826199461, i32 -2147480554, i32 -1005846478, i32 -1005584355, i32 684457992, i32 -859832301, i32 -1005243813, i32 2084667393, i32 2084667393, i32 408420407, i32 621805823, i32 -1004457379, i32 639631855, i32 -838782371, i32 -1719664636, i32 2098544650, i32 -851365285, i32 -2147483288, i32 492044319, i32 -851365285, i32 2084601857, i32 -2013265920, i32 -1004011509, i32 -1003749364, i32 312999937, i32 648544260, i32 2125365258, i32 -1005846495, i32 -1003225048, i32 351272976, i32 -1002962896, i32 -1002700793, i32 -853016064, i32 -848821752, i32 -844627440, i32 -1694498804, i32 -1690304492, i32 -1686110185, i32 -1004011509, i32 -1003749364, i32 312999937, i32 648544260, i32 2125365258, i32 -963444224, i32 -963182072, i32 -962919920, i32 -1879048192, i32 389021697, i32 -1694498811, i32 -859832265, i32 -1946156656, i32 -671088590, i32 -1879048192, i32 -671088600, i32 -671088597, i32 -2147483288, i32 -654311361, i32 -1749024766, i32 -650117057, i32 -2147479422, i32 -654311360, i32 -1749024766, i32 -650117056, i32 -2147479330, i32 -1005846495, i32 352059409, i32 620232959, i32 867696641, i32 -1748959236, i32 -1686110201, i32 -859832265, i32 -1946156656, i32 -671088590, i32 -671088600, i32 -671088597, i32 -2147476624, i32 -1002962940, i32 -666894328, i32 -666894317, i32 -662622024, i32 68157440, i32 68419584, i32 -1005060082, i32 697827336, i32 2105786369, i32 -847249389, i32 -1006030263, i32 411566142, i32 -1803550688, i32 -666894220, i32 -1946155407, i32 -1707081719, i32 -1005060082, i32 697827336, i32 -847249389, i32 -1004981684, i32 630980609, i32 362283039, i32 -1782579178, i32 -1786773483, i32 -1728053245, i32 -666894282, i32 68157441, i32 -1005846495, i32 349700113, i32 618660095, i32 840695810, i32 840957953, i32 -1786707986, i32 -1715470316, i32 -1778384892, i32 -859832265, i32 68419585, i32 -2147480528, i32 -1803550710, i32 -671088524, i32 -1005060002, i32 -1786769623, i32 -813694968, i32 -2147480554, i32 -1803550716, i32 -671088524, i32 -1005060002, i32 -1786769629, i32 -641728458, i32 -1723858942, i32 -859832265, i32 -813694968, i32 -2147480554, i32 -1803550716, i32 -671088524, i32 -1005060002, i32 -1786769638, i32 -859832265, i32 -662699978, i32 -2147476624, i32 68943875, i32 69992904, i32 -1946153631, i32 -1004535801, i32 -1005846409, i32 -1799356415, i32 2084667393, i32 -1004011506, i32 -1778322174, i32 169869313, i32 -1732184832, i32 715653128, i32 -838860784, i32 -1711272187, i32 -830472173, i32 -1003408806, i32 -1003670954, i32 523239455, i32 384040991, i32 -822005158, i32 -1003408806, i32 -1761607679, i32 -1774127884, i32 -1003225077, i32 863240194, i32 -1690241807, i32 -1003146668, i32 380108808, i32 451674172, i32 312999957, i32 317456415, i32 326369291, i32 2125365258, i32 -1070710784, i32 393478157, i32 2125365258, i32 2137735178, i32 -817889024, i32 309854209, i32 733478913, i32 -1073037307, i32 -1072824318, i32 684490752, i32 680020224, i32 684458004, i32 -2147479565, i32 -1002700793, i32 2084618241, i32 402391041, i32 -666894317, i32 -1681915900, i32 -666894295, i32 -1004273570, i32 -1774186783, i32 -868105206, i32 -868105204, i32 -868105203, i32 2084651009, i32 617611391, i32 358088720, i32 626262271, i32 -855522287, i32 -847133681, i32 -851327986, i32 -868105200, i32 2084651009, i32 2084667393, i32 69206016, i32 417857587, i32 418119732, i32 -868105196, i32 -868105195, i32 -847133677, i32 -851327982, i32 417071154, i32 2080571409, i32 2080604177, i32 -1782579161, i32 -1765801982, i32 -1003371497, i32 -1003109354, i32 -1769996284, i32 -1765801982, i32 -1002847207, i32 -1002585064, i32 -1004797938, i32 702283784, i32 -843055085, i32 -817810847, i32 -1765801982, i32 -822005150, i32 -1769996284, i32 -809422237, i32 -1765801982, i32 -813616540, i32 417071152, i32 -1002700793, i32 -1782579177, i32 402391041, i32 -1698693115, i32 2104950796, i32 -1681915883, i32 -1761607670, i32 -2147480362, i32 1371013152, i32 1395654688, i32 2140635162, i32 2134310938, i32 2134573068, i32 -1681915891, i32 -1753219070, i32 -2147480362, i32 -1711276008, i32 -666894317, i32 673185793, i32 -2147480409, i32 417071153, i32 -1782579197, i32 -1003109365, i32 -1757347843, i32 -671088598, i32 -2147476624, i32 -1004011470, i32 715653128, i32 -830472173, i32 -1005768101, i32 -1761607678, i32 -2147478846, i32 -1002962915, i32 465051632, i32 2139930634, i32 -859753893, i32 -1005505955, i32 621806063, i32 -855559587, i32 -2147476624, i32 -1004011506, i32 -1002700793, i32 715653128, i32 -1002962915, i32 -830472173, i32 334757900, i32 -1681915898, i32 -1002622378, i32 468715019, i32 469500023, i32 2146680842, i32 -2147480332, i32 -1002622374, i32 469501559, i32 335282199, i32 70254848, i32 465051624, i32 2138259466, i32 -1070432245, i32 2142732298, i32 2146680842, i32 2147205130, i32 -809422245, i32 -2147480554, i32 -1002700793, i32 2084618241, i32 416555025, i32 402391041, i32 416285160, i32 617349247, i32 2094317578, i32 -1681915900, i32 -666894295, i32 -1004011426, i32 -1769992596, i32 2084651009, i32 1347944480, i32 2103001114, i32 -784334734, i32 -938213262, i32 1499464188, i32 304087049, i32 2095104010, i32 2084667393, i32 1348206624, i32 2107473946, i32 2084683777, i32 1348468768, i32 2111946778, i32 2084700161, i32 -859832293, i32 -784334819, i32 -780140513, i32 -775946208, i32 -666894303, i32 -1795162096, i32 70254592, i32 -1004011505, i32 -1702821889, i32 -937164784, i32 2120122380, i32 -1681915883, i32 -1702887412, i32 -1694498780, i32 674234369, i32 304873476, i32 116129793, i32 183238657, i32 -1698627585, i32 -666894303, i32 -2147480289, i32 -1004011505, i32 -1702821889, i32 -937164784, i32 1449918496, i32 -1004011506, i32 715653128, i32 -830472173, i32 -834588063, i32 -826199454, i32 -671088598, i32 -2147476624, i32 -1003225038, i32 729022472, i32 -817889261, i32 -1005768101, i32 -1769996283, i32 1449918496, i32 -834588063, i32 -826199454, i32 -2147478846, i32 -1002962915, i32 465051624, i32 2139930634, i32 -859753893, i32 -1005505955, i32 621806063, i32 -855559587, i32 -2147476624, i32 -1002700793, i32 -1002962915, i32 -1004011506, i32 715653128, i32 -830472173, i32 334757900, i32 -1681915898, i32 -1002622378, i32 468715019, i32 469500023, i32 2146680842, i32 -2147480233, i32 -1002622374, i32 469501559, i32 335282199, i32 70254848, i32 465051624, i32 2138259466, i32 -1070432247, i32 2142732298, i32 2146680842, i32 2147205130, i32 -809422245, i32 -2147480554, i32 -1002700786, i32 737935368, i32 -809500653, i32 -1004195258, i32 -1005505979, i32 68431872, i32 -851365273, i32 1382285344, i32 2119237658, i32 -1005243801, i32 2100101137, i32 425984087, i32 425198099, i32 425722265, i32 2108047370, i32 2116435978, i32 -788529115, i32 -834666460, i32 -843055066, i32 -666894297, i32 68427776, i32 -809500653, i32 -851365273, i32 -1005243801, i32 -1723858943, i32 -1879048192, i32 2084618241, i32 416285160, i32 416546864, i32 416809012, i32 86510979, i32 2084700161, i32 2084716545, i32 -2038431744, i32 -2147480182, i32 -2147483286, i32 -2147480171, i32 -2147480143, i32 -2147483286, i32 -2147480171, i32 -2147480132, i32 290717712, i32 2113994753, i32 -1946150788, i32 2104836106, i32 -851443693, i32 -731840512, i32 -1786711080, i32 -1002848192, i32 -1753219071, i32 2084601857, i32 -2013265920, i32 -671088618, i32 1382809632, i32 417857624, i32 2116993050, i32 -759168910, i32 -936640398, i32 1524631354, i32 2124578826, i32 -1723858934, i32 -830472156, i32 -759168987, i32 -734003162, i32 -666894297, i32 -1786711098, i32 -1002962926, i32 -1686044673, i32 2084601857, i32 -2013265920, i32 -600178688, i32 196608001, i32 -830472156, i32 -759168987, i32 -868220890, i32 -666894297, i32 -1686044677, i32 -1719599115, i32 2084601857, i32 -2013265920, i32 -1070989311, i32 715653121, i32 371195906, i32 -830472173, i32 -838745083, i32 -733887482, i32 -1786711119, i32 -1002847223, i32 -1753219071, i32 2084601857, i32 -2013265920, i32 -1004273653, i32 845414402, i32 -1707081717, i32 290717712, i32 693370882, i32 -851443693, i32 -731840512, i32 -1786711131, i32 -666894317, i32 -1002848192, i32 -1753219071, i32 2084601857, i32 -2013265920, i32 -734003080, i32 -2147483288, i32 -666894295, i32 -1005846434, i32 -1799352921, i32 2084618241, i32 1347420192, i32 2094055450, i32 -792723342, i32 -936902542, i32 1521221758, i32 316145687, i32 2084683777, i32 2107473930, i32 1453326368, i32 639696895, i32 2107736074, i32 1368916000, i32 2122465290, i32 2119745562, i32 433324093, i32 672669698, i32 -1723858896, i32 -1946152881, i32 -1003487219, i32 -1003225035, i32 -671088598, i32 -847249389, i32 -938213341, i32 -1005059967, i32 321912837, i32 -1072627697, i32 -1004273660, i32 295698434, i32 2089844745, i32 308543492, i32 2103525393, i32 -1005584346, i32 93847560, i32 2091155466, i32 2098855938, i32 2091941898, i32 1042808840, i32 545784200, i32 1424752672, i32 2092204042, i32 -1003487193, i32 70778888, i32 -784334811, i32 -822083548, i32 539230352, i32 2091155457, i32 -864026586, i32 -859832282, i32 -826277850, i32 -826277850, i32 673447940, i32 -872415194, i32 174325761, i32 -1707016194, i32 -1702887419, i32 841482240, i32 -1702887422, i32 -1711276032, i32 2080473089, i32 -666894297, i32 -671088618, i32 -813694918, i32 -654204252, i32 -2147479497, i32 -1005060082, i32 697827336, i32 -847249389, i32 -1004457364, i32 371458079, i32 -1707016194, i32 -666815905, i32 -662699981, i32 -1002700791, i32 670826500, i32 -1748959234, i32 -671088583, i32 -792723400, i32 -1002700766, i32 -1681850369, i32 -662699980, i32 -1003933089, i32 648806401, i32 -1698627586, i32 648806402, i32 -1765801981, i32 -671088598, i32 -2147476624, i32 -1002700793, i32 -1003487202, i32 -662699981, i32 334757900, i32 456138736, i32 724566784, i32 590348351, i32 2134310922, i32 -1769996277, i32 -1002700791, i32 670826500, i32 -1748959234, i32 -666894279, i32 -792723400, i32 -1002700766, i32 -1681850369, i32 -822005157, i32 -662699980, i32 -2147480554, i32 -662699980, i32 -1946156638, i32 -2147476624, i32 -864026565, i32 615514120, i32 -1005060082, i32 321912842, i32 413925412, i32 724582400, i32 2084618241, i32 -826277880, i32 413663461, i32 496500744, i32 312999944, i32 2108260362, i32 697827336, i32 -847249389, i32 -1005505975, i32 420479038, i32 -1728053246, i32 -666894275, i32 2084634625, i32 -734003080, i32 1360003104, i32 -822005140, i32 2094055450, i32 -1004457364, i32 312999956, i32 572522559, i32 2116681738, i32 -847249389, i32 -838782356, i32 -662699981, i32 -1002700791, i32 670826500, i32 -1748959234, i32 -671088583, i32 -792723400, i32 -1002700766, i32 -1681850369, i32 -662699980, i32 -2147479152, i32 2084618241, i32 417071165, i32 -1782579196, i32 68943873, i32 69992904, i32 -1946153631, i32 416546864, i32 416285160, i32 419168308, i32 619184143, i32 111677041, i32 2084667393, i32 2084683777, i32 -2038431744, i32 -2147479843, i32 -2147479919, i32 -2147479919, i32 -2147479903, i32 -2147479894, i32 -2147479940, i32 -2147479937, i32 -2147479937, i32 -2147479929, i32 -2147479921, i32 -2147483286, i32 1373372448, i32 2107506714, i32 -2147479834, i32 -1004535794, i32 706740232, i32 -838860781, i32 -1004457374, i32 -1004195231, i32 1377828896, i32 2116419610, i32 -2147479834, i32 -1004535794, i32 706740232, i32 -838860781, i32 -1004457372, i32 -1004195229, i32 1377828896, i32 2116419610, i32 -2147479834, i32 -937426913, i32 -2147479834, i32 417865733, i32 1373634592, i32 715653120, i32 2107736090, i32 -780140430, i32 -937951118, i32 1503658492, i32 304087049, i32 2124578826, i32 -830472164, i32 -780140514, i32 -666894303, i32 -1004011505, i32 -1702821889, i32 -937426927, i32 -2147479834, i32 362283010, i32 -666894317, i32 -847133696, i32 -1004420095, i32 -1790967743, i32 -1004157951, i32 1382285344, i32 2116419610, i32 -2147479834, i32 833365376, i32 -1698693103, i32 833365516, i32 -1698693105, i32 833357824, i32 -1698693107, i32 833357864, i32 -1698693109, i32 833365056, i32 -1698693111, i32 833364880, i32 -1698693113, i32 833355923, i32 -1698693115, i32 833368540, i32 -1698693117, i32 833368550, i32 -1765801980, i32 -1003225084, i32 -666894328, i32 -2147479842, i32 967605254, i32 1034976256, i32 -1698693117, i32 -1761607678, i32 -2147479876, i32 967623479, i32 1034994480, i32 -1698693117, i32 -1761607678, i32 -2147479876, i32 967623477, i32 1034994486, i32 -1698693117, i32 -1761607678, i32 -2147479876, i32 967610370, i32 1034981377, i32 -1698693117, i32 -1761607678, i32 -2147479876, i32 967610386, i32 1034981393, i32 -1698693117, i32 -1761607678, i32 -2147479876, i32 967634032, i32 1035005039, i32 -1698693117, i32 -1761607678, i32 -2147479876, i32 -1003225084, i32 -666894317, i32 -979304448, i32 -1790967803, i32 93847553, i32 -979042304, i32 1382285344, i32 2116419610, i32 -817889272, i32 86511338, i32 2084667393, i32 2084683777, i32 -2038431744, i32 -2147479823, i32 -2147483286, i32 -2147479810, i32 -2147479791, i32 -2147479762, i32 -2147479810, i32 -2147479777, i32 -1003225084, i32 -666894317, i32 -837222400, i32 -1790967803, i32 93847553, i32 1444937760, i32 -837222400, i32 -817889272, i32 -1748962705, i32 -1002848192, i32 -1753219071, i32 2084601857, i32 -2013265920, i32 1374421024, i32 417857624, i32 2108604442, i32 -759168910, i32 -936640398, i32 1526204218, i32 2126151690, i32 -759168987, i32 -830472156, i32 -838860762, i32 -1790967805, i32 1445199904, i32 -834666458, i32 -666894297, i32 -1748962724, i32 -1002962926, i32 -1686044673, i32 2084601857, i32 -2013265920, i32 -1070989311, i32 715653121, i32 362283010, i32 -830472173, i32 -847133691, i32 -838745082, i32 -1790967805, i32 1445199904, i32 -834550778, i32 -1748962738, i32 -1002847223, i32 -1753219071, i32 2084601857, i32 -2013265920, i32 -1004273653, i32 845414402, i32 -1707019705, i32 -662700013, i32 -837222400, i32 -1790967804, i32 93847553, i32 1444937760, i32 -837222400, i32 -1748962752, i32 -666894317, i32 -1002848192, i32 -1753219071, i32 2084601857, i32 -2013265920, i32 833365376, i32 -1698693103, i32 833365516, i32 -1698693105, i32 833357824, i32 -1698693107, i32 833357864, i32 -1698693109, i32 833365056, i32 -1698693111, i32 833364880, i32 -1698693113, i32 833355923, i32 -1698693115, i32 833368540, i32 -1698693117, i32 833368550, i32 -1765801980, i32 -1003225084, i32 -666894328, i32 -2147479822, i32 967605254, i32 1034976256, i32 -1698693117, i32 -1761607678, i32 -2147479744, i32 967623479, i32 1034994480, i32 -1698693117, i32 -1761607678, i32 -2147479744, i32 967623477, i32 1034994486, i32 -1698693117, i32 -1761607678, i32 -2147479744, i32 967634032, i32 1035005039, i32 -1698693117, i32 -1761607678, i32 -2147479744, i32 967610370, i32 1034981378, i32 -1698693117, i32 -1761607678, i32 -2147479744, i32 967610386, i32 1034981394, i32 -1698693117, i32 -1761607678, i32 -2147479744, i32 -2147479823, i32 -1005846522, i32 -1732182017, i32 2084618241, i32 2084634625, i32 2084651009, i32 2084667393, i32 2084683777, i32 2084814849, i32 -1782579199, i32 -1003225074, i32 729022472, i32 729284609, i32 -817889261, i32 -658427298, i32 -813694950, i32 -666894317, i32 2080587777, i32 2080604161, i32 417333373, i32 841220099, i32 -1707081722, i32 841220096, i32 -1707081724, i32 -855523200, i32 -851328895, i32 -2147479672, i32 1365508128, i32 2119319578, i32 -767557518, i32 -936902542, i32 -830357376, i32 1454112800, i32 653328383, i32 -821968767, i32 451936508, i32 322174986, i32 618668032, i32 2137210890, i32 417333364, i32 841220099, i32 -1707081722, i32 841220096, i32 -1707081724, i32 -847134590, i32 -842940285, i32 -2147479651, i32 1373896736, i32 2119843866, i32 -767557518, i32 -936902542, i32 -830357374, i32 1454112800, i32 653328383, i32 -821968765, i32 451936508, i32 322437142, i32 417333305, i32 304087065, i32 2141421578, i32 2142732298, i32 417333373, i32 304087069, i32 2141421578, i32 417333364, i32 304087060, i32 2141421578, i32 -813580168, i32 -809385852, i32 -2147480554, i32 2084618241, i32 417071165, i32 -1782579196, i32 68943872, i32 69992904, i32 -1946153631, i32 416285160, i32 823394309, i32 -1723858941, i32 823394310, i32 -1790967806, i32 -1946152881, i32 86511543, i32 672399362, i32 -851443693, i32 -2038431744, i32 -2147479618, i32 -2147479618, i32 -2147479614, i32 -2147479618, i32 -2147479599, i32 -2147479566, i32 -2147479566, i32 617349183, i32 -859725148, i32 2084601857, i32 -2013265920, i32 2084651009, i32 417857593, i32 1386741819, i32 1347944480, i32 617349183, i32 2103001114, i32 -784334734, i32 -938213262, i32 2104049690, i32 -1004797929, i32 -1715404801, i32 -784334773, i32 -859725148, i32 2084601857, i32 -2013265920, i32 -1005322227, i32 68681729, i32 617349183, i32 2106949636, i32 -847249355, i32 -859725148, i32 -1002700786, i32 737935368, i32 -809500653, i32 -1002622391, i32 469499966, i32 -1749024766, i32 -666894220, i32 -1005584359, i32 2098528261, i32 621805569, i32 -1795162101, i32 -1748959236, i32 -1005060063, i32 362545169, i32 630718719, i32 832569347, i32 832831489, i32 2116386826, i32 -1782513675, i32 -1786707980, i32 -2147479569, i32 -1005505937, i32 487587856, i32 -855559569, i32 -1749024766, i32 -671088524, i32 -2147476624, i32 70778880, i32 -1003487219, i32 -938213341, i32 -1005059967, i32 321912837, i32 -1072627697, i32 -1004273660, i32 867434499, i32 -1757413373, i32 -1070333944, i32 -2147479554, i32 -1003225035, i32 295698434, i32 2089844745, i32 308543492, i32 2103525393, i32 -1005584346, i32 93847560, i32 2091155466, i32 2098855938, i32 2091941898, i32 673980418, i32 545784232, i32 1042808840, i32 2092204042, i32 -826277869, i32 -1003487193, i32 69992456, i32 -784334811, i32 -822083548, i32 539230256, i32 2091155457, i32 -864026586, i32 -859832282, i32 -1686110189, i32 -868220890, i32 2084651009, i32 674496512, i32 -817889261, i32 1350303776, i32 2105360410, i32 -784334734, i32 -938213262, i32 1434189856, i32 674504706, i32 -817889261, i32 -851443674, i32 -809500634, i32 -734003162, i32 -1702887410, i32 841482240, i32 -1702887413, i32 -2147479505, i32 -872415194, i32 -872415194, i32 -872415194, i32 -872415194, i32 -872415194, i32 -1702887419, i32 841482240, i32 -1702887422, i32 -1711276032, i32 2080473089, i32 -872415194, i32 -666894297, i32 483196424, i32 -662700013, i32 -826277830, i32 -859725148, i32 -1002700786, i32 737935368, i32 -809500653, i32 -1002622391, i32 469499966, i32 -1681915897, i32 -1004011506, i32 380108808, i32 -830472183, i32 -1003749282, i32 -1765799117, i32 -666894276, i32 -1004535771, i32 2107785231, i32 2107801602, i32 2115682306, i32 183238657, i32 -1774190590, i32 2099953666, i32 1056178192, i32 -1690242787, i32 70778928, i32 -813616546, i32 -2147480554, i32 -566165504, i32 -591331328, i32 -587137024, i32 -582942720, i32 -578748416, i32 -574554112, i32 -570359808, i32 -1005846514, i32 2080522241, i32 684457992, i32 -859832301, i32 -938475386, i32 1427111999, i32 -1005768119, i32 416022590, i32 -1732247549, i32 -1728053231, i32 -2147479435, i32 -1728053236, i32 -1005846490, i32 -1005584255, i32 -1005322203, i32 2098561039, i32 2098577410, i32 2102525954, i32 169869313, i32 -1786773502, i32 2094923778, i32 1042284570, i32 -1711276023, i32 67895344, i32 -859753890, i32 -2147479439, i32 -641728458, i32 -666894295, i32 -1005846434, i32 -1799353599, i32 69468161, i32 -601882624, i32 -602144768, i32 -602406912, i32 -602669056, i32 -602931200, i32 -603193344, i32 -1774190588, i32 -601620480, i32 -603193344, i32 -2147480554, i32 -601620480, i32 -1879048192, i32 -868220865, i32 -658505712, i32 -1006108631, i32 -864026565, i32 -1005060082, i32 413663461, i32 496500744, i32 312999944, i32 2108260362, i32 697827336, i32 -847249389, i32 413401317, i32 307232777, i32 613154824, i32 -1799356410, i32 537657453, i32 2094055434, i32 -859753876, i32 -1004457364, i32 -1778384895, i32 -847249389, i32 537657896, i32 2094055434, i32 -859753876, i32 -1004457364, i32 -1778384895, i32 -1005846486, i32 -1005584341, i32 411574248, i32 416548652, i32 416022737, i32 2094317578, i32 815005709, i32 953679872, i32 823918595, i32 -1723858938, i32 815005703, i32 371195935, i32 -1723858915, i32 -1711275997, i32 -2147479356, i32 -1786773478, i32 -1715470311, i32 -859832255, i32 622067713, i32 -1005060052, i32 -1723858931, i32 630980735, i32 -1782579181, i32 429916208, i32 -843055077, i32 -666894303, i32 -666894302, i32 -1003487217, i32 389021697, i32 -1694433282, i32 -1711276014, i32 -666894301, i32 -2147479349, i32 429658088, i32 -843055077, i32 -666894303, i32 -666894301, i32 -1003487217, i32 389021697, i32 -1694433282, i32 -2147479349, i32 -658505712, i32 -671088606, i32 -671088605, i32 -1003487138, i32 -1761604948, i32 2084601857, i32 -2013265920, i32 -1002700786, i32 -1003225042, i32 737935368, i32 538968108, i32 -809500653, i32 -838782356, i32 393740289, i32 661913601, i32 128454872, i32 -817889264, i32 -1004457364, i32 -1778384895, i32 -2038431744, i32 -2147483288, i32 -2147480921, i32 -2147480580, i32 -2147478807, i32 -2147479476, i32 -868220864, i32 -662700016, i32 -1005060046, i32 697827336, i32 -847249389, i32 537657469, i32 -859753893, i32 -1005505957, i32 -1795162111, i32 2084601857, i32 -2013265920, i32 673447943, i32 -566034432, i32 -734003080, i32 -2147479152, i32 -864026565, i32 615514120, i32 -1005060082, i32 321912842, i32 413663461, i32 496500744, i32 312999944, i32 2108260362, i32 697827336, i32 -847249389, i32 -1005768119, i32 416022590, i32 -1732247550, i32 -666894275, i32 724582400, i32 -822005140, i32 -1003408788, i32 2084618241, i32 2084634625, i32 2084651009, i32 421789949, i32 1347944480, i32 2103001114, i32 2084683777, i32 107483408, i32 2084700161, i32 -868220808, i32 413925412, i32 421003376, i32 420479096, i32 -826277880, i32 418644056, i32 1501038394, i32 2138783754, i32 -1761607679, i32 -2038431744, i32 -2147479273, i32 -2147479272, i32 -2147479262, i32 -2147479251, i32 -2147479248, i32 -2147479245, i32 -2147483286, i32 -2147479173, i32 619450112, i32 854328832, i32 -1765801981, i32 -1003487226, i32 -1694433281, i32 -784334811, i32 -817889244, i32 -843055066, i32 -666894297, i32 -2147479173, i32 619450112, i32 854328832, i32 -1765801981, i32 -1003487226, i32 -1694433281, i32 -784334811, i32 -817889244, i32 -843055066, i32 -838860762, i32 -666894297, i32 -2147479173, i32 -937689057, i32 1440743456, i32 -2147479262, i32 -937689056, i32 1440743456, i32 -2147479262, i32 -1946152597, i32 -666894317, i32 -1070988800, i32 2123268105, i32 581435453, i32 581435508, i32 661913628, i32 326369300, i32 2125889546, i32 636289023, i32 1433403424, i32 368312336, i32 326369282, i32 660340767, i32 -1782579161, i32 2080473089, i32 2135015425, i32 366739458, i32 970981384, i32 635174919, i32 2109849630, i32 98304001, i32 -1778384892, i32 98828296, i32 -1946152594, i32 -2147479192, i32 2109866014, i32 102760449, i32 98828296, i32 2120351758, i32 -1711276028, i32 2107998209, i32 -1946152594, i32 -2147479195, i32 2109866014, i32 102760449, i32 2115633153, i32 97255432, i32 2114781198, i32 -1795162105, i32 2114076702, i32 107216897, i32 107216904, i32 98041864, i32 -1946152594, i32 -2147479192, i32 2109882398, i32 107216897, i32 2107998209, i32 -1946152594, i32 98566152, i32 2107768844, i32 -1778319386, i32 392429570, i32 -1946152594, i32 -2147479152, i32 -1004535802, i32 -1711210497, i32 -1879048192, i32 -1946152597, i32 -1004535794, i32 706740225, i32 -838860774, i32 -830357384, i32 -826163072, i32 -872300415, i32 -851328894, i32 -821968765, i32 308543490, i32 576980021, i32 -834551676, i32 -1879048192, i32 86511998, i32 824967171, i32 -2038431744, i32 -2147479152, i32 -2147479163, i32 -2147479166, i32 -2147479166, i32 -1003487214, i32 -1694433281, i32 -1698693108, i32 -1069939712, i32 -1003225084, i32 -666894317, i32 -666894328, i32 -1005060082, i32 362283016, i32 295174172, i32 2105655306, i32 -842977097, i32 -813616971, i32 -817889272, i32 69468168, i32 -1005060082, i32 -1004797879, i32 429916392, i32 698875912, i32 2112012300, i32 -830472173, i32 -1004457378, i32 639631376, i32 -1005243795, i32 -1711276026, i32 -1004535683, i32 -1778384892, i32 -1765801981, i32 -834666434, i32 -2147479133, i32 2103787521, i32 -851365267, i32 2080505857, i32 -1778384891, i32 -1005584346, i32 -1004273535, i32 -1005322203, i32 -2147479114, i32 -1004195207, i32 -1005243795, i32 -1003408788, i32 657457215, i32 993525766, i32 -1753219068, i32 1060634635, i32 -1686110204, i32 -2147479116, i32 70254598, i32 -2147479116, i32 70254603, i32 70778882, i32 2142306308, i32 2119630863, i32 2119663618, i32 2103951362, i32 199491585, i32 -1761607678, i32 2100969474, i32 539754540, i32 -1004457378, i32 69730336, i32 -826199444, i32 639631376, i32 1046741008, i32 -1778384893, i32 -1774190590, i32 -830393762, i32 -1003487192, i32 -1003225042, i32 393740289, i32 661913601, i32 128455119, i32 -1694433608, i32 -817889264, i32 -1005322146, i32 -1790965337, i32 -2038431744, i32 -2147483288, i32 -2147480921, i32 -2147480580, i32 -2147478807, i32 -2147483288, i32 -1946152435, i32 2084618241, i32 -859717508, i32 -868106115, i32 -868106100, i32 2084634625, i32 -868106119, i32 -855523202, i32 2084651009, i32 418382127, i32 418645522, i32 416022721, i32 2138259466, i32 2096578570, i32 962592772, i32 -1711276030, i32 -1072431100, i32 291504129, i32 419168318, i32 -1757413348, i32 -817889215, i32 -1004158849, i32 -1749024765, i32 376176671, i32 -2147479058, i32 443285566, i32 -1765801978, i32 69206018, i32 169869313, i32 -1711210497, i32 -666894317, i32 -2147479064, i32 -1004011476, i32 -1769996272, i32 648806527, i32 -826277861, i32 -666894303, i32 447742000, i32 447483880, i32 -1003225073, i32 -1690238977, i32 -1761607672, i32 -826277861, i32 -666894303, i32 -1003225073, i32 -1690238977, i32 -2147479035, i32 169869313, i32 -1711210497, i32 -666894317, i32 -1004158849, i32 376176671, i32 291504129, i32 -1698627590, i32 -1946152398, i32 2084601857, i32 -2013265920, i32 -671088589, i32 -1002962933, i32 -1002700791, i32 670826497, i32 -1748959234, i32 -666894317, i32 -666779521, i32 -1002585985, i32 469500024, i32 2147205132, i32 -1748959235, i32 -1879048192, i32 -1069930496, i32 -813580164, i32 -872300419, i32 -872300404, i32 -872300423, i32 -872300418, i32 70778944, i32 -813694949, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 70778976, i32 -813694949, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 70778882, i32 196608001, i32 -1686044673, i32 -666894317, i32 -1002585985, i32 402391071, i32 70778896, i32 -1681850374, i32 -1879048192, i32 -666894317, i32 -670973825, i32 -666894317, i32 -1002585985, i32 -809500552, i32 -671088588, i32 -1879048192, i32 -1069883392, i32 -813579776, i32 -1069938688, i32 -813580164, i32 -872300419, i32 -872300404, i32 -872300423, i32 -872300418, i32 70778944, i32 -813694949, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 70778882, i32 196608001, i32 -1686044673, i32 -666894317, i32 -1002585985, i32 402391071, i32 70778896, i32 -1681850374, i32 -1879048192, i32 -1069883392, i32 -813579776, i32 -1069924352, i32 -813580164, i32 -872300419, i32 -872300404, i32 -872300423, i32 -872300418, i32 70778882, i32 196608001, i32 -1686044673, i32 -666894317, i32 -1002585985, i32 402391071, i32 70778896, i32 -1681850374, i32 -1879048192, i32 -1005846521, i32 818937858, i32 -1728053166, i32 -666894295, i32 -1004273570, i32 -1774188273, i32 2084634625, i32 -1004011506, i32 353632287, i32 421003320, i32 715653128, i32 -1723858896, i32 819724289, i32 -830472173, i32 -1715470326, i32 -1003670962, i32 -1003408819, i32 1391198240, i32 2129838106, i32 -1003146673, i32 -1003933098, i32 447791110, i32 1391198216, i32 -2147478913, i32 -1003670952, i32 -1003408809, i32 1391198240, i32 2129838106, i32 -1003146663, i32 -1003933094, i32 447791122, i32 125042689, i32 69468162, i32 648020031, i32 2120368132, i32 2137489423, i32 -1753219070, i32 70516736, i32 1400111106, i32 2130100241, i32 448012304, i32 380108812, i32 648546304, i32 729022464, i32 2138259466, i32 2137735178, i32 -817889252, i32 -759168994, i32 -666894303, i32 -1002962929, i32 -1686044673, i32 -1005584367, i32 353632287, i32 -1723858938, i32 -1719664630, i32 -1946152223, i32 -1005846521, i32 68157440, i32 -2147478937, i32 -671088598, i32 -1004273570, i32 -1774188329, i32 -645922762, i32 -2147480554, i32 -1003749347, i32 -1782579195, i32 -1003408806, i32 456132215, i32 299630604, i32 -2147478870, i32 -1003408810, i32 456394251, i32 456130679, i32 2134310922, i32 321912855, i32 70516992, i32 653000959, i32 -1069907966, i32 2130100234, i32 2128527370, i32 2134573066, i32 2129838090, i32 -826199461, i32 -2147480554, i32 -1005322190, i32 -1005584355, i32 693370888, i32 -851443693, i32 -1005768101, i32 408420415, i32 621805823, i32 -1719664633, i32 2097987594, i32 -859753893, i32 -1005505955, i32 621806063, i32 -855559587, i32 -2147483288, i32 416284780, i32 416548848, i32 -1728053234, i32 68157442, i32 -1004981674, i32 -1004719537, i32 630718527, i32 2098790404, i32 2103263233, i32 2102525967, i32 -1711276029, i32 -851365297, i32 -2147478824, i32 2102476802, i32 -851365297, i32 -2147478824, i32 -1004981671, i32 -1004719526, i32 2106949633, i32 2111160322, i32 -847170983, i32 -842976678, i32 -1005505955, i32 621806063, i32 -855559587, i32 483131422, i32 -859753893, i32 -1005768101, i32 -1799356415, i32 2084601857, i32 -2013265920, i32 -1005846495, i32 -1003225048, i32 351272976, i32 -1002962896, i32 -1002700793, i32 -1694498812, i32 -1690304500, i32 -1686110193, i32 -1879048192, i32 389021697, i32 -1694498811, i32 -859832265, i32 -1946156656, i32 -671088590, i32 -1879048192, i32 -671088600, i32 -671088597, i32 -2147483288, i32 -645922753, i32 -1749024766, i32 -641728449, i32 -2147479422, i32 -645922752, i32 -1749024766, i32 -641728448, i32 -2147479330, i32 -1002700793, i32 871890947, i32 -1753218991, i32 -864026565, i32 615514120, i32 -1005060082, i32 321912842, i32 413663461, i32 496500744, i32 312999944, i32 2108260362, i32 697827336, i32 -847249389, i32 -1003146679, i32 460587070, i32 -1690304510, i32 -666894275, i32 724582400, i32 -822005140, i32 -1003408788, i32 -1761607679, i32 2084782081, i32 457965816, i32 2084634625, i32 2084651009, i32 1349517344, i32 82318116, i32 413925412, i32 2084683777, i32 1348468768, i32 -868220808, i32 820248580, i32 -1707081721, i32 2104573978, i32 1499726332, i32 308543497, i32 460587149, i32 2121678858, i32 711196672, i32 -826277880, i32 -2038431744, i32 -2147483286, i32 -2147483286, i32 -2147483286, i32 -2147483286, i32 -2147478740, i32 -2147478725, i32 -2147478716, i32 -2147483286, i32 -1003225084, i32 -666894317, i32 -666894328, i32 -1004195659, i32 443023418, i32 -1702821890, i32 539230266, i32 -1005060082, i32 630720256, i32 295174164, i32 2098790410, i32 -855560009, i32 -834588491, i32 -817889272, i32 -2147479152, i32 -834666468, i32 -784334818, i32 -666894303, i32 -1004011505, i32 -1702821889, i32 -1004273647, i32 2112258063, i32 -1702821910, i32 -2147479152, i32 -834666468, i32 -784334818, i32 -666894303, i32 -1004011505, i32 -1702821889, i32 -937164783, i32 2111946778, i32 2112258063, i32 -1702821920, i32 -2147479152, i32 -1946152881, i32 672669698, i32 -1003487219, i32 -1003225035, i32 -847249389, i32 -938213341, i32 -1005059967, i32 321912837, i32 -1004273660, i32 295698434, i32 308543492, i32 2103525393, i32 -1005584346, i32 93847560, i32 2091155466, i32 2098855938, i32 2091941898, i32 1042808840, i32 2092204042, i32 -1003487193, i32 69992456, i32 -784334811, i32 -822083548, i32 539230256, i32 2091155457, i32 -864026586, i32 2084782081, i32 457965816, i32 -817889242, i32 -868220890, i32 674496512, i32 -817889261, i32 2084651009, i32 1350303776, i32 820248580, i32 -1707081723, i32 2105360410, i32 -784334734, i32 -938213262, i32 1434189856, i32 674504706, i32 -817889261, i32 -851443674, i32 -809500634, i32 -734003162, i32 -872415194, i32 -1702887419, i32 841482240, i32 -1702887422, i32 -1711276032, i32 2080473089, i32 -666894297, i32 -662700013, i32 70778920, i32 -826277830, i32 -813587804, i32 -2147479497, i32 -666894295, i32 -1005846434, i32 -1799354389, i32 2084618241, i32 1347420192, i32 2098003994, i32 -788529038, i32 -938475406, i32 1495007740, i32 299630601, i32 1158939152, i32 1498939900, i32 295174153, i32 702283776, i32 -843055076, i32 -784334818, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -1004535791, i32 371458079, i32 -1774190487, i32 -1005846514, i32 684457992, i32 -859832301, i32 -838782391, i32 439386088, i32 -822083574, i32 590364790, i32 -788529151, i32 -822083583, i32 -1004719532, i32 -1004195242, i32 416022760, i32 281804821, i32 1158939148, i32 -784334818, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -1004535791, i32 -838782392, i32 438305256, i32 304087060, i32 706756609, i32 -838860781, i32 442761276, i32 308543519, i32 299630601, i32 366739467, i32 2110636042, i32 2120073226, i32 -843054848, i32 -662700013, i32 -666894320, i32 -671088598, i32 -666894328, i32 -822083571, i32 -822083574, i32 -1946151897, i32 70516770, i32 125042689, i32 70254608, i32 -549257216, i32 2084782081, i32 2084601857, i32 -733925887, i32 70516766, i32 -549257216, i32 -734003080, i32 -553451520, i32 -733925824, i32 -666894317, i32 -868106192, i32 -868106191, i32 613285886, i32 -859755008, i32 -662700013, i32 -863949312, i32 2084782081, i32 2084782081, i32 -1946151893, i32 -671088624, i32 -1005846514, i32 684457992, i32 -859832301, i32 1158939208, i32 -784334818, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -937426927, i32 -838782377, i32 1444937760, i32 -838782376, i32 70516748, i32 -620756956, i32 -784334811, i32 -671088602, i32 -671088602, i32 -666894297, i32 1163132936, i32 -784334818, i32 -666894303, i32 -1005060081, i32 -1719599105, i32 -937426927, i32 -838782375, i32 1444937760, i32 -1070366721, i32 2132934665, i32 -838782374, i32 1429209120, i32 2097266689, i32 69992912, i32 -1946153631, i32 116129796, i32 2130821121, i32 -1946153631, i32 68943874, i32 69992904, i32 -1946153631, i32 -1002962926, i32 -1686044673, i32 -671088598, i32 -2147480921, i32 -671088598, i32 2084601857, i32 -2013265920, i32 -666894295, i32 2084618241, i32 1347420192, i32 -1946151897, i32 2094055450, i32 -1004535801, i32 -792723342, i32 -937164686, i32 -767557602, i32 2084651009, i32 426254353, i32 1517027836, i32 317456393, i32 2129313802, i32 720109568, i32 -826277860, i32 -666894303, i32 -1003487217, i32 -1694433281, i32 -1005060079, i32 2084798465, i32 -1719664633, i32 -545062912, i32 -811597812, i32 -1946151893, i32 -734003080, i32 -671088598, i32 -2147476624, i32 -1946151893, i32 -671088598, i32 -2147476624, i32 -671088622, i32 -1002700792, i32 -1681850369, i32 -1879048192, i32 -666894318, i32 -1002700792, i32 -1748959233, i32 -1879048192, i32 -1002962937, i32 2084618241, i32 397934593, i32 416546872, i32 2084634625, i32 -1686110204, i32 -666894295, i32 -1005322146, i32 -1790965955, i32 415760486, i32 2084651009, i32 814219265, i32 2084667393, i32 -1803550712, i32 -1946150788, i32 -817889261, i32 -1003749372, i32 -666894328, i32 -846135296, i32 -826277880, i32 2101411841, i32 71041024, i32 2084683777, i32 2084700161, i32 69468161, i32 102760449, i32 1109393420, i32 174325761, i32 -872415112, i32 -1707016194, i32 619184135, i32 619446288, i32 -666894317, i32 -1698693114, i32 -1003749372, i32 -666894328, i32 -986644480, i32 -826277880, i32 -2147478427, i32 1364459552, i32 2098528282, i32 -788529038, i32 -936640398, i32 -759168994, i32 418390033, i32 1525416444, i32 317456393, i32 2129838090, i32 720109568, i32 -826277860, i32 -666894303, i32 -1003749361, i32 -1698627585, i32 -1003487215, i32 -1769996270, i32 312999937, i32 178782209, i32 111678570, i32 2132738057, i32 -2038431744, i32 2132492303, i32 -2147478408, i32 2132492302, i32 -2147478408, i32 2132492300, i32 -2147478406, i32 2132492301, i32 -2147478406, i32 2132492303, i32 -2147478406, i32 2132492302, i32 -2147478406, i32 2134065154, i32 -1757413356, i32 -2147478405, i32 -1690304494, i32 -1686110203, i32 -1681915873, i32 2114076673, i32 71041025, i32 -2147478454, i32 -1005846478, i32 -1002962915, i32 684457992, i32 -859832301, i32 -1002622373, i32 465051632, i32 2143272970, i32 -809422245, i32 -1005505955, i32 621806063, i32 -855559587, i32 -2147476624, i32 -1803550713, i32 -1946150788, i32 -817889261, i32 -1003749372, i32 -666894328, i32 -846135296, i32 -826277880, i32 -1686110205, i32 -671088598, i32 -2147476624, i32 -1005846478, i32 684457992, i32 -859832301, i32 -1005768101, i32 -2147478846, i32 -1005846514, i32 -1002700793, i32 -1002962915, i32 684457992, i32 -859832301, i32 334757900, i32 -1681915898, i32 -1002622378, i32 468715019, i32 469500023, i32 2146680842, i32 -2147478359, i32 -1002622374, i32 469501559, i32 70254848, i32 465051632, i32 2138259466, i32 -1070432249, i32 2142732298, i32 335282199, i32 2146680842, i32 2147205130, i32 -809422245, i32 -1069940734, i32 -1003225084, i32 -666894317, i32 -666894328, i32 -813616971, i32 -817889272, i32 -2147480554, i32 71041024, i32 -1005322226, i32 693370888, i32 -851443693, i32 -1004981690, i32 -1004719547, i32 1368916000, i32 2111422490, i32 1172046736, i32 -1003408793, i32 68694016, i32 -847170969, i32 456654935, i32 456393235, i32 456130969, i32 2138783754, i32 2138259466, i32 -817889244, i32 -775946203, i32 -864026586, i32 2084700161, i32 -838860762, i32 2084716545, i32 -834666458, i32 2084732929, i32 -830472154, i32 2084749313, i32 -826277850, i32 2084765697, i32 -822083546, i32 2084782081, i32 -817889242, i32 2084798465, i32 -813694938, i32 -666894297, i32 -851443693, i32 68689920, i32 -847170969, i32 -666894257, i32 436732157, i32 278659082, i32 -1004981659, i32 2111422474, i32 -842976667, i32 639696895, i32 -838335960, i32 -1736441842, i32 -834141616, i32 -829947304, i32 -670563792, i32 -670563784, i32 -670563776, i32 -670563768, i32 -670563736, i32 -670563728, i32 -670563720, i32 -670563712, i32 -671088561, i32 -1748964235, i32 -1879048192, i32 67895296, i32 68943888, i32 639107073, i32 165412865, i32 371195905, i32 -1786773502, i32 80478209, i32 -1715404805, i32 -859307472, i32 -670563784, i32 -670563776, i32 -670563768, i32 67895296, i32 -834141616, i32 -829947304, i32 1386741792, i32 2120892442, i32 68943904, i32 1717043201, i32 165412865, i32 1449394177, i32 -1786773502, i32 80478209, i32 -1715404805, i32 -859307424, i32 -670563736, i32 -670563728, i32 -670563720, i32 -670563712, i32 67895296, i32 -825752952, i32 -821558640, i32 -825752936, i32 -821558624, i32 67895296, i32 68943888, i32 -817364312, i32 660078593, i32 165412865, i32 393478145, i32 -1786773502, i32 80478209, i32 -1715404805, i32 -859307344, i32 -670563656, i32 395051019, i32 666370111, i32 2096676865, i32 -813169984, i32 -859307320, i32 -813169968, i32 -813169960, i32 -671088561, i32 -1749024766, i32 -1879048192, i32 2084601857, i32 -2013265920, i32 -1005846514, i32 684457992, i32 -859832301, i32 -1002622363, i32 466092266, i32 2084667393, i32 632881151, i32 -996998592, i32 -997260744, i32 80478209, i32 617349135, i32 2094170124, i32 -1702887413, i32 -987561207, i32 639696895, i32 2117746700, i32 -1707081724, i32 84934657, i32 621805583, i32 -2147478215, i32 -855112885, i32 -734003080, i32 -2147483288, i32 -997260752, i32 -996998592, i32 -1732247548, i32 -846724269, i32 -1946151361, i32 -996474029, i32 -996998600, i32 -997260760, i32 84934657, i32 621805583, i32 2094088197, i32 626262017, i32 -1723858940, i32 84934657, i32 621805583, i32 -2147478193, i32 -997260752, i32 2084683777, i32 -855113160, i32 -855112885, i32 147587073, i32 630783999, i32 1025507336, i32 -859307472, i32 -846200055, i32 -670039271, i32 70518785, i32 563609663, i32 -817889261, i32 -846131993, i32 -1004991258, i32 2106687493, i32 630718465, i32 -1786707971, i32 2106687492, i32 -847180570, i32 -1711276029, i32 -841939633, i32 -2147478162, i32 151781384, i32 -842201842, i32 67895296, i32 285999124, i32 684474369, i32 -859832301, i32 -868146422, i32 -868146421, i32 -868146420, i32 -868146419, i32 -867695831, i32 -867695830, i32 -867695904, i32 -671088555, i32 -997260576, i32 618135615, i32 160694273, i32 1141899265, i32 -1786773460, i32 -1790967803, i32 156499969, i32 1360003073, i32 1762656257, i32 -2147478145, i32 617349183, i32 -996736368, i32 -996474232, i32 1364459552, i32 2103001114, i32 -996474208, i32 -996212072, i32 1368916000, i32 2107473946, i32 68943936, i32 69206016, i32 2110636034, i32 2106736665, i32 2099658764, i32 165412865, i32 -1707081720, i32 1360003073, i32 102760449, i32 -1715404806, i32 -997260752, i32 -996998592, i32 -1946151361, i32 -2147478151, i32 2097217569, i32 2106671129, i32 -996998600, i32 1431830560, i32 -850918760, i32 -846724448, i32 282329104, i32 303562774, i32 -987823351, i32 2106949642, i32 2103574538, i32 2111422474, i32 -666894317, i32 -842005751, i32 -837733600, i32 -997260576, i32 -996474192, i32 417071592, i32 2111389710, i32 -997260752, i32 -996998592, i32 -1782579171, i32 -1790967805, i32 -1946151361, i32 -2147478102, i32 -997260744, i32 -995949896, i32 304349188, i32 2120105994, i32 -995425624, i32 68157440, i32 -833879271, i32 2107473922, i32 2124496901, i32 626262017, i32 -1723858940, i32 102760449, i32 639631375, i32 -2147478084, i32 165412865, i32 69468161, i32 2120368132, i32 102760449, i32 2099576842, i32 639631375, i32 -1715404812, i32 -666894317, i32 -854772944, i32 -838335816, i32 -846724432, i32 -995425568, i32 447219696, i32 -997260592, i32 -996736296, i32 -996474168, i32 -996212032, i32 -1769996248, i32 2102263823, i32 -1778384885, i32 2106998786, i32 2120876047, i32 -1778384893, i32 2104049665, i32 -2147478039, i32 2094940162, i32 2120876047, i32 -1778384888, i32 2112438273, i32 -2147478039, i32 2094415874, i32 2120876046, i32 -1778384893, i32 2104049665, i32 -2147478039, i32 -997260752, i32 -996998592, i32 -1946151361, i32 -2147478067, i32 -996998600, i32 2104066050, i32 -850918696, i32 312213512, i32 -988871911, i32 295698446, i32 286523393, i32 -1003225084, i32 -666894328, i32 -666894317, i32 2115895306, i32 295174154, i32 -845860096, i32 2114846730, i32 312999946, i32 -829082879, i32 -837811431, i32 -817889272, i32 -994639232, i32 -994901384, i32 2138275850, i32 1399586848, i32 2129838106, i32 -1753158808, i32 -1946151416, i32 -670563720, i32 -670563712, i32 2084601857, i32 -2013265920, i32 71041027, i32 -2147478007, i32 71041025, i32 817102848, i32 -1690304495, i32 -994639272, i32 -994901424, i32 1400373280, i32 2142470170, i32 2142208025, i32 70254624, i32 69730304, i32 1739849729, i32 187695105, i32 1471676417, i32 -1757413374, i32 111673345, i32 -1694433285, i32 -994377120, i32 2141945857, i32 -813170080, i32 70254624, i32 69730304, i32 1727266817, i32 187695105, i32 1458307073, i32 -1757413371, i32 -1946151384, i32 -1003146681, i32 2139045897, i32 -1690238978, i32 111673345, i32 -1694433289, i32 -1879048192, i32 647757831, i32 299630600, i32 702283784, i32 648019992, i32 304087043, i32 2111946762, i32 648020064, i32 102760480, i32 371195905, i32 2111946762, i32 -843055085, i32 -1879048192, i32 647757848, i32 648019975, i32 648282208, i32 299630598, i32 304087046, i32 375652353, i32 702283784, i32 2111946762, i32 2112208906, i32 -843055085, i32 -1879048192, i32 -994639320, i32 84934657, i32 80478209, i32 621805583, i32 -859307472, i32 2136031237, i32 626262017, i32 -1723858940, i32 84934657, i32 621805583, i32 -2147477948, i32 -994901432, i32 -855113152, i32 2131951621, i32 657457153, i32 -1694498814, i32 -1946151288, i32 -1946152435, i32 -1946152423, i32 -1946152398, i32 70254593, i32 70518785, i32 2131951620, i32 -817889261, i32 -822016738, i32 -1003682529, i32 2127740933, i32 653000705, i32 -1765736451, i32 -822016737, i32 -671088555, i32 -988347639, i32 425461744, i32 425723894, i32 70516736, i32 -1782579192, i32 165412865, i32 70516737, i32 -1782579195, i32 165412865, i32 1400111105, i32 1802764289, i32 -2147477915, i32 -995687776, i32 -995425640, i32 1382285344, i32 2120892442, i32 2137210900, i32 2121678874, i32 -1003487228, i32 -666894328, i32 -666894317, i32 1449656352, i32 -669961440, i32 -834141544, i32 -829947232, i32 -988347623, i32 -994639184, i32 626786319, i32 2136948737, i32 -669961424, i32 -817364304, i32 288620545, i32 425461736, i32 425723886, i32 -667602176, i32 2115911681, i32 -667602175, i32 -834141488, i32 -670039287, i32 -670039271, i32 -822083576, i32 -1879048192, i32 -996736424, i32 -997260720, i32 1364459552, i32 2094317594, i32 -995163520, i32 -994901384, i32 1391198240, i32 2129838106, i32 68419616, i32 69730304, i32 1691877377, i32 156499969, i32 1422655489, i32 -1786773408, i32 -1946151384, i32 -1004981689, i32 630718465, i32 -1786773412, i32 2109882369, i32 -1004719544, i32 635174927, i32 2110914572, i32 -1778384809, i32 -1004719531, i32 -1003146673, i32 2113257484, i32 -1715470332, i32 -1004981659, i32 630718528, i32 -1786707970, i32 -1002884517, i32 464519231, i32 -1761607607, i32 464519400, i32 859308035, i32 -1686110138, i32 858783746, i32 -1761607670, i32 -1002884512, i32 464519396, i32 858783748, i32 -1761607616, i32 -1003408803, i32 657457168, i32 -1694433282, i32 -2147477775, i32 -834666477, i32 -1070333953, i32 791675135, i32 -1002884517, i32 2134573065, i32 -822005157, i32 -1002884517, i32 666370303, i32 -1686044674, i32 -658505677, i32 -1003487223, i32 657457160, i32 -1761542146, i32 443548646, i32 657981443, i32 330825732, i32 657457155, i32 321912835, i32 2142470145, i32 443547880, i32 2142470145, i32 321912833, i32 2142470145, i32 129499138, i32 -666894317, i32 443547748, i32 858783746, i32 -1761607671, i32 397410309, i32 120586243, i32 -822009726, i32 -872341441, i32 -666894317, i32 -872341441, i32 187695107, i32 -2147477793, i32 397410309, i32 -822009726, i32 -872341441, i32 -666894317, i32 -872341441, i32 321912837, i32 2142437378, i32 -1002889085, i32 2142470149, i32 666370049, i32 -1686044705, i32 -658505676, i32 -834666477, i32 -1003408803, i32 657457168, i32 -1694433282, i32 -1002884517, i32 665846015, i32 -1694433334, i32 -666815907, i32 540016763, i32 -822005157, i32 -2147477774, i32 -666815907, i32 70254593, i32 2133524500, i32 2129838106, i32 111673345, i32 -1723793508, i32 -1946151416, i32 -670563720, i32 -670563712, i32 -1879048192, i32 -666894257, i32 -1005322226, i32 693370888, i32 -851443693, i32 -1002622363, i32 466092266, i32 -670563607, i32 2084618241, i32 419168356, i32 -1681915838, i32 -1004981690, i32 -1004719547, i32 1368916000, i32 2111406106, i32 1167590400, i32 -1003408793, i32 71053312, i32 -809422233, i32 -1002622361, i32 -1681915903, i32 456654935, i32 456393235, i32 456130969, i32 2138783754, i32 2138259466, i32 -817889244, i32 351535133, i32 -994114839, i32 -1681915876, i32 2084634625, i32 422053882, i32 -994114984, i32 -995687856, i32 1409024032, i32 2122203162, i32 69992448, i32 70254592, i32 1719402497, i32 1449394177, i32 116129793, i32 -1748959235, i32 120586241, i32 183238657, i32 2129379340, i32 116129793, i32 -1748959240, i32 187695105, i32 1127219207, i32 1395654658, i32 2108882961, i32 -754974683, i32 -1069629435, i32 737976832, i32 -809500634, i32 -859832282, i32 -855637978, i32 422053882, i32 -1071710081, i32 2099052553, i32 554696829, i32 -1946151384, i32 540803135, i32 -809422250, i32 -1946150923, i32 -855559596, i32 419168744, i32 -809422264, i32 -1946150821, i32 -666815929, i32 192151553, i32 -1690239019, i32 -671088561, i32 -994114839, i32 -1748964828, i32 -1879048192, i32 349437981, i32 -996998560, i32 2102542350, i32 -996212136, i32 -995950000, i32 1373372448, i32 2111930394, i32 -1774190569, i32 2102607874, i32 -995163536, i32 2108571653, i32 644087809, i32 853540895, i32 -1707081722, i32 116129793, i32 -1778384894, i32 69992448, i32 -825752976, i32 -2147477681, i32 192151553, i32 -1946151030, i32 84934657, i32 -1690238989, i32 -995163520, i32 -994901384, i32 1391198240, i32 2129838106, i32 -1946151416, i32 -670563720, i32 -670563712, i32 -995425688, i32 2108309509, i32 644087809, i32 849346591, i32 -1707081723, i32 111673345, i32 -1778384894, i32 606601216, i32 -2147477659, i32 2084634625, i32 -1071710081, i32 156499969, i32 2099052553, i32 554696829, i32 -1946151384, i32 -671010218, i32 -1946150926, i32 -855559596, i32 -1005505976, i32 353370116, i32 286261252, i32 -994901173, i32 2131951626, i32 -822005176, i32 -996998560, i32 -1946150827, i32 849608735, i32 -666815929, i32 -671088561, i32 152043521, i32 111673345, i32 -1774190590, i32 606601216, i32 -855113120, i32 -829947288, i32 -1723793472, i32 2084601857, i32 -2013265920, i32 2126675969, i32 -1946151384, i32 853540895, i32 -1004195257, i32 644087809, i32 -1774190498, i32 -1003933083, i32 -1004195243, i32 -1003408817, i32 2121416716, i32 648544320, i32 -1707081726, i32 -1769930761, i32 -1003933093, i32 446955583, i32 -1774190519, i32 446955752, i32 845676547, i32 -1702887354, i32 845414402, i32 -1774190582, i32 -1003933088, i32 446955748, i32 845414404, i32 -1774190528, i32 -1004195235, i32 644087824, i32 -1707016194, i32 -2147477534, i32 -843055085, i32 -1071120385, i32 778305791, i32 -1003933093, i32 2120892425, i32 -834588069, i32 -1003933093, i32 648544511, i32 -1702821890, i32 -658505677, i32 -1004273655, i32 644087816, i32 -1774125058, i32 434373606, i32 644349955, i32 312999940, i32 644087811, i32 308543491, i32 2124840961, i32 434372840, i32 2124840961, i32 308543489, i32 2124840961, i32 111673346, i32 -666894317, i32 434372708, i32 845414402, i32 -1774190583, i32 379846661, i32 107216899, i32 -834592638, i32 -872341441, i32 -666894317, i32 -872341441, i32 174325763, i32 -2147477552, i32 379846661, i32 -834592638, i32 -872341441, i32 -666894317, i32 -872341441, i32 308543493, i32 2124824578, i32 -1003937661, i32 2124840965, i32 648544257, i32 -1702821921, i32 -658505676, i32 -843055085, i32 -1004195235, i32 644087824, i32 -1707016194, i32 -1003933093, i32 648282367, i32 -1707016246, i32 -666815907, i32 539230331, i32 -834588069, i32 -2147477533, i32 -666815907, i32 -995687808, i32 -995425672, i32 1382285344, i32 2120892442, i32 69730305, i32 2125365268, i32 2120892442, i32 1449656352, i32 -834141576, i32 -829947264, i32 116129793, i32 -1778384894, i32 69992448, i32 -825752976, i32 -1879048192, i32 2084798465, i32 2084700161, i32 -2147477506, i32 -994114839, i32 -1681915898, i32 2084798465, i32 2084700161, i32 -813694938, i32 -838860762, i32 -2147477506, i32 -1002765589, i32 -1004338452, i32 -813616571, i32 -838782394, i32 1377828896, i32 2141421594, i32 1203241484, i32 367001608, i32 304087050, i32 706764850, i32 1362886686, i32 2117992474, i32 -994114839, i32 -1681915899, i32 -1002700786, i32 737935368, i32 -809500653, i32 -2147477489, i32 -851443693, i32 -1003408793, i32 456917111, i32 456130969, i32 2146631690, i32 321912842, i32 724566066, i32 71053312, i32 -809422233, i32 -1002622361, i32 -771751925, i32 -1004535801, i32 -746586110, i32 -822083582, i32 -671088576, i32 -1778384894, i32 -666894272, i32 -666894312, i32 71049216, i32 -809422233, i32 -671088616, i32 -662700016, i32 -843055085, i32 2109931521, i32 -602013696, i32 70778930, i32 -813694962, i32 -1946151897, i32 -868142520, i32 -1002622359, i32 670826511, i32 872153091, i32 -1749024751, i32 71041055, i32 -540868608, i32 -733924791, i32 2084814849, i32 2084814849, i32 71041060, i32 201064481, i32 -540868608, i32 -733924758, i32 389808136, i32 456131331, i32 2134835201, i32 71041025, i32 2146680836, i32 -809422716, i32 -2147477438, i32 71041060, i32 -540868608, i32 -733924791, i32 2084814849, i32 603717695, i32 -809422227, i32 196608038, i32 -545062912, i32 -733924754, i32 2084798465, i32 2084798465, i32 -1002884507, i32 532217798, i32 -574423040, i32 -813616539, i32 -1711276029, i32 -843055092, i32 -2147477422, i32 -843055091, i32 -838860784, i32 -1946151893, i32 -1879048192, i32 2084683777, i32 2084700161, i32 -842976686, i32 -838782381, i32 -1946151384, i32 -2147477384, i32 -996211991, i32 -1715470312, i32 2084683777, i32 2084700161, i32 -842976686, i32 -838782381, i32 -1002700786, i32 737935368, i32 -809500653, i32 71053312, i32 -809422233, i32 -1002622361, i32 -1748959233, i32 -843055066, i32 -838860762, i32 -666894297, i32 -1004797934, i32 -1715404801, i32 -1002700786, i32 737935368, i32 -809500653, i32 71049216, i32 -809422233, i32 -1946151384, i32 -2147477384, i32 -1004600595, i32 -1004338450, i32 -842976686, i32 -838782381, i32 69206017, i32 2116681732, i32 -838782844, i32 -1879048192, i32 674496513, i32 826018764, i32 -1681915888, i32 960234783, i32 -1681915900, i32 1027343630, i32 -1681915892, i32 -1749024756, i32 960234848, i32 -1681915900, i32 1027343695, i32 -1681915897, i32 -1749024761, i32 960238904, i32 -1681915899, i32 1027347767, i32 -1681915902, i32 -1749024766, i32 729024512, i32 -1879048192, i32 -1005846514, i32 684457992, i32 -859832301, i32 -1002622363, i32 466092266, i32 2084618241, i32 417857660, i32 2084749313, i32 111679642, i32 -2038431744, i32 -2147477346, i32 -2147477307, i32 -2147477262, i32 -2147483286, i32 2084651009, i32 416284798, i32 1347944480, i32 153092097, i32 2103001114, i32 -784334734, i32 -938213262, i32 153354242, i32 2084667393, i32 2084683777, i32 -1728053231, i32 -1003225084, i32 -666894317, i32 -666894328, i32 -1004457803, i32 438566956, i32 -1707016194, i32 538968108, i32 -1005060083, i32 295174172, i32 281804804, i32 348913668, i32 2094579722, i32 -859754313, i32 -838782795, i32 -817889272, i32 -2147483288, i32 -784334811, i32 1501038394, i32 733478914, i32 -813694940, i32 -847249370, i32 -843055066, i32 -666894297, i32 -1778325336, i32 -1003487214, i32 -1694433281, i32 -1774131035, i32 -2147477335, i32 68419584, i32 -983891191, i32 1029439504, i32 89391105, i32 630783999, i32 158859265, i32 2108522508, i32 -1715404846, i32 -1786707975, i32 -996736424, i32 -996998576, i32 1364459552, i32 2098528282, i32 68419616, i32 69730304, i32 1143734272, i32 1696071681, i32 156499969, i32 1427111937, i32 -1786773493, i32 -1946151384, i32 -1004719544, i32 70254593, i32 2133524500, i32 635174927, i32 2113519628, i32 -1782579196, i32 2129838106, i32 -658427296, i32 -654232995, i32 111673345, i32 -1723793423, i32 68419616, i32 69730304, i32 1725431809, i32 156499969, i32 1458307073, i32 -1786773499, i32 -1946151384, i32 -1004457379, i32 639893511, i32 -1707016194, i32 111673345, i32 -1723793417, i32 -2147477346, i32 68419616, i32 69730304, i32 156499969, i32 -1946151384, i32 -1004719532, i32 -1071447937, i32 434372670, i32 2111946761, i32 2112749580, i32 -1774190584, i32 -1778384889, i32 -658427296, i32 -654232995, i32 -1004457379, i32 639369223, i32 -1715404802, i32 -2147477346, i32 111673345, i32 -1723793424, i32 -2147477346, i32 -1005846514, i32 684457992, i32 -859832301, i32 -1002622363, i32 466092266, i32 2084618241, i32 417333348, i32 103291153, i32 351535133, i32 617349123, i32 -2038431744, i32 -2147477227, i32 -2147477073, i32 -2147476949, i32 -2147483286, i32 -867695829, i32 -867695821, i32 -867695813, i32 -867695805, i32 -1736441839, i32 -1004457402, i32 -1004195259, i32 1377828896, i32 2116435994, i32 1180959744, i32 -1003408793, i32 69218304, i32 -838782361, i32 -1004457369, i32 -1711276031, i32 456917079, i32 455082515, i32 456130969, i32 2117992458, i32 2117206026, i32 -838860764, i32 -996736424, i32 -996998576, i32 1364459552, i32 2098528282, i32 -995163520, i32 -994901384, i32 1391198240, i32 2129838106, i32 68681728, i32 68419616, i32 69730304, i32 2135130113, i32 -1946151384, i32 -1004719545, i32 635174913, i32 -1782579096, i32 -1004457388, i32 438042686, i32 -1782579099, i32 -1071710081, i32 2115895305, i32 -1753218974, i32 196608001, i32 1136394248, i32 2144059393, i32 -941685973, i32 2116009996, i32 -1748959238, i32 71041281, i32 -1799356414, i32 71041282, i32 -1002884517, i32 464519231, i32 -1761607607, i32 464519400, i32 859308035, i32 -1686110138, i32 858783746, i32 -1761607671, i32 -1002884512, i32 464519396, i32 858783748, i32 -1761607616, i32 -1003408803, i32 657457168, i32 -1694433282, i32 -2147477100, i32 -1946151384, i32 -1070333953, i32 791675135, i32 -1002884517, i32 2134573065, i32 -822005157, i32 -1002884517, i32 666370303, i32 -1686044674, i32 -658505677, i32 -1003487223, i32 657457160, i32 -1761542146, i32 435160038, i32 657981443, i32 330825732, i32 657457155, i32 321912835, i32 2142470145, i32 435159272, i32 2142470145, i32 321912833, i32 2142470145, i32 129499138, i32 -666894317, i32 435159140, i32 858783746, i32 -1761607671, i32 397410309, i32 120586243, i32 -822009726, i32 -872341441, i32 -666894317, i32 -872341441, i32 187695107, i32 -2147477118, i32 397410309, i32 -822009726, i32 -872341441, i32 -666894317, i32 -872341441, i32 321912837, i32 2142437378, i32 -1002889085, i32 2142470149, i32 666370049, i32 -1686044705, i32 -658505676, i32 -843055085, i32 -1003408803, i32 657457168, i32 -1694433282, i32 -1002884517, i32 665846015, i32 -1694433333, i32 -809422243, i32 540016763, i32 -822005157, i32 -2147477099, i32 -809422243, i32 70254593, i32 2133524500, i32 2129838106, i32 -1736441847, i32 1102839815, i32 1409024002, i32 2122301457, i32 -742391771, i32 -671088602, i32 -666894297, i32 -1002700782, i32 -1681850369, i32 1698430977, i32 2109571073, i32 111673345, i32 156499969, i32 1427111937, i32 -1723793521, i32 -1002700786, i32 737935368, i32 -809500653, i32 71049216, i32 -809422233, i32 -670563720, i32 -670563712, i32 -2147483288, i32 2084634625, i32 68419584, i32 -983891191, i32 1029439504, i32 630783999, i32 89391105, i32 2106687500, i32 -1782579197, i32 -734003080, i32 -2147483288, i32 -1786707976, i32 158859265, i32 -996736424, i32 -996998576, i32 1364459552, i32 2098528282, i32 -995163520, i32 -994901384, i32 1391198240, i32 2129838106, i32 68419616, i32 69730304, i32 1696071681, i32 156499969, i32 1427111937, i32 -1786773411, i32 -1946151384, i32 -1004195257, i32 644087809, i32 69206273, i32 -1774190504, i32 2109882369, i32 -1004719544, i32 635174927, i32 2113519628, i32 -1782579117, i32 -1799356414, i32 69206274, i32 2118238209, i32 -1004195237, i32 443547711, i32 -1761607607, i32 443547880, i32 857997315, i32 -1707081658, i32 858783746, i32 -1761607670, i32 -1004195232, i32 443547876, i32 858783748, i32 -1761607616, i32 -1003408803, i32 657457168, i32 -1694433282, i32 -2147476959, i32 -843055085, i32 -1070333953, i32 791675135, i32 -1004195237, i32 2133262345, i32 -822005157, i32 -1004195237, i32 644088063, i32 -1707016194, i32 -658505677, i32 -1003487223, i32 657457160, i32 -1761542146, i32 435160038, i32 656670723, i32 308543492, i32 657457155, i32 321912835, i32 2121416705, i32 435159272, i32 2121416705, i32 321912833, i32 2121416705, i32 107216898, i32 -666894317, i32 435159140, i32 858783746, i32 -1761607671, i32 376438789, i32 120586243, i32 -822009726, i32 -872341441, i32 -666894317, i32 -872341441, i32 187695107, i32 -2147476977, i32 376438789, i32 -822009726, i32 -872341441, i32 -666894317, i32 -872341441, i32 321912837, i32 2121465858, i32 -1004199805, i32 2121416709, i32 644087809, i32 -1707016225, i32 -658505676, i32 -843055085, i32 -1003408803, i32 657457168, i32 -1694433282, i32 -1004195237, i32 644874495, i32 -1694433334, i32 -838782371, i32 540016763, i32 -822005157, i32 -2147476958, i32 -838782371, i32 70254593, i32 2133524500, i32 2129838106, i32 111673345, i32 -1723793505, i32 -734003080, i32 -670563720, i32 -670563712, i32 -2147483288, i32 -1946150351, i32 -734003080, i32 -670563720, i32 -670563712, i32 2084601857, i32 -2013265920, i32 -1004457402, i32 -1004195259, i32 1377828896, i32 2116435994, i32 1180959744, i32 -1003408793, i32 69218304, i32 -838782361, i32 -1004457369, i32 -1711276031, i32 454557783, i32 455082515, i32 456130969, i32 2115633162, i32 2117206026, i32 -838860764, i32 -996736424, i32 -996998576, i32 1364459552, i32 2098528282, i32 -995163520, i32 -994901384, i32 1391198240, i32 2129838106, i32 68419616, i32 69730304, i32 1696071681, i32 -1786773408, i32 -1946151384, i32 -1004981689, i32 630718465, i32 69206273, i32 -1799356411, i32 821035013, i32 69206021, i32 -1694498814, i32 69206274, i32 -1786773418, i32 -1002884517, i32 464519231, i32 -1761607607, i32 464519400, i32 859308035, i32 -1686110138, i32 858783746, i32 -1761607670, i32 -1002884512, i32 464519396, i32 858783748, i32 -1761607616, i32 -1003408803, i32 657457168, i32 -1694433282, i32 -2147476830, i32 -843055085, i32 -1070333953, i32 791675135, i32 -1002884517, i32 2134573065, i32 -822005157, i32 -1002884517, i32 666370303, i32 -1686044674, i32 -658505677, i32 -1003487223, i32 657457160, i32 -1761542146, i32 435160038, i32 657981443, i32 330825732, i32 657457155, i32 321912835, i32 2142470145, i32 435159272, i32 2142470145, i32 321912833, i32 2142470145, i32 129499138, i32 -666894317, i32 435159140, i32 858783746, i32 -1761607671, i32 397410309, i32 120586243, i32 -822009726, i32 -872341441, i32 -666894317, i32 -872341441, i32 187695107, i32 -2147476848, i32 397410309, i32 -822009726, i32 -872341441, i32 -666894317, i32 -872341441, i32 321912837, i32 2142437378, i32 -1002889085, i32 2142470149, i32 666370049, i32 -1686044705, i32 -658505676, i32 -843055085, i32 -1003408803, i32 657457168, i32 -1694433282, i32 -1002884517, i32 665846015, i32 -1694433334, i32 -838782371, i32 540016763, i32 -822070693, i32 -2147476829, i32 -838782371, i32 70254593, i32 2133524500, i32 2129838106, i32 -996474135, i32 -1719664635, i32 -767557595, i32 1180958748, i32 -671088602, i32 -666894297, i32 111673345, i32 156499969, i32 1427111937, i32 -1723793508, i32 -996474135, i32 -1719664632, i32 -1003487218, i32 724566024, i32 -822083565, i32 70262784, i32 -822005145, i32 -1003408793, i32 -1761607679, i32 -1879048192, i32 608960767, i32 -867433984, i32 2084601857, i32 -2013265920, i32 -1001455104, i32 -1005584373, i32 -1005322228, i32 2098561040, i32 94158848, i32 -666894317, i32 -857931776, i32 2084601857, i32 -2013265920, i32 -1005846473, i32 -1799290881, i32 -872415159, i32 -1005846470, i32 -1799290881, i32 2084618241, i32 617611265, i32 -1795103078, i32 416284731, i32 416546849, i32 -1723858938, i32 -666894262, i32 -1005846468, i32 -1799290881, i32 348913665, i32 -1799356376, i32 -671088589, i32 -1002962933, i32 -1002700791, i32 670826497, i32 -1748959234, i32 -666894317, i32 -666779521, i32 -1002585985, i32 469500024, i32 2147205132, i32 -1748959235, i32 -1728053244, i32 -1072560064, i32 673972288, i32 -2147476760, i32 -1072555967, i32 673972250, i32 -855523204, i32 -872300419, i32 -872300404, i32 -872300423, i32 -872300418, i32 69206020, i32 -826277861, i32 -666894303, i32 169869313, i32 -1711210497, i32 -1004158849, i32 376176671, i32 69206020, i32 -1698627589, i32 -1003225073, i32 -1690238977, i32 -670973825, i32 -666894317, i32 -1004158849, i32 -834666376, i32 -671088588, i32 -1723799957, i32 -671088566, i32 2084601857, i32 -2013265920, i32 -1005846474, i32 617611265, i32 -1727987714, i32 416022561, i32 -859832249, i32 -872415162, i32 -1005846471, i32 -1799290881, i32 -1005846467, i32 -1732182017, i32 2084618241, i32 617612287, i32 416579562, i32 416841716, i32 -855637940, i32 -851443634, i32 -847249331, i32 -666894317, i32 -851327995, i32 -1070989311, i32 715653121, i32 -830472173, i32 -855522298, i32 -872299514, i32 -872299514, i32 -1005846522, i32 -1732182017, i32 -1005322226, i32 693370888, i32 693895169, i32 -851443693, i32 -658427298, i32 -843055078, i32 295174146, i32 1091567628, i32 -1072297984, i32 2098528266, i32 -1072283632, i32 -666894317, i32 -851328904, i32 -872300416, i32 -872300415, i32 -847134590, i32 -872300413, i32 -855523196, i32 -1005846522, i32 -1732182017, i32 -666894264, i32 -1005846469, i32 -1799290881, i32 -2147480554, i32 -666894317, i32 -670972918, i32 -654195699, i32 -670972912, i32 -670972914, i32 -670972913, i32 -1005846464, i32 68419585, i32 156499969, i32 -1723793409, i32 68419734, i32 -666894317, i32 -859716608, i32 -1005468671, i32 -1795096582, i32 -1004273602, i32 80740353, i32 286261250, i32 -855522292, i32 -1072168908, i32 -847133679, i32 -666778604, i32 173277185, i32 -851327982, i32 610795535, i32 -1004944362, i32 1100480515, i32 -1004797889, i32 2111438849, i32 304087042, i32 281804802, i32 -859716596, i32 -654195695, i32 -834550766, i32 -662700013, i32 -836161984, i32 -868143615, i32 -868143614, i32 -868143613, i32 -868143616, i32 -2147480921, i32 -1002700793, i32 -602800128, i32 823410688, i32 -1790967803, i32 -603783168, i32 -671088598, i32 -868483060, i32 -2147476624, i32 871890947, i32 -734003080, i32 -1753160191, i32 411893744, i32 82051074, i32 -2147479152, i32 2084601857, i32 -2013265920, i32 -1004273570, i32 -1774190586, i32 -1879048192, i32 -1004273570, i32 -1774190589, i32 2084601857, i32 -2013265920, i32 -2147476620, i32 -2147483288, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1844445180, i32 -1844378367, i32 -1844313594, i32 -1844246781, i32 -1844444160, i32 -1844379387, i32 -1844312574, i32 -1844247801, i32 -1082064896], [15 x i32] zeroinitializer }> }, [7440 x i8] zeroinitializer }, align 32
@pwr_virus_section4 = internal constant { { i32, i32, i32, i32, <{ [225 x i32], [15 x i32] }> }, [240 x i8] } { { i32, i32, i32, i32, <{ [225 x i32], [15 x i32] }> } { i32 -2147483644, i32 180, i32 1410360576, i32 240, <{ [225 x i32], [15 x i32] }> <{ [225 x i32] [i32 2113929728, i32 2114060804, i32 -1073085179, i32 0, i32 -1081343873, i32 -1198520060, i32 -1198450172, i32 -1198390524, i32 -1198322876, i32 -1843655412, i32 -1843651565, i32 -1843590126, i32 -2128863972, i32 -2128867044, i32 -1843593444, i32 1024, i32 -1843527920, i32 256, i32 -2129126116, i32 2114191896, i32 -529526784, i32 -2147155966, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -529526784, i32 -2147155710, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -529526784, i32 -2147155966, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -529526784, i32 -2147155710, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -529526784, i32 -2147155966, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -529526784, i32 -2147155710, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -531623936, i32 -2147155198, i32 -1082064896], [15 x i32] zeroinitializer }> }, [240 x i8] zeroinitializer }, align 32
@pwr_virus_section5 = internal constant { { i32, i32, i32, i32, <{ [370 x i32], [14 x i32] }> }, [400 x i8] } { { i32, i32, i32, i32, <{ [370 x i32], [14 x i32] }> } { i32 -2147483644, i32 180, i32 1410361600, i32 384, <{ [370 x i32], [14 x i32] }> <{ [370 x i32] [i32 2114454016, i32 2114978308, i32 -1090780929, i32 65536, i32 606077063, i32 639762687, i32 496, i32 539107970, i32 672669969, i32 -669384704, i32 1036, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 2060, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 1036, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 2060, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 1036, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 2060, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 1036, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 2060, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 1036, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 2060, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 1036, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 2060, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 1036, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 2060, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 1036, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 2060, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 1036, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 2060, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 1036, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -669384704, i32 2060, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -664010752, i32 285212684, i32 -1082064896], [14 x i32] zeroinitializer }> }, [400 x i8] zeroinitializer }, align 32
@pwr_virus_section6 = internal constant { { i32, i32, i32, i32, <{ [914 x i32], [110 x i32] }> }, [1040 x i8] } { { i32, i32, i32, i32, <{ [914 x i32], [110 x i32] }> } { i32 -2147483644, i32 180, i32 1410428672, i32 1024, <{ [914 x i32], [110 x i32] }> <{ [914 x i32] [i32 -1070528512, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 1, i32 1, i32 1, i32 0, i32 -1269559320, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 12, i32 0, i32 125861888, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 1431655765, i32 1431655765, i32 1431655765, i32 1431655765, i32 0, i32 0, i32 1410330176, i32 180, i32 16, i32 1, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1410428672, i32 180, i32 0, i32 0, i32 21249, i32 0, i32 0, i32 0, i32 -1269559313, i32 0, i32 0, i32 0, i32 0, i32 1410330144, i32 180, i32 0, i32 0, i32 134217728, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1070528512, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 1, i32 1, i32 1, i32 0, i32 -1269559202, i32 0, i32 0, i32 0, i32 0, i32 0, i32 192, i32 16, i32 0, i32 125861888, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 1431655765, i32 1431655765, i32 1431655765, i32 1431655765, i32 0, i32 0, i32 1410330176, i32 180, i32 16, i32 1, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1410429696, i32 180, i32 0, i32 0, i32 21249, i32 0, i32 0, i32 0, i32 -1269559313, i32 0, i32 0, i32 0, i32 0, i32 1410330144, i32 180, i32 0, i32 0, i32 134217728, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1070528512, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 1, i32 1, i32 1, i32 0, i32 -1269559195, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1280, i32 28, i32 0, i32 125861888, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 1431655765, i32 1431655765, i32 1431655765, i32 1431655765, i32 0, i32 0, i32 1410330176, i32 180, i32 16, i32 1, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1410430720, i32 180, i32 0, i32 0, i32 21249, i32 0, i32 0, i32 0, i32 -1269559313, i32 0, i32 0, i32 0, i32 0, i32 1410330144, i32 180, i32 0, i32 0, i32 134217728, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1070528512, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 1, i32 1, i32 1, i32 0, i32 -1269559191, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1092, i32 138, i32 0, i32 125861888, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 1431655765, i32 1431655765, i32 1431655765, i32 1431655765, i32 0, i32 0, i32 1410330176, i32 180, i32 16, i32 1, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1410431744, i32 180, i32 0, i32 0, i32 21249, i32 0, i32 0, i32 0, i32 -1269559313, i32 0, i32 0, i32 0, i32 0, i32 1410330144, i32 180, i32 0, i32 0, i32 134217728], [110 x i32] zeroinitializer }> }, [1040 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 254]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 254]
@__sancov_gen_cov_switch_values.67 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 14, i64 35]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 57, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 58, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 94, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 95, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 153, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 175, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 177, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 187, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 189, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 376, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 379, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 382, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 385, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 388, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 391, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 394, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 397, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 400, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 404, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 425, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"pwr_virus_table_pre\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 48, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant [21 x i8] c"pwr_virus_table_post\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1501, i32 32 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 40, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 41, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 455, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 465, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [19 x i8] c"pwr_virus_section1\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 257, i32 30 }
@___asan_gen_.215 = private unnamed_addr constant [19 x i8] c"pwr_virus_section2\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 318, i32 30 }
@___asan_gen_.218 = private unnamed_addr constant [19 x i8] c"pwr_virus_section3\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 329, i32 30 }
@___asan_gen_.221 = private unnamed_addr constant [19 x i8] c"pwr_virus_section4\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1268, i32 30 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"pwr_virus_section5\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1307, i32 30 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"pwr_virus_section6\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/inc/polaris10_pwrvirus.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1364, i32 30 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @smu7_copy_bytes_from_smc._entry, ptr @smu7_copy_bytes_from_smc._entry.5, ptr @smu7_copy_bytes_from_smc._entry_ptr, ptr @smu7_copy_bytes_from_smc._entry_ptr.6, ptr @smu7_copy_bytes_to_smc._entry, ptr @smu7_copy_bytes_to_smc._entry.9, ptr @smu7_copy_bytes_to_smc._entry_ptr, ptr @smu7_copy_bytes_to_smc._entry_ptr.10, ptr @smu7_request_smu_load_fw._entry, ptr @smu7_request_smu_load_fw._entry.23, ptr @smu7_request_smu_load_fw._entry.26, ptr @smu7_request_smu_load_fw._entry.29, ptr @smu7_request_smu_load_fw._entry.32, ptr @smu7_request_smu_load_fw._entry.35, ptr @smu7_request_smu_load_fw._entry.38, ptr @smu7_request_smu_load_fw._entry.41, ptr @smu7_request_smu_load_fw._entry.44, ptr @smu7_request_smu_load_fw._entry.47, ptr @smu7_request_smu_load_fw._entry.49, ptr @smu7_request_smu_load_fw._entry_ptr, ptr @smu7_request_smu_load_fw._entry_ptr.24, ptr @smu7_request_smu_load_fw._entry_ptr.27, ptr @smu7_request_smu_load_fw._entry_ptr.30, ptr @smu7_request_smu_load_fw._entry_ptr.33, ptr @smu7_request_smu_load_fw._entry_ptr.36, ptr @smu7_request_smu_load_fw._entry_ptr.39, ptr @smu7_request_smu_load_fw._entry_ptr.42, ptr @smu7_request_smu_load_fw._entry_ptr.45, ptr @smu7_request_smu_load_fw._entry_ptr.48, ptr @smu7_request_smu_load_fw._entry_ptr.51, ptr @smu7_send_msg_to_smc._entry, ptr @smu7_send_msg_to_smc._entry.18, ptr @smu7_send_msg_to_smc._entry_ptr, ptr @smu7_send_msg_to_smc._entry_ptr.20, ptr @smu7_set_smc_sram_address._entry, ptr @smu7_set_smc_sram_address._entry.53, ptr @smu7_set_smc_sram_address._entry_ptr, ptr @smu7_set_smc_sram_address._entry_ptr.54, ptr @smu7_upload_smc_firmware_data._entry, ptr @smu7_upload_smc_firmware_data._entry.57, ptr @smu7_upload_smc_firmware_data._entry_ptr, ptr @smu7_upload_smc_firmware_data._entry_ptr.58, ptr @smu7_copy_bytes_from_smc._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @smu7_copy_bytes_from_smc._rs.4, ptr @.str.7, ptr @smu7_copy_bytes_to_smc._rs, ptr @smu7_copy_bytes_to_smc._rs.8, ptr @smu7_program_jump_on_start.data, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.50, ptr @pwr_virus_table_pre, ptr @pwr_virus_table_post, ptr @smu7_set_smc_sram_address._rs, ptr @smu7_set_smc_sram_address._rs.52, ptr @.str.55, ptr @smu7_upload_smc_firmware_data._rs, ptr @smu7_upload_smc_firmware_data._rs.56, ptr @.str.59, ptr @pwr_virus_section1, ptr @pwr_virus_section2, ptr @pwr_virus_section3, ptr @pwr_virus_section4, ptr @pwr_virus_section5, ptr @pwr_virus_section6], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_copy_bytes_from_smc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_copy_bytes_from_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_copy_bytes_from_smc._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_copy_bytes_from_smc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_copy_bytes_to_smc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_copy_bytes_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_copy_bytes_to_smc._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_copy_bytes_to_smc._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_program_jump_on_start.data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_send_msg_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_send_msg_to_smc._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_request_smu_load_fw._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_virus_table_pre to i32), i32 1648, i32 2048, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_virus_table_post to i32), i32 2304, i32 2880, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_set_smc_sram_address._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_set_smc_sram_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_set_smc_sram_address._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_set_smc_sram_address._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_upload_smc_firmware_data._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_upload_smc_firmware_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_upload_smc_firmware_data._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu7_upload_smc_firmware_data._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_virus_section1 to i32), i32 1680, i32 2112, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_virus_section2 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_virus_section3 to i32), i32 29776, i32 37216, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_virus_section4 to i32), i32 976, i32 1216, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_virus_section5 to i32), i32 1552, i32 1952, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_virus_section6 to i32), i32 4112, i32 5152, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_copy_bytes_from_smc(ptr nocapture noundef readonly %hwmgr, i32 noundef %smc_start_address, ptr nocapture noundef writeonly %dest, i32 noundef %byte_count, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  %data_byte = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_byte) #6
  %and = and i32 %smc_start_address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_copy_bytes_from_smc._rs, ptr noundef nonnull @__func__.smu7_copy_bytes_from_smc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body7:                                         ; preds = %entry
  %add = add i32 %byte_count, %smc_start_address
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %limit)
  %cmp8 = icmp ult i32 %add, %limit
  br i1 %cmp8, label %while.cond.preheader, label %if.then9

while.cond.preheader:                             ; preds = %do.body7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %byte_count)
  %cmp2262 = icmp ugt i32 %byte_count, 3
  br i1 %cmp2262, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %while.body

if.then9:                                         ; preds = %do.body7
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_copy_bytes_from_smc._rs.4, ptr noundef nonnull @__func__.smu7_copy_bytes_from_smc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %if.then9.cleanup.sink.split_crit_edge

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %smu7_read_smc_sram_dword.exit.while.body_crit_edge, %while.body.lr.ph
  %dest.addr.065 = phi ptr [ %dest, %while.body.lr.ph ], [ %add.ptr, %smu7_read_smc_sram_dword.exit.while.body_crit_edge ]
  %addr.064 = phi i32 [ %smc_start_address, %while.body.lr.ph ], [ %add24, %smu7_read_smc_sram_dword.exit.while.body_crit_edge ]
  %byte_count.addr.063 = phi i32 [ %byte_count, %while.body.lr.ph ], [ %sub, %smu7_read_smc_sram_dword.exit.while.body_crit_edge ]
  %call.i = tail call fastcc i32 @smu7_set_smc_sram_address(ptr noundef %hwmgr, i32 noundef %addr.064, i32 noundef %limit) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %while.body.smu7_read_smc_sram_dword.exit_crit_edge

while.body.smu7_read_smc_sram_dword.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_read_smc_sram_dword.exit

cond.false.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2.i = tail call i32 %5(ptr noundef %1, i32 noundef 429) #6
  br label %smu7_read_smc_sram_dword.exit

smu7_read_smc_sram_dword.exit:                    ; preds = %cond.false.i, %while.body.smu7_read_smc_sram_dword.exit_crit_edge
  %cond.i = phi i32 [ %call2.i, %cond.false.i ], [ 0, %while.body.smu7_read_smc_sram_dword.exit_crit_edge ]
  %6 = ptrtoint ptr %dest.addr.065 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i, ptr %dest.addr.065, align 4
  %add.ptr = getelementptr i32, ptr %dest.addr.065, i32 1
  %sub = add i32 %byte_count.addr.063, -4
  %add24 = add i32 %addr.064, 4
  %cmp22 = icmp ugt i32 %sub, 3
  br i1 %cmp22, label %smu7_read_smc_sram_dword.exit.while.body_crit_edge, label %smu7_read_smc_sram_dword.exit.while.end_crit_edge

smu7_read_smc_sram_dword.exit.while.end_crit_edge: ; preds = %smu7_read_smc_sram_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

smu7_read_smc_sram_dword.exit.while.body_crit_edge: ; preds = %smu7_read_smc_sram_dword.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %smu7_read_smc_sram_dword.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %byte_count.addr.0.lcssa = phi i32 [ %byte_count, %while.cond.preheader.while.end_crit_edge ], [ %sub, %smu7_read_smc_sram_dword.exit.while.end_crit_edge ]
  %addr.0.lcssa = phi i32 [ %smc_start_address, %while.cond.preheader.while.end_crit_edge ], [ %add24, %smu7_read_smc_sram_dword.exit.while.end_crit_edge ]
  %dest.addr.0.lcssa = phi ptr [ %dest, %while.cond.preheader.while.end_crit_edge ], [ %add.ptr, %smu7_read_smc_sram_dword.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.addr.0.lcssa)
  %tobool25.not = icmp eq i32 %byte_count.addr.0.lcssa, 0
  br i1 %tobool25.not, label %while.end.cleanup_crit_edge, label %if.then26

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %while.end
  %call.i54 = tail call fastcc i32 @smu7_set_smc_sram_address(ptr noundef %hwmgr, i32 noundef %addr.0.lcssa, i32 noundef %limit) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i55, label %cond.false.i58, label %if.then26.for.body.preheader_crit_edge

if.then26.for.body.preheader_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

cond.false.i58:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %device.i56 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %7 = ptrtoint ptr %device.i56 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i56, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call2.i57 = tail call i32 %12(ptr noundef %8, i32 noundef 429) #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %cond.false.i58, %if.then26.for.body.preheader_crit_edge
  %cond.i59 = phi i32 [ %call2.i57, %cond.false.i58 ], [ 0, %if.then26.for.body.preheader_crit_edge ]
  %13 = ptrtoint ptr %data_byte to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i59, ptr %data_byte, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %conv70 = phi i32 [ %conv, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.069 = phi i8 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [4 x i8], ptr %data_byte, i32 0, i32 %conv70
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %arrayidx31 = getelementptr i8, ptr %dest.addr.0.lcssa, i32 %conv70
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx31, align 1
  %inc = add i8 %i.069, 1
  %conv = zext i8 %inc to i32
  %cmp28 = icmp ugt i32 %byte_count.addr.0.lcssa, %conv
  br i1 %cmp28, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.sink.split:                               ; preds = %if.then9.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.3, %if.then.cleanup.sink.split_crit_edge ], [ @.str.7, %if.then9.cleanup.sink.split_crit_edge ]
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.7.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_byte) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_read_smc_sram_dword(ptr nocapture noundef readonly %hwmgr, i32 noundef %smc_addr, ptr nocapture noundef writeonly %value, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smu7_set_smc_sram_address(ptr noundef %hwmgr, i32 noundef %smc_addr, i32 noundef %limit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 %5(ptr noundef %1, i32 noundef 429) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call2, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %value, align 4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_copy_bytes_to_smc(ptr nocapture noundef readonly %hwmgr, i32 noundef %smc_start_address, ptr nocapture noundef readonly %src, i32 noundef %byte_count, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %smc_start_address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_copy_bytes_to_smc._rs, ptr noundef nonnull @__func__.smu7_copy_bytes_to_smc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  br label %cleanup

do.body7:                                         ; preds = %entry
  %add = add i32 %byte_count, %smc_start_address
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %limit)
  %cmp8 = icmp ult i32 %add, %limit
  br i1 %cmp8, label %while.cond.preheader, label %if.then9

while.cond.preheader:                             ; preds = %do.body7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %byte_count)
  %cmp22119 = icmp ugt i32 %byte_count, 3
  br i1 %cmp22119, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %while.body

if.then9:                                         ; preds = %do.body7
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_copy_bytes_to_smc._rs.8, ptr noundef nonnull @__func__.smu7_copy_bytes_to_smc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %do.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  %src.addr.0122 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr, %if.end38.while.body_crit_edge ]
  %addr.0121 = phi i32 [ %smc_start_address, %while.body.lr.ph ], [ %add40, %if.end38.while.body_crit_edge ]
  %byte_count.addr.0120 = phi i32 [ %byte_count, %while.body.lr.ph ], [ %sub, %if.end38.while.body_crit_edge ]
  %0 = ptrtoint ptr %src.addr.0122 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src.addr.0122, align 1
  %arrayidx23 = getelementptr i8, ptr %src.addr.0122, i32 1
  %2 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx23, align 1
  %arrayidx27 = getelementptr i8, ptr %src.addr.0122, i32 2
  %4 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx27, align 1
  %arrayidx31 = getelementptr i8, ptr %src.addr.0122, i32 3
  %6 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx31, align 1
  %call34 = tail call fastcc i32 @smu7_set_smc_sram_address(ptr noundef %hwmgr, i32 noundef %addr.0121, i32 noundef %limit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end38, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %while.body
  %conv = zext i8 %1 to i32
  %mul = shl nuw i32 %conv, 24
  %conv24 = zext i8 %3 to i32
  %mul25 = shl nuw nsw i32 %conv24, 16
  %add26 = or i32 %mul25, %mul
  %conv28 = zext i8 %5 to i32
  %mul29 = shl nuw nsw i32 %conv28, 8
  %add30 = or i32 %add26, %mul29
  %conv32 = zext i8 %7 to i32
  %add33 = or i32 %add30, %conv32
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void %13(ptr noundef %9, i32 noundef 429, i32 noundef %add33) #6
  %add.ptr = getelementptr i8, ptr %src.addr.0122, i32 4
  %sub = add i32 %byte_count.addr.0120, -4
  %add40 = add i32 %addr.0121, 4
  %cmp22 = icmp ugt i32 %sub, 3
  br i1 %cmp22, label %if.end38.while.body_crit_edge, label %if.end38.while.end_crit_edge

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %byte_count.addr.0.lcssa = phi i32 [ %byte_count, %while.cond.preheader.while.end_crit_edge ], [ %sub, %if.end38.while.end_crit_edge ]
  %addr.0.lcssa = phi i32 [ %smc_start_address, %while.cond.preheader.while.end_crit_edge ], [ %add40, %if.end38.while.end_crit_edge ]
  %src.addr.0.lcssa = phi ptr [ %src, %while.cond.preheader.while.end_crit_edge ], [ %add.ptr, %if.end38.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.addr.0.lcssa)
  %cmp41.not = icmp eq i32 %byte_count.addr.0.lcssa, 0
  br i1 %cmp41.not, label %while.end.cleanup_crit_edge, label %if.then43

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43:                                        ; preds = %while.end
  %call44 = tail call fastcc i32 @smu7_set_smc_sram_address(ptr noundef %hwmgr, i32 noundef %addr.0.lcssa, i32 noundef %limit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %while.body58.preheader, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body58.preheader:                           ; preds = %if.then43
  %device49 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %14 = ptrtoint ptr %device49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device49, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call52 = tail call i32 %19(ptr noundef %15, i32 noundef 429) #6
  %.neg = mul nsw i32 %byte_count.addr.0.lcssa, -8
  %mul54 = add nsw i32 %.neg, 32
  br label %while.body58

while.body58:                                     ; preds = %while.body58.while.body58_crit_edge, %while.body58.preheader
  %src.addr.1128 = phi ptr [ %incdec.ptr, %while.body58.while.body58_crit_edge ], [ %src.addr.0.lcssa, %while.body58.preheader ]
  %data.0127 = phi i32 [ %add61, %while.body58.while.body58_crit_edge ], [ 0, %while.body58.preheader ]
  %byte_count.addr.1126 = phi i32 [ %dec, %while.body58.while.body58_crit_edge ], [ %byte_count.addr.0.lcssa, %while.body58.preheader ]
  %mul59 = shl i32 %data.0127, 8
  %incdec.ptr = getelementptr i8, ptr %src.addr.1128, i32 1
  %20 = ptrtoint ptr %src.addr.1128 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %src.addr.1128, align 1
  %conv60 = zext i8 %21 to i32
  %add61 = or i32 %mul59, %conv60
  %dec = add i32 %byte_count.addr.1126, -1
  %cmp56.not = icmp eq i32 %dec, 0
  br i1 %cmp56.not, label %while.end62, label %while.body58.while.body58_crit_edge

while.body58.while.body58_crit_edge:              ; preds = %while.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body58

while.end62:                                      ; preds = %while.body58
  %call65 = tail call fastcc i32 @smu7_set_smc_sram_address(ptr noundef %hwmgr, i32 noundef %addr.0.lcssa, i32 noundef %limit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66.not = icmp eq i32 %call65, 0
  br i1 %cmp66.not, label %if.end69, label %while.end62.cleanup_crit_edge

while.end62.cleanup_crit_edge:                    ; preds = %while.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end69:                                         ; preds = %while.end62
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %add61, %mul54
  %shl63 = shl nsw i32 -1, %mul54
  %neg = xor i32 %shl63, -1
  %and64 = and i32 %call52, %neg
  %or = or i32 %shl, %and64
  %22 = ptrtoint ptr %device49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device49, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %write_register72 = getelementptr inbounds %struct.cgs_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_register72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register72, align 4
  tail call void %27(ptr noundef %23, i32 noundef 429, i32 noundef %or) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %while.end62.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %do.end15, %if.then9.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %do.end15 ], [ -22, %if.then9.cleanup_crit_edge ], [ %call44, %if.then43.cleanup_crit_edge ], [ %call65, %while.end62.cleanup_crit_edge ], [ 0, %if.end69 ], [ 0, %while.end.cleanup_crit_edge ], [ %call34, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smu7_set_smc_sram_address(ptr nocapture noundef readonly %hwmgr, i32 noundef %smc_addr, i32 noundef %limit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %smc_addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_set_smc_sram_address._rs, ptr noundef nonnull @__func__.smu7_set_smc_sram_address) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %do.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  br label %return

do.body6:                                         ; preds = %entry
  %add = add nuw i32 %smc_addr, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %limit)
  %cmp7 = icmp ult i32 %add, %limit
  br i1 %cmp7, label %do.end18, label %if.then8

if.then8:                                         ; preds = %do.body6
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @smu7_set_smc_sram_address._rs.52, ptr noundef nonnull @__func__.smu7_set_smc_sram_address) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.return_crit_edge, label %do.end13

if.then8.return_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end13:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.55) #9
  br label %return

do.end18:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void %5(ptr noundef %1, i32 noundef 428, i32 noundef %smc_addr) #6
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write_register22 = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_register22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register22, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %call27 = tail call i32 %13(ptr noundef %7, i32 noundef 146) #6
  %and28 = and i32 %call27, -2049
  tail call void %11(ptr noundef %7, i32 noundef 146, i32 noundef %and28) #6
  br label %return

return:                                           ; preds = %do.end18, %do.end13, %if.then8.return_crit_edge, %do.end, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end18 ], [ -22, %do.end ], [ -22, %if.then.return_crit_edge ], [ -22, %do.end13 ], [ -22, %if.then8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_program_jump_on_start(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu7_copy_bytes_to_smc(ptr noundef %hwmgr, i32 noundef 0, ptr noundef nonnull @smu7_program_jump_on_start.data, i32 noundef 4, i32 noundef 5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smu7_is_smc_ram_running(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_ind_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_ind_register, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 1, i32 noundef -2147483644) #6
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read_ind_register4 = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read_ind_register4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_ind_register4, align 4
  %call6 = tail call i32 %11(ptr noundef %7, i32 noundef 1, i32 noundef -2147482768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 131327, i32 %call6)
  %cmp7 = icmp ugt i32 %call6, 131327
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp7, %land.rhs ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef 149, i32 noundef 0, i32 noundef 65535) #6
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 %5(ptr noundef %1, i32 noundef 149) #6
  %trunc = trunc i32 %call2 to i16
  %6 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end11 [
    i16 254, label %do.body
    i16 1, label %entry.if.end15_crit_edge
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu7_send_msg_to_smc.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu7_send_msg_to_smc, %if.then6)) #6
          to label %if.end15 [label %if.then6], !srcloc !134

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu7_send_msg_to_smc.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.14) #6
  br label %if.end15

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %call2, 65535
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %and) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %if.then6, %do.body, %entry.if.end15_crit_edge
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_register, align 4
  tail call void %12(ptr noundef %8, i32 noundef 149, i32 noundef 0) #6
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %write_register21 = getelementptr inbounds %struct.cgs_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_register21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_register21, align 4
  %conv = zext i16 %msg to i32
  tail call void %18(ptr noundef %14, i32 noundef 148, i32 noundef %conv) #6
  %call23 = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef 149, i32 noundef 0, i32 noundef 65535) #6
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call28 = tail call i32 %24(ptr noundef %20, i32 noundef 149) #6
  %trunc84 = trunc i32 %call28 to i16
  %25 = zext i16 %trunc84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %trunc84, label %do.end57 [
    i16 254, label %do.body34
    i16 1, label %if.end15.if.end62_crit_edge
  ]

if.end15.if.end62_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.body34:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu7_send_msg_to_smc.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu7_send_msg_to_smc, %if.then46)) #6
          to label %if.end62 [label %if.then46], !srcloc !134

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smu7_send_msg_to_smc.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.17, i32 noundef %conv) #6
  br label %if.end62

do.end57:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %and29 = and i32 %call28, 65535
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %and29) #9
  br label %if.end62

if.end62:                                         ; preds = %do.end57, %if.then46, %do.body34, %if.end15.if.end62_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_for_register_unequal(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %msg, i32 noundef %parameter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef 149, i32 noundef 0, i32 noundef 65535) #6
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void %5(ptr noundef %1, i32 noundef 164, i32 noundef %parameter) #6
  %call2 = tail call i32 @smu7_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %msg)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_get_argument(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 164) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_send_msg_to_smc_offset(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 256, i32 noundef 131072, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smu7_convert_fw_type_to_cgs(i32 noundef %fw_type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fw_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %fw_type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 14, label %sw.bb1
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
    i32 7, label %sw.bb8
    i32 8, label %sw.bb9
    i32 10, label %sw.bb10
    i32 35, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 13, %entry.sw.epilog_crit_edge ], [ 12, %sw.bb11 ], [ 11, %sw.bb10 ], [ 9, %sw.bb9 ], [ 8, %sw.bb8 ], [ 7, %sw.bb7 ], [ 6, %sw.bb6 ], [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_write_smc_sram_dword(ptr nocapture noundef readonly %hwmgr, i32 noundef %smc_addr, i32 noundef %value, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smu7_set_smc_sram_address(ptr noundef %hwmgr, i32 noundef %smc_addr, i32 noundef %limit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_register = getelementptr inbounds %struct.cgs_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void %5(ptr noundef %1, i32 noundef 429, i32 noundef %value) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_request_smu_load_fw(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  %info.i537 = alloca %struct.cgs_firmware_info, align 8
  %info.i510 = alloca %struct.cgs_firmware_info, align 8
  %info.i483 = alloca %struct.cgs_firmware_info, align 8
  %info.i456 = alloca %struct.cgs_firmware_info, align 8
  %info.i429 = alloca %struct.cgs_firmware_info, align 8
  %info.i402 = alloca %struct.cgs_firmware_info, align 8
  %info.i375 = alloca %struct.cgs_firmware_info, align 8
  %info.i348 = alloca %struct.cgs_firmware_info, align 8
  %info.i321 = alloca %struct.cgs_firmware_info, align 8
  %info.i = alloca %struct.cgs_firmware_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %call = tail call i32 @amdgpu_ucode_init_bo(ptr noundef %3) #6
  %soft_regs_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %soft_regs_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %soft_regs_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write_ind_register = getelementptr inbounds %struct.cgs_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_ind_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_ind_register, align 4
  %call3 = tail call i32 @smum_get_offsetof(ptr noundef %hwmgr, i32 noundef 0, i32 noundef 6) #6
  %add = add i32 %call3, %5
  tail call void %11(ptr noundef %7, i32 noundef 1, i32 noundef %add, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chip_id = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 2
  %12 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %cmp = icmp ugt i32 %13, 10
  br i1 %cmp, label %if.then4, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %14 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %not_vf, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.then4.if.end14_crit_edge, label %if.then6

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %mc_addr = getelementptr inbounds %struct.smu7_buffer_entry, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mc_addr, align 8
  %shr = lshr i64 %17, 32
  %conv = trunc i64 %shr to i32
  %call8 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 594, i32 noundef %conv, ptr noundef null) #6
  %18 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mc_addr, align 8
  %conv11 = trunc i64 %19 to i32
  %call12 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 595, i32 noundef %conv11, ptr noundef null) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.then4.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %fw_to_load.0 = phi i32 [ 1150, %if.then6 ], [ 1150, %if.then4.if.end14_crit_edge ], [ 1534, %if.end.if.end14_crit_edge ]
  %toc = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %toc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %toc, align 8
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end233_crit_edge

if.end14.if.end233_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end233

if.then16:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 344) #10
  %23 = ptrtoint ptr %toc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %toc, align 8
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.then16.cleanup258_crit_edge, label %if.end23

if.then16.cleanup258_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup258

if.end23:                                         ; preds = %if.then16
  %num_entries = getelementptr inbounds %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %call7.i.i, align 8
  %25 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %num_entries, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i) #6
  %26 = call ptr @memset(ptr %info.i, i32 0, i32 40)
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %27 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %get_firmware_info.i = getelementptr inbounds %struct.cgs_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %get_firmware_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_firmware_info.i, align 4
  %call3.i = call i32 %32(ptr noundef %28, i32 noundef 11, ptr noundef nonnull %info.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end23.smu7_populate_single_firmware_entry.exit_crit_edge

if.end23.smu7_populate_single_firmware_entry.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_populate_single_firmware_entry.exit

if.then.i:                                        ; preds = %if.end23
  %entry25 = getelementptr inbounds %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2
  %fw_version.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i, i32 0, i32 1
  %33 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %fw_version.i, align 2
  %35 = ptrtoint ptr %entry25 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %entry25, align 8
  %id.i = getelementptr inbounds %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 10, ptr %id.i, align 2
  %mc_addr.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i, i32 0, i32 4
  %37 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %mc_addr.i, align 8
  %shr.i = lshr i64 %38, 32
  %conv5.i = trunc i64 %shr.i to i32
  %image_addr_high.i = getelementptr inbounds %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %39 = ptrtoint ptr %image_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv5.i, ptr %image_addr_high.i, align 4
  %conv7.i = trunc i64 %38 to i32
  %image_addr_low.i = getelementptr inbounds %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %40 = ptrtoint ptr %image_addr_low.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv7.i, ptr %image_addr_low.i, align 8
  %meta_data_addr_high.i = getelementptr inbounds %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 4
  %41 = ptrtoint ptr %meta_data_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %meta_data_addr_high.i, align 4
  %meta_data_addr_low.i = getelementptr inbounds %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 5
  %42 = ptrtoint ptr %meta_data_addr_low.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %meta_data_addr_low.i, align 8
  %not_vf.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %43 = ptrtoint ptr %not_vf.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %not_vf.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool8.not.i = icmp eq i8 %44, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %image_size.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i, i32 0, i32 3
  %45 = ptrtoint ptr %image_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %image_size.i, align 8
  %sub.i = add i32 %46, -20
  store i32 %sub.i, ptr %image_size.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %if.then.i.if.end.i_crit_edge
  %image_size10.i = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i, i32 0, i32 3
  %47 = ptrtoint ptr %image_size10.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %image_size10.i, align 8
  %data_size_byte.i = getelementptr inbounds %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 6
  %49 = ptrtoint ptr %data_size_byte.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %data_size_byte.i, align 4
  %num_register_entries.i = getelementptr inbounds %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 7
  %50 = ptrtoint ptr %num_register_entries.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %num_register_entries.i, align 8
  br label %smu7_populate_single_firmware_entry.exit

smu7_populate_single_firmware_entry.exit:         ; preds = %if.end.i, %if.end23.smu7_populate_single_firmware_entry.exit_crit_edge
  %flags16.i = getelementptr inbounds %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 8
  %51 = ptrtoint ptr %flags16.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %flags16.i, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i) #6
  %52 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_entries, align 4
  %inc43 = add i32 %53, 1
  store i32 %inc43, ptr %num_entries, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i321) #6
  %54 = call ptr @memset(ptr %info.i321, i32 0, i32 40)
  %55 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %get_firmware_info.i323 = getelementptr inbounds %struct.cgs_ops, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %get_firmware_info.i323 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_firmware_info.i323, align 4
  %call3.i324 = call i32 %60(ptr noundef %56, i32 noundef 4, ptr noundef nonnull %info.i321) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i324)
  %tobool.not.i325 = icmp eq i32 %call3.i324, 0
  br i1 %tobool.not.i325, label %if.then.i338, label %smu7_populate_single_firmware_entry.exit.smu7_populate_single_firmware_entry.exit347_crit_edge

smu7_populate_single_firmware_entry.exit.smu7_populate_single_firmware_entry.exit347_crit_edge: ; preds = %smu7_populate_single_firmware_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_populate_single_firmware_entry.exit347

if.then.i338:                                     ; preds = %smu7_populate_single_firmware_entry.exit
  %arrayidx44 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %53
  %fw_version.i326 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i321, i32 0, i32 1
  %61 = ptrtoint ptr %fw_version.i326 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %fw_version.i326, align 2
  %63 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %arrayidx44, align 4
  %id.i327 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %53, i32 1
  %64 = ptrtoint ptr %id.i327 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 3, ptr %id.i327, align 2
  %mc_addr.i328 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i321, i32 0, i32 4
  %65 = ptrtoint ptr %mc_addr.i328 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %mc_addr.i328, align 8
  %shr.i329 = lshr i64 %66, 32
  %conv5.i330 = trunc i64 %shr.i329 to i32
  %image_addr_high.i331 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %53, i32 2
  %67 = ptrtoint ptr %image_addr_high.i331 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv5.i330, ptr %image_addr_high.i331, align 4
  %conv7.i332 = trunc i64 %66 to i32
  %image_addr_low.i333 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %53, i32 3
  %68 = ptrtoint ptr %image_addr_low.i333 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv7.i332, ptr %image_addr_low.i333, align 4
  %meta_data_addr_high.i334 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %53, i32 4
  %69 = ptrtoint ptr %meta_data_addr_high.i334 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %meta_data_addr_high.i334, align 4
  %meta_data_addr_low.i335 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %53, i32 5
  %70 = ptrtoint ptr %meta_data_addr_low.i335 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %meta_data_addr_low.i335, align 4
  %not_vf.i336 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %71 = ptrtoint ptr %not_vf.i336 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %not_vf.i336, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool8.not.i337 = icmp eq i8 %72, 0
  br i1 %tobool8.not.i337, label %if.then9.i341, label %if.then.i338.if.end.i345_crit_edge

if.then.i338.if.end.i345_crit_edge:               ; preds = %if.then.i338
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i345

if.then9.i341:                                    ; preds = %if.then.i338
  call void @__sanitizer_cov_trace_pc() #8
  %image_size.i339 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i321, i32 0, i32 3
  %73 = ptrtoint ptr %image_size.i339 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %image_size.i339, align 8
  %sub.i340 = add i32 %74, -20
  store i32 %sub.i340, ptr %image_size.i339, align 8
  br label %if.end.i345

if.end.i345:                                      ; preds = %if.then9.i341, %if.then.i338.if.end.i345_crit_edge
  %image_size10.i342 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i321, i32 0, i32 3
  %75 = ptrtoint ptr %image_size10.i342 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %image_size10.i342, align 8
  %data_size_byte.i343 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %53, i32 6
  %77 = ptrtoint ptr %data_size_byte.i343 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %data_size_byte.i343, align 4
  %num_register_entries.i344 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %53, i32 7
  %78 = ptrtoint ptr %num_register_entries.i344 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %num_register_entries.i344, align 4
  br label %smu7_populate_single_firmware_entry.exit347

smu7_populate_single_firmware_entry.exit347:      ; preds = %if.end.i345, %smu7_populate_single_firmware_entry.exit.smu7_populate_single_firmware_entry.exit347_crit_edge
  %flags16.i346 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %53, i32 8
  %79 = ptrtoint ptr %flags16.i346 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags16.i346, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i321) #6
  %80 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_entries, align 4
  %inc64 = add i32 %81, 1
  store i32 %inc64, ptr %num_entries, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i348) #6
  %82 = call ptr @memset(ptr %info.i348, i32 0, i32 40)
  %83 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %get_firmware_info.i350 = getelementptr inbounds %struct.cgs_ops, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %get_firmware_info.i350 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %get_firmware_info.i350, align 4
  %call3.i351 = call i32 %88(ptr noundef %84, i32 noundef 5, ptr noundef nonnull %info.i348) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i351)
  %tobool.not.i352 = icmp eq i32 %call3.i351, 0
  br i1 %tobool.not.i352, label %if.then.i365, label %smu7_populate_single_firmware_entry.exit347.smu7_populate_single_firmware_entry.exit374_crit_edge

smu7_populate_single_firmware_entry.exit347.smu7_populate_single_firmware_entry.exit374_crit_edge: ; preds = %smu7_populate_single_firmware_entry.exit347
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_populate_single_firmware_entry.exit374

if.then.i365:                                     ; preds = %smu7_populate_single_firmware_entry.exit347
  %arrayidx65 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %81
  %fw_version.i353 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i348, i32 0, i32 1
  %89 = ptrtoint ptr %fw_version.i353 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %fw_version.i353, align 2
  %91 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %arrayidx65, align 4
  %id.i354 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %81, i32 1
  %92 = ptrtoint ptr %id.i354 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 4, ptr %id.i354, align 2
  %mc_addr.i355 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i348, i32 0, i32 4
  %93 = ptrtoint ptr %mc_addr.i355 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %mc_addr.i355, align 8
  %shr.i356 = lshr i64 %94, 32
  %conv5.i357 = trunc i64 %shr.i356 to i32
  %image_addr_high.i358 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %81, i32 2
  %95 = ptrtoint ptr %image_addr_high.i358 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv5.i357, ptr %image_addr_high.i358, align 4
  %conv7.i359 = trunc i64 %94 to i32
  %image_addr_low.i360 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %81, i32 3
  %96 = ptrtoint ptr %image_addr_low.i360 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv7.i359, ptr %image_addr_low.i360, align 4
  %meta_data_addr_high.i361 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %81, i32 4
  %97 = ptrtoint ptr %meta_data_addr_high.i361 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %meta_data_addr_high.i361, align 4
  %meta_data_addr_low.i362 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %81, i32 5
  %98 = ptrtoint ptr %meta_data_addr_low.i362 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %meta_data_addr_low.i362, align 4
  %not_vf.i363 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %99 = ptrtoint ptr %not_vf.i363 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %not_vf.i363, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool8.not.i364 = icmp eq i8 %100, 0
  br i1 %tobool8.not.i364, label %if.then9.i368, label %if.then.i365.if.end.i372_crit_edge

if.then.i365.if.end.i372_crit_edge:               ; preds = %if.then.i365
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i372

if.then9.i368:                                    ; preds = %if.then.i365
  call void @__sanitizer_cov_trace_pc() #8
  %image_size.i366 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i348, i32 0, i32 3
  %101 = ptrtoint ptr %image_size.i366 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %image_size.i366, align 8
  %sub.i367 = add i32 %102, -20
  store i32 %sub.i367, ptr %image_size.i366, align 8
  br label %if.end.i372

if.end.i372:                                      ; preds = %if.then9.i368, %if.then.i365.if.end.i372_crit_edge
  %image_size10.i369 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i348, i32 0, i32 3
  %103 = ptrtoint ptr %image_size10.i369 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %image_size10.i369, align 8
  %data_size_byte.i370 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %81, i32 6
  %105 = ptrtoint ptr %data_size_byte.i370 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %data_size_byte.i370, align 4
  %num_register_entries.i371 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %81, i32 7
  %106 = ptrtoint ptr %num_register_entries.i371 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %num_register_entries.i371, align 4
  br label %smu7_populate_single_firmware_entry.exit374

smu7_populate_single_firmware_entry.exit374:      ; preds = %if.end.i372, %smu7_populate_single_firmware_entry.exit347.smu7_populate_single_firmware_entry.exit374_crit_edge
  %flags16.i373 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %81, i32 8
  %107 = ptrtoint ptr %flags16.i373 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %flags16.i373, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i348) #6
  %108 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_entries, align 4
  %inc85 = add i32 %109, 1
  store i32 %inc85, ptr %num_entries, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i375) #6
  %110 = call ptr @memset(ptr %info.i375, i32 0, i32 40)
  %111 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %get_firmware_info.i377 = getelementptr inbounds %struct.cgs_ops, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %get_firmware_info.i377 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %get_firmware_info.i377, align 4
  %call3.i378 = call i32 %116(ptr noundef %112, i32 noundef 6, ptr noundef nonnull %info.i375) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i378)
  %tobool.not.i379 = icmp eq i32 %call3.i378, 0
  br i1 %tobool.not.i379, label %if.then.i392, label %smu7_populate_single_firmware_entry.exit374.smu7_populate_single_firmware_entry.exit401_crit_edge

smu7_populate_single_firmware_entry.exit374.smu7_populate_single_firmware_entry.exit401_crit_edge: ; preds = %smu7_populate_single_firmware_entry.exit374
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_populate_single_firmware_entry.exit401

if.then.i392:                                     ; preds = %smu7_populate_single_firmware_entry.exit374
  %arrayidx86 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %109
  %fw_version.i380 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i375, i32 0, i32 1
  %117 = ptrtoint ptr %fw_version.i380 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %fw_version.i380, align 2
  %119 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %arrayidx86, align 4
  %id.i381 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %109, i32 1
  %120 = ptrtoint ptr %id.i381 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 5, ptr %id.i381, align 2
  %mc_addr.i382 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i375, i32 0, i32 4
  %121 = ptrtoint ptr %mc_addr.i382 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %mc_addr.i382, align 8
  %shr.i383 = lshr i64 %122, 32
  %conv5.i384 = trunc i64 %shr.i383 to i32
  %image_addr_high.i385 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %109, i32 2
  %123 = ptrtoint ptr %image_addr_high.i385 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %conv5.i384, ptr %image_addr_high.i385, align 4
  %conv7.i386 = trunc i64 %122 to i32
  %image_addr_low.i387 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %109, i32 3
  %124 = ptrtoint ptr %image_addr_low.i387 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv7.i386, ptr %image_addr_low.i387, align 4
  %meta_data_addr_high.i388 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %109, i32 4
  %125 = ptrtoint ptr %meta_data_addr_high.i388 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %meta_data_addr_high.i388, align 4
  %meta_data_addr_low.i389 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %109, i32 5
  %126 = ptrtoint ptr %meta_data_addr_low.i389 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %meta_data_addr_low.i389, align 4
  %not_vf.i390 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %127 = ptrtoint ptr %not_vf.i390 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %not_vf.i390, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool8.not.i391 = icmp eq i8 %128, 0
  br i1 %tobool8.not.i391, label %if.then9.i395, label %if.then.i392.if.end.i399_crit_edge

if.then.i392.if.end.i399_crit_edge:               ; preds = %if.then.i392
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i399

if.then9.i395:                                    ; preds = %if.then.i392
  call void @__sanitizer_cov_trace_pc() #8
  %image_size.i393 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i375, i32 0, i32 3
  %129 = ptrtoint ptr %image_size.i393 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %image_size.i393, align 8
  %sub.i394 = add i32 %130, -20
  store i32 %sub.i394, ptr %image_size.i393, align 8
  br label %if.end.i399

if.end.i399:                                      ; preds = %if.then9.i395, %if.then.i392.if.end.i399_crit_edge
  %image_size10.i396 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i375, i32 0, i32 3
  %131 = ptrtoint ptr %image_size10.i396 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %image_size10.i396, align 8
  %data_size_byte.i397 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %109, i32 6
  %133 = ptrtoint ptr %data_size_byte.i397 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %data_size_byte.i397, align 4
  %num_register_entries.i398 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %109, i32 7
  %134 = ptrtoint ptr %num_register_entries.i398 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %num_register_entries.i398, align 4
  br label %smu7_populate_single_firmware_entry.exit401

smu7_populate_single_firmware_entry.exit401:      ; preds = %if.end.i399, %smu7_populate_single_firmware_entry.exit374.smu7_populate_single_firmware_entry.exit401_crit_edge
  %flags16.i400 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %109, i32 8
  %135 = ptrtoint ptr %flags16.i400 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %flags16.i400, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i375) #6
  %136 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num_entries, align 4
  %inc106 = add i32 %137, 1
  store i32 %inc106, ptr %num_entries, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i402) #6
  %138 = call ptr @memset(ptr %info.i402, i32 0, i32 40)
  %139 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %device.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %get_firmware_info.i404 = getelementptr inbounds %struct.cgs_ops, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %get_firmware_info.i404 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %get_firmware_info.i404, align 4
  %call3.i405 = call i32 %144(ptr noundef %140, i32 noundef 7, ptr noundef nonnull %info.i402) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i405)
  %tobool.not.i406 = icmp eq i32 %call3.i405, 0
  br i1 %tobool.not.i406, label %if.then.i419, label %smu7_populate_single_firmware_entry.exit401.smu7_populate_single_firmware_entry.exit428_crit_edge

smu7_populate_single_firmware_entry.exit401.smu7_populate_single_firmware_entry.exit428_crit_edge: ; preds = %smu7_populate_single_firmware_entry.exit401
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_populate_single_firmware_entry.exit428

if.then.i419:                                     ; preds = %smu7_populate_single_firmware_entry.exit401
  %arrayidx107 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %137
  %fw_version.i407 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i402, i32 0, i32 1
  %145 = ptrtoint ptr %fw_version.i407 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %fw_version.i407, align 2
  %147 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %arrayidx107, align 4
  %id.i408 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %137, i32 1
  %148 = ptrtoint ptr %id.i408 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 6, ptr %id.i408, align 2
  %mc_addr.i409 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i402, i32 0, i32 4
  %149 = ptrtoint ptr %mc_addr.i409 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %mc_addr.i409, align 8
  %shr.i410 = lshr i64 %150, 32
  %conv5.i411 = trunc i64 %shr.i410 to i32
  %image_addr_high.i412 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %137, i32 2
  %151 = ptrtoint ptr %image_addr_high.i412 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv5.i411, ptr %image_addr_high.i412, align 4
  %conv7.i413 = trunc i64 %150 to i32
  %image_addr_low.i414 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %137, i32 3
  %152 = ptrtoint ptr %image_addr_low.i414 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv7.i413, ptr %image_addr_low.i414, align 4
  %meta_data_addr_high.i415 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %137, i32 4
  %153 = ptrtoint ptr %meta_data_addr_high.i415 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %meta_data_addr_high.i415, align 4
  %meta_data_addr_low.i416 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %137, i32 5
  %154 = ptrtoint ptr %meta_data_addr_low.i416 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %meta_data_addr_low.i416, align 4
  %not_vf.i417 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %155 = ptrtoint ptr %not_vf.i417 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %not_vf.i417, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool8.not.i418 = icmp eq i8 %156, 0
  br i1 %tobool8.not.i418, label %if.then9.i422, label %if.then.i419.if.end.i426_crit_edge

if.then.i419.if.end.i426_crit_edge:               ; preds = %if.then.i419
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i426

if.then9.i422:                                    ; preds = %if.then.i419
  call void @__sanitizer_cov_trace_pc() #8
  %image_size.i420 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i402, i32 0, i32 3
  %157 = ptrtoint ptr %image_size.i420 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %image_size.i420, align 8
  %sub.i421 = add i32 %158, -20
  store i32 %sub.i421, ptr %image_size.i420, align 8
  br label %if.end.i426

if.end.i426:                                      ; preds = %if.then9.i422, %if.then.i419.if.end.i426_crit_edge
  %image_size10.i423 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i402, i32 0, i32 3
  %159 = ptrtoint ptr %image_size10.i423 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %image_size10.i423, align 8
  %data_size_byte.i424 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %137, i32 6
  %161 = ptrtoint ptr %data_size_byte.i424 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %data_size_byte.i424, align 4
  %num_register_entries.i425 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %137, i32 7
  %162 = ptrtoint ptr %num_register_entries.i425 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %num_register_entries.i425, align 4
  br label %smu7_populate_single_firmware_entry.exit428

smu7_populate_single_firmware_entry.exit428:      ; preds = %if.end.i426, %smu7_populate_single_firmware_entry.exit401.smu7_populate_single_firmware_entry.exit428_crit_edge
  %flags16.i427 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %137, i32 8
  %163 = ptrtoint ptr %flags16.i427 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 1, ptr %flags16.i427, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i402) #6
  %164 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %num_entries, align 4
  %inc127 = add i32 %165, 1
  store i32 %inc127, ptr %num_entries, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i429) #6
  %166 = call ptr @memset(ptr %info.i429, i32 0, i32 40)
  %167 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %device.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %get_firmware_info.i431 = getelementptr inbounds %struct.cgs_ops, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %get_firmware_info.i431 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %get_firmware_info.i431, align 4
  %call3.i432 = call i32 %172(ptr noundef %168, i32 noundef 8, ptr noundef nonnull %info.i429) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i432)
  %tobool.not.i433 = icmp eq i32 %call3.i432, 0
  br i1 %tobool.not.i433, label %if.then.i446, label %smu7_populate_single_firmware_entry.exit428.smu7_populate_single_firmware_entry.exit455_crit_edge

smu7_populate_single_firmware_entry.exit428.smu7_populate_single_firmware_entry.exit455_crit_edge: ; preds = %smu7_populate_single_firmware_entry.exit428
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_populate_single_firmware_entry.exit455

if.then.i446:                                     ; preds = %smu7_populate_single_firmware_entry.exit428
  %arrayidx128 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %165
  %fw_version.i434 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i429, i32 0, i32 1
  %173 = ptrtoint ptr %fw_version.i434 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %fw_version.i434, align 2
  %175 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %arrayidx128, align 4
  %id.i435 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %165, i32 1
  %176 = ptrtoint ptr %id.i435 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 7, ptr %id.i435, align 2
  %mc_addr.i436 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i429, i32 0, i32 4
  %177 = ptrtoint ptr %mc_addr.i436 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %mc_addr.i436, align 8
  %shr.i437 = lshr i64 %178, 32
  %conv5.i438 = trunc i64 %shr.i437 to i32
  %image_addr_high.i439 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %165, i32 2
  %179 = ptrtoint ptr %image_addr_high.i439 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %conv5.i438, ptr %image_addr_high.i439, align 4
  %conv7.i440 = trunc i64 %178 to i32
  %image_addr_low.i441 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %165, i32 3
  %180 = ptrtoint ptr %image_addr_low.i441 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %conv7.i440, ptr %image_addr_low.i441, align 4
  %meta_data_addr_high.i442 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %165, i32 4
  %181 = ptrtoint ptr %meta_data_addr_high.i442 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %meta_data_addr_high.i442, align 4
  %meta_data_addr_low.i443 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %165, i32 5
  %182 = ptrtoint ptr %meta_data_addr_low.i443 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %meta_data_addr_low.i443, align 4
  %not_vf.i444 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %183 = ptrtoint ptr %not_vf.i444 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %not_vf.i444, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool8.not.i445 = icmp eq i8 %184, 0
  br i1 %tobool8.not.i445, label %if.then9.i449, label %if.then.i446.if.end.i453_crit_edge

if.then.i446.if.end.i453_crit_edge:               ; preds = %if.then.i446
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i453

if.then9.i449:                                    ; preds = %if.then.i446
  call void @__sanitizer_cov_trace_pc() #8
  %image_size.i447 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i429, i32 0, i32 3
  %185 = ptrtoint ptr %image_size.i447 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %image_size.i447, align 8
  %sub.i448 = add i32 %186, -20
  store i32 %sub.i448, ptr %image_size.i447, align 8
  br label %if.end.i453

if.end.i453:                                      ; preds = %if.then9.i449, %if.then.i446.if.end.i453_crit_edge
  %image_size10.i450 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i429, i32 0, i32 3
  %187 = ptrtoint ptr %image_size10.i450 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %image_size10.i450, align 8
  %data_size_byte.i451 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %165, i32 6
  %189 = ptrtoint ptr %data_size_byte.i451 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %data_size_byte.i451, align 4
  %num_register_entries.i452 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %165, i32 7
  %190 = ptrtoint ptr %num_register_entries.i452 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %num_register_entries.i452, align 4
  br label %smu7_populate_single_firmware_entry.exit455

smu7_populate_single_firmware_entry.exit455:      ; preds = %if.end.i453, %smu7_populate_single_firmware_entry.exit428.smu7_populate_single_firmware_entry.exit455_crit_edge
  %flags16.i454 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %165, i32 8
  %191 = ptrtoint ptr %flags16.i454 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %flags16.i454, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i429) #6
  %192 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %num_entries, align 4
  %inc148 = add i32 %193, 1
  store i32 %inc148, ptr %num_entries, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i456) #6
  %194 = call ptr @memset(ptr %info.i456, i32 0, i32 40)
  %195 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %device.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %get_firmware_info.i458 = getelementptr inbounds %struct.cgs_ops, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %get_firmware_info.i458 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %get_firmware_info.i458, align 4
  %call3.i459 = call i32 %200(ptr noundef %196, i32 noundef 9, ptr noundef nonnull %info.i456) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i459)
  %tobool.not.i460 = icmp eq i32 %call3.i459, 0
  br i1 %tobool.not.i460, label %if.then.i473, label %smu7_populate_single_firmware_entry.exit455.smu7_populate_single_firmware_entry.exit482_crit_edge

smu7_populate_single_firmware_entry.exit455.smu7_populate_single_firmware_entry.exit482_crit_edge: ; preds = %smu7_populate_single_firmware_entry.exit455
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_populate_single_firmware_entry.exit482

if.then.i473:                                     ; preds = %smu7_populate_single_firmware_entry.exit455
  %arrayidx149 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %193
  %fw_version.i461 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i456, i32 0, i32 1
  %201 = ptrtoint ptr %fw_version.i461 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %fw_version.i461, align 2
  %203 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %arrayidx149, align 4
  %id.i462 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %193, i32 1
  %204 = ptrtoint ptr %id.i462 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 8, ptr %id.i462, align 2
  %mc_addr.i463 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i456, i32 0, i32 4
  %205 = ptrtoint ptr %mc_addr.i463 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %mc_addr.i463, align 8
  %shr.i464 = lshr i64 %206, 32
  %conv5.i465 = trunc i64 %shr.i464 to i32
  %image_addr_high.i466 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %193, i32 2
  %207 = ptrtoint ptr %image_addr_high.i466 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %conv5.i465, ptr %image_addr_high.i466, align 4
  %conv7.i467 = trunc i64 %206 to i32
  %image_addr_low.i468 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %193, i32 3
  %208 = ptrtoint ptr %image_addr_low.i468 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %conv7.i467, ptr %image_addr_low.i468, align 4
  %meta_data_addr_high.i469 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %193, i32 4
  %209 = ptrtoint ptr %meta_data_addr_high.i469 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %meta_data_addr_high.i469, align 4
  %meta_data_addr_low.i470 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %193, i32 5
  %210 = ptrtoint ptr %meta_data_addr_low.i470 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %meta_data_addr_low.i470, align 4
  %not_vf.i471 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %211 = ptrtoint ptr %not_vf.i471 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %not_vf.i471, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool8.not.i472 = icmp eq i8 %212, 0
  br i1 %tobool8.not.i472, label %if.then9.i476, label %if.then.i473.if.end.i480_crit_edge

if.then.i473.if.end.i480_crit_edge:               ; preds = %if.then.i473
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i480

if.then9.i476:                                    ; preds = %if.then.i473
  call void @__sanitizer_cov_trace_pc() #8
  %image_size.i474 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i456, i32 0, i32 3
  %213 = ptrtoint ptr %image_size.i474 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %image_size.i474, align 8
  %sub.i475 = add i32 %214, -20
  store i32 %sub.i475, ptr %image_size.i474, align 8
  br label %if.end.i480

if.end.i480:                                      ; preds = %if.then9.i476, %if.then.i473.if.end.i480_crit_edge
  %image_size10.i477 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i456, i32 0, i32 3
  %215 = ptrtoint ptr %image_size10.i477 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %image_size10.i477, align 8
  %data_size_byte.i478 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %193, i32 6
  %217 = ptrtoint ptr %data_size_byte.i478 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %data_size_byte.i478, align 4
  %num_register_entries.i479 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %193, i32 7
  %218 = ptrtoint ptr %num_register_entries.i479 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 0, ptr %num_register_entries.i479, align 4
  br label %smu7_populate_single_firmware_entry.exit482

smu7_populate_single_firmware_entry.exit482:      ; preds = %if.end.i480, %smu7_populate_single_firmware_entry.exit455.smu7_populate_single_firmware_entry.exit482_crit_edge
  %flags16.i481 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %193, i32 8
  %219 = ptrtoint ptr %flags16.i481 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 0, ptr %flags16.i481, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i456) #6
  %220 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %num_entries, align 4
  %inc169 = add i32 %221, 1
  store i32 %inc169, ptr %num_entries, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i483) #6
  %222 = call ptr @memset(ptr %info.i483, i32 0, i32 40)
  %223 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %device.i, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %get_firmware_info.i485 = getelementptr inbounds %struct.cgs_ops, ptr %226, i32 0, i32 4
  %227 = ptrtoint ptr %get_firmware_info.i485 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %get_firmware_info.i485, align 4
  %call3.i486 = call i32 %228(ptr noundef %224, i32 noundef 2, ptr noundef nonnull %info.i483) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i486)
  %tobool.not.i487 = icmp eq i32 %call3.i486, 0
  br i1 %tobool.not.i487, label %if.then.i500, label %smu7_populate_single_firmware_entry.exit482.smu7_populate_single_firmware_entry.exit509_crit_edge

smu7_populate_single_firmware_entry.exit482.smu7_populate_single_firmware_entry.exit509_crit_edge: ; preds = %smu7_populate_single_firmware_entry.exit482
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_populate_single_firmware_entry.exit509

if.then.i500:                                     ; preds = %smu7_populate_single_firmware_entry.exit482
  %arrayidx170 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %221
  %fw_version.i488 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i483, i32 0, i32 1
  %229 = ptrtoint ptr %fw_version.i488 to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %fw_version.i488, align 2
  %231 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %230, ptr %arrayidx170, align 4
  %id.i489 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %221, i32 1
  %232 = ptrtoint ptr %id.i489 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 1, ptr %id.i489, align 2
  %mc_addr.i490 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i483, i32 0, i32 4
  %233 = ptrtoint ptr %mc_addr.i490 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %mc_addr.i490, align 8
  %shr.i491 = lshr i64 %234, 32
  %conv5.i492 = trunc i64 %shr.i491 to i32
  %image_addr_high.i493 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %221, i32 2
  %235 = ptrtoint ptr %image_addr_high.i493 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %conv5.i492, ptr %image_addr_high.i493, align 4
  %conv7.i494 = trunc i64 %234 to i32
  %image_addr_low.i495 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %221, i32 3
  %236 = ptrtoint ptr %image_addr_low.i495 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %conv7.i494, ptr %image_addr_low.i495, align 4
  %meta_data_addr_high.i496 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %221, i32 4
  %237 = ptrtoint ptr %meta_data_addr_high.i496 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %meta_data_addr_high.i496, align 4
  %meta_data_addr_low.i497 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %221, i32 5
  %238 = ptrtoint ptr %meta_data_addr_low.i497 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %meta_data_addr_low.i497, align 4
  %not_vf.i498 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %239 = ptrtoint ptr %not_vf.i498 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %not_vf.i498, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool8.not.i499 = icmp eq i8 %240, 0
  br i1 %tobool8.not.i499, label %if.then9.i503, label %if.then.i500.if.end.i507_crit_edge

if.then.i500.if.end.i507_crit_edge:               ; preds = %if.then.i500
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i507

if.then9.i503:                                    ; preds = %if.then.i500
  call void @__sanitizer_cov_trace_pc() #8
  %image_size.i501 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i483, i32 0, i32 3
  %241 = ptrtoint ptr %image_size.i501 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %image_size.i501, align 8
  %sub.i502 = add i32 %242, -20
  store i32 %sub.i502, ptr %image_size.i501, align 8
  br label %if.end.i507

if.end.i507:                                      ; preds = %if.then9.i503, %if.then.i500.if.end.i507_crit_edge
  %image_size10.i504 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i483, i32 0, i32 3
  %243 = ptrtoint ptr %image_size10.i504 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %image_size10.i504, align 8
  %data_size_byte.i505 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %221, i32 6
  %245 = ptrtoint ptr %data_size_byte.i505 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %244, ptr %data_size_byte.i505, align 4
  %num_register_entries.i506 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %221, i32 7
  %246 = ptrtoint ptr %num_register_entries.i506 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 0, ptr %num_register_entries.i506, align 4
  br label %smu7_populate_single_firmware_entry.exit509

smu7_populate_single_firmware_entry.exit509:      ; preds = %if.end.i507, %smu7_populate_single_firmware_entry.exit482.smu7_populate_single_firmware_entry.exit509_crit_edge
  %flags16.i508 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %221, i32 8
  %247 = ptrtoint ptr %flags16.i508 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 0, ptr %flags16.i508, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i483) #6
  %248 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %num_entries, align 4
  %inc190 = add i32 %249, 1
  store i32 %inc190, ptr %num_entries, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i510) #6
  %250 = call ptr @memset(ptr %info.i510, i32 0, i32 40)
  %251 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %device.i, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %252, align 4
  %get_firmware_info.i512 = getelementptr inbounds %struct.cgs_ops, ptr %254, i32 0, i32 4
  %255 = ptrtoint ptr %get_firmware_info.i512 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %get_firmware_info.i512, align 4
  %call3.i513 = call i32 %256(ptr noundef %252, i32 noundef 3, ptr noundef nonnull %info.i510) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i513)
  %tobool.not.i514 = icmp eq i32 %call3.i513, 0
  br i1 %tobool.not.i514, label %if.then.i527, label %smu7_populate_single_firmware_entry.exit509.smu7_populate_single_firmware_entry.exit536_crit_edge

smu7_populate_single_firmware_entry.exit509.smu7_populate_single_firmware_entry.exit536_crit_edge: ; preds = %smu7_populate_single_firmware_entry.exit509
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_populate_single_firmware_entry.exit536

if.then.i527:                                     ; preds = %smu7_populate_single_firmware_entry.exit509
  %arrayidx191 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %249
  %fw_version.i515 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i510, i32 0, i32 1
  %257 = ptrtoint ptr %fw_version.i515 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %fw_version.i515, align 2
  %259 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %258, ptr %arrayidx191, align 4
  %id.i516 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %249, i32 1
  %260 = ptrtoint ptr %id.i516 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 2, ptr %id.i516, align 2
  %mc_addr.i517 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i510, i32 0, i32 4
  %261 = ptrtoint ptr %mc_addr.i517 to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %mc_addr.i517, align 8
  %shr.i518 = lshr i64 %262, 32
  %conv5.i519 = trunc i64 %shr.i518 to i32
  %image_addr_high.i520 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %249, i32 2
  %263 = ptrtoint ptr %image_addr_high.i520 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %conv5.i519, ptr %image_addr_high.i520, align 4
  %conv7.i521 = trunc i64 %262 to i32
  %image_addr_low.i522 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %249, i32 3
  %264 = ptrtoint ptr %image_addr_low.i522 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %conv7.i521, ptr %image_addr_low.i522, align 4
  %meta_data_addr_high.i523 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %249, i32 4
  %265 = ptrtoint ptr %meta_data_addr_high.i523 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 0, ptr %meta_data_addr_high.i523, align 4
  %meta_data_addr_low.i524 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %249, i32 5
  %266 = ptrtoint ptr %meta_data_addr_low.i524 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %meta_data_addr_low.i524, align 4
  %not_vf.i525 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %267 = ptrtoint ptr %not_vf.i525 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %not_vf.i525, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool8.not.i526 = icmp eq i8 %268, 0
  br i1 %tobool8.not.i526, label %if.then9.i530, label %if.then.i527.if.end.i534_crit_edge

if.then.i527.if.end.i534_crit_edge:               ; preds = %if.then.i527
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i534

if.then9.i530:                                    ; preds = %if.then.i527
  call void @__sanitizer_cov_trace_pc() #8
  %image_size.i528 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i510, i32 0, i32 3
  %269 = ptrtoint ptr %image_size.i528 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %image_size.i528, align 8
  %sub.i529 = add i32 %270, -20
  store i32 %sub.i529, ptr %image_size.i528, align 8
  br label %if.end.i534

if.end.i534:                                      ; preds = %if.then9.i530, %if.then.i527.if.end.i534_crit_edge
  %image_size10.i531 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i510, i32 0, i32 3
  %271 = ptrtoint ptr %image_size10.i531 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %image_size10.i531, align 8
  %data_size_byte.i532 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %249, i32 6
  %273 = ptrtoint ptr %data_size_byte.i532 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %data_size_byte.i532, align 4
  %num_register_entries.i533 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %249, i32 7
  %274 = ptrtoint ptr %num_register_entries.i533 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 0, ptr %num_register_entries.i533, align 4
  br label %smu7_populate_single_firmware_entry.exit536

smu7_populate_single_firmware_entry.exit536:      ; preds = %if.end.i534, %smu7_populate_single_firmware_entry.exit509.smu7_populate_single_firmware_entry.exit536_crit_edge
  %flags16.i535 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %249, i32 8
  %275 = ptrtoint ptr %flags16.i535 to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 0, ptr %flags16.i535, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i510) #6
  %not_vf208 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %276 = ptrtoint ptr %not_vf208 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %not_vf208, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool209.not = icmp eq i8 %277, 0
  br i1 %tobool209.not, label %do.body211, label %smu7_populate_single_firmware_entry.exit536.if.end233_crit_edge

smu7_populate_single_firmware_entry.exit536.if.end233_crit_edge: ; preds = %smu7_populate_single_firmware_entry.exit536
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end233

do.body211:                                       ; preds = %smu7_populate_single_firmware_entry.exit536
  %278 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %num_entries, align 4
  %inc214 = add i32 %279, 1
  store i32 %inc214, ptr %num_entries, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i537) #6
  %280 = call ptr @memset(ptr %info.i537, i32 0, i32 40)
  %281 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %device.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 4
  %get_firmware_info.i539 = getelementptr inbounds %struct.cgs_ops, ptr %284, i32 0, i32 4
  %285 = ptrtoint ptr %get_firmware_info.i539 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %get_firmware_info.i539, align 4
  %call3.i540 = call i32 %286(ptr noundef %282, i32 noundef 12, ptr noundef nonnull %info.i537) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i540)
  %tobool.not.i541 = icmp eq i32 %call3.i540, 0
  br i1 %tobool.not.i541, label %if.then.i554, label %do.body211.smu7_populate_single_firmware_entry.exit563_crit_edge

do.body211.smu7_populate_single_firmware_entry.exit563_crit_edge: ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_populate_single_firmware_entry.exit563

if.then.i554:                                     ; preds = %do.body211
  %arrayidx215 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %279
  %fw_version.i542 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i537, i32 0, i32 1
  %287 = ptrtoint ptr %fw_version.i542 to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %fw_version.i542, align 2
  %289 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %288, ptr %arrayidx215, align 4
  %id.i543 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %279, i32 1
  %290 = ptrtoint ptr %id.i543 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 35, ptr %id.i543, align 2
  %mc_addr.i544 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i537, i32 0, i32 4
  %291 = ptrtoint ptr %mc_addr.i544 to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %mc_addr.i544, align 8
  %shr.i545 = lshr i64 %292, 32
  %conv5.i546 = trunc i64 %shr.i545 to i32
  %image_addr_high.i547 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %279, i32 2
  %293 = ptrtoint ptr %image_addr_high.i547 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %conv5.i546, ptr %image_addr_high.i547, align 4
  %conv7.i548 = trunc i64 %292 to i32
  %image_addr_low.i549 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %279, i32 3
  %294 = ptrtoint ptr %image_addr_low.i549 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %conv7.i548, ptr %image_addr_low.i549, align 4
  %meta_data_addr_high.i550 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %279, i32 4
  %295 = ptrtoint ptr %meta_data_addr_high.i550 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 0, ptr %meta_data_addr_high.i550, align 4
  %meta_data_addr_low.i551 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %279, i32 5
  %296 = ptrtoint ptr %meta_data_addr_low.i551 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 0, ptr %meta_data_addr_low.i551, align 4
  %297 = ptrtoint ptr %not_vf208 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %not_vf208, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool8.not.i553 = icmp eq i8 %298, 0
  br i1 %tobool8.not.i553, label %if.then9.i557, label %if.then.i554.if.end.i561_crit_edge

if.then.i554.if.end.i561_crit_edge:               ; preds = %if.then.i554
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i561

if.then9.i557:                                    ; preds = %if.then.i554
  call void @__sanitizer_cov_trace_pc() #8
  %image_size.i555 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i537, i32 0, i32 3
  %299 = ptrtoint ptr %image_size.i555 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %image_size.i555, align 8
  %sub.i556 = add i32 %300, -20
  store i32 %sub.i556, ptr %image_size.i555, align 8
  br label %if.end.i561

if.end.i561:                                      ; preds = %if.then9.i557, %if.then.i554.if.end.i561_crit_edge
  %image_size10.i558 = getelementptr inbounds %struct.cgs_firmware_info, ptr %info.i537, i32 0, i32 3
  %301 = ptrtoint ptr %image_size10.i558 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %image_size10.i558, align 8
  %data_size_byte.i559 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %279, i32 6
  %303 = ptrtoint ptr %data_size_byte.i559 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %data_size_byte.i559, align 4
  %num_register_entries.i560 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %279, i32 7
  %304 = ptrtoint ptr %num_register_entries.i560 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 0, ptr %num_register_entries.i560, align 4
  br label %smu7_populate_single_firmware_entry.exit563

smu7_populate_single_firmware_entry.exit563:      ; preds = %if.end.i561, %do.body211.smu7_populate_single_firmware_entry.exit563_crit_edge
  %flags16.i562 = getelementptr %struct.SMU_DRAMData_TOC, ptr %call7.i.i, i32 0, i32 2, i32 %279, i32 8
  %305 = ptrtoint ptr %flags16.i562 to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 0, ptr %flags16.i562, align 2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i537) #6
  br label %if.end233

if.end233:                                        ; preds = %smu7_populate_single_firmware_entry.exit563, %smu7_populate_single_firmware_entry.exit536.if.end233_crit_edge, %if.end14.if.end233_crit_edge
  %kaddr = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 1, i32 2
  %306 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %kaddr, align 8
  %308 = ptrtoint ptr %toc to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %toc, align 8
  call void @mmiocpy(ptr noundef %307, ptr noundef %309, i32 noundef 344) #6
  %mc_addr236 = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 1, i32 1
  %310 = ptrtoint ptr %mc_addr236 to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %mc_addr236, align 8
  %shr237 = lshr i64 %311, 32
  %conv239 = trunc i64 %shr237 to i32
  %call240 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 592, i32 noundef %conv239, ptr noundef null) #6
  %312 = ptrtoint ptr %mc_addr236 to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %mc_addr236, align 8
  %conv244 = trunc i64 %313 to i32
  %call245 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 593, i32 noundef %conv244, ptr noundef null) #6
  %call246 = call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 596, i32 noundef %fw_to_load.0, ptr noundef null) #6
  %314 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %smu_backend, align 4
  %soft_regs_start.i = getelementptr inbounds %struct.smu7_smumgr, ptr %315, i32 0, i32 3
  %316 = ptrtoint ptr %soft_regs_start.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %soft_regs_start.i, align 4
  %call.i = call i32 @smum_get_offsetof(ptr noundef %hwmgr, i32 noundef 0, i32 noundef 6) #6
  %add.i = add i32 %call.i, %317
  %call1.i = call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 428, i32 noundef %add.i, i32 noundef %fw_to_load.0, i32 noundef %fw_to_load.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool248.not = icmp eq i32 %call1.i, 0
  br i1 %tobool248.not, label %if.end233.cleanup258_crit_edge, label %do.end253

if.end233.cleanup258_crit_edge:                   ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup258

do.end253:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #8
  %call255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #9
  %318 = ptrtoint ptr %toc to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %toc, align 8
  call void @kfree(ptr noundef %319) #6
  %320 = ptrtoint ptr %toc to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr null, ptr %toc, align 8
  br label %cleanup258

cleanup258:                                       ; preds = %do.end253, %if.end233.cleanup258_crit_edge, %if.then16.cleanup258_crit_edge
  %retval.1 = phi i32 [ %call1.i, %do.end253 ], [ 0, %if.end233.cleanup258_crit_edge ], [ -12, %if.then16.cleanup258_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_init_bo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_get_offsetof(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_check_fw_load_finish(ptr noundef %hwmgr, i32 noundef %fw_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %soft_regs_start = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %soft_regs_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soft_regs_start, align 4
  %call = tail call i32 @smum_get_offsetof(ptr noundef %hwmgr, i32 noundef 0, i32 noundef 6) #6
  %add = add i32 %call, %3
  %call1 = tail call i32 @phm_wait_on_indirect_register(ptr noundef %hwmgr, i32 noundef 428, i32 noundef %add, i32 noundef %fw_type, i32 noundef %fw_type) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_on_indirect_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_reload_firmware(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smumgr_funcs = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 26
  %0 = ptrtoint ptr %smumgr_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smumgr_funcs, align 4
  %start_smu = getelementptr inbounds %struct.pp_smumgr_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %start_smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start_smu, align 4
  %call = tail call i32 %3(ptr noundef %hwmgr) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_upload_smu_firmware_image(ptr nocapture noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cgs_firmware_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #6
  %2 = call ptr @memset(ptr %info, i32 0, i32 40)
  %security_hard_key = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %security_hard_key to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %security_hard_key, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp ne i8 %4, 1
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %get_firmware_info = getelementptr inbounds %struct.cgs_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %get_firmware_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_firmware_info, align 4
  %. = zext i1 %cmp to i32
  %call9 = call i32 %10(ptr noundef %6, i32 noundef %., ptr noundef nonnull %info) #6
  %is_kicker = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 7
  %11 = ptrtoint ptr %is_kicker to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_kicker, align 8, !range !135
  %is_kicker10 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 27
  %13 = ptrtoint ptr %is_kicker10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %is_kicker10, align 4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %info, align 8
  %conv11 = zext i16 %15 to i32
  %smu_version = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 3
  %16 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv11, ptr %smu_version, align 4
  %image_size = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %image_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %image_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %18)
  %cmp.i = icmp ult i32 %18, 131073
  br i1 %cmp.i, label %do.end6.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = call i32 @___ratelimit(ptr noundef nonnull @smu7_upload_smc_firmware_data._rs, ptr noundef nonnull @__func__.smu7_upload_smc_firmware_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.smu7_upload_smc_firmware_data.exit_crit_edge, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then.i.smu7_upload_smc_firmware_data.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_upload_smc_firmware_data.exit

do.end6.i:                                        ; preds = %entry
  %kptr = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 6
  %19 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kptr, align 4
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %21 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %write_register.i = getelementptr inbounds %struct.cgs_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_register.i, align 4
  call void %26(ptr noundef %22, i32 noundef 428, i32 noundef 131072) #6
  %27 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %write_register10.i = getelementptr inbounds %struct.cgs_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_register10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_register10.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %call15.i = call i32 %34(ptr noundef %28, i32 noundef 146) #6
  %or.i = or i32 %call15.i, 2048
  call void %32(ptr noundef %28, i32 noundef 146, i32 noundef %or.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp161.i = icmp ugt i32 %18, 3
  br i1 %cmp161.i, label %do.end6.i.for.body.i_crit_edge, label %do.end6.i.for.end.i_crit_edge

do.end6.i.for.end.i_crit_edge:                    ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.end6.i.for.body.i_crit_edge:                   ; preds = %do.end6.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end6.i.for.body.i_crit_edge
  %src.addr.03.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %20, %do.end6.i.for.body.i_crit_edge ]
  %byte_count.02.i = phi i32 [ %sub.i, %for.body.i.for.body.i_crit_edge ], [ %18, %do.end6.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %write_register19.i = getelementptr inbounds %struct.cgs_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_register19.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_register19.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %src.addr.03.i, i32 1
  %41 = ptrtoint ptr %src.addr.03.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %src.addr.03.i, align 4
  call void %40(ptr noundef %36, i32 noundef 429, i32 noundef %42) #6
  %sub.i = add i32 %byte_count.02.i, -4
  %cmp16.i = icmp ugt i32 %sub.i, 3
  br i1 %cmp16.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end6.i.for.end.i_crit_edge
  %byte_count.0.lcssa.i = phi i32 [ %18, %do.end6.i.for.end.i_crit_edge ], [ %sub.i, %for.body.i.for.end.i_crit_edge ]
  %43 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write_register23.i = getelementptr inbounds %struct.cgs_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_register23.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_register23.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  %call29.i = call i32 %50(ptr noundef %44, i32 noundef 146) #6
  %and30.i = and i32 %call29.i, -2049
  call void %48(ptr noundef %44, i32 noundef 146, i32 noundef %and30.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.0.lcssa.i)
  %cmp33.i = icmp eq i32 %byte_count.0.lcssa.i, 0
  br i1 %cmp33.i, label %for.end.i.smu7_upload_smc_firmware_data.exit_crit_edge, label %if.then34.i

for.end.i.smu7_upload_smc_firmware_data.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_upload_smc_firmware_data.exit

if.then34.i:                                      ; preds = %for.end.i
  %call35.i = call i32 @___ratelimit(ptr noundef nonnull @smu7_upload_smc_firmware_data._rs.56, ptr noundef nonnull @__func__.smu7_upload_smc_firmware_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.then34.i.smu7_upload_smc_firmware_data.exit_crit_edge, label %if.then34.i.cleanup.sink.split.i_crit_edge

if.then34.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then34.i.smu7_upload_smc_firmware_data.exit_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu7_upload_smc_firmware_data.exit

cleanup.sink.split.i:                             ; preds = %if.then34.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %.str.59.sink.i = phi ptr [ @.str.7, %if.then.i.cleanup.sink.split.i_crit_edge ], [ @.str.59, %if.then34.i.cleanup.sink.split.i_crit_edge ]
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.59.sink.i) #9
  br label %smu7_upload_smc_firmware_data.exit

smu7_upload_smc_firmware_data.exit:               ; preds = %cleanup.sink.split.i, %if.then34.i.smu7_upload_smc_firmware_data.exit_crit_edge, %for.end.i.smu7_upload_smc_firmware_data.exit_crit_edge, %if.then.i.smu7_upload_smc_firmware_data.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i.smu7_upload_smc_firmware_data.exit_crit_edge ], [ -22, %if.then34.i.smu7_upload_smc_firmware_data.exit_crit_edge ], [ 0, %for.end.i.smu7_upload_smc_firmware_data.exit_crit_edge ], [ -22, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_setup_pwr_virus(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i.for.body.i_crit_edge, %entry
  %i.012.i = phi i32 [ 0, %entry ], [ %inc.i, %if.then.i.for.body.i_crit_edge ]
  %pvirus.addr.011.i = phi ptr [ @pwr_virus_table_pre, %entry ], [ %incdec.ptr.i, %if.then.i.for.body.i_crit_edge ]
  %reg1.i = getelementptr inbounds %struct.PWR_Command_Table, ptr %pvirus.addr.011.i, i32 0, i32 1
  %0 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp3.not.i = icmp eq i32 %1, -1
  br i1 %cmp3.not.i, label %for.body.i.execute_pwr_table.exit_crit_edge, label %if.then.i

for.body.i.execute_pwr_table.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %execute_pwr_table.exit

if.then.i:                                        ; preds = %for.body.i
  %2 = ptrtoint ptr %pvirus.addr.011.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pvirus.addr.011.i, align 4
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %write_register.i = getelementptr inbounds %struct.cgs_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_register.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register.i, align 4
  tail call void %9(ptr noundef %5, i32 noundef %1, i32 noundef %3) #6
  %incdec.ptr.i = getelementptr %struct.PWR_Command_Table, ptr %pvirus.addr.011.i, i32 1
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 206
  br i1 %exitcond.not.i, label %if.then.i.execute_pwr_table.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then.i.execute_pwr_table.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %execute_pwr_table.exit

execute_pwr_table.exit:                           ; preds = %if.then.i.execute_pwr_table.exit_crit_edge, %for.body.i.execute_pwr_table.exit_crit_edge
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write_register.i9 = getelementptr inbounds %struct.cgs_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_register.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register.i9, align 4
  tail call void %15(ptr noundef %11, i32 noundef 12320, i32 noundef -2147483644) #6
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %write_register4.i = getelementptr inbounds %struct.cgs_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_register4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register4.i, align 4
  tail call void %21(ptr noundef %17, i32 noundef 12322, i32 noundef 180) #6
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %write_register8.i = getelementptr inbounds %struct.cgs_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_register8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register8.i, align 4
  tail call void %27(ptr noundef %23, i32 noundef 12323, i32 noundef 1410328576) #6
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %execute_pwr_table.exit
  %i.028.i = phi i32 [ %inc.i10, %for.body.i11.for.body.i11_crit_edge ], [ 0, %execute_pwr_table.exit ]
  %28 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write_register12.i = getelementptr inbounds %struct.cgs_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_register12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_register12.i, align 4
  %arrayidx.i = getelementptr %struct.PWR_DFY_Section, ptr @pwr_virus_section1, i32 0, i32 4, i32 %i.028.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  tail call void %33(ptr noundef %29, i32 noundef 12324, i32 noundef %35) #6
  %inc.i10 = add nuw nsw i32 %i.028.i, 1
  %exitcond.not = icmp eq i32 %inc.i10, 416
  br i1 %exitcond.not, label %execute_pwr_dfy_table.exit, label %for.body.i11.for.body.i11_crit_edge

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i11

execute_pwr_dfy_table.exit:                       ; preds = %for.body.i11
  %36 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write_register.i13 = getelementptr inbounds %struct.cgs_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write_register.i13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_register.i13, align 4
  tail call void %41(ptr noundef %37, i32 noundef 12320, i32 noundef -2147483644) #6
  %42 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %write_register4.i14 = getelementptr inbounds %struct.cgs_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write_register4.i14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_register4.i14, align 4
  tail call void %47(ptr noundef %43, i32 noundef 12322, i32 noundef 180) #6
  %48 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %write_register8.i15 = getelementptr inbounds %struct.cgs_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_register8.i15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_register8.i15, align 4
  tail call void %53(ptr noundef %49, i32 noundef 12323, i32 noundef 1410330368) #6
  br label %for.body.i21

for.body.i21:                                     ; preds = %for.body.i21.for.body.i21_crit_edge, %execute_pwr_dfy_table.exit
  %i.028.i16 = phi i32 [ %inc.i19, %for.body.i21.for.body.i21_crit_edge ], [ 0, %execute_pwr_dfy_table.exit ]
  %54 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %write_register12.i17 = getelementptr inbounds %struct.cgs_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %write_register12.i17 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_register12.i17, align 4
  %arrayidx.i18 = getelementptr %struct.PWR_DFY_Section, ptr @pwr_virus_section2, i32 0, i32 4, i32 %i.028.i16
  %60 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i18, align 4
  tail call void %59(ptr noundef %55, i32 noundef 12324, i32 noundef %61) #6
  %inc.i19 = add nuw nsw i32 %i.028.i16, 1
  %exitcond79.not = icmp eq i32 %inc.i19, 16
  br i1 %exitcond79.not, label %execute_pwr_dfy_table.exit22, label %for.body.i21.for.body.i21_crit_edge

for.body.i21.for.body.i21_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i21

execute_pwr_dfy_table.exit22:                     ; preds = %for.body.i21
  %62 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %write_register.i24 = getelementptr inbounds %struct.cgs_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_register.i24 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_register.i24, align 4
  tail call void %67(ptr noundef %63, i32 noundef 12320, i32 noundef -2147483644) #6
  %68 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %write_register4.i25 = getelementptr inbounds %struct.cgs_ops, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_register4.i25 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_register4.i25, align 4
  tail call void %73(ptr noundef %69, i32 noundef 12322, i32 noundef 180) #6
  %74 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %write_register8.i26 = getelementptr inbounds %struct.cgs_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %write_register8.i26 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_register8.i26, align 4
  tail call void %79(ptr noundef %75, i32 noundef 12323, i32 noundef 1410330624) #6
  br label %for.body.i32

for.body.i32:                                     ; preds = %for.body.i32.for.body.i32_crit_edge, %execute_pwr_dfy_table.exit22
  %i.028.i27 = phi i32 [ %inc.i30, %for.body.i32.for.body.i32_crit_edge ], [ 0, %execute_pwr_dfy_table.exit22 ]
  %80 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %write_register12.i28 = getelementptr inbounds %struct.cgs_ops, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %write_register12.i28 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_register12.i28, align 4
  %arrayidx.i29 = getelementptr %struct.PWR_DFY_Section, ptr @pwr_virus_section3, i32 0, i32 4, i32 %i.028.i27
  %86 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i29, align 4
  tail call void %85(ptr noundef %81, i32 noundef 12324, i32 noundef %87) #6
  %inc.i30 = add nuw nsw i32 %i.028.i27, 1
  %exitcond80.not = icmp eq i32 %inc.i30, 7440
  br i1 %exitcond80.not, label %execute_pwr_dfy_table.exit33, label %for.body.i32.for.body.i32_crit_edge

for.body.i32.for.body.i32_crit_edge:              ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i32

execute_pwr_dfy_table.exit33:                     ; preds = %for.body.i32
  %88 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %write_register.i35 = getelementptr inbounds %struct.cgs_ops, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %write_register.i35 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write_register.i35, align 4
  tail call void %93(ptr noundef %89, i32 noundef 12320, i32 noundef -2147483644) #6
  %94 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %write_register4.i36 = getelementptr inbounds %struct.cgs_ops, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %write_register4.i36 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_register4.i36, align 4
  tail call void %99(ptr noundef %95, i32 noundef 12322, i32 noundef 180) #6
  %100 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %write_register8.i37 = getelementptr inbounds %struct.cgs_ops, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %write_register8.i37 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write_register8.i37, align 4
  tail call void %105(ptr noundef %101, i32 noundef 12323, i32 noundef 1410360576) #6
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.body.i43.for.body.i43_crit_edge, %execute_pwr_dfy_table.exit33
  %i.028.i38 = phi i32 [ %inc.i41, %for.body.i43.for.body.i43_crit_edge ], [ 0, %execute_pwr_dfy_table.exit33 ]
  %106 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %write_register12.i39 = getelementptr inbounds %struct.cgs_ops, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %write_register12.i39 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write_register12.i39, align 4
  %arrayidx.i40 = getelementptr %struct.PWR_DFY_Section, ptr @pwr_virus_section4, i32 0, i32 4, i32 %i.028.i38
  %112 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i40, align 4
  tail call void %111(ptr noundef %107, i32 noundef 12324, i32 noundef %113) #6
  %inc.i41 = add nuw nsw i32 %i.028.i38, 1
  %exitcond81.not = icmp eq i32 %inc.i41, 240
  br i1 %exitcond81.not, label %execute_pwr_dfy_table.exit44, label %for.body.i43.for.body.i43_crit_edge

for.body.i43.for.body.i43_crit_edge:              ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i43

execute_pwr_dfy_table.exit44:                     ; preds = %for.body.i43
  %114 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %write_register.i46 = getelementptr inbounds %struct.cgs_ops, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %write_register.i46 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write_register.i46, align 4
  tail call void %119(ptr noundef %115, i32 noundef 12320, i32 noundef -2147483644) #6
  %120 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %write_register4.i47 = getelementptr inbounds %struct.cgs_ops, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %write_register4.i47 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write_register4.i47, align 4
  tail call void %125(ptr noundef %121, i32 noundef 12322, i32 noundef 180) #6
  %126 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %device.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %write_register8.i48 = getelementptr inbounds %struct.cgs_ops, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %write_register8.i48 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write_register8.i48, align 4
  tail call void %131(ptr noundef %127, i32 noundef 12323, i32 noundef 1410361600) #6
  br label %for.body.i54

for.body.i54:                                     ; preds = %for.body.i54.for.body.i54_crit_edge, %execute_pwr_dfy_table.exit44
  %i.028.i49 = phi i32 [ %inc.i52, %for.body.i54.for.body.i54_crit_edge ], [ 0, %execute_pwr_dfy_table.exit44 ]
  %132 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %write_register12.i50 = getelementptr inbounds %struct.cgs_ops, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %write_register12.i50 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write_register12.i50, align 4
  %arrayidx.i51 = getelementptr %struct.PWR_DFY_Section, ptr @pwr_virus_section5, i32 0, i32 4, i32 %i.028.i49
  %138 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.i51, align 4
  tail call void %137(ptr noundef %133, i32 noundef 12324, i32 noundef %139) #6
  %inc.i52 = add nuw nsw i32 %i.028.i49, 1
  %exitcond82.not = icmp eq i32 %inc.i52, 384
  br i1 %exitcond82.not, label %execute_pwr_dfy_table.exit55, label %for.body.i54.for.body.i54_crit_edge

for.body.i54.for.body.i54_crit_edge:              ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i54

execute_pwr_dfy_table.exit55:                     ; preds = %for.body.i54
  %140 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %device.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %write_register.i57 = getelementptr inbounds %struct.cgs_ops, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %write_register.i57 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write_register.i57, align 4
  tail call void %145(ptr noundef %141, i32 noundef 12320, i32 noundef -2147483644) #6
  %146 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %device.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %write_register4.i58 = getelementptr inbounds %struct.cgs_ops, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %write_register4.i58 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write_register4.i58, align 4
  tail call void %151(ptr noundef %147, i32 noundef 12322, i32 noundef 180) #6
  %152 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %device.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %write_register8.i59 = getelementptr inbounds %struct.cgs_ops, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %write_register8.i59 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write_register8.i59, align 4
  tail call void %157(ptr noundef %153, i32 noundef 12323, i32 noundef 1410428672) #6
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.body.i65.for.body.i65_crit_edge, %execute_pwr_dfy_table.exit55
  %i.028.i60 = phi i32 [ %inc.i63, %for.body.i65.for.body.i65_crit_edge ], [ 0, %execute_pwr_dfy_table.exit55 ]
  %158 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %device.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %write_register12.i61 = getelementptr inbounds %struct.cgs_ops, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %write_register12.i61 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write_register12.i61, align 4
  %arrayidx.i62 = getelementptr %struct.PWR_DFY_Section, ptr @pwr_virus_section6, i32 0, i32 4, i32 %i.028.i60
  %164 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx.i62, align 4
  tail call void %163(ptr noundef %159, i32 noundef 12324, i32 noundef %165) #6
  %inc.i63 = add nuw nsw i32 %i.028.i60, 1
  %exitcond83.not = icmp eq i32 %inc.i63, 1024
  br i1 %exitcond83.not, label %for.body.i65.for.body.i72_crit_edge, label %for.body.i65.for.body.i65_crit_edge

for.body.i65.for.body.i65_crit_edge:              ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i65

for.body.i65.for.body.i72_crit_edge:              ; preds = %for.body.i65
  br label %for.body.i72

for.body.i72:                                     ; preds = %if.then.i77.for.body.i72_crit_edge, %for.body.i65.for.body.i72_crit_edge
  %i.012.i68 = phi i32 [ %inc.i75, %if.then.i77.for.body.i72_crit_edge ], [ 0, %for.body.i65.for.body.i72_crit_edge ]
  %pvirus.addr.011.i69 = phi ptr [ %incdec.ptr.i74, %if.then.i77.for.body.i72_crit_edge ], [ @pwr_virus_table_post, %for.body.i65.for.body.i72_crit_edge ]
  %reg1.i70 = getelementptr inbounds %struct.PWR_Command_Table, ptr %pvirus.addr.011.i69, i32 0, i32 1
  %166 = ptrtoint ptr %reg1.i70 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %reg1.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %167)
  %cmp3.not.i71 = icmp eq i32 %167, -1
  br i1 %cmp3.not.i71, label %for.body.i72.execute_pwr_table.exit78_crit_edge, label %if.then.i77

for.body.i72.execute_pwr_table.exit78_crit_edge:  ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %execute_pwr_table.exit78

if.then.i77:                                      ; preds = %for.body.i72
  %168 = ptrtoint ptr %pvirus.addr.011.i69 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %pvirus.addr.011.i69, align 4
  %170 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %device.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %write_register.i73 = getelementptr inbounds %struct.cgs_ops, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %write_register.i73 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write_register.i73, align 4
  tail call void %175(ptr noundef %171, i32 noundef %167, i32 noundef %169) #6
  %incdec.ptr.i74 = getelementptr %struct.PWR_Command_Table, ptr %pvirus.addr.011.i69, i32 1
  %inc.i75 = add nuw nsw i32 %i.012.i68, 1
  %exitcond.not.i76 = icmp eq i32 %inc.i75, 288
  br i1 %exitcond.not.i76, label %if.then.i77.execute_pwr_table.exit78_crit_edge, label %if.then.i77.for.body.i72_crit_edge

if.then.i77.for.body.i72_crit_edge:               ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i72

if.then.i77.execute_pwr_table.exit78_crit_edge:   ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %execute_pwr_table.exit78

execute_pwr_table.exit78:                         ; preds = %if.then.i77.execute_pwr_table.exit78_crit_edge, %for.body.i72.execute_pwr_table.exit78_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_init(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %header_buffer = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %header_buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %header_buffer, align 8
  %3 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmgr, align 4
  %handle = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 1, i32 3
  %mc_addr = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 1, i32 1
  %kaddr = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 1, i32 2
  %call = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %4, i32 noundef 4096, i32 noundef 4096, i32 noundef 4, ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %kaddr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %5 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %not_vf, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 819200, ptr %1, align 8
  %8 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwmgr, align 4
  %handle14 = getelementptr inbounds %struct.smu7_buffer_entry, ptr %1, i32 0, i32 3
  %mc_addr16 = getelementptr inbounds %struct.smu7_buffer_entry, ptr %1, i32 0, i32 1
  %kaddr18 = getelementptr inbounds %struct.smu7_buffer_entry, ptr %1, i32 0, i32 2
  %call19 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %9, i32 noundef 819200, i32 noundef 4096, i32 noundef 4, ptr noundef %handle14, ptr noundef %mc_addr16, ptr noundef %kaddr18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end28, label %if.then21

if.then21:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %kaddr) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end8
  %call29 = tail call zeroext i1 @smum_is_hw_avfs_present(ptr noundef %hwmgr) #6
  br i1 %call29, label %land.lhs.true, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end28
  %feature_mask = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 46
  %10 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %feature_mask, align 4
  %and = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %land.lhs.true.cleanup_crit_edge, label %if.then31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %avfs_supported = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 47
  %12 = ptrtoint ptr %avfs_supported to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %avfs_supported, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %land.lhs.true.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then21 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smum_is_hw_avfs_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu7_smu_fini(ptr nocapture noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %handle = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 1, i32 3
  %mc_addr = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 1, i32 1
  %kaddr = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 1, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %kaddr) #6
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %2 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %not_vf, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handle3 = getelementptr inbounds %struct.smu7_buffer_entry, ptr %1, i32 0, i32 3
  %mc_addr5 = getelementptr inbounds %struct.smu7_buffer_entry, ptr %1, i32 0, i32 1
  %kaddr7 = getelementptr inbounds %struct.smu7_buffer_entry, ptr %1, i32 0, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle3, ptr noundef %mc_addr5, ptr noundef %kaddr7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %toc = getelementptr inbounds %struct.smu7_smumgr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %toc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %toc, align 8
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %toc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %toc, align 8
  %7 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu_backend, align 4
  tail call void @kfree(ptr noundef %8) #6
  %9 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %smu_backend, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 57, i32 2}
!2 = !{ptr @smu7_copy_bytes_from_smc._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.smu7_copy_bytes_from_smc, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smu7_copy_bytes_from_smc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @smu7_copy_bytes_from_smc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @smu7_copy_bytes_from_smc._rs.4, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 58, i32 2}
!11 = !{ptr @smu7_copy_bytes_from_smc._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @smu7_copy_bytes_from_smc._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @smu7_copy_bytes_to_smc._rs, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 94, i32 2}
!16 = !{ptr @__func__.smu7_copy_bytes_to_smc, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @smu7_copy_bytes_to_smc._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @smu7_copy_bytes_to_smc._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @smu7_copy_bytes_to_smc._rs.8, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 95, i32 2}
!21 = !{ptr @smu7_copy_bytes_to_smc._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @smu7_copy_bytes_to_smc._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @smu7_program_jump_on_start.data, !24, !"data", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 153, i32 29}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 175, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @smu7_send_msg_to_smc.__UNIQUE_ID_ddebug343, !26, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!30 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 177, i32 3}
!33 = !{ptr @smu7_send_msg_to_smc._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @smu7_send_msg_to_smc._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 187, i32 3}
!37 = !{ptr @smu7_send_msg_to_smc.__UNIQUE_ID_ddebug344, !36, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!38 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 189, i32 3}
!41 = !{ptr @smu7_send_msg_to_smc._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @smu7_send_msg_to_smc._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"_rs", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 376, i32 3}
!45 = !{ptr @__func__.smu7_request_smu_load_fw, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @smu7_request_smu_load_fw._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @smu7_request_smu_load_fw._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 379, i32 3}
!51 = !{ptr @smu7_request_smu_load_fw._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @smu7_request_smu_load_fw._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 382, i32 3}
!55 = !{ptr @smu7_request_smu_load_fw._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @smu7_request_smu_load_fw._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = distinct !{null, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 385, i32 3}
!59 = !{ptr @smu7_request_smu_load_fw._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @smu7_request_smu_load_fw._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"_rs", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 388, i32 3}
!63 = !{ptr @smu7_request_smu_load_fw._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @smu7_request_smu_load_fw._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 391, i32 3}
!67 = !{ptr @smu7_request_smu_load_fw._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @smu7_request_smu_load_fw._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"_rs", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 394, i32 3}
!71 = !{ptr @smu7_request_smu_load_fw._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @smu7_request_smu_load_fw._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = distinct !{null, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 397, i32 3}
!75 = !{ptr @smu7_request_smu_load_fw._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @smu7_request_smu_load_fw._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 400, i32 3}
!79 = !{ptr @smu7_request_smu_load_fw._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @smu7_request_smu_load_fw._entry_ptr.45, !78, !"_entry_ptr", i1 false, i1 false}
!81 = distinct !{null, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 404, i32 4}
!83 = !{ptr @smu7_request_smu_load_fw._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @smu7_request_smu_load_fw._entry_ptr.48, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 425, i32 2}
!87 = !{ptr @smu7_request_smu_load_fw._entry.49, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @smu7_request_smu_load_fw._entry_ptr.51, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @smu7_set_smc_sram_address._rs, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 40, i32 2}
!91 = !{ptr @__func__.smu7_set_smc_sram_address, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @smu7_set_smc_sram_address._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @smu7_set_smc_sram_address._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @smu7_set_smc_sram_address._rs.52, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 41, i32 2}
!96 = !{ptr @smu7_set_smc_sram_address._entry.53, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @smu7_set_smc_sram_address._entry_ptr.54, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @smu7_upload_smc_firmware_data._rs, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 455, i32 2}
!101 = !{ptr @__func__.smu7_upload_smc_firmware_data, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @smu7_upload_smc_firmware_data._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @smu7_upload_smc_firmware_data._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @smu7_upload_smc_firmware_data._rs.56, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu7_smumgr.c", i32 465, i32 2}
!106 = !{ptr @smu7_upload_smc_firmware_data._entry.57, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @smu7_upload_smc_firmware_data._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @pwr_virus_table_pre, !110, !"pwr_virus_table_pre", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/polaris10_pwrvirus.h", i32 48, i32 32}
!111 = !{ptr @pwr_virus_section1, !112, !"pwr_virus_section1", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/polaris10_pwrvirus.h", i32 257, i32 30}
!113 = !{ptr @pwr_virus_section2, !114, !"pwr_virus_section2", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/polaris10_pwrvirus.h", i32 318, i32 30}
!115 = !{ptr @pwr_virus_section3, !116, !"pwr_virus_section3", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/polaris10_pwrvirus.h", i32 329, i32 30}
!117 = !{ptr @pwr_virus_section4, !118, !"pwr_virus_section4", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/polaris10_pwrvirus.h", i32 1268, i32 30}
!119 = !{ptr @pwr_virus_section5, !120, !"pwr_virus_section5", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/polaris10_pwrvirus.h", i32 1307, i32 30}
!121 = !{ptr @pwr_virus_section6, !122, !"pwr_virus_section6", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/polaris10_pwrvirus.h", i32 1364, i32 30}
!123 = !{ptr @pwr_virus_table_post, !124, !"pwr_virus_table_post", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/polaris10_pwrvirus.h", i32 1501, i32 32}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2148709138, i64 2148709143, i64 2148709156, i64 2148709200, i64 2148709234, i64 2148709255}
!135 = !{i8 0, i8 2}
