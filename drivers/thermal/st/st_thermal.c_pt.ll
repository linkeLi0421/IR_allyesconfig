; ModuleID = '/llk/IR_all_yes/drivers/thermal/st/st_thermal.c_pt.bc'
source_filename = "../drivers/thermal/st/st_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+st_thermal_register\22, \22a\22\09"
module asm "\09.weak\09__crc_st_thermal_register\09\09\09\09"
module asm "\09.long\09__crc_st_thermal_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_thermal_register:\09\09\09\09\09"
module asm "\09.asciz \09\22st_thermal_register\22\09\09\09\09\09"
module asm "__kstrtabns_st_thermal_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+st_thermal_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_st_thermal_unregister\09\09\09\09"
module asm "\09.long\09__crc_st_thermal_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_thermal_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22st_thermal_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_st_thermal_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+st_thermal_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_st_thermal_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_st_thermal_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_thermal_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22st_thermal_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_st_thermal_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.st_thermal_sensor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.st_thermal_compat_data = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.st_thermal_sensor_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@st_thermal_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device tree node not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_thermal_register\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/thermal/st/st_thermal.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_thermal_register._entry_ptr = internal global ptr @st_thermal_register._entry, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"thermal\00", [24 x i8] zeroinitializer }, align 32
@st_thermal_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to fetch clock\0A\00", [41 x i8] zeroinitializer }, align 32
@st_thermal_register._entry_ptr.8 = internal global ptr @st_thermal_register._entry.6, section ".printk_index", align 4
@st_tz_ops = internal global { %struct.thermal_zone_device_ops, [36 x i8] } { %struct.thermal_zone_device_ops { ptr null, ptr null, ptr @st_thermal_get_temp, ptr null, ptr null, ptr @st_thermal_get_trip_type, ptr @st_thermal_get_trip_temp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@st_thermal_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to register thermal zone device\0A\00", [56 x i8] zeroinitializer }, align 32
@st_thermal_register._entry_ptr.11 = internal global ptr @st_thermal_register._entry.9, section ".printk_index", align 4
@__kstrtab_st_thermal_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_thermal_register = external dso_local constant [0 x i8], align 1
@__ksymtab_st_thermal_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_thermal_register to i32), ptr @__kstrtab_st_thermal_register, ptr @__kstrtabns_st_thermal_register }, section "___ksymtab_gpl+st_thermal_register", align 4
@__kstrtab_st_thermal_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_thermal_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_st_thermal_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_thermal_unregister to i32), ptr @__kstrtab_st_thermal_unregister, ptr @__kstrtabns_st_thermal_unregister }, section "___ksymtab_gpl+st_thermal_unregister", align 4
@st_thermal_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st_thermal_suspend, ptr @st_thermal_resume, ptr @st_thermal_suspend, ptr @st_thermal_resume, ptr @st_thermal_suspend, ptr @st_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_st_thermal_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_thermal_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_st_thermal_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_thermal_pm_ops to i32), ptr @__kstrtab_st_thermal_pm_ops, ptr @__kstrtabns_st_thermal_pm_ops }, section "___ksymtab_gpl+st_thermal_pm_ops", align 4
@__UNIQUE_ID_author188 = internal constant [74 x i8] c"st_thermal.author=STMicroelectronics (R&D) Limited <ajitpal.singh@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [72 x i8] c"st_thermal.description=STMicroelectronics STi SoC Thermal Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [46 x i8] c"st_thermal.file=drivers/thermal/st/st_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [26 x i8] c"st_thermal.license=GPL v2\00", section ".modinfo", align 1
@st_thermal_alloc_regfields._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 41, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate common regfields\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st_thermal_alloc_regfields\00", [37 x i8] zeroinitializer }, align 32
@st_thermal_alloc_regfields._entry_ptr = internal global ptr @st_thermal_alloc_regfields._entry, section ".printk_index", align 4
@st_thermal_sensor_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to enable clk\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st_thermal_sensor_on\00", [43 x i8] zeroinitializer }, align 32
@st_thermal_sensor_on._entry_ptr = internal global ptr @st_thermal_sensor_on._entry, section ".printk_index", align 4
@st_thermal_sensor_on._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to power on sensor\0A\00", [37 x i8] zeroinitializer }, align 32
@st_thermal_sensor_on._entry_ptr.18 = internal global ptr @st_thermal_sensor_on._entry.16, section ".printk_index", align 4
@st_thermal_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read calibration data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st_thermal_calibration\00", [41 x i8] zeroinitializer }, align 32
@st_thermal_calibration._entry_ptr = internal global ptr @st_thermal_calibration._entry, section ".printk_index", align 4
@st_thermal_calibration._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set calibration data\0A\00", [32 x i8] zeroinitializer }, align 32
@st_thermal_calibration._entry_ptr.23 = internal global ptr @st_thermal_calibration._entry.21, section ".printk_index", align 4
@st_thermal_get_temp.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st_thermal\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_thermal_get_temp\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temperature: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@st_thermal_get_trip_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid trip point\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st_thermal_get_trip_type\00", [39 x i8] zeroinitializer }, align 32
@st_thermal_get_trip_type._entry_ptr = internal global ptr @st_thermal_get_trip_type._entry, section ".printk_index", align 4
@st_thermal_get_trip_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid trip point\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st_thermal_get_trip_temp\00", [39 x i8] zeroinitializer }, align 32
@st_thermal_get_trip_temp._entry_ptr = internal global ptr @st_thermal_get_trip_temp._entry, section ".printk_index", align 4
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 191, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 219, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 221, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"st_tz_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 173, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 245, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"st_thermal_pm_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 308, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 41, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 55, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 61, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 90, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 102, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 130, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 148, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [35 x i8] c"../drivers/thermal/st/st_thermal.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 166, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__ksymtab_st_thermal_pm_ops, ptr @__ksymtab_st_thermal_register, ptr @__ksymtab_st_thermal_unregister, ptr @st_thermal_alloc_regfields._entry, ptr @st_thermal_alloc_regfields._entry_ptr, ptr @st_thermal_calibration._entry, ptr @st_thermal_calibration._entry.21, ptr @st_thermal_calibration._entry_ptr, ptr @st_thermal_calibration._entry_ptr.23, ptr @st_thermal_get_trip_temp._entry, ptr @st_thermal_get_trip_temp._entry_ptr, ptr @st_thermal_get_trip_type._entry, ptr @st_thermal_get_trip_type._entry_ptr, ptr @st_thermal_register._entry, ptr @st_thermal_register._entry.6, ptr @st_thermal_register._entry.9, ptr @st_thermal_register._entry_ptr, ptr @st_thermal_register._entry_ptr.11, ptr @st_thermal_register._entry_ptr.8, ptr @st_thermal_sensor_on._entry, ptr @st_thermal_sensor_on._entry.16, ptr @st_thermal_sensor_on._entry_ptr, ptr @st_thermal_sensor_on._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @st_tz_ops, ptr @.str.10, ptr @st_thermal_pm_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_tz_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_alloc_regfields._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_sensor_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_sensor_on._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_calibration._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_get_trip_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_thermal_get_trip_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_thermal_register(ptr noundef %pdev, ptr noundef %st_thermal_of_match) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call6 = tail call ptr @of_match_device(ptr noundef %st_thermal_of_match, ptr noundef %dev1) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call6, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true
  %cdata = getelementptr inbounds %struct.st_thermal_sensor, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %cdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %cdata, align 4
  %ops = getelementptr inbounds %struct.st_thermal_compat_data, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %ops18 = getelementptr inbounds %struct.st_thermal_sensor, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %ops18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %ops18, align 4
  %regmap_init = getelementptr inbounds %struct.st_thermal_sensor_ops, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %regmap_init to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_init, align 4
  %call20 = tail call i32 %10(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %regmap2.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %regmap2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap2.i, align 4
  %15 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdata, align 4
  %reg_fields3.i = getelementptr inbounds %struct.st_thermal_compat_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %reg_fields3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_fields3.i, align 4
  %arrayidx.i = getelementptr %struct.reg_field, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack.i = load i32, ptr %arrayidx.i, align 4
  %20 = insertvalue [5 x i32] undef, i32 %.unpack.i, 0
  %.elt35.i = getelementptr %struct.reg_field, ptr %18, i32 1, i32 1
  %21 = ptrtoint ptr %.elt35.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack36.i = load i32, ptr %.elt35.i, align 4
  %22 = insertvalue [5 x i32] %20, i32 %.unpack36.i, 1
  %.elt37.i = getelementptr %struct.reg_field, ptr %18, i32 1, i32 2
  %23 = ptrtoint ptr %.elt37.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack38.i = load i32, ptr %.elt37.i, align 4
  %24 = insertvalue [5 x i32] %22, i32 %.unpack38.i, 2
  %.elt39.i = getelementptr %struct.reg_field, ptr %18, i32 1, i32 3
  %25 = ptrtoint ptr %.elt39.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack40.i = load i32, ptr %.elt39.i, align 4
  %26 = insertvalue [5 x i32] %24, i32 %.unpack40.i, 3
  %.elt41.i = getelementptr %struct.reg_field, ptr %18, i32 1, i32 4
  %27 = ptrtoint ptr %.elt41.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack42.i = load i32, ptr %.elt41.i, align 4
  %28 = insertvalue [5 x i32] %26, i32 %.unpack42.i, 4
  %call.i130 = tail call ptr @devm_regmap_field_alloc(ptr noundef %12, ptr noundef %14, [5 x i32] %28) #4
  %dcorrect.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %dcorrect.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i130, ptr %dcorrect.i, align 4
  %arrayidx4.i = getelementptr %struct.reg_field, ptr %18, i32 2
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack43.i = load i32, ptr %arrayidx4.i, align 4
  %31 = insertvalue [5 x i32] undef, i32 %.unpack43.i, 0
  %.elt44.i = getelementptr %struct.reg_field, ptr %18, i32 2, i32 1
  %32 = ptrtoint ptr %.elt44.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack45.i = load i32, ptr %.elt44.i, align 4
  %33 = insertvalue [5 x i32] %31, i32 %.unpack45.i, 1
  %.elt46.i = getelementptr %struct.reg_field, ptr %18, i32 2, i32 2
  %34 = ptrtoint ptr %.elt46.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack47.i = load i32, ptr %.elt46.i, align 4
  %35 = insertvalue [5 x i32] %33, i32 %.unpack47.i, 2
  %.elt48.i = getelementptr %struct.reg_field, ptr %18, i32 2, i32 3
  %36 = ptrtoint ptr %.elt48.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack49.i = load i32, ptr %.elt48.i, align 4
  %37 = insertvalue [5 x i32] %35, i32 %.unpack49.i, 3
  %.elt50.i = getelementptr %struct.reg_field, ptr %18, i32 2, i32 4
  %38 = ptrtoint ptr %.elt50.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack51.i = load i32, ptr %.elt50.i, align 4
  %39 = insertvalue [5 x i32] %37, i32 %.unpack51.i, 4
  %call5.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %12, ptr noundef %14, [5 x i32] %39) #4
  %overflow.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %call.i, i32 0, i32 8
  %40 = ptrtoint ptr %overflow.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i, ptr %overflow.i, align 4
  %arrayidx6.i = getelementptr %struct.reg_field, ptr %18, i32 3
  %41 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack52.i = load i32, ptr %arrayidx6.i, align 4
  %42 = insertvalue [5 x i32] undef, i32 %.unpack52.i, 0
  %.elt53.i = getelementptr %struct.reg_field, ptr %18, i32 3, i32 1
  %43 = ptrtoint ptr %.elt53.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack54.i = load i32, ptr %.elt53.i, align 4
  %44 = insertvalue [5 x i32] %42, i32 %.unpack54.i, 1
  %.elt55.i = getelementptr %struct.reg_field, ptr %18, i32 3, i32 2
  %45 = ptrtoint ptr %.elt55.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack56.i = load i32, ptr %.elt55.i, align 4
  %46 = insertvalue [5 x i32] %44, i32 %.unpack56.i, 2
  %.elt57.i = getelementptr %struct.reg_field, ptr %18, i32 3, i32 3
  %47 = ptrtoint ptr %.elt57.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack58.i = load i32, ptr %.elt57.i, align 4
  %48 = insertvalue [5 x i32] %46, i32 %.unpack58.i, 3
  %.elt59.i = getelementptr %struct.reg_field, ptr %18, i32 3, i32 4
  %49 = ptrtoint ptr %.elt59.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack60.i = load i32, ptr %.elt59.i, align 4
  %50 = insertvalue [5 x i32] %48, i32 %.unpack60.i, 4
  %call7.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %12, ptr noundef %14, [5 x i32] %50) #4
  %temp_data.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %call.i, i32 0, i32 9
  %51 = ptrtoint ptr %temp_data.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i, ptr %temp_data.i, align 4
  %52 = ptrtoint ptr %dcorrect.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dcorrect.i, align 4
  %cmp.i.i = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end23.st_thermal_alloc_regfields.exit.thread_crit_edge, label %lor.lhs.false.i

