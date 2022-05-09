; ModuleID = '/llk/IR_all_yes/drivers/thermal/st/st_thermal_syscfg.c_pt.bc'
source_filename = "../drivers/thermal/st/st_thermal_syscfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.st_thermal_compat_data = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.st_thermal_sensor_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.st_thermal_sensor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }

@__initcall__kmod_st_thermal_syscfg__187_170_st_syscfg_thermal_driver_init6 = internal global ptr @st_syscfg_thermal_driver_init, section ".initcall6.init", align 4
@st_syscfg_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_syscfg_probe, ptr @st_syscfg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_syscfg_thermal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_st_syscfg_thermal_driver_exit = internal global ptr @st_syscfg_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [81 x i8] c"st_thermal_syscfg.author=STMicroelectronics (R&D) Limited <ajitpal.singh@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [79 x i8] c"st_thermal_syscfg.description=STMicroelectronics STi SoC Thermal Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [60 x i8] c"st_thermal_syscfg.file=drivers/thermal/st/st_thermal_syscfg\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [33 x i8] c"st_thermal_syscfg.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st_syscfg_thermal\00", [46 x i8] zeroinitializer }, align 32
@st_syscfg_thermal_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih415-sas-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_415sas_cdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih415-mpe-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_415mpe_cdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih416-sas-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_416sas_cdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stid127-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_127_cdata }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@st_thermal_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@st_415sas_cdata = internal constant { %struct.st_thermal_compat_data, [40 x i8] } { %struct.st_thermal_compat_data { ptr @.str.1, ptr @st_415sas_regfields, ptr @st_syscfg_sensor_ops, i32 16, i32 20, i32 120 }, [40 x i8] zeroinitializer }, align 32
@st_415mpe_cdata = internal constant { %struct.st_thermal_compat_data, [40 x i8] } { %struct.st_thermal_compat_data { ptr @.str.9, ptr @st_415mpe_regfields, ptr @st_syscfg_sensor_ops, i32 16, i32 -103, i32 120 }, [40 x i8] zeroinitializer }, align 32
@st_416sas_cdata = internal constant { %struct.st_thermal_compat_data, [40 x i8] } { %struct.st_thermal_compat_data { ptr @.str.10, ptr @st_416sas_regfields, ptr @st_syscfg_sensor_ops, i32 16, i32 20, i32 120 }, [40 x i8] zeroinitializer }, align 32
@st_127_cdata = internal constant { %struct.st_thermal_compat_data, [40 x i8] } { %struct.st_thermal_compat_data { ptr @.str.11, ptr @st_127_regfields, ptr @st_syscfg_sensor_ops, i32 8, i32 -103, i32 120 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st,stih415-front-syscfg\00", [40 x i8] zeroinitializer }, align 32
@st_415sas_regfields = internal constant { [5 x %struct.reg_field], [60 x i8] } { [5 x %struct.reg_field] [%struct.reg_field { i32 312, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 312, i32 4, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 392, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 392, i32 10, i32 16, i32 0, i32 0 }, %struct.reg_field zeroinitializer], [60 x i8] zeroinitializer }, align 32
@st_syscfg_sensor_ops = internal constant { %struct.st_thermal_sensor_ops, [44 x i8] } { %struct.st_thermal_sensor_ops { ptr @st_syscfg_power_ctrl, ptr @st_syscfg_alloc_regfields, ptr @st_syscfg_regmap_init, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@st_syscfg_alloc_regfields._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 77, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to alloc syscfg regfields\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"st_syscfg_alloc_regfields\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/thermal/st/st_thermal_syscfg.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_syscfg_alloc_regfields._entry_ptr = internal global ptr @st_syscfg_alloc_regfields._entry, section ".printk_index", align 4
@st_syscfg_regmap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 89, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to find syscfg regmap\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st_syscfg_regmap_init\00", [42 x i8] zeroinitializer }, align 32
@st_syscfg_regmap_init._entry_ptr = internal global ptr @st_syscfg_regmap_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st,stih415-system-syscfg\00", [39 x i8] zeroinitializer }, align 32
@st_415mpe_regfields = internal constant { [5 x %struct.reg_field], [60 x i8] } { [5 x %struct.reg_field] [%struct.reg_field { i32 28, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 3, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 11, i32 18, i32 0, i32 0 }, %struct.reg_field zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st,stih416-front-syscfg\00", [40 x i8] zeroinitializer }, align 32
@st_416sas_regfields = internal constant { [5 x %struct.reg_field], [60 x i8] } { [5 x %struct.reg_field] [%struct.reg_field { i32 2208, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 2208, i32 4, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 2216, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 2376, i32 10, i32 16, i32 0, i32 0 }, %struct.reg_field zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,stid127-cpu-syscfg\00", [42 x i8] zeroinitializer }, align 32
@st_127_regfields = internal constant { [5 x %struct.reg_field], [60 x i8] } { [5 x %struct.reg_field] [%struct.reg_field { i32 172, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 172, i32 2, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 11, i32 18, i32 0, i32 0 }, %struct.reg_field zeroinitializer], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [25 x i8] c"st_syscfg_thermal_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 161, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 163, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"st_syscfg_thermal_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 142, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"st_415sas_cdata\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 103, i32 44 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"st_415mpe_cdata\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 113, i32 44 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"st_416sas_cdata\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 123, i32 44 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"st_127_cdata\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 133, i32 44 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 104, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"st_415sas_regfields\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 34, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"st_syscfg_sensor_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 96, i32 43 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 77, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 89, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 114, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"st_415mpe_regfields\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 41, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 124, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"st_416sas_regfields\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 48, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 134, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"st_127_regfields\00", align 1
@___asan_gen_.85 = private constant [42 x i8] c"../drivers/thermal/st/st_thermal_syscfg.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 55, i32 31 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_st_syscfg_thermal_driver_exit, ptr @__initcall__kmod_st_thermal_syscfg__187_170_st_syscfg_thermal_driver_init6, ptr @st_syscfg_alloc_regfields._entry, ptr @st_syscfg_alloc_regfields._entry_ptr, ptr @st_syscfg_regmap_init._entry, ptr @st_syscfg_regmap_init._entry_ptr, ptr @st_syscfg_thermal_driver_exit, ptr @st_syscfg_thermal_driver, ptr @.str, ptr @st_syscfg_thermal_of_match, ptr @st_415sas_cdata, ptr @st_415mpe_cdata, ptr @st_416sas_cdata, ptr @st_127_cdata, ptr @.str.1, ptr @st_415sas_regfields, ptr @st_syscfg_sensor_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @st_415mpe_regfields, ptr @.str.10, ptr @st_416sas_regfields, ptr @.str.11, ptr @st_127_regfields], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_syscfg_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_syscfg_thermal_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_415sas_cdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_415mpe_cdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_416sas_cdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_127_cdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_415sas_regfields to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_syscfg_sensor_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_syscfg_alloc_regfields._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_syscfg_regmap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_415mpe_regfields to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_416sas_regfields to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_127_regfields to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_syscfg_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_syscfg_thermal_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_syscfg_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_syscfg_thermal_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_syscfg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @st_thermal_register(ptr noundef %pdev, ptr noundef nonnull @st_syscfg_thermal_of_match) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_syscfg_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @st_thermal_unregister(ptr noundef %pdev) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_thermal_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_thermal_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_syscfg_power_ctrl(ptr nocapture noundef readonly %sensor, i32 noundef %power_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pwr = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 6
  %0 = ptrtoint ptr %pwr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwr, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef %power_state, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_syscfg_alloc_regfields(ptr nocapture noundef %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %regmap = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %cdata = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdata, align 4
  %reg_fields = getelementptr inbounds %struct.st_thermal_compat_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_fields to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_fields, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %7, align 4
  %9 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt12 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %.elt12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack13 = load i32, ptr %.elt12, align 4
  %11 = insertvalue [5 x i32] %9, i32 %.unpack13, 1
  %.elt14 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %.elt14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack15 = load i32, ptr %.elt14, align 4
  %13 = insertvalue [5 x i32] %11, i32 %.unpack15, 2
  %.elt16 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %.elt16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack17 = load i32, ptr %.elt16, align 4
  %15 = insertvalue [5 x i32] %13, i32 %.unpack17, 3
  %.elt18 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %.elt18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack19 = load i32, ptr %.elt18, align 4
  %17 = insertvalue [5 x i32] %15, i32 %.unpack19, 4
  %call = tail call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %3, [5 x i32] %17) #4
  %pwr = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 6
  %18 = ptrtoint ptr %pwr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %pwr, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  %19 = ptrtoint ptr %pwr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwr, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_syscfg_regmap_init(ptr nocapture noundef %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cdata = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef %3) #4
  %regmap = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #7
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %9, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_st_thermal_syscfg__187_170_st_syscfg_thermal_driver_init6, !1, !"__initcall__kmod_st_thermal_syscfg__187_170_st_syscfg_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 170, i32 1}
!2 = !{ptr @__exitcall_st_syscfg_thermal_driver_exit, !1, !"__exitcall_st_syscfg_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 172, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 173, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 174, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 163, i32 11}
!12 = !{ptr @st_syscfg_thermal_driver, !13, !"st_syscfg_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 161, i32 31}
!14 = !{ptr @st_syscfg_thermal_of_match, !15, !"st_syscfg_thermal_of_match", i1 false, i1 false}
!15 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 142, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 104, i32 17}
!18 = !{ptr @st_415sas_cdata, !19, !"st_415sas_cdata", i1 false, i1 false}
!19 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 103, i32 44}
!20 = !{ptr @st_415sas_regfields, !21, !"st_415sas_regfields", i1 false, i1 false}
!21 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 34, i32 31}
!22 = !{ptr @st_syscfg_sensor_ops, !23, !"st_syscfg_sensor_ops", i1 false, i1 false}
!23 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 96, i32 43}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 77, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @st_syscfg_alloc_regfields._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @st_syscfg_alloc_regfields._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 89, i32 3}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @st_syscfg_regmap_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @st_syscfg_regmap_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 114, i32 17}
!39 = !{ptr @st_415mpe_cdata, !40, !"st_415mpe_cdata", i1 false, i1 false}
!40 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 113, i32 44}
!41 = !{ptr @st_415mpe_regfields, !42, !"st_415mpe_regfields", i1 false, i1 false}
!42 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 41, i32 31}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 124, i32 17}
!45 = !{ptr @st_416sas_cdata, !46, !"st_416sas_cdata", i1 false, i1 false}
!46 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 123, i32 44}
!47 = !{ptr @st_416sas_regfields, !48, !"st_416sas_regfields", i1 false, i1 false}
!48 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 48, i32 31}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 134, i32 17}
!51 = !{ptr @st_127_cdata, !52, !"st_127_cdata", i1 false, i1 false}
!52 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 133, i32 44}
!53 = !{ptr @st_127_regfields, !54, !"st_127_regfields", i1 false, i1 false}
!54 = !{!"../drivers/thermal/st/st_thermal_syscfg.c", i32 55, i32 31}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
