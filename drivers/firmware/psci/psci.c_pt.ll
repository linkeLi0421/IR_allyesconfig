; ModuleID = '/llk/IR_all_yes/drivers/firmware/psci/psci.c_pt.bc'
source_filename = "../drivers/firmware/psci/psci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.psci_0_1_function_ids = type { i32, i32, i32, i32 }
%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@resident_cpu = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@psci_0_1_function_ids = internal global { %struct.psci_0_1_function_ids, [16 x i8] } zeroinitializer, align 32
@psci_cpu_suspend_feature = internal global { i32, [28 x i8] } zeroinitializer, align 32
@invoke_psci_fn = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@psci_ops = dso_local global { %struct.psci_operations, [36 x i8] } zeroinitializer, align 32
@psci_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,psci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @psci_0_1_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,psci-0.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @psci_0_2_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,psci-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @psci_1_0_init }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@psci_0_1_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016psci: Using PSCI v0.1 Function IDs from DT\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"psci_0_1_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/firmware/psci/psci.c\00", [35 x i8] zeroinitializer }, align 32
@psci_0_1_init._entry_ptr = internal global ptr @psci_0_1_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpu_suspend\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpu_off\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cpu_on\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"migrate\00", [24 x i8] zeroinitializer }, align 32
@get_set_conduit_method._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016psci: probing for conduit method from DT.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get_set_conduit_method\00", [41 x i8] zeroinitializer }, align 32
@get_set_conduit_method._entry_ptr = internal global ptr @get_set_conduit_method._entry, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"method\00", [25 x i8] zeroinitializer }, align 32
@get_set_conduit_method._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014psci: missing \22method\22 property\0A\00", [61 x i8] zeroinitializer }, align 32
@get_set_conduit_method._entry_ptr.12 = internal global ptr @get_set_conduit_method._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hvc\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smc\00", [28 x i8] zeroinitializer }, align 32
@get_set_conduit_method._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014psci: invalid \22method\22 property: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@get_set_conduit_method._entry_ptr.17 = internal global ptr @get_set_conduit_method._entry.15, section ".printk_index", align 4
@psci_conduit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@psci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016psci: PSCIv%d.%d detected in firmware.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"psci_probe\00", [21 x i8] zeroinitializer }, align 32
@psci_probe._entry_ptr = internal global ptr @psci_probe._entry, section ".printk_index", align 4
@psci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013psci: Conflicting PSCI version detected.\0A\00", [52 x i8] zeroinitializer }, align 32
@psci_probe._entry_ptr.23 = internal global ptr @psci_probe._entry.21, section ".printk_index", align 4
@psci_0_2_set_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016psci: Using standard PSCI v0.2 function IDs\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"psci_0_2_set_functions\00", [41 x i8] zeroinitializer }, align 32
@psci_0_2_set_functions._entry_ptr = internal global ptr @psci_0_2_set_functions._entry, section ".printk_index", align 4
@psci_sys_reset_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @psci_sys_reset, ptr null, i32 129 }, [20 x i8] zeroinitializer }, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@psci_system_reset2_supported = internal global { i1, [31 x i8] } zeroinitializer, align 32
@psci_init_migrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016psci: Trusted OS migration not required\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"psci_init_migrate\00", [46 x i8] zeroinitializer }, align 32
@psci_init_migrate._entry_ptr = internal global ptr @psci_init_migrate._entry, section ".printk_index", align 4
@psci_init_migrate._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016psci: MIGRATE_INFO_TYPE not supported.\0A\00", [54 x i8] zeroinitializer }, align 32
@psci_init_migrate._entry_ptr.30 = internal global ptr @psci_init_migrate._entry.28, section ".printk_index", align 4
@psci_init_migrate._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013psci: MIGRATE_INFO_TYPE returned unknown type (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@psci_init_migrate._entry_ptr.33 = internal global ptr @psci_init_migrate._entry.31, section ".printk_index", align 4
@psci_init_migrate._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014psci: MIGRATE_INFO_UP_CPU reported invalid physical ID (0x%lx)\0A\00", [62 x i8] zeroinitializer }, align 32
@psci_init_migrate._entry_ptr.36 = internal global ptr @psci_init_migrate._entry.34, section ".printk_index", align 4
@psci_init_migrate._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016psci: Trusted OS resident on physical CPU 0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@psci_init_migrate._entry_ptr.39 = internal global ptr @psci_init_migrate._entry.37, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@psci_init_smccc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016psci: SMC Calling Convention v%d.%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"psci_init_smccc\00", [16 x i8] zeroinitializer }, align 32
@psci_init_smccc._entry_ptr = internal global ptr @psci_init_smccc._entry, section ".printk_index", align 4
@psci_suspend_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr null, ptr null, ptr null, ptr @psci_system_suspend_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@psci_1_0_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016psci: OSI mode supported.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"psci_1_0_init\00", [18 x i8] zeroinitializer }, align 32
@psci_1_0_init._entry_ptr = internal global ptr @psci_1_0_init._entry, section ".printk_index", align 4
@switch.table.psci_set_osi_mode = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.psci_0_1_cpu_suspend = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.psci_0_1_cpu_off = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.psci_0_1_cpu_on = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.psci_0_1_migrate = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.psci_0_2_cpu_suspend = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.psci_0_2_cpu_off = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.psci_0_2_cpu_on = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.psci_0_2_migrate = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -1, i32 -22, i32 -95, i32 0], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"resident_cpu\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 49, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"psci_0_1_function_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 62, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant [25 x i8] c"psci_cpu_suspend_feature\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 78, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"invoke_psci_fn\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 60, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"psci_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 50, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 561, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 565, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 570, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 575, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 580, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 281, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 283, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 284, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 288, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 290, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 293, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"psci_conduit\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 51, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 500, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 505, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 476, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [18 x i8] c"psci_sys_reset_nb\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 317, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant [29 x i8] c"psci_system_reset2_supported\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 421, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 426, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 432, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 438, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 446, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 469, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"psci_suspend_ops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 373, i32 42 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [32 x i8] c"../drivers/firmware/psci/psci.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 597, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [31 x i8] c"switch.table.psci_set_osi_mode\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [34 x i8] c"switch.table.psci_0_1_cpu_suspend\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [30 x i8] c"switch.table.psci_0_1_cpu_off\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [29 x i8] c"switch.table.psci_0_1_cpu_on\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [30 x i8] c"switch.table.psci_0_1_migrate\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [34 x i8] c"switch.table.psci_0_2_cpu_suspend\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [30 x i8] c"switch.table.psci_0_2_cpu_off\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [29 x i8] c"switch.table.psci_0_2_cpu_on\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [30 x i8] c"switch.table.psci_0_2_migrate\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @get_set_conduit_method._entry, ptr @get_set_conduit_method._entry.10, ptr @get_set_conduit_method._entry.15, ptr @get_set_conduit_method._entry_ptr, ptr @get_set_conduit_method._entry_ptr.12, ptr @get_set_conduit_method._entry_ptr.17, ptr @psci_0_1_init._entry, ptr @psci_0_1_init._entry_ptr, ptr @psci_0_2_set_functions._entry, ptr @psci_0_2_set_functions._entry_ptr, ptr @psci_1_0_init._entry, ptr @psci_1_0_init._entry_ptr, ptr @psci_init_migrate._entry, ptr @psci_init_migrate._entry.28, ptr @psci_init_migrate._entry.31, ptr @psci_init_migrate._entry.34, ptr @psci_init_migrate._entry.37, ptr @psci_init_migrate._entry_ptr, ptr @psci_init_migrate._entry_ptr.30, ptr @psci_init_migrate._entry_ptr.33, ptr @psci_init_migrate._entry_ptr.36, ptr @psci_init_migrate._entry_ptr.39, ptr @psci_init_smccc._entry, ptr @psci_init_smccc._entry_ptr, ptr @psci_probe._entry, ptr @psci_probe._entry.21, ptr @psci_probe._entry_ptr, ptr @psci_probe._entry_ptr.23, ptr @resident_cpu, ptr @psci_0_1_function_ids, ptr @psci_cpu_suspend_feature, ptr @invoke_psci_fn, ptr @psci_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @psci_conduit, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @psci_sys_reset_nb, ptr @psci_system_reset2_supported, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @psci_suspend_ops, ptr @.str.42, ptr @.str.43, ptr @switch.table.psci_set_osi_mode, ptr @switch.table.psci_0_1_cpu_suspend, ptr @switch.table.psci_0_1_cpu_off, ptr @switch.table.psci_0_1_cpu_on, ptr @switch.table.psci_0_1_migrate, ptr @switch.table.psci_0_2_cpu_suspend, ptr @switch.table.psci_0_2_cpu_off, ptr @switch.table.psci_0_2_cpu_on, ptr @switch.table.psci_0_2_migrate], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resident_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_0_1_function_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_cpu_suspend_feature to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invoke_psci_fn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_0_1_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_set_conduit_method._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_set_conduit_method._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_set_conduit_method._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_conduit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_0_2_set_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_sys_reset_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_system_reset2_supported to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_init_migrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_init_migrate._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_init_migrate._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_init_migrate._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_init_migrate._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_init_smccc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_suspend_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psci_1_0_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psci_set_osi_mode to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psci_0_1_cpu_suspend to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psci_0_1_cpu_off to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psci_0_1_cpu_on to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psci_0_1_migrate to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psci_0_2_cpu_suspend to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psci_0_2_cpu_off to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psci_0_2_cpu_on to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psci_0_2_migrate to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @psci_tos_resident_on(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @resident_cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp = icmp eq i32 %0, %cpu
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @get_psci_0_1_function_ids(ptr noalias nocapture writeonly sret(%struct.psci_0_1_function_ids) align 4 %agg.result) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %agg.result, ptr @psci_0_1_function_ids, i32 16)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @psci_has_osi_support() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @psci_cpu_suspend_feature, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @psci_power_state_is_valid(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @psci_cpu_suspend_feature, align 4
  %and.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %neg = select i1 %tobool.i.not, i32 -50462720, i32 -1342177280
  %and = and i32 %neg, %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psci_set_osi_mode(i1 noundef zeroext %enable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = zext i1 %enable to i32
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call = tail call i32 %0(i32 noundef -2080374769, i32 noundef %cond, i32 noundef 0, i32 noundef 0) #10, !callees !109
  %switch.tableidx = add i32 %call, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 10
  br i1 %1, label %switch.lookup, label %entry.psci_to_linux_errno.exit_crit_edge

entry.psci_to_linux_errno.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %psci_to_linux_errno.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.psci_set_osi_mode, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %psci_to_linux_errno.exit

psci_to_linux_errno.exit:                         ; preds = %switch.lookup, %entry.psci_to_linux_errno.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.psci_to_linux_errno.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psci_cpu_suspend_enter(i32 noundef %state) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @psci_cpu_suspend_feature, align 4
  %and.i.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %cond.i = select i1 %tobool.i.not.i, i32 65536, i32 1073741824
  %and.i = and i32 %cond.i, %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %call1 = tail call i32 %1(i32 noundef %state, i32 noundef 0) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @cpu_suspend(i32 noundef %state, ptr noundef nonnull @psci_suspend_finisher) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call2, %if.else ], [ %call1, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_suspend_finisher(i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @cpu_resume to i32)) #10
  %0 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %call1 = tail call i32 %0(i32 noundef %state, i32 noundef %call) #10
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psci_dt_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %matched_np = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matched_np) #10
  %0 = ptrtoint ptr %matched_np to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %matched_np, align 4, !annotation !110
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @psci_of_match, ptr noundef nonnull %matched_np) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %call) #10
  br i1 %call1, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %matched_np to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %matched_np, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call2 = call i32 %4(ptr noundef nonnull %call) #10
  call void @of_node_put(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matched_np) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume() #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_1_init(ptr noundef %np) #5 section ".init.text" align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !110
  %call = tail call fastcc i32 @get_set_conduit_method(ptr noundef %np)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  store ptr @psci_0_1_get_version, ptr @psci_ops, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end5_crit_edge

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  store i32 %2, ptr @psci_0_1_function_ids, align 4
  store ptr @psci_0_1_cpu_suspend, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  %call.i.i24 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i24)
  %tobool7.not = icmp sgt i32 %call.i.i24, -1
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  store i32 %4, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 2), align 4
  store ptr @psci_0_1_cpu_off, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 2), align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %call.i.i25 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i25)
  %tobool11.not = icmp sgt i32 %call.i.i25, -1
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  store i32 %6, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 1), align 4
  store ptr @psci_0_1_cpu_on, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 3), align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %call.i.i26 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i26)
  %tobool15.not = icmp sgt i32 %call.i.i26, -1
  br i1 %tobool15.not, label %if.then16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  store i32 %8, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 3), align 4
  store ptr @psci_0_1_migrate, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 4), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_2_init(ptr noundef %np) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_set_conduit_method(ptr noundef %np)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @psci_probe() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_1_0_init(ptr noundef %np) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @get_set_conduit_method(ptr noundef %np) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %psci_0_2_init.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

