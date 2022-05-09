; ModuleID = '/llk/IR_all_yes/drivers/thermal/st/st_thermal_memmap.c_pt.bc'
source_filename = "../drivers/thermal/st/st_thermal_memmap.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.st_thermal_sensor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@__initcall__kmod_st_thermal_memmap__187_190_st_mmap_thermal_driver_init6 = internal global ptr @st_mmap_thermal_driver_init, section ".initcall6.init", align 4
@st_mmap_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_mmap_probe, ptr @st_mmap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_mmap_thermal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_st_mmap_thermal_driver_exit = internal global ptr @st_mmap_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [81 x i8] c"st_thermal_memmap.author=STMicroelectronics (R&D) Limited <ajitpal.singh@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [79 x i8] c"st_thermal_memmap.description=STMicroelectronics STi SoC Thermal Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [60 x i8] c"st_thermal_memmap.file=drivers/thermal/st/st_thermal_memmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [33 x i8] c"st_thermal_memmap.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st_thermal_mmap\00", [16 x i8] zeroinitializer }, align 32
@st_mmap_thermal_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih416-mpe-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_416mpe_cdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_407_cdata }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@st_thermal_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@st_416mpe_cdata = internal constant { %struct.st_thermal_compat_data, [40 x i8] } { %struct.st_thermal_compat_data { ptr null, ptr @st_mmap_thermal_regfields, ptr @st_mmap_sensor_ops, i32 14, i32 -95, i32 120 }, [40 x i8] zeroinitializer }, align 32
@st_407_cdata = internal constant { %struct.st_thermal_compat_data, [40 x i8] } { %struct.st_thermal_compat_data { ptr null, ptr @st_mmap_thermal_regfields, ptr @st_mmap_sensor_ops, i32 16, i32 -95, i32 120 }, [40 x i8] zeroinitializer }, align 32
@st_mmap_thermal_regfields = internal constant { [5 x %struct.reg_field], [60 x i8] } { [5 x %struct.reg_field] [%struct.reg_field { i32 8, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 5, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 11, i32 18, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 0, i32 0, i32 0, i32 0 }], [60 x i8] zeroinitializer }, align 32
@st_mmap_sensor_ops = internal constant { %struct.st_thermal_sensor_ops, [44 x i8] } { %struct.st_thermal_sensor_ops { ptr @st_mmap_power_ctrl, ptr @st_mmap_alloc_regfields, ptr @st_mmap_regmap_init, ptr @st_mmap_register_enable_irq, ptr @st_mmap_enable_irq }, [44 x i8] zeroinitializer }, align 32
@st_mmap_alloc_regfields._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 69, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to alloc mmap regfields\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st_mmap_alloc_regfields\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/thermal/st/st_thermal_memmap.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_mmap_alloc_regfields._entry_ptr = internal global ptr @st_mmap_alloc_regfields._entry, section ".printk_index", align 4
@st_mmap_regmap_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@st_416mpe_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"st_thermal_memmap:128:(&st_416mpe_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@st_mmap_regmap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialise regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_mmap_regmap_init\00", [44 x i8] zeroinitializer }, align 32
@st_mmap_regmap_init._entry_ptr = internal global ptr @st_mmap_regmap_init._entry, section ".printk_index", align 4
@st_mmap_register_enable_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register IRQ %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st_mmap_register_enable_irq\00", [36 x i8] zeroinitializer }, align 32
@st_mmap_register_enable_irq._entry_ptr = internal global ptr @st_mmap_register_enable_irq._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [23 x i8] c"st_mmap_thermal_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 180, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 182, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [25 x i8] c"st_mmap_thermal_of_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 163, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"st_416mpe_cdata\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 146, i32 44 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"st_407_cdata\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 155, i32 44 }
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"st_mmap_thermal_regfields\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 23, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"st_mmap_sensor_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 137, i32 43 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 69, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [24 x i8] c"st_416mpe_regmap_config\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 112, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 127, i32 19 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 130, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [42 x i8] c"../drivers/thermal/st/st_thermal_memmap.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 105, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_st_mmap_thermal_driver_exit, ptr @__initcall__kmod_st_thermal_memmap__187_190_st_mmap_thermal_driver_init6, ptr @st_mmap_alloc_regfields._entry, ptr @st_mmap_alloc_regfields._entry_ptr, ptr @st_mmap_register_enable_irq._entry, ptr @st_mmap_register_enable_irq._entry_ptr, ptr @st_mmap_regmap_init._entry, ptr @st_mmap_regmap_init._entry_ptr, ptr @st_mmap_thermal_driver_exit, ptr @st_mmap_thermal_driver, ptr @.str, ptr @st_mmap_thermal_of_match, ptr @st_416mpe_cdata, ptr @st_407_cdata, ptr @st_mmap_thermal_regfields, ptr @st_mmap_sensor_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @st_mmap_regmap_init._key, ptr @st_416mpe_regmap_config, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_mmap_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_mmap_thermal_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_416mpe_cdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_407_cdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_mmap_thermal_regfields to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_mmap_sensor_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_mmap_alloc_regfields._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_mmap_regmap_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_416mpe_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_mmap_regmap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_mmap_register_enable_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_mmap_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_mmap_thermal_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_mmap_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_mmap_thermal_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_mmap_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @st_thermal_register(ptr noundef %pdev, ptr noundef nonnull @st_mmap_thermal_of_match) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_mmap_remove(ptr noundef %pdev) #2 align 64 {
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
define internal i32 @st_mmap_power_ctrl(ptr nocapture noundef readonly %sensor, i32 noundef %power_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_state)
  %tobool.not = icmp eq i32 %power_state, 0
  %cond = select i1 %tobool.not, i32 0, i32 1040
  %regmap = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 5
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1040, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_mmap_alloc_regfields(ptr nocapture noundef %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %regmap2 = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 5
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  %cdata = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdata, align 4
  %reg_fields3 = getelementptr inbounds %struct.st_thermal_compat_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_fields3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_fields3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %7, align 4
  %9 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt22 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %.elt22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack23 = load i32, ptr %.elt22, align 4
  %11 = insertvalue [5 x i32] %9, i32 %.unpack23, 1
  %.elt24 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %.elt24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack25 = load i32, ptr %.elt24, align 4
  %13 = insertvalue [5 x i32] %11, i32 %.unpack25, 2
  %.elt26 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %.elt26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack27 = load i32, ptr %.elt26, align 4
  %15 = insertvalue [5 x i32] %13, i32 %.unpack27, 3
  %.elt28 = getelementptr inbounds [5 x i32], ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %.elt28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack29 = load i32, ptr %.elt28, align 4
  %17 = insertvalue [5 x i32] %15, i32 %.unpack29, 4
  %call = tail call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %3, [5 x i32] %17) #4
  %int_thresh_hi = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 10
  %18 = ptrtoint ptr %int_thresh_hi to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %int_thresh_hi, align 4
  %arrayidx4 = getelementptr %struct.reg_field, ptr %7, i32 4
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack30 = load i32, ptr %arrayidx4, align 4
  %20 = insertvalue [5 x i32] undef, i32 %.unpack30, 0
  %.elt31 = getelementptr %struct.reg_field, ptr %7, i32 4, i32 1
  %21 = ptrtoint ptr %.elt31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack32 = load i32, ptr %.elt31, align 4
  %22 = insertvalue [5 x i32] %20, i32 %.unpack32, 1
  %.elt33 = getelementptr %struct.reg_field, ptr %7, i32 4, i32 2
  %23 = ptrtoint ptr %.elt33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack34 = load i32, ptr %.elt33, align 4
  %24 = insertvalue [5 x i32] %22, i32 %.unpack34, 2
  %.elt35 = getelementptr %struct.reg_field, ptr %7, i32 4, i32 3
  %25 = ptrtoint ptr %.elt35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack36 = load i32, ptr %.elt35, align 4
  %26 = insertvalue [5 x i32] %24, i32 %.unpack36, 3
  %.elt37 = getelementptr %struct.reg_field, ptr %7, i32 4, i32 4
  %27 = ptrtoint ptr %.elt37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack38 = load i32, ptr %.elt37, align 4
  %28 = insertvalue [5 x i32] %26, i32 %.unpack38, 4
  %call5 = tail call ptr @devm_regmap_field_alloc(ptr noundef %1, ptr noundef %3, [5 x i32] %28) #4
  %int_enable = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 11
  %29 = ptrtoint ptr %int_enable to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5, ptr %int_enable, align 4
  %30 = ptrtoint ptr %int_thresh_hi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %int_thresh_hi, align 4
  %cmp.i = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %cmp.i39 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.i39
  br i1 %or.cond, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_mmap_regmap_init(ptr nocapture noundef %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0, ptr noundef null) #4
  %mmio_base = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 13
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %mmio_base, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %1, ptr noundef null, ptr noundef %call, ptr noundef nonnull @st_416mpe_regmap_config, ptr noundef nonnull @st_mmap_regmap_init._key, ptr noundef nonnull @.str.6) #4
  %regmap = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i25 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %7, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_mmap_register_enable_irq(ptr noundef %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #4
  %irq = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 12
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call5 = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %call, ptr noundef null, ptr noundef nonnull @st_mmap_thermal_trip_handler, i32 noundef 8193, ptr noundef %6, ptr noundef %sensor) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %8) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %int_thresh_hi.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 10
  %9 = ptrtoint ptr %int_thresh_hi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %int_thresh_hi.i, align 4
  %cdata.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 3
  %11 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cdata.i, align 4
  %crit_temp.i = getelementptr inbounds %struct.st_thermal_compat_data, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %crit_temp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crit_temp.i, align 4
  %temp_adjust_val.i = getelementptr inbounds %struct.st_thermal_compat_data, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %temp_adjust_val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp_adjust_val.i, align 4
  %sub.i = sub i32 %14, %16
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef %sub.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %int_enable.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 11
  %17 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %int_enable.i, align 4
  %call.i7.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %18, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call.i7.i, %if.end.i ], [ %call.i.i, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_mmap_enable_irq(ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %int_thresh_hi = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 10
  %0 = ptrtoint ptr %int_thresh_hi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_thresh_hi, align 4
  %cdata = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 3
  %2 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdata, align 4
  %crit_temp = getelementptr inbounds %struct.st_thermal_compat_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %crit_temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crit_temp, align 4
  %temp_adjust_val = getelementptr inbounds %struct.st_thermal_compat_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %temp_adjust_val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temp_adjust_val, align 4
  %sub = sub i32 %5, %7
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %int_enable = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 11
  %8 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %int_enable, align 4
  %call.i7 = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i7, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_mmap_thermal_trip_handler(i32 noundef %irq, ptr nocapture noundef readonly %sdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_dev = getelementptr inbounds %struct.st_thermal_sensor, ptr %sdata, i32 0, i32 1
  %0 = ptrtoint ptr %thermal_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thermal_dev, align 4
  tail call void @thermal_zone_device_update(ptr noundef %1, i32 noundef 0) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_st_thermal_memmap__187_190_st_mmap_thermal_driver_init6, !1, !"__initcall__kmod_st_thermal_memmap__187_190_st_mmap_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 190, i32 1}
!2 = !{ptr @__exitcall_st_mmap_thermal_driver_exit, !1, !"__exitcall_st_mmap_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 192, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 193, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 194, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 182, i32 11}
!12 = !{ptr @st_mmap_thermal_driver, !13, !"st_mmap_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 180, i32 31}
!14 = !{ptr @st_mmap_thermal_of_match, !15, !"st_mmap_thermal_of_match", i1 false, i1 false}
!15 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 163, i32 34}
!16 = !{ptr @st_416mpe_cdata, !17, !"st_416mpe_cdata", i1 false, i1 false}
!17 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 146, i32 44}
!18 = !{ptr @st_mmap_thermal_regfields, !19, !"st_mmap_thermal_regfields", i1 false, i1 false}
!19 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 23, i32 31}
!20 = !{ptr @st_mmap_sensor_ops, !21, !"st_mmap_sensor_ops", i1 false, i1 false}
!21 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 137, i32 43}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 69, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @st_mmap_alloc_regfields._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @st_mmap_alloc_regfields._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @st_mmap_regmap_init._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 127, i32 19}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 130, i32 3}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @st_mmap_regmap_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @st_mmap_regmap_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @st_416mpe_regmap_config, !39, !"st_416mpe_regmap_config", i1 false, i1 false}
!39 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 112, i32 35}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 105, i32 3}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @st_mmap_register_enable_irq._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @st_mmap_register_enable_irq._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @st_407_cdata, !46, !"st_407_cdata", i1 false, i1 false}
!46 = !{!"../drivers/thermal/st/st_thermal_memmap.c", i32 155, i32 44}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
