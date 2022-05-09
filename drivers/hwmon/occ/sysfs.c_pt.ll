; ModuleID = '/llk/IR_all_yes/drivers/hwmon/occ/sysfs.c_pt.bc'
source_filename = "../drivers/hwmon/occ/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+occ_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_occ_shutdown\09\09\09\09"
module asm "\09.long\09__crc_occ_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_occ_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22occ_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_occ_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.occ = type { ptr, %struct.occ_response, %struct.occ_sensors, i32, i8, ptr, i32, %struct.mutex, ptr, ptr, %struct.attribute_group, [2 x ptr], i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.occ_response = type <{ i8, i8, i8, i16, [4089 x i8], i16 }>
%struct.occ_sensors = type { %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor }
%struct.occ_sensor = type { i8, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@sensor_dev_attr_occ_master = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @occ_sysfs_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_occ_active = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @occ_sysfs_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_occ_dvfs_overtemp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @occ_sysfs_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_occ_dvfs_power = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @occ_sysfs_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_occ_mem_throttle = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @occ_sysfs_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_occ_quick_pwr_drop = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @occ_sysfs_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_occs_present = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @occ_sysfs_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_occ_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @occ_error_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@occ_sysfs = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @occ_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_occ_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_occ_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_occ_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @occ_shutdown to i32), ptr @__kstrtab_occ_shutdown, ptr @__kstrtabns_occ_shutdown }, section "___ksymtab_gpl+occ_shutdown", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"occ_master\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"occ_active\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"occ_dvfs_overtemp\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"occ_dvfs_power\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"occ_mem_throttle\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"occ_quick_pwr_drop\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"occs_present\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"occ_error\00", [22 x i8] zeroinitializer }, align 32
@occ_attributes = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @sensor_dev_attr_occ_master, ptr @sensor_dev_attr_occ_active, ptr @sensor_dev_attr_occ_dvfs_overtemp, ptr @sensor_dev_attr_occ_dvfs_power, ptr @sensor_dev_attr_occ_mem_throttle, ptr @sensor_dev_attr_occ_quick_pwr_drop, ptr @sensor_dev_attr_occ_state, ptr @sensor_dev_attr_occs_present, ptr @dev_attr_occ_error, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_occ_state = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @occ_sysfs_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"occ_state\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_occ_master\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_occ_active\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_occ_dvfs_overtemp\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_occ_dvfs_power\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_occ_mem_throttle\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_occ_quick_pwr_drop\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_occs_present\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"dev_attr_occ_error\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"occ_sysfs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 106, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 83, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 70, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 84, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 85, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 86, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 87, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 88, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 90, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 91, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"occ_attributes\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 93, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_occ_state\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [29 x i8] c"../drivers/hwmon/occ/sysfs.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 89, i32 8 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_occ_shutdown, ptr @sensor_dev_attr_occ_master, ptr @sensor_dev_attr_occ_active, ptr @sensor_dev_attr_occ_dvfs_overtemp, ptr @sensor_dev_attr_occ_dvfs_power, ptr @sensor_dev_attr_occ_mem_throttle, ptr @sensor_dev_attr_occ_quick_pwr_drop, ptr @sensor_dev_attr_occs_present, ptr @dev_attr_occ_error, ptr @occ_sysfs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @occ_attributes, ptr @sensor_dev_attr_occ_state, ptr @.str.9], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_occ_master to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_occ_active to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_occ_dvfs_overtemp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_occ_dvfs_power to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_occ_mem_throttle to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_occ_quick_pwr_drop to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_occs_present to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_occ_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_sysfs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_attributes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_occ_state to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @occ_sysfs_poll_done(ptr noundef %occ) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 4
  %hwmon = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 8
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %done

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %prev_stat = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 17
  %4 = ptrtoint ptr %prev_stat to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %prev_stat, align 4
  %6 = xor i8 %5, %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.not = icmp sgt i8 %6, -1
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %7 = load ptr, ptr @sensor_dev_attr_occ_master, align 4
  %8 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %occ, align 4
  tail call void @sysfs_notify(ptr noundef %9, ptr noundef null, ptr noundef %7) #2
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %12 = ptrtoint ptr %prev_stat to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %prev_stat, align 4
  %14 = xor i8 %13, %11
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp12.not = icmp eq i8 %15, 0
  br i1 %cmp12.not, label %if.end5.if.end17_crit_edge, label %if.then14

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end17

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  %16 = load ptr, ptr @sensor_dev_attr_occ_active, align 4
  %17 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %occ, align 4
  tail call void @sysfs_notify(ptr noundef %18, ptr noundef null, ptr noundef %16) #2
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end5.if.end17_crit_edge
  %ext_status = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 4, i32 1
  %19 = ptrtoint ptr %ext_status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ext_status, align 1
  %prev_ext_stat = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 18
  %21 = ptrtoint ptr %prev_ext_stat to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %prev_ext_stat, align 1
  %23 = xor i8 %22, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp22.not = icmp sgt i8 %23, -1
  br i1 %cmp22.not, label %if.end17.if.end27_crit_edge, label %if.then24

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end27

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #4
  %24 = load ptr, ptr @sensor_dev_attr_occ_dvfs_overtemp, align 4
  %25 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %occ, align 4
  tail call void @sysfs_notify(ptr noundef %26, ptr noundef null, ptr noundef %24) #2
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end17.if.end27_crit_edge
  %27 = ptrtoint ptr %ext_status to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ext_status, align 1
  %29 = ptrtoint ptr %prev_ext_stat to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %prev_ext_stat, align 1
  %31 = xor i8 %30, %28
  %32 = and i8 %31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp34.not = icmp eq i8 %32, 0
  br i1 %cmp34.not, label %if.end27.if.end39_crit_edge, label %if.then36

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end39

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #4
  %33 = load ptr, ptr @sensor_dev_attr_occ_dvfs_power, align 4
  %34 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %occ, align 4
  tail call void @sysfs_notify(ptr noundef %35, ptr noundef null, ptr noundef %33) #2
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end27.if.end39_crit_edge
  %36 = ptrtoint ptr %ext_status to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ext_status, align 1
  %38 = ptrtoint ptr %prev_ext_stat to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %prev_ext_stat, align 1
  %40 = xor i8 %39, %37
  %41 = and i8 %40, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp46.not = icmp eq i8 %41, 0
  br i1 %cmp46.not, label %if.end39.if.end51_crit_edge, label %if.then48