psci_0_2_init.exit:                               ; preds = %entry
  %call1.i = tail call fastcc i32 @psci_probe() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %psci_0_2_init.exit.cleanup_crit_edge

psci_0_2_init.exit.cleanup_crit_edge:             ; preds = %psci_0_2_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %psci_0_2_init.exit
  %0 = load i32, ptr @psci_cpu_suspend_feature, align 4
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  %call4 = tail call i32 @psci_set_osi_mode(i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %psci_0_2_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %psci_0_2_init.exit.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_set_conduit_method(ptr noundef %np) unnamed_addr #3 align 64 {
entry:
  %method = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %method) #10
  %0 = ptrtoint ptr %method to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %method, align 4, !annotation !110
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  %call1 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef nonnull %method) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %method, align 4
  %call7 = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.13, ptr noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @__invoke_psci_fn_hvc, ptr @invoke_psci_fn, align 4
  store i32 2, ptr @psci_conduit, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.14, ptr noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %do.end16

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @__invoke_psci_fn_smc, ptr @invoke_psci_fn, align 4
  store i32 1, ptr @psci_conduit, align 4
  br label %cleanup

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.then12, %if.then9, %do.end4
  %retval.0 = phi i32 [ -6, %do.end4 ], [ -22, %do.end16 ], [ 0, %if.then12 ], [ 0, %if.then9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %method) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @psci_0_1_get_version() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_1_cpu_suspend(i32 noundef %state, i32 noundef %entry_point) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @psci_0_1_function_ids, align 4
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %1(i32 noundef %0, i32 noundef %state, i32 noundef %entry_point, i32 noundef 0) #10, !callees !109
  %switch.tableidx = add i32 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 10
  br i1 %2, label %switch.lookup, label %entry.__psci_cpu_suspend.exit_crit_edge

