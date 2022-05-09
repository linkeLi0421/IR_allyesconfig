; ModuleID = '/llk/IR_all_yes/drivers/mfd/da9063-core.c_pt.bc'
source_filename = "../drivers/mfd/da9063-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.da9063 = type { ptr, i32, i8, i32, ptr, i32, i32, ptr }

@da9063_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot clear fault log\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9063_device_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/da9063-core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9063_device_init._entry_ptr = internal global ptr @da9063_device_init._entry, section ".printk_index", align 4
@da9063_device_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 175, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot initialize interrupts.\0A\00", [33 x i8] zeroinitializer }, align 32
@da9063_device_init._entry_ptr.7 = internal global ptr @da9063_device_init._entry.5, section ".printk_index", align 4
@da9063_common_devs = internal constant { [6 x %struct.mfd_cell], [144 x i8] } { [6 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.27, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @da9063_regulators_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.28, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.29, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.30, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.31, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @da9063_hwmon_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.32, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.33, i64 0, i8 0, ptr null, i32 1, ptr @da9063_onkey_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.34, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [144 x i8] zeroinitializer }, align 32
@da9063_device_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add child devices\0A\00", [35 x i8] zeroinitializer }, align 32
@da9063_device_init._entry_ptr.10 = internal global ptr @da9063_device_init._entry.8, section ".printk_index", align 4
@da9063_devs = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.38, i64 0, i8 0, ptr null, i32 2, ptr @da9063_rtc_resources, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@da9063_device_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@da9063_device_init._entry_ptr.12 = internal global ptr @da9063_device_init._entry.11, section ".printk_index", align 4
@__UNIQUE_ID_description235 = internal constant [49 x i8] c"da9063.description=PMIC driver for Dialog DA9063\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [33 x i8] c"da9063.author=Krystian Garbaciak\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [28 x i8] c"da9063.author=Michal Hajduk\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [31 x i8] c"da9063.file=drivers/mfd/da9063\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [19 x i8] c"da9063.license=GPL\00", section ".modinfo", align 1
@da9063_clear_fault_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot read FAULT_LOG.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9063_clear_fault_log\00", [41 x i8] zeroinitializer }, align 32
@da9063_clear_fault_log._entry_ptr = internal global ptr @da9063_clear_fault_log._entry, section ".printk_index", align 4
@da9063_clear_fault_log.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da9063\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fault log entry detected: DA9063_TWD_ERROR\0A\00", [52 x i8] zeroinitializer }, align 32
@da9063_clear_fault_log.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Fault log entry detected: DA9063_POR\0A\00", [58 x i8] zeroinitializer }, align 32
@da9063_clear_fault_log.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.2, ptr @.str.18, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fault log entry detected: DA9063_VDD_FAULT\0A\00", [52 x i8] zeroinitializer }, align 32
@da9063_clear_fault_log.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.2, ptr @.str.19, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fault log entry detected: DA9063_VDD_START\0A\00", [52 x i8] zeroinitializer }, align 32
@da9063_clear_fault_log.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.2, ptr @.str.20, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fault log entry detected: DA9063_TEMP_CRIT\0A\00", [52 x i8] zeroinitializer }, align 32
@da9063_clear_fault_log.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.2, ptr @.str.21, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fault log entry detected: DA9063_KEY_RESET\0A\00", [52 x i8] zeroinitializer }, align 32
@da9063_clear_fault_log.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.2, ptr @.str.22, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fault log entry detected: DA9063_NSHUTDOWN\0A\00", [52 x i8] zeroinitializer }, align 32
@da9063_clear_fault_log.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.2, ptr @.str.23, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Fault log entry detected: DA9063_WAIT_SHUT\0A\00", [52 x i8] zeroinitializer }, align 32
@da9063_clear_fault_log._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot reset FAULT_LOG values %d\0A\00", [62 x i8] zeroinitializer }, align 32
@da9063_clear_fault_log._entry_ptr.26 = internal global ptr @da9063_clear_fault_log._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9063-regulators\00", [46 x i8] zeroinitializer }, align 32
@da9063_regulators_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 8, i32 8, ptr @.str.35, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9063-leds\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9063-watchdog\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlg,da9063-watchdog\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9063-hwmon\00", [19 x i8] zeroinitializer }, align 32
@da9063_hwmon_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 3, i32 3, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9063-onkey\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlg,da9063-onkey\00", [47 x i8] zeroinitializer }, align 32
@da9063_onkey_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.36, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9063-vibration\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO_LIM\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ONKEY\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9063-rtc\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlg,da9063-rtc\00", [17 x i8] zeroinitializer }, align 32
@da9063_rtc_resources = internal constant { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 1, i32 1, ptr @.str.39, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 2, i32 2, ptr @.str.40, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALARM\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TICK\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 167, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 175, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"da9063_common_devs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 74, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 186, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"da9063_devs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 104, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 195, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 120, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 126, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 129, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 132, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 135, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 138, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 141, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 144, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 147, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 155, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 76, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"da9063_regulators_resources\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 32, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 81, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 84, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 85, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 88, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"da9063_hwmon_resources\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 65, i32 30 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 93, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 96, i32 20 }
@___asan_gen_.149 = private unnamed_addr constant [23 x i8] c"da9063_onkey_resources\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 56, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 99, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 34, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 58, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 106, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 109, i32 20 }
@___asan_gen_.167 = private unnamed_addr constant [21 x i8] c"da9063_rtc_resources\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 41, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 43, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [29 x i8] c"../drivers/mfd/da9063-core.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 49, i32 11 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @da9063_clear_fault_log._entry, ptr @da9063_clear_fault_log._entry.24, ptr @da9063_clear_fault_log._entry_ptr, ptr @da9063_clear_fault_log._entry_ptr.26, ptr @da9063_device_init._entry, ptr @da9063_device_init._entry.11, ptr @da9063_device_init._entry.5, ptr @da9063_device_init._entry.8, ptr @da9063_device_init._entry_ptr, ptr @da9063_device_init._entry_ptr.10, ptr @da9063_device_init._entry_ptr.12, ptr @da9063_device_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @da9063_common_devs, ptr @.str.9, ptr @da9063_devs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @da9063_regulators_resources, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @da9063_hwmon_resources, ptr @.str.32, ptr @.str.33, ptr @da9063_onkey_resources, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @da9063_rtc_resources, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_device_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_common_devs to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_device_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_devs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_device_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_clear_fault_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_clear_fault_log._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_regulators_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_hwmon_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_onkey_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da9063_device_init(ptr noundef %da9063, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @da9063_clear_fault_log(ptr noundef %da9063)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da9063, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.da9063, ptr %da9063, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %irq_base = getelementptr inbounds %struct.da9063, ptr %da9063, i32 0, i32 6
  %3 = ptrtoint ptr %irq_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %irq_base, align 4
  %chip_irq = getelementptr inbounds %struct.da9063, ptr %da9063, i32 0, i32 5
  %4 = ptrtoint ptr %chip_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %chip_irq, align 4
  %call1 = tail call i32 @da9063_irq_init(ptr noundef %da9063) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %regmap_irq = getelementptr inbounds %struct.da9063, ptr %da9063, i32 0, i32 7
  %5 = ptrtoint ptr %regmap_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_irq, align 4
  %call8 = tail call i32 @regmap_irq_chip_get_base(ptr noundef %6) #4
  %7 = ptrtoint ptr %irq_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call8, ptr %irq_base, align 4
  %8 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %da9063, align 4
  %call12 = tail call i32 @devm_mfd_add_devices(ptr noundef %9, i32 noundef -1, ptr noundef nonnull @da9063_common_devs, i32 noundef 6, ptr noundef null, i32 noundef %call8, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end7
  %type = getelementptr inbounds %struct.da9063, ptr %da9063, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20 = icmp eq i32 %11, 0
  br i1 %cmp20, label %if.then21, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  %12 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %da9063, align 4
  %14 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_base, align 4
  %call24 = tail call i32 @devm_mfd_add_devices(ptr noundef %13, i32 noundef -1, ptr noundef nonnull @da9063_devs, i32 noundef 1, ptr noundef null, i32 noundef %15, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then21.cleanup_crit_edge, label %if.then21.cleanup.sink.split_crit_edge

if.then21.cleanup.sink.split_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then21.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.6, %if.end.cleanup.sink.split_crit_edge ], [ @.str.9, %if.end7.cleanup.sink.split_crit_edge ], [ @.str.9, %if.then21.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %if.end.cleanup.sink.split_crit_edge ], [ %call12, %if.end7.cleanup.sink.split_crit_edge ], [ %call24, %if.then21.cleanup.sink.split_crit_edge ]
  %16 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %da9063, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull %.str.9.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then21.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then21.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da9063_clear_fault_log(ptr nocapture noundef readonly %da9063) unnamed_addr #0 align 64 {
entry:
  %fault_log = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fault_log) #4
  %0 = ptrtoint ptr %fault_log to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fault_log, align 4
  %regmap = getelementptr inbounds %struct.da9063, ptr %da9063, i32 0, i32 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %fault_log) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %da9063, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fault_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.if.end162_crit_edge, label %if.then1

if.end.if.end162_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end162

if.then1:                                         ; preds = %if.end
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then1.if.end14_crit_edge, label %do.body4

if.then1.if.end14_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.body4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_clear_fault_log, %if.then9)) #4
          to label %if.end14 [label %if.then9], !srcloc !111

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %da9063, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_clear_fault_log.__UNIQUE_ID_ddebug227, ptr noundef %8, ptr noundef nonnull @.str.16) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %do.body4, %if.then1.if.end14_crit_edge
  %9 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fault_log, align 4
  %and15 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end35_crit_edge, label %do.body18

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_clear_fault_log, %if.then30)) #4
          to label %if.end35 [label %if.then30], !srcloc !111

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %da9063, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_clear_fault_log.__UNIQUE_ID_ddebug228, ptr noundef %12, ptr noundef nonnull @.str.17) #4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %do.body18, %if.end14.if.end35_crit_edge
  %13 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fault_log, align 4
  %and36 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end56_crit_edge, label %do.body39