if.end39.if.end51_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end51

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #4
  %42 = load ptr, ptr @sensor_dev_attr_occ_mem_throttle, align 4
  %43 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %occ, align 4
  tail call void @sysfs_notify(ptr noundef %44, ptr noundef null, ptr noundef %42) #2
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end39.if.end51_crit_edge
  %45 = ptrtoint ptr %ext_status to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ext_status, align 1
  %47 = ptrtoint ptr %prev_ext_stat to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %prev_ext_stat, align 1
  %49 = xor i8 %48, %46
  %50 = and i8 %49, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp58.not = icmp eq i8 %50, 0
  br i1 %cmp58.not, label %if.end51.if.end63_crit_edge, label %if.then60

if.end51.if.end63_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end63

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #4
  %51 = load ptr, ptr @sensor_dev_attr_occ_quick_pwr_drop, align 4
  %52 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %occ, align 4
  tail call void @sysfs_notify(ptr noundef %53, ptr noundef null, ptr noundef %51) #2
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end51.if.end63_crit_edge
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %tobool67.not = icmp sgt i8 %55, -1
  br i1 %tobool67.not, label %if.end63.if.end75_crit_edge, label %land.lhs.true

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end75

land.lhs.true:                                    ; preds = %if.end63
  %occs_present = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 4, i32 2
  %56 = ptrtoint ptr %occs_present to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %occs_present, align 1
  %prev_occs_present = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 19
  %58 = ptrtoint ptr %prev_occs_present to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %prev_occs_present, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp70.not = icmp eq i8 %57, %59
  br i1 %cmp70.not, label %land.lhs.true.if.end75_crit_edge, label %if.then72

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end75