entry.__psci_cpu_suspend.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__psci_cpu_suspend.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_1_cpu_suspend, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %__psci_cpu_suspend.exit

__psci_cpu_suspend.exit:                          ; preds = %switch.lookup, %entry.__psci_cpu_suspend.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.__psci_cpu_suspend.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_1_cpu_off(i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 2), align 4
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %1(i32 noundef %0, i32 noundef %state, i32 noundef 0, i32 noundef 0) #10, !callees !109
  %switch.tableidx = add i32 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 10
  br i1 %2, label %switch.lookup, label %entry.__psci_cpu_off.exit_crit_edge

entry.__psci_cpu_off.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__psci_cpu_off.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_1_cpu_off, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %__psci_cpu_off.exit

__psci_cpu_off.exit:                              ; preds = %switch.lookup, %entry.__psci_cpu_off.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.__psci_cpu_off.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_1_cpu_on(i32 noundef %cpuid, i32 noundef %entry_point) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 1), align 4
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %1(i32 noundef %0, i32 noundef %cpuid, i32 noundef %entry_point, i32 noundef 0) #10, !callees !109
  %switch.tableidx = add i32 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 10
  br i1 %2, label %switch.lookup, label %entry.__psci_cpu_on.exit_crit_edge

entry.__psci_cpu_on.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__psci_cpu_on.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_1_cpu_on, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %__psci_cpu_on.exit

