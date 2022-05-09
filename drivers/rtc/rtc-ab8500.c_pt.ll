; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ab8500.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ab8500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_ab8500__289_412_ab8500_rtc_driver_init6 = internal global ptr @ab8500_rtc_driver_init, section ".initcall6.init", align 4
@ab8500_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_rtc_probe, ptr @ab8500_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ab85xx_rtc_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ab8500_rtc_driver_exit = internal global ptr @ab8500_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [85 x i8] c"rtc_ab8500.author=Virupax Sadashivpetimath <virupax.sadashivpetimath@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [41 x i8] c"rtc_ab8500.description=AB8500 RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [39 x i8] c"rtc_ab8500.file=drivers/rtc/rtc-ab8500\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"rtc_ab8500.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ab8500-rtc\00", [21 x i8] zeroinitializer }, align 32
@ab85xx_rtc_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ab8500-rtc\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ab8500_rtc_ops to i32) }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALARM\00", [26 x i8] zeroinitializer }, align 32
@ab8500_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RTC supply failure\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ab8500_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-ab8500.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_rtc_probe._entry_ptr = internal global ptr @ab8500_rtc_probe._entry, section ".printk_index", align 4
@ab8500_rtc_sysfs_files = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ab8500_rtc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtc_alarm_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_ab8500\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtc_alarm_handler\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ab8500_rtc_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_rtc_calibration, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_rtc_calibration = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ab8500_sysfs_show_rtc_calibration, ptr @ab8500_sysfs_store_rtc_calibration }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtc_calibration\00", [16 x i8] zeroinitializer }, align 32
@ab8500_sysfs_show_rtc_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read RTC calibration attribute\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ab8500_sysfs_show_rtc_calibration\00", [62 x i8] zeroinitializer }, align 32
@ab8500_sysfs_show_rtc_calibration._entry_ptr = internal global ptr @ab8500_sysfs_show_rtc_calibration._entry, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %i \00", [27 x i8] zeroinitializer }, align 32
@ab8500_sysfs_store_rtc_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to store RTC calibration attribute\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ab8500_sysfs_store_rtc_calibration\00", [61 x i8] zeroinitializer }, align 32
@ab8500_sysfs_store_rtc_calibration._entry_ptr = internal global ptr @ab8500_sysfs_store_rtc_calibration._entry, section ".printk_index", align 4
@ab8500_rtc_set_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RtcCalibration value outside permitted range\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8500_rtc_set_calibration\00", [37 x i8] zeroinitializer }, align 32
@ab8500_rtc_set_calibration._entry_ptr = internal global ptr @ab8500_rtc_set_calibration._entry, section ".printk_index", align 4
@ab8500_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ab8500_rtc_read_time, ptr @ab8500_rtc_set_time, ptr @ab8500_rtc_read_alarm, ptr @ab8500_rtc_set_alarm, ptr null, ptr @ab8500_rtc_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"ab8500_rtc_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 403, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 405, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"ab85xx_rtc_ids\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 326, i32 40 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 340, i32 38 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 360, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"ab8500_rtc_sysfs_files\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 303, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 312, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"ab8500_rtc_attrs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 298, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"dev_attr_rtc_calibration\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 294, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 286, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 287, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 291, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 268, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 269, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 219, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"ab8500_rtc_ops\00", align 1
@___asan_gen_.108 = private constant [28 x i8] c"../drivers/rtc/rtc-ab8500.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 318, i32 35 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_ab8500_rtc_driver_exit, ptr @__initcall__kmod_rtc_ab8500__289_412_ab8500_rtc_driver_init6, ptr @ab8500_rtc_driver_exit, ptr @ab8500_rtc_probe._entry, ptr @ab8500_rtc_probe._entry_ptr, ptr @ab8500_rtc_set_calibration._entry, ptr @ab8500_rtc_set_calibration._entry_ptr, ptr @ab8500_sysfs_show_rtc_calibration._entry, ptr @ab8500_sysfs_show_rtc_calibration._entry_ptr, ptr @ab8500_sysfs_store_rtc_calibration._entry, ptr @ab8500_sysfs_store_rtc_calibration._entry_ptr, ptr @ab8500_rtc_driver, ptr @.str, ptr @ab85xx_rtc_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ab8500_rtc_sysfs_files, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ab8500_rtc_attrs, ptr @dev_attr_rtc_calibration, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ab8500_rtc_ops], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab85xx_rtc_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_rtc_sysfs_files to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_rtc_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rtc_calibration to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_sysfs_show_rtc_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_sysfs_store_rtc_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_rtc_set_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ab8500_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rtc_ctrl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rtc_ctrl) #6
  %2 = ptrtoint ptr %rtc_ctrl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rtc_ctrl, align 1, !annotation !74
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #6
  %call6 = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 11, ptr noundef nonnull %rtc_ctrl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %3 = ptrtoint ptr %rtc_ctrl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rtc_ctrl, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call14 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %call16 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %9 = inttoptr i32 %8 to ptr
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call16, i32 0, i32 3
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ops, align 8
  %call22 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef null, ptr noundef nonnull @rtc_alarm_handler, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %call16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.cleanup_crit_edge, label %if.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %call28 = call i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %call) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call16, ptr %driver_data.i.i, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %call16, i32 0, i32 21
  call void @_set_bit(i32 noundef 1, ptr noundef %features) #6
  call void @_clear_bit(i32 noundef 4, ptr noundef %features) #6
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call16, i32 0, i32 23
  %12 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1006632959, ptr %range_max, align 8
  %start_secs = getelementptr inbounds %struct.rtc_device, ptr %call16, i32 0, i32 24
  %13 = ptrtoint ptr %start_secs to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 946684800, ptr %start_secs, align 8
  %set_start_time = getelementptr inbounds %struct.rtc_device, ptr %call16, i32 0, i32 26
  %14 = ptrtoint ptr %set_start_time to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %set_start_time, align 8
  %call31 = call i32 @rtc_add_group(ptr noundef %call16, ptr noundef nonnull @ab8500_rtc_sysfs_files) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end26.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then18, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then18 ], [ %call35, %if.end34 ], [ -19, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call31, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rtc_ctrl) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_rtc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #6
  %call = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_alarm_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtc_alarm_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtc_alarm_handler, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtc_alarm_handler.__UNIQUE_ID_ddebug288, ptr noundef %data, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @rtc_update_irq(ptr noundef %data, i32 noundef 1, i32 noundef 160) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_sysfs_show_rtc_calibration(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %rtccal.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rtccal.i) #6
  %0 = ptrtoint ptr %rtccal.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %rtccal.i, align 1
  %call.i = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 14, ptr noundef nonnull %rtccal.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rtccal.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %1 = call ptr @memcpy(ptr %buf, ptr @.str.13, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %rtccal.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rtccal.i, align 1
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and6.i = and i32 %conv.i, 127
  %sub.i = sub nsw i32 0, %and6.i
  %sub.sink.i = select i1 %tobool.not.i, i32 %and6.i, i32 %sub.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rtccal.i) #6
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %sub.sink.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_sysfs_store_rtc_calibration(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %calibration = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %calibration) #6
  %0 = ptrtoint ptr %calibration to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %calibration, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.15, ptr noundef nonnull %calibration)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %calibration to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %calibration, align 4
  %3 = add i32 %2, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %3)
  %4 = icmp ult i32 %3, -255
  br i1 %4, label %ab8500_rtc_set_calibration.exit.thread, label %ab8500_rtc_set_calibration.exit