if.end35.if.end56_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

do.body39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_clear_fault_log, %if.then51)) #4
          to label %if.end56 [label %if.then51], !srcloc !111

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %da9063, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_clear_fault_log.__UNIQUE_ID_ddebug229, ptr noundef %16, ptr noundef nonnull @.str.18) #4
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %do.body39, %if.end35.if.end56_crit_edge
  %17 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fault_log, align 4
  %and57 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end77_crit_edge, label %do.body60

if.end56.if.end77_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

do.body60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_clear_fault_log, %if.then72)) #4
          to label %if.end77 [label %if.then72], !srcloc !111

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %da9063, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_clear_fault_log.__UNIQUE_ID_ddebug230, ptr noundef %20, ptr noundef nonnull @.str.19) #4
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %do.body60, %if.end56.if.end77_crit_edge
  %21 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fault_log, align 4
  %and78 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end98_crit_edge, label %do.body81

if.end77.if.end98_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

do.body81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_clear_fault_log, %if.then93)) #4
          to label %if.end98 [label %if.then93], !srcloc !111

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %da9063, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_clear_fault_log.__UNIQUE_ID_ddebug231, ptr noundef %24, ptr noundef nonnull @.str.20) #4
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %do.body81, %if.end77.if.end98_crit_edge
  %25 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fault_log, align 4
  %and99 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.if.end119_crit_edge, label %do.body102