__psci_cpu_on.exit:                               ; preds = %switch.lookup, %entry.__psci_cpu_on.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.__psci_cpu_on.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_1_migrate(i32 noundef %cpuid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.psci_0_1_function_ids, ptr @psci_0_1_function_ids, i32 0, i32 3), align 4
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %1(i32 noundef %0, i32 noundef %cpuid, i32 noundef 0, i32 noundef 0) #10, !callees !109
  %switch.tableidx = add i32 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 10
  br i1 %2, label %switch.lookup, label %entry.__psci_migrate.exit_crit_edge

entry.__psci_migrate.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__psci_migrate.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_1_migrate, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %__psci_migrate.exit

__psci_migrate.exit:                              ; preds = %switch.lookup, %entry.__psci_migrate.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.__psci_migrate.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__invoke_psci_fn_hvc(i32 noundef %function_id, i32 noundef %arg0, i32 noundef %arg1, i32 noundef %arg2) #3 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #10
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  call void @__arm_smccc_hvc(i32 noundef %function_id, i32 noundef %arg0, i32 noundef %arg1, i32 noundef %arg2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #10
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #10
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__invoke_psci_fn_smc(i32 noundef %function_id, i32 noundef %arg0, i32 noundef %arg1, i32 noundef %arg2) #3 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #10
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef %function_id, i32 noundef %arg0, i32 noundef %arg1, i32 noundef %arg2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #10
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #10
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_hvc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psci_probe() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %0(i32 noundef -2080374784, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10, !callees !109
  %shr = lshr i32 %call.i, 16
  %and1 = and i32 %call.i, 65535
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %shr, i32 noundef %and1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call.i)
  %cmp = icmp ult i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and1)
  %cmp6 = icmp ult i32 %and1, 2
  %or.cond = and i1 %cmp, %cmp6
  br i1 %or.cond, label %do.end9, label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @psci_0_2_set_functions() #14
  tail call fastcc void @psci_init_migrate() #14
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.then15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end
  tail call fastcc void @psci_init_smccc() #14
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i.i = tail call i32 %1(i32 noundef -2080374774, i32 noundef -2080374783, i32 noundef 0, i32 noundef 0) #10, !callees !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, -1
  br i1 %cmp.not.i, label %if.then15.psci_init_cpu_suspend.exit_crit_edge, label %if.then.i