if.then72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %60 = load ptr, ptr @sensor_dev_attr_occs_present, align 4
  %61 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %occ, align 4
  tail call void @sysfs_notify(ptr noundef %62, ptr noundef null, ptr noundef %60) #2
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %land.lhs.true.if.end75_crit_edge, %if.end63.if.end75_crit_edge
  %error = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 12
  %63 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool76.not = icmp eq i32 %64, 0
  br i1 %tobool76.not, label %if.end75.done_crit_edge, label %land.lhs.true77

if.end75.done_crit_edge:                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #4
  br label %done

land.lhs.true77:                                  ; preds = %if.end75
  %prev_error = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 16
  %65 = ptrtoint ptr %prev_error to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %prev_error, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp79.not = icmp eq i32 %64, %66
  br i1 %cmp79.not, label %land.lhs.true77.done_crit_edge, label %if.then81

land.lhs.true77.done_crit_edge:                   ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #4
  br label %done

if.then81:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #4
  %67 = load ptr, ptr @dev_attr_occ_error, align 4
  %68 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %occ, align 4
  tail call void @sysfs_notify(ptr noundef %69, ptr noundef null, ptr noundef %67) #2
  br label %done

done:                                             ; preds = %if.then81, %land.lhs.true77.done_crit_edge, %if.end75.done_crit_edge, %entry.done_crit_edge
  %error85 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 12
  %70 = ptrtoint ptr %error85 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %error85, align 4
  %prev_error86 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 16
  %72 = ptrtoint ptr %prev_error86 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %prev_error86, align 4
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %data, align 1
  %prev_stat88 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 17
  %75 = ptrtoint ptr %prev_stat88 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %prev_stat88, align 4
  %ext_status89 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 4, i32 1
  %76 = ptrtoint ptr %ext_status89 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ext_status89, align 1
  %prev_ext_stat90 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 18
  %78 = ptrtoint ptr %prev_ext_stat90 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %prev_ext_stat90, align 1
  %occs_present91 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 4, i32 2
  %79 = ptrtoint ptr %occs_present91 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %occs_present91, align 1
  %prev_occs_present92 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 19
  %81 = ptrtoint ptr %prev_occs_present92 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %prev_occs_present92, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @occ_setup_sysfs(ptr nocapture noundef readonly %occ) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %occ, align 4
  %call = tail call i32 @sysfs_create_group(ptr noundef %1, ptr noundef nonnull @occ_sysfs) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @occ_shutdown(ptr nocapture noundef readonly %occ) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %occ, align 4
  tail call void @sysfs_remove_group(ptr noundef %1, ptr noundef nonnull @occ_sysfs) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_sysfs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @occ_update_response(ptr noundef %1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 1, i32 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb13
    i32 3, label %sw.bb21
    i32 4, label %sw.bb30
    i32 5, label %sw.bb39
    i32 6, label %sw.bb48
    i32 7, label %sw.bb50
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  %.lobit163 = lshr i8 %6, 7
  %7 = zext i8 %.lobit163 to i32
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  %10 = and i8 %9, 1
  %11 = zext i8 %10 to i32
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %ext_status = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 1, i32 4, i32 1
  %12 = ptrtoint ptr %ext_status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ext_status, align 1
  %.lobit162 = lshr i8 %13, 7
  %14 = zext i8 %.lobit162 to i32
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %ext_status22 = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 1, i32 4, i32 1
  %15 = ptrtoint ptr %ext_status22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ext_status22, align 1
  %17 = lshr i8 %16, 6
  %.lobit161 = and i8 %17, 1
  %18 = zext i8 %.lobit161 to i32
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %ext_status31 = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 1, i32 4, i32 1
  %19 = ptrtoint ptr %ext_status31 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ext_status31, align 1
  %21 = lshr i8 %20, 5
  %.lobit160 = and i8 %21, 1
  %22 = zext i8 %.lobit160 to i32
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %ext_status40 = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 1, i32 4, i32 1
  %23 = ptrtoint ptr %ext_status40 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ext_status40, align 1
  %25 = lshr i8 %24, 4
  %.lobit159 = and i8 %25, 1
  %26 = zext i8 %.lobit159 to i32
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %occ_state = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 1, i32 4, i32 4
  %27 = ptrtoint ptr %occ_state to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %occ_state, align 1
  %conv49 = zext i8 %28 to i32
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool54.not = icmp sgt i8 %30, -1
  br i1 %tobool54.not, label %sw.bb50.sw.epilog_crit_edge, label %cond.false

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #4
  %occs_present = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 1, i32 4, i32 2
  %31 = ptrtoint ptr %occs_present to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %occs_present, align 1
  %conv127 = zext i8 %32 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv127) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false, %sw.bb50.sw.epilog_crit_edge, %sw.bb48, %sw.bb39, %sw.bb30, %sw.bb21, %sw.bb13, %sw.bb4, %sw.bb
  %val.0 = phi i32 [ %conv49, %sw.bb48 ], [ %26, %sw.bb39 ], [ %22, %sw.bb30 ], [ %18, %sw.bb21 ], [ %14, %sw.bb13 ], [ %11, %sw.bb4 ], [ %7, %sw.bb ], [ %call.i, %cond.false ], [ 1, %sw.bb50.sw.epilog_crit_edge ]
  %call130 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %val.0) #2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call130, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @occ_update_response(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_error_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @occ_update_response(ptr noundef %1) #2
  %error = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %3) #2
  ret i32 %call2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__ksymtab_occ_shutdown, !1, !"__ksymtab_occ_shutdown", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/occ/sysfs.c", i32 188, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hwmon/occ/sysfs.c", i32 83, i32 8}