ab8500_rtc_set_calibration.exit.thread:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

ab8500_rtc_set_calibration.exit:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = trunc i32 %2 to i8
  %conv.i = and i8 %5, 127
  %6 = sub nsw i8 0, %5
  %conv5.i = or i8 %6, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp313.i = icmp slt i32 %2, 0
  %rtccal.0.i = select i1 %cmp313.i, i8 %conv5.i, i8 %conv.i
  %call.i = call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 14, i8 noundef zeroext %rtccal.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %ab8500_rtc_set_calibration.exit, %ab8500_rtc_set_calibration.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %ab8500_rtc_set_calibration.exit.thread ], [ %spec.select, %ab8500_rtc_set_calibration.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %calibration) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_rtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #6
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %value, align 1, !annotation !74
  %call = tail call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %add.neg = sub i32 -100, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub52 = add i32 %add.neg, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub52)
  %cmp253 = icmp slt i32 %sub52, 0
  br i1 %cmp253, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 2, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %while.body.cleanup_crit_edge, label %if.end6

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end6.while.end_crit_edge, label %if.end8

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end8:                                          ; preds = %if.end6
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %6
  %cmp2 = icmp slt i32 %sub, 0
  br i1 %cmp2, label %if.end8.while.body_crit_edge, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %if.end6.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %call11 = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 7, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %while.end.cleanup_crit_edge, label %if.end15

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %while.end
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %value, align 1
  %call11.1 = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 6, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %cmp12.1 = icmp slt i32 %call11.1, 0
  br i1 %cmp12.1, label %if.end15.cleanup_crit_edge, label %if.end15.1

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.1:                                       ; preds = %if.end15
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value, align 1
  %call11.2 = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 5, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.2)
  %cmp12.2 = icmp slt i32 %call11.2, 0
  br i1 %cmp12.2, label %if.end15.1.cleanup_crit_edge, label %if.end15.2