if.then15.psci_init_cpu_suspend.exit_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %psci_init_cpu_suspend.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %call.i.i, ptr @psci_cpu_suspend_feature, align 4
  br label %psci_init_cpu_suspend.exit

psci_init_cpu_suspend.exit:                       ; preds = %if.then.i, %if.then15.psci_init_cpu_suspend.exit_crit_edge
  tail call fastcc void @psci_init_system_suspend() #14
  %2 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i.i21 = tail call i32 %2(i32 noundef -2080374774, i32 noundef -2080374766, i32 noundef 0, i32 noundef 0) #10, !callees !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i21)
  %cmp.not.i22 = icmp eq i32 %call.i.i21, -1
  br i1 %cmp.not.i22, label %psci_init_cpu_suspend.exit.psci_init_system_reset2.exit_crit_edge, label %if.then.i23

psci_init_cpu_suspend.exit.psci_init_system_reset2.exit_crit_edge: ; preds = %psci_init_cpu_suspend.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %psci_init_system_reset2.exit

if.then.i23:                                      ; preds = %psci_init_cpu_suspend.exit
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @psci_system_reset2_supported, align 1
  br label %psci_init_system_reset2.exit

psci_init_system_reset2.exit:                     ; preds = %if.then.i23, %psci_init_cpu_suspend.exit.psci_init_system_reset2.exit_crit_edge
  tail call void @kvm_init_hyp_services() #10
  br label %cleanup