if.end98.if.end119_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

do.body102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_clear_fault_log, %if.then114)) #4
          to label %if.end119 [label %if.then114], !srcloc !111

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %da9063, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_clear_fault_log.__UNIQUE_ID_ddebug232, ptr noundef %28, ptr noundef nonnull @.str.21) #4
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %do.body102, %if.end98.if.end119_crit_edge
  %29 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fault_log, align 4
  %and120 = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end119.if.end140_crit_edge, label %do.body123

if.end119.if.end140_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end140

do.body123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_clear_fault_log, %if.then135)) #4
          to label %if.end140 [label %if.then135], !srcloc !111

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %da9063, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_clear_fault_log.__UNIQUE_ID_ddebug233, ptr noundef %32, ptr noundef nonnull @.str.22) #4
  br label %if.end140

if.end140:                                        ; preds = %if.then135, %do.body123, %if.end119.if.end140_crit_edge
  %33 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fault_log, align 4
  %and141 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end140.if.end162_crit_edge, label %do.body144

if.end140.if.end162_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end162

do.body144:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9063_clear_fault_log, %if.then156)) #4
          to label %if.end162 [label %if.then156], !srcloc !111

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %da9063, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_clear_fault_log.__UNIQUE_ID_ddebug234, ptr noundef %36, ptr noundef nonnull @.str.23) #4
  br label %if.end162