if.end23.st_thermal_alloc_regfields.exit.thread_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_thermal_alloc_regfields.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end23
  %54 = ptrtoint ptr %overflow.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %overflow.i, align 4
  %cmp.i61.i = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  %cmp.i62.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %or.cond.i = select i1 %cmp.i61.i, i1 true, i1 %cmp.i62.i
  br i1 %or.cond.i, label %lor.lhs.false.i.st_thermal_alloc_regfields.exit.thread_crit_edge, label %st_thermal_alloc_regfields.exit

lor.lhs.false.i.st_thermal_alloc_regfields.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_thermal_alloc_regfields.exit.thread

st_thermal_alloc_regfields.exit.thread:           ; preds = %lor.lhs.false.i.st_thermal_alloc_regfields.exit.thread_crit_edge, %if.end23.st_thermal_alloc_regfields.exit.thread_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.12) #7
  br label %cleanup

st_thermal_alloc_regfields.exit:                  ; preds = %lor.lhs.false.i
  %56 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops18, align 4
  %alloc_regfields.i = getelementptr inbounds %struct.st_thermal_sensor_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %alloc_regfields.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %alloc_regfields.i, align 4
  %call15.i = tail call i32 %59(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool25.not = icmp eq i32 %call15.i, 0
  br i1 %tobool25.not, label %if.end27, label %st_thermal_alloc_regfields.exit.cleanup_crit_edge

st_thermal_alloc_regfields.exit.cleanup_crit_edge: ; preds = %st_thermal_alloc_regfields.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %st_thermal_alloc_regfields.exit
  %call28 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #4
  %clk = getelementptr inbounds %struct.st_thermal_sensor, ptr %call.i, i32 0, i32 4
  %60 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call28, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  %61 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk, align 4
  %63 = ptrtoint ptr %62 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %64 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops18, align 4
  %register_enable_irq = getelementptr inbounds %struct.st_thermal_sensor_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %register_enable_irq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %register_enable_irq, align 4
  %tobool39.not = icmp eq ptr %67, null
  br i1 %tobool39.not, label %if.end37.if.end47_crit_edge, label %if.then40

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then40:                                        ; preds = %if.end37
  %call43 = tail call i32 %67(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then40.if.end47_crit_edge, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.end47:                                         ; preds = %if.then40.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %call48 = tail call fastcc i32 @st_thermal_sensor_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %call52 = tail call fastcc i32 @st_thermal_calibration(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.sensor_off_crit_edge

if.end51.sensor_off_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %sensor_off

if.end55:                                         ; preds = %if.end51
  %68 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops18, align 4
  %register_enable_irq57 = getelementptr inbounds %struct.st_thermal_sensor_ops, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %register_enable_irq57 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %register_enable_irq57, align 4
  %tobool58.not = icmp eq ptr %71, null
  %cond = select i1 %tobool58.not, i32 1000, i32 0
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %72 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %73, null
  br i1 %tobool.not.i, label %if.end.i131, label %if.end55.dev_name.exit_crit_edge

if.end55.dev_name.exit_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i131:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i131, %if.end55.dev_name.exit_crit_edge
  %retval.0.i132 = phi ptr [ %75, %if.end.i131 ], [ %73, %if.end55.dev_name.exit_crit_edge ]
  %call60 = tail call ptr @thermal_zone_device_register(ptr noundef %retval.0.i132, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @st_tz_ops, ptr noundef null, i32 noundef 0, i32 noundef %cond) #4
  %thermal_dev = getelementptr inbounds %struct.st_thermal_sensor, ptr %call.i, i32 0, i32 1
  %76 = ptrtoint ptr %thermal_dev to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call60, ptr %thermal_dev, align 4
  %cmp.i133 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %do.end66, label %if.end69

do.end66:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  %77 = ptrtoint ptr %thermal_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %thermal_dev, align 4
  %79 = ptrtoint ptr %78 to i32
  br label %sensor_off

if.end69:                                         ; preds = %dev_name.exit
  %call71 = tail call i32 @thermal_zone_device_enable(ptr noundef %call60) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %tzd_unregister

if.end74:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

tzd_unregister:                                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  %81 = ptrtoint ptr %thermal_dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %thermal_dev, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %82) #4
  br label %sensor_off

sensor_off:                                       ; preds = %tzd_unregister, %do.end66, %if.end51.sensor_off_crit_edge
  %ret.0 = phi i32 [ %call52, %if.end51.sensor_off_crit_edge ], [ %79, %do.end66 ], [ %call71, %tzd_unregister ]
  %call76 = tail call fastcc i32 @st_thermal_sensor_off(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %sensor_off, %if.end74, %if.end47.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %do.end34, %st_thermal_alloc_regfields.exit.cleanup_crit_edge, %st_thermal_alloc_regfields.exit.thread, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %63, %do.end34 ], [ %ret.0, %sensor_off ], [ 0, %if.end74 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %call20, %if.end15.cleanup_crit_edge ], [ %call15.i, %st_thermal_alloc_regfields.exit.cleanup_crit_edge ], [ %call43, %if.then40.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ -22, %st_thermal_alloc_regfields.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_thermal_sensor_on(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 4
  %clk = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %ops = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call i32 %7(ptr noundef %sensor, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #7
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_thermal_calibration(ptr nocapture noundef readonly %sensor) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !82
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sensor, align 4
  %dcorrect = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 7
  %3 = ptrtoint ptr %dcorrect to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dcorrect, align 4
  %call = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %7 = ptrtoint ptr %dcorrect to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dcorrect, align 4
  %cdata = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 3
  %9 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdata, align 4
  %calibration_val = getelementptr inbounds %struct.st_thermal_compat_data, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %calibration_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %calibration_val, align 4
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %8, i32 noundef -1, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.then3.cleanup_crit_edge, label %if.then3.cleanup.sink.split_crit_edge

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then3.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.19, %entry.cleanup.sink.split_crit_edge ], [ @.str.22, %if.then3.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call.i, %if.then3.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %.str.22.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_thermal_sensor_off(ptr noundef %sensor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %sensor, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %clk = getelementptr inbounds %struct.st_thermal_sensor, ptr %sensor, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_thermal_unregister(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ops.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.st_thermal_sensor_off.exit_crit_edge

entry.st_thermal_sensor_off.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_thermal_sensor_off.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %st_thermal_sensor_off.exit

st_thermal_sensor_off.exit:                       ; preds = %if.end.i, %entry.st_thermal_sensor_off.exit_crit_edge
  %thermal_dev = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %thermal_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thermal_dev, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_thermal_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.st_thermal_sensor_off.exit_crit_edge

entry.st_thermal_sensor_off.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_thermal_sensor_off.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %st_thermal_sensor_off.exit

st_thermal_sensor_off.exit:                       ; preds = %if.end.i, %entry.st_thermal_sensor_off.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_thermal_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @st_thermal_sensor_on(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !82
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dcorrect.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %dcorrect.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dcorrect.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.st_thermal_calibration.exit_crit_edge

if.end.st_thermal_calibration.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_thermal_calibration.exit

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i = icmp eq i32 %8, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %dcorrect.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dcorrect.i, align 4
  %cdata.i = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cdata.i, align 4
  %calibration_val.i = getelementptr inbounds %struct.st_thermal_compat_data, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %calibration_val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %calibration_val.i, align 4
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.then3.i.if.end5_crit_edge, label %if.then3.i.st_thermal_calibration.exit_crit_edge

if.then3.i.st_thermal_calibration.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_thermal_calibration.exit

if.then3.i.if.end5_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

st_thermal_calibration.exit:                      ; preds = %if.then3.i.st_thermal_calibration.exit_crit_edge, %if.end.st_thermal_calibration.exit_crit_edge
  %.str.22.sink.i = phi ptr [ @.str.19, %if.end.st_thermal_calibration.exit_crit_edge ], [ @.str.22, %if.then3.i.st_thermal_calibration.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.end.st_thermal_calibration.exit_crit_edge ], [ %call.i.i, %if.then3.i.st_thermal_calibration.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %.str.22.sink.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

if.end5:                                          ; preds = %if.then3.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  %ops = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %enable_irq = getelementptr inbounds %struct.st_thermal_sensor_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enable_irq, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %if.end5.if.end14_crit_edge, label %if.then7

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  %call10 = call i32 %18(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.if.end14_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then7.cleanup_crit_edge, %st_thermal_calibration.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.ph.i, %st_thermal_calibration.exit ], [ %call10, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_thermal_get_temp(ptr nocapture noundef readonly %th, ptr nocapture noundef writeonly %temperature) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  %overflow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %th, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #4
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %overflow) #4
  %5 = ptrtoint ptr %overflow to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %overflow, align 4, !annotation !82
  %overflow2 = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %overflow2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %overflow2, align 4
  %call = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %overflow) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %overflow to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %overflow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %temp_data = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %temp_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %temp_data, align 4
  %call6 = call i32 @regmap_field_read(ptr noundef %11, ptr noundef nonnull %temp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %cdata = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cdata, align 4
  %temp_adjust_val = getelementptr inbounds %struct.st_thermal_compat_data, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %temp_adjust_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp_adjust_val, align 4
  %16 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp, align 4
  %add = add i32 %17, %15
  %mul = mul i32 %add, 1000
  store i32 %mul, ptr %temp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_thermal_get_temp.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_thermal_get_temp, %if.then14)) #4
          to label %do.end [label %if.then14], !srcloc !83

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_thermal_get_temp.__UNIQUE_ID_ddebug187, ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %19) #4
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end9
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %temp, align 4
  %22 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %temperature, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %overflow) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_thermal_get_trip_type(ptr nocapture noundef readonly %th, i32 noundef %trip, ptr nocapture noundef writeonly %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trip)
  %cond = icmp eq i32 %trip, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %type, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %th, i32 0, i32 8
  %1 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devdata, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.27) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_thermal_get_trip_temp(ptr nocapture noundef readonly %th, i32 noundef %trip, ptr nocapture noundef writeonly %temp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %th, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trip)
  %cond = icmp eq i32 %trip, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cdata = getelementptr inbounds %struct.st_thermal_sensor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdata, align 4
  %crit_temp = getelementptr inbounds %struct.st_thermal_compat_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %crit_temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crit_temp, align 4
  %mul = mul i32 %5, 1000
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %temp, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.29) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/st/st_thermal.c", i32 191, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @st_thermal_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @st_thermal_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/st/st_thermal.c", i32 219, i32 34}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/st/st_thermal.c", i32 221, i32 3}
!12 = !{ptr @st_thermal_register._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @st_thermal_register._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/st/st_thermal.c", i32 245, i32 3}
!16 = !{ptr @st_thermal_register._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @st_thermal_register._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_st_thermal_register, !19, !"__ksymtab_st_thermal_register", i1 false, i1 false}
!19 = !{!"../drivers/thermal/st/st_thermal.c", i32 264, i32 1}
!20 = !{ptr @__ksymtab_st_thermal_unregister, !21, !"__ksymtab_st_thermal_unregister", i1 false, i1 false}
!21 = !{!"../drivers/thermal/st/st_thermal.c", i32 275, i32 1}
!22 = !{ptr @st_thermal_pm_ops, !23, !"st_thermal_pm_ops", i1 false, i1 false}
!23 = !{!"../drivers/thermal/st/st_thermal.c", i32 308, i32 1}
!24 = !{ptr @__ksymtab_st_thermal_pm_ops, !25, !"__ksymtab_st_thermal_pm_ops", i1 false, i1 false}
!25 = !{!"../drivers/thermal/st/st_thermal.c", i32 309, i32 1}
!26 = !{ptr @__UNIQUE_ID_author188, !27, !"__UNIQUE_ID_author188", i1 false, i1 false}
!27 = !{!"../drivers/thermal/st/st_thermal.c", i32 311, i32 1}
!28 = !{ptr @__UNIQUE_ID_description189, !29, !"__UNIQUE_ID_description189", i1 false, i1 false}
!29 = !{!"../drivers/thermal/st/st_thermal.c", i32 312, i32 1}
!30 = !{ptr @__UNIQUE_ID_file190, !31, !"__UNIQUE_ID_file190", i1 false, i1 false}
!31 = !{!"../drivers/thermal/st/st_thermal.c", i32 313, i32 1}
!32 = !{ptr @__UNIQUE_ID_license191, !31, !"__UNIQUE_ID_license191", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/thermal/st/st_thermal.c", i32 41, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @st_thermal_alloc_regfields._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @st_thermal_alloc_regfields._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/thermal/st/st_thermal.c", i32 55, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @st_thermal_sensor_on._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @st_thermal_sensor_on._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thermal/st/st_thermal.c", i32 61, i32 3}
!45 = !{ptr @st_thermal_sensor_on._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @st_thermal_sensor_on._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/thermal/st/st_thermal.c", i32 90, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @st_thermal_calibration._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @st_thermal_calibration._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/thermal/st/st_thermal.c", i32 102, i32 4}
!54 = !{ptr @st_thermal_calibration._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @st_thermal_calibration._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @st_tz_ops, !57, !"st_tz_ops", i1 false, i1 false}
!57 = !{!"../drivers/thermal/st/st_thermal.c", i32 173, i32 39}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/thermal/st/st_thermal.c", i32 130, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @st_thermal_get_temp.__UNIQUE_ID_ddebug187, !59, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/thermal/st/st_thermal.c", i32 148, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @st_thermal_get_trip_type._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @st_thermal_get_trip_type._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/thermal/st/st_thermal.c", i32 166, i32 3}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @st_thermal_get_trip_temp._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @st_thermal_get_trip_temp._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{i64 2148726825, i64 2148726830, i64 2148726843, i64 2148726887, i64 2148726921, i64 2148726942}