cleanup:                                          ; preds = %psci_init_system_reset2.exit, %if.end.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ 0, %psci_init_system_reset2.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_2_get_version() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call = tail call i32 %0(i32 noundef -2080374784, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10, !callees !109
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psci_0_2_set_functions() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  store ptr @psci_0_2_get_version, ptr @psci_ops, align 4
  store ptr @psci_0_2_cpu_suspend, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  store ptr @psci_0_2_cpu_off, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 2), align 4
  store ptr @psci_0_2_cpu_on, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 3), align 4
  store ptr @psci_0_2_migrate, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 4), align 4
  store ptr @psci_affinity_info, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 5), align 4
  store ptr @psci_migrate_info_type, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 6), align 4
  %call1 = tail call i32 @register_restart_handler(ptr noundef nonnull @psci_sys_reset_nb) #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @psci_sys_poweroff, ptr @pm_power_off, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psci_init_migrate() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 6), align 4
  %call = tail call i32 %0() #10
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end15 [
    i32 2, label %do.end
    i32 -1, label %do.end6
    i32 0, label %entry.if.end18_crit_edge
    i32 1, label %entry.if.end18_crit_edge52
  ]

entry.if.end18_crit_edge52:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %cleanup

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %cleanup

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %call) #13
  br label %cleanup

if.end18:                                         ; preds = %entry.if.end18_crit_edge, %entry.if.end18_crit_edge52
  %2 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %2(i32 noundef -2080374777, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10, !callees !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %call.i)
  %tobool.not = icmp ult i32 %call.i, 16777216
  br i1 %tobool.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call.i) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not.i = icmp eq i32 %3, 0
  br i1 %cmp5.not.i, label %if.end26.get_logical_index.exit.thread_crit_edge, label %if.end26.for.body.i_crit_edge

if.end26.for.body.i_crit_edge:                    ; preds = %if.end26
  br label %for.body.i

if.end26.get_logical_index.exit.thread_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_logical_index.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end26.for.body.i_crit_edge
  %cpu.06.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end26.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu.06.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call.i)
  %cmp1.i = icmp eq i32 %5, %call.i
  br i1 %cmp1.i, label %get_logical_index.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %cpu.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.get_logical_index.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.get_logical_index.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_logical_index.exit.thread

get_logical_index.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 @llvm.smax.i32(i32 %cpu.06.i, i32 -1)
  br label %get_logical_index.exit.thread

get_logical_index.exit.thread:                    ; preds = %get_logical_index.exit, %for.inc.i.get_logical_index.exit.thread_crit_edge, %if.end26.get_logical_index.exit.thread_crit_edge
  %7 = phi i32 [ -1, %if.end26.get_logical_index.exit.thread_crit_edge ], [ %6, %get_logical_index.exit ], [ -1, %for.inc.i.get_logical_index.exit.thread_crit_edge ]
  store i32 %7, ptr @resident_cpu, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %get_logical_index.exit.thread, %do.end23, %do.end15, %do.end6, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psci_init_smccc() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %0(i32 noundef -2080374774, i32 noundef -2147483648, i32 noundef 0, i32 noundef 0) #10, !callees !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, -1
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @invoke_psci_fn, align 4
  %call1 = tail call i32 %1(i32 noundef -2147483648, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10, !callees !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1)
  %cmp2 = icmp ugt i32 %call1, 65536
  br i1 %cmp2, label %if.then3, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load i32, ptr @psci_conduit, align 4
  tail call void @arm_smccc_version_init(i32 noundef %call1, i32 noundef %2) #13
  br label %do.end

do.end:                                           ; preds = %if.then3, %if.then.do.end_crit_edge, %entry.do.end_crit_edge
  %ver.1 = phi i32 [ 65536, %entry.do.end_crit_edge ], [ %call1, %if.then3 ], [ 65536, %if.then.do.end_crit_edge ]
  %shr = lshr i32 %ver.1, 16
  %and5 = and i32 %ver.1, 65535
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %shr, i32 noundef %and5) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psci_init_system_suspend() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %0(i32 noundef -2080374774, i32 noundef -2080374770, i32 noundef 0, i32 noundef 0) #10, !callees !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @suspend_set_ops(ptr noundef nonnull @psci_suspend_ops) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvm_init_hyp_services() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_2_cpu_suspend(i32 noundef %state, i32 noundef %entry_point) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %0(i32 noundef -2080374783, i32 noundef %state, i32 noundef %entry_point, i32 noundef 0) #10, !callees !109
  %switch.tableidx = add i32 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 10
  br i1 %1, label %switch.lookup, label %entry.__psci_cpu_suspend.exit_crit_edge