if.end15.1.cleanup_crit_edge:                     ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.2:                                       ; preds = %if.end15.1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value, align 1
  %call11.3 = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.3)
  %cmp12.3 = icmp slt i32 %call11.3, 0
  br i1 %cmp12.3, label %if.end15.2.cleanup_crit_edge, label %if.end15.3

if.end15.2.cleanup_crit_edge:                     ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.3:                                       ; preds = %if.end15.2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value, align 1
  %call11.4 = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 3, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.4)
  %cmp12.4 = icmp slt i32 %call11.4, 0
  br i1 %cmp12.4, label %if.end15.3.cleanup_crit_edge, label %if.end15.4

if.end15.3.cleanup_crit_edge:                     ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.4:                                       ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #8
  %conv18 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv18, 16
  %conv20 = zext i8 %10 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %or = or i32 %shl21, %shl
  %conv23 = zext i8 %12 to i32
  %or24 = or i32 %or, %conv23
  %15 = lshr i8 %14, 2
  %div = zext i8 %15 to i32
  %mul = mul nuw nsw i32 %or24, 60
  %add31 = add nuw nsw i32 %mul, %div
  %conv32 = zext i32 %add31 to i64
  call void @rtc_time64_to_tm(i64 noundef %conv32, ptr noundef %tm) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15.4, %if.end15.3.cleanup_crit_edge, %if.end15.2.cleanup_crit_edge, %if.end15.1.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15.4 ], [ %call, %entry.cleanup_crit_edge ], [ %call11, %while.end.cleanup_crit_edge ], [ %call11.1, %if.end15.cleanup_crit_edge ], [ %call11.2, %if.end15.1.cleanup_crit_edge ], [ %call11.3, %if.end15.2.cleanup_crit_edge ], [ %call11.4, %if.end15.3.cleanup_crit_edge ], [ %call3, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_rtc_set_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %conv = trunc i64 %call to i32
  %conv.frozen = freeze i32 %conv
  %div = udiv i32 %conv.frozen, 60
  %0 = mul i32 %div, 60
  %rem.decomposed = sub i32 %conv.frozen, %0
  %rem.tr = trunc i32 %rem.decomposed to i8
  %conv4 = shl nuw i8 %rem.tr, 2
  %conv7 = trunc i32 %div to i8
  %shr13 = lshr i32 %div, 16
  %conv15 = trunc i32 %shr13 to i8
  %call20 = tail call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 7, i8 noundef zeroext %conv15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %entry
  %shr9 = lshr i32 %div, 8
  %conv11 = trunc i32 %shr9 to i8
  %call20.1 = tail call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 6, i8 noundef zeroext %conv11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1)
  %cmp21.1 = icmp slt i32 %call20.1, 0
  br i1 %cmp21.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call20.2 = tail call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 5, i8 noundef zeroext %conv7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.2)
  %cmp21.2 = icmp slt i32 %call20.2, 0
  br i1 %cmp21.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call20.3 = tail call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 4, i8 noundef zeroext %conv4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.3)
  %cmp21.3 = icmp slt i32 %call20.3, 0
  br i1 %cmp21.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %call20.4 = tail call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.4)
  %cmp21.4 = icmp slt i32 %call20.4, 0
  br i1 %cmp21.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 2) #6
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %for.cond.4 ], [ %call20, %entry.cleanup_crit_edge ], [ %call20.1, %for.cond.cleanup_crit_edge ], [ %call20.2, %for.cond.1.cleanup_crit_edge ], [ %call20.3, %for.cond.2.cleanup_crit_edge ], [ %call20.4, %for.cond.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_rtc_read_alarm(ptr noundef %dev, ptr noundef %alarm) #2 align 64 {
entry:
  %rtc_ctrl = alloca i8, align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rtc_ctrl) #6
  %0 = ptrtoint ptr %rtc_ctrl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rtc_ctrl, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #6
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %value, align 1, !annotation !74
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 11, ptr noundef nonnull %rtc_ctrl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rtc_ctrl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rtc_ctrl, align 1
  %4 = lshr i8 %3, 2
  %.lobit = and i8 %4, 1
  %5 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.lobit, ptr %alarm, align 4
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pending, align 1
  %call7 = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 10, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %value, align 1
  %call7.1 = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 9, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %cmp8.1 = icmp slt i32 %call7.1, 0
  br i1 %cmp8.1, label %if.end11.cleanup_crit_edge, label %if.end11.1

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.1:                                       ; preds = %if.end11
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value, align 1
  %call7.2 = call i32 @abx500_get_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 8, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %cmp8.2 = icmp slt i32 %call7.2, 0
  br i1 %cmp8.2, label %if.end11.1.cleanup_crit_edge, label %if.end11.2