if.end162:                                        ; preds = %if.then156, %do.body144, %if.end140.if.end162_crit_edge, %if.end.if.end162_crit_edge
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %39 = ptrtoint ptr %fault_log to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fault_log, align 4
  %call164 = call i32 @regmap_write(ptr noundef %38, i32 noundef 5, i32 noundef %40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %do.end169, label %if.end162.cleanup_crit_edge

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end169:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %da9063 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %da9063, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.25, i32 noundef %call164) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end169, %if.end162.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call164, %do.end169 ], [ %call164, %if.end162.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fault_log) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9063_irq_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_chip_get_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/da9063-core.c", i32 167, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @da9063_device_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @da9063_device_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/da9063-core.c", i32 175, i32 3}
!10 = !{ptr @da9063_device_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @da9063_device_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/da9063-core.c", i32 186, i32 3}
!14 = !{ptr @da9063_device_init._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @da9063_device_init._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @da9063_device_init._entry.11, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/mfd/da9063-core.c", i32 195, i32 4}
!18 = !{ptr @da9063_device_init._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description235, !20, !"__UNIQUE_ID_description235", i1 false, i1 false}
!20 = !{!"../drivers/mfd/da9063-core.c", i32 203, i32 1}
!21 = !{ptr @__UNIQUE_ID_author236, !22, !"__UNIQUE_ID_author236", i1 false, i1 false}
!22 = !{!"../drivers/mfd/da9063-core.c", i32 204, i32 1}
!23 = !{ptr @__UNIQUE_ID_author237, !24, !"__UNIQUE_ID_author237", i1 false, i1 false}
!24 = !{!"../drivers/mfd/da9063-core.c", i32 205, i32 1}
!25 = !{ptr @__UNIQUE_ID_file238, !26, !"__UNIQUE_ID_file238", i1 false, i1 false}
!26 = !{!"../drivers/mfd/da9063-core.c", i32 206, i32 1}
!27 = !{ptr @__UNIQUE_ID_license239, !26, !"__UNIQUE_ID_license239", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/da9063-core.c", i32 120, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @da9063_clear_fault_log._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9063_clear_fault_log._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/da9063-core.c", i32 126, i32 4}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug227, !34, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/da9063-core.c", i32 129, i32 4}
!39 = !{ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug228, !38, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/da9063-core.c", i32 132, i32 4}
!42 = !{ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug229, !41, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/da9063-core.c", i32 135, i32 4}
!45 = !{ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug230, !44, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/da9063-core.c", i32 138, i32 4}
!48 = !{ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug231, !47, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/da9063-core.c", i32 141, i32 4}
!51 = !{ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug232, !50, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/da9063-core.c", i32 144, i32 4}
!54 = !{ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug233, !53, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/da9063-core.c", i32 147, i32 4}
!57 = !{ptr @da9063_clear_fault_log.__UNIQUE_ID_ddebug234, !56, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/da9063-core.c", i32 155, i32 3}
!60 = !{ptr @da9063_clear_fault_log._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @da9063_clear_fault_log._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/da9063-core.c", i32 76, i32 12}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/da9063-core.c", i32 81, i32 12}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/da9063-core.c", i32 84, i32 12}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/da9063-core.c", i32 85, i32 20}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mfd/da9063-core.c", i32 88, i32 12}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/da9063-core.c", i32 93, i32 12}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mfd/da9063-core.c", i32 96, i32 20}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mfd/da9063-core.c", i32 99, i32 12}
!78 = !{ptr @da9063_common_devs, !79, !"da9063_common_devs", i1 false, i1 false}
!79 = !{!"../drivers/mfd/da9063-core.c", i32 74, i32 30}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/da9063-core.c", i32 34, i32 11}
!82 = !{ptr @da9063_regulators_resources, !83, !"da9063_regulators_resources", i1 false, i1 false}
!83 = !{!"../drivers/mfd/da9063-core.c", i32 32, i32 30}
!84 = !{ptr @da9063_hwmon_resources, !85, !"da9063_hwmon_resources", i1 false, i1 false}
!85 = !{!"../drivers/mfd/da9063-core.c", i32 65, i32 30}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/da9063-core.c", i32 58, i32 11}
!88 = !{ptr @da9063_onkey_resources, !89, !"da9063_onkey_resources", i1 false, i1 false}
!89 = !{!"../drivers/mfd/da9063-core.c", i32 56, i32 30}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/da9063-core.c", i32 106, i32 12}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/da9063-core.c", i32 109, i32 20}
!94 = !{ptr @da9063_devs, !95, !"da9063_devs", i1 false, i1 false}
!95 = !{!"../drivers/mfd/da9063-core.c", i32 104, i32 30}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/da9063-core.c", i32 43, i32 11}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mfd/da9063-core.c", i32 49, i32 11}
!100 = !{ptr @da9063_rtc_resources, !101, !"da9063_rtc_resources", i1 false, i1 false}
!101 = !{!"../drivers/mfd/da9063-core.c", i32 41, i32 30}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2148694504, i64 2148694509, i64 2148694522, i64 2148694566, i64 2148694600, i64 2148694621}