entry.__psci_cpu_suspend.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__psci_cpu_suspend.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_cpu_suspend, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %__psci_cpu_suspend.exit

__psci_cpu_suspend.exit:                          ; preds = %switch.lookup, %entry.__psci_cpu_suspend.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.__psci_cpu_suspend.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_2_cpu_off(i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %0(i32 noundef -2080374782, i32 noundef %state, i32 noundef 0, i32 noundef 0) #10, !callees !109
  %switch.tableidx = add i32 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 10
  br i1 %1, label %switch.lookup, label %entry.__psci_cpu_off.exit_crit_edge

entry.__psci_cpu_off.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__psci_cpu_off.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_cpu_off, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %__psci_cpu_off.exit

__psci_cpu_off.exit:                              ; preds = %switch.lookup, %entry.__psci_cpu_off.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.__psci_cpu_off.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_2_cpu_on(i32 noundef %cpuid, i32 noundef %entry_point) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %0(i32 noundef -2080374781, i32 noundef %cpuid, i32 noundef %entry_point, i32 noundef 0) #10, !callees !109
  %switch.tableidx = add i32 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 10
  br i1 %1, label %switch.lookup, label %entry.__psci_cpu_on.exit_crit_edge

entry.__psci_cpu_on.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__psci_cpu_on.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_cpu_on, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %__psci_cpu_on.exit

__psci_cpu_on.exit:                               ; preds = %switch.lookup, %entry.__psci_cpu_on.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.__psci_cpu_on.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_0_2_migrate(i32 noundef %cpuid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call.i = tail call i32 %0(i32 noundef -2080374779, i32 noundef %cpuid, i32 noundef 0, i32 noundef 0) #10, !callees !109
  %switch.tableidx = add i32 %call.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 10
  br i1 %1, label %switch.lookup, label %entry.__psci_migrate.exit_crit_edge

entry.__psci_migrate.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__psci_migrate.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.psci_0_2_migrate, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %__psci_migrate.exit

__psci_migrate.exit:                              ; preds = %switch.lookup, %entry.__psci_migrate.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.__psci_migrate.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_affinity_info(i32 noundef %target_affinity, i32 noundef %lowest_affinity_level) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call = tail call i32 %0(i32 noundef -2080374780, i32 noundef %target_affinity, i32 noundef %lowest_affinity_level, i32 noundef 0) #10, !callees !109
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_migrate_info_type() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call = tail call i32 %0(i32 noundef -2080374778, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10, !callees !109
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psci_sys_poweroff() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call = tail call i32 %0(i32 noundef -2080374776, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10, !callees !109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_sys_reset(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @reboot_mode to i32))
  %0 = load i32, ptr @reboot_mode, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %0, label %entry.if.else_crit_edge [
    i32 1, label %entry.land.lhs.true_crit_edge
    i32 3, label %entry.land.lhs.true_crit_edge5
  ]

entry.land.lhs.true_crit_edge5:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge5
  %.b3 = load i1, ptr @psci_system_reset2_supported, align 1
  br i1 %.b3, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i32 [ -2080374775, %if.else ], [ -2080374766, %land.lhs.true.if.end_crit_edge ]
  %2 = load ptr, ptr @invoke_psci_fn, align 4
  %call2 = tail call i32 %2(i32 noundef %.sink, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @arm_smccc_version_init(i32 noundef, i32 noundef) local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_system_suspend_enter(i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @psci_system_suspend) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psci_system_suspend(i32 noundef %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @cpu_resume to i32)) #10
  %0 = load ptr, ptr @invoke_psci_fn, align 4
  %call1 = tail call i32 %0(i32 noundef -2080374770, i32 noundef %call, i32 noundef 0, i32 noundef 0) #10, !callees !109
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !97, !98, !99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @psci_ops, !1, !"psci_ops", i1 false, i1 false}
!1 = !{!"../drivers/firmware/psci/psci.c", i32 50, i32 24}
!2 = !{ptr @invoke_psci_fn, !3, !"invoke_psci_fn", i1 false, i1 false}
!3 = !{!"../drivers/firmware/psci/psci.c", i32 60, i32 17}
!4 = !{ptr @psci_0_1_function_ids, !5, !"psci_0_1_function_ids", i1 false, i1 false}
!5 = !{!"../drivers/firmware/psci/psci.c", i32 62, i32 37}
!6 = !{ptr @psci_cpu_suspend_feature, !7, !"psci_cpu_suspend_feature", i1 false, i1 false}
!7 = !{!"../drivers/firmware/psci/psci.c", i32 78, i32 12}
!8 = !{ptr @resident_cpu, !9, !"resident_cpu", i1 false, i1 false}
!9 = !{!"../drivers/firmware/psci/psci.c", i32 49, i32 12}
!10 = !{ptr @psci_of_match, !11, !"psci_of_match", i1 false, i1 false}
!11 = !{!"../drivers/firmware/psci/psci.c", i32 606, i32 34}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/firmware/psci/psci.c", i32 561, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @psci_0_1_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @psci_0_1_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/firmware/psci/psci.c", i32 565, i32 32}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/firmware/psci/psci.c", i32 570, i32 32}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/firmware/psci/psci.c", i32 575, i32 32}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/firmware/psci/psci.c", i32 580, i32 32}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/firmware/psci/psci.c", i32 281, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @get_set_conduit_method._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @get_set_conduit_method._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/firmware/psci/psci.c", i32 283, i32 34}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/firmware/psci/psci.c", i32 284, i32 3}
!35 = !{ptr @get_set_conduit_method._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @get_set_conduit_method._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/firmware/psci/psci.c", i32 288, i32 14}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/firmware/psci/psci.c", i32 290, i32 21}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/firmware/psci/psci.c", i32 293, i32 3}
!43 = !{ptr @get_set_conduit_method._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @get_set_conduit_method._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/firmware/psci/psci.c", i32 271, i32 3}
!47 = !{ptr @psci_conduit, !48, !"psci_conduit", i1 false, i1 false}
!48 = !{!"../drivers/firmware/psci/psci.c", i32 51, i32 31}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/firmware/psci/psci.c", i32 500, i32 2}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @psci_probe._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @psci_probe._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/firmware/psci/psci.c", i32 505, i32 3}
!56 = !{ptr @psci_probe._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @psci_probe._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/firmware/psci/psci.c", i32 476, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @psci_0_2_set_functions._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @psci_0_2_set_functions._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @psci_sys_reset_nb, !64, !"psci_sys_reset_nb", i1 false, i1 false}
!64 = !{!"../drivers/firmware/psci/psci.c", i32 317, i32 30}
!65 = distinct !{null, !66, !"psci_system_reset2_supported", i1 false, i1 false}
!66 = !{!"../drivers/firmware/psci/psci.c", i32 79, i32 13}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/firmware/psci/psci.c", i32 421, i32 3}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @psci_init_migrate._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @psci_init_migrate._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/firmware/psci/psci.c", i32 426, i32 3}
!74 = !{ptr @psci_init_migrate._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @psci_init_migrate._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/firmware/psci/psci.c", i32 432, i32 3}
!78 = !{ptr @psci_init_migrate._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @psci_init_migrate._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/firmware/psci/psci.c", i32 438, i32 3}
!82 = !{ptr @psci_init_migrate._entry.34, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @psci_init_migrate._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/firmware/psci/psci.c", i32 446, i32 2}
!86 = !{ptr @psci_init_migrate._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @psci_init_migrate._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/firmware/psci/psci.c", i32 469, i32 2}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @psci_init_smccc._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @psci_init_smccc._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @psci_suspend_ops, !94, !"psci_suspend_ops", i1 false, i1 false}
!94 = !{!"../drivers/firmware/psci/psci.c", i32 373, i32 42}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/firmware/psci/psci.c", i32 597, i32 3}
!97 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @psci_1_0_init._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @psci_1_0_init._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{ptr @__invoke_psci_fn_hvc, ptr @__invoke_psci_fn_smc}
!110 = !{!"auto-init"}