if.end11.1.cleanup_crit_edge:                     ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.2:                                       ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value, align 1
  %conv14 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv14, 16
  %conv16 = zext i8 %10 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %or = or i32 %shl17, %shl
  %conv19 = zext i8 %12 to i32
  %or20 = or i32 %or, %conv19
  %mul = mul nuw nsw i32 %or20, 60
  %conv21 = zext i32 %mul to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %conv21, ptr noundef %time) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11.2, %if.end11.1.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11.2 ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call7.1, %if.end11.cleanup_crit_edge ], [ %call7.2, %if.end11.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rtc_ctrl) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_rtc_set_alarm(ptr noundef %dev, ptr noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %conv = trunc i64 %call to i32
  %div = udiv i32 %conv, 60
  %conv2 = trunc i32 %div to i8
  %shr6 = lshr i32 %div, 16
  %conv8 = trunc i32 %shr6 to i8
  %call13 = tail call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 10, i8 noundef zeroext %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %entry
  %shr = lshr i32 %div, 8
  %conv4 = trunc i32 %shr to i8
  %call13.1 = tail call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 9, i8 noundef zeroext %conv4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %cmp14.1 = icmp slt i32 %call13.1, 0
  br i1 %cmp14.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call13.2 = tail call i32 @abx500_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 8, i8 noundef zeroext %conv2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.2)
  %cmp14.2 = icmp slt i32 %call13.2, 0
  br i1 %cmp14.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %conv.i = select i1 %tobool.not.i, i8 0, i8 4
  %call.i = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 11, i8 noundef zeroext 4, i8 noundef zeroext %conv.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %for.cond.2 ], [ %call13, %entry.cleanup_crit_edge ], [ %call13.1, %for.cond.cleanup_crit_edge ], [ %call13.2, %for.cond.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_rtc_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %conv = select i1 %tobool.not, i8 0, i8 4
  %call = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 11, i8 noundef zeroext 4, i8 noundef zeroext %conv) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_rtc_ab8500__289_412_ab8500_rtc_driver_init6, !1, !"__initcall__kmod_rtc_ab8500__289_412_ab8500_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ab8500.c", i32 412, i32 1}
!2 = !{ptr @__exitcall_ab8500_rtc_driver_exit, !1, !"__exitcall_ab8500_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ab8500.c", i32 414, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ab8500.c", i32 415, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ab8500.c", i32 416, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ab8500.c", i32 405, i32 11}
!12 = !{ptr @ab8500_rtc_driver, !13, !"ab8500_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ab8500.c", i32 403, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ab8500.c", i32 340, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-ab8500.c", i32 360, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ab8500_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ab8500_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-ab8500.c", i32 312, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtc_alarm_handler.__UNIQUE_ID_ddebug288, !25, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!29 = !{ptr @ab8500_rtc_sysfs_files, !30, !"ab8500_rtc_sysfs_files", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ab8500.c", i32 303, i32 37}
!31 = !{ptr @ab8500_rtc_attrs, !32, !"ab8500_rtc_attrs", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-ab8500.c", i32 298, i32 26}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-ab8500.c", i32 294, i32 8}
!35 = !{ptr @dev_attr_rtc_calibration, !34, !"dev_attr_rtc_calibration", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-ab8500.c", i32 286, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ab8500_sysfs_show_rtc_calibration._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ab8500_sysfs_show_rtc_calibration._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-ab8500.c", i32 287, i32 16}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-ab8500.c", i32 291, i32 22}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-ab8500.c", i32 268, i32 18}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-ab8500.c", i32 269, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ab8500_sysfs_store_rtc_calibration._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ab8500_sysfs_store_rtc_calibration._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-ab8500.c", i32 219, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ab8500_rtc_set_calibration._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ab8500_rtc_set_calibration._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ab85xx_rtc_ids, !58, !"ab85xx_rtc_ids", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-ab8500.c", i32 326, i32 40}
!59 = !{ptr @ab8500_rtc_ops, !60, !"ab8500_rtc_ops", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-ab8500.c", i32 318, i32 35}
!61 = distinct !{null, !62, !"ab8500_rtc_time_regs", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-ab8500.c", i32 50, i32 17}
!63 = distinct !{null, !64, !"ab8500_rtc_alarm_regs", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-ab8500.c", i32 56, i32 17}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2148962288, i64 2148962293, i64 2148962306, i64 2148962350, i64 2148962384, i64 2148962405}