!4 = !{ptr @sensor_dev_attr_occ_master, !3, !"sensor_dev_attr_occ_master", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/occ/sysfs.c", i32 70, i32 25}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/occ/sysfs.c", i32 84, i32 8}
!9 = !{ptr @sensor_dev_attr_occ_active, !8, !"sensor_dev_attr_occ_active", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/occ/sysfs.c", i32 85, i32 8}
!12 = !{ptr @sensor_dev_attr_occ_dvfs_overtemp, !11, !"sensor_dev_attr_occ_dvfs_overtemp", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/occ/sysfs.c", i32 86, i32 8}
!15 = !{ptr @sensor_dev_attr_occ_dvfs_power, !14, !"sensor_dev_attr_occ_dvfs_power", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/occ/sysfs.c", i32 87, i32 8}
!18 = !{ptr @sensor_dev_attr_occ_mem_throttle, !17, !"sensor_dev_attr_occ_mem_throttle", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/occ/sysfs.c", i32 88, i32 8}
!21 = !{ptr @sensor_dev_attr_occ_quick_pwr_drop, !20, !"sensor_dev_attr_occ_quick_pwr_drop", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/occ/sysfs.c", i32 90, i32 8}
!24 = !{ptr @sensor_dev_attr_occs_present, !23, !"sensor_dev_attr_occs_present", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/occ/sysfs.c", i32 91, i32 8}
!27 = !{ptr @dev_attr_occ_error, !26, !"dev_attr_occ_error", i1 false, i1 false}
!28 = !{ptr @occ_sysfs, !29, !"occ_sysfs", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/occ/sysfs.c", i32 106, i32 37}
!30 = !{ptr @occ_attributes, !31, !"occ_attributes", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/occ/sysfs.c", i32 93, i32 26}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/occ/sysfs.c", i32 89, i32 8}
!34 = !{ptr @sensor_dev_attr_occ_state, !33, !"sensor_dev_attr_occ_state", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
