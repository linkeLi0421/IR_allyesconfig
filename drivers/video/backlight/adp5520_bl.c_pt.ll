; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/adp5520_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/adp5520_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.adp5520_bl = type { ptr, ptr, %struct.mutex, i32, i32, i32 }
%struct.adp5520_backlight_platform_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_adp5520_bl__301_383_adp5520_bl_driver_init6 = internal global ptr @adp5520_bl_driver_init, section ".initcall6.init", align 4
@adp5520_bl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adp5520_bl_probe, ptr @adp5520_bl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adp5520_bl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adp5520_bl_driver_exit = internal global ptr @adp5520_bl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [67 x i8] c"adp5520_bl.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [52 x i8] c"adp5520_bl.description=ADP5520(01) Backlight Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [51 x i8] c"adp5520_bl.file=drivers/video/backlight/adp5520_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [23 x i8] c"adp5520_bl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [44 x i8] c"adp5520_bl.alias=platform:adp5520-backlight\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adp5520-backlight\00", [46 x i8] zeroinitializer }, align 32
@adp5520_bl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @adp5520_bl_suspend, ptr @adp5520_bl_resume, ptr @adp5520_bl_suspend, ptr @adp5520_bl_resume, ptr @adp5520_bl_suspend, ptr @adp5520_bl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@adp5520_bl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adp5520_bl_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/backlight/adp5520_bl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp5520_bl_probe._entry_ptr = internal global ptr @adp5520_bl_probe._entry, section ".printk_index", align 4
@adp5520_bl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@adp5520_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @adp5520_bl_update_status, ptr @adp5520_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@adp5520_bl_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@adp5520_bl_probe._entry_ptr.9 = internal global ptr @adp5520_bl_probe._entry.7, section ".printk_index", align 4
@adp5520_bl_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adp5520_bl_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adp5520_bl_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to register sysfs\0A\00", [38 x i8] zeroinitializer }, align 32
@adp5520_bl_probe._entry_ptr.12 = internal global ptr @adp5520_bl_probe._entry.10, section ".printk_index", align 4
@adp5520_bl_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to setup\0A\00", [47 x i8] zeroinitializer }, align 32
@adp5520_bl_probe._entry_ptr.15 = internal global ptr @adp5520_bl_probe._entry.13, section ".printk_index", align 4
@adp5520_bl_attributes = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_dark_max, ptr @dev_attr_dark_dim, ptr @dev_attr_office_max, ptr @dev_attr_office_dim, ptr @dev_attr_daylight_max, ptr @dev_attr_daylight_dim, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_dark_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp5520_bl_dark_max_show, ptr @adp5520_bl_dark_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dark_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp5520_bl_dark_dim_show, ptr @adp5520_bl_dark_dim_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_office_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp5520_bl_office_max_show, ptr @adp5520_bl_office_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_office_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp5520_bl_office_dim_show, ptr @adp5520_bl_office_dim_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_daylight_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp5520_bl_daylight_max_show, ptr @adp5520_bl_daylight_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_daylight_dim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adp5520_bl_daylight_dim_show, ptr @adp5520_bl_daylight_dim_store }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dark_max\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dark_dim\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"office_max\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"office_dim\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"daylight_max\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"daylight_dim\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"adp5520_bl_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 374, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 376, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"adp5520_bl_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 371, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 295, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 302, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"adp5520_bl_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 82, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 311, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"adp5520_bl_attr_group\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 276, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 321, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 328, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"adp5520_bl_attributes\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 266, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"dev_attr_dark_max\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"dev_attr_dark_dim\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c"dev_attr_office_max\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c"dev_attr_office_dim\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"dev_attr_daylight_max\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"dev_attr_daylight_dim\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 181, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 148, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 233, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 196, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 248, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 218, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [40 x i8] c"../drivers/video/backlight/adp5520_bl.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 263, i32 8 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_adp5520_bl_driver_exit, ptr @__initcall__kmod_adp5520_bl__301_383_adp5520_bl_driver_init6, ptr @adp5520_bl_driver_exit, ptr @adp5520_bl_probe._entry, ptr @adp5520_bl_probe._entry.10, ptr @adp5520_bl_probe._entry.13, ptr @adp5520_bl_probe._entry.7, ptr @adp5520_bl_probe._entry_ptr, ptr @adp5520_bl_probe._entry_ptr.12, ptr @adp5520_bl_probe._entry_ptr.15, ptr @adp5520_bl_probe._entry_ptr.9, ptr @adp5520_bl_driver, ptr @.str, ptr @adp5520_bl_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @adp5520_bl_probe.__key, ptr @.str.6, ptr @adp5520_bl_ops, ptr @.str.8, ptr @adp5520_bl_attr_group, ptr @.str.11, ptr @.str.14, ptr @adp5520_bl_attributes, ptr @dev_attr_dark_max, ptr @dev_attr_dark_dim, ptr @dev_attr_office_max, ptr @dev_attr_office_dim, ptr @dev_attr_daylight_max, ptr @dev_attr_daylight_dim, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_bl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_bl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_bl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_bl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_bl_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_bl_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_bl_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_bl_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_bl_attributes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dark_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dark_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_office_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_office_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_daylight_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_daylight_dim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adp5520_bl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp5520_bl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @adp5520_bl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #6
  %0 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %1 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.adp5520_bl, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %pdata, align 4
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %id9 = getelementptr inbounds %struct.adp5520_bl, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %id9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %id9, align 4
  %current_brightness = getelementptr inbounds %struct.adp5520_bl, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %current_brightness, align 4
  %lock = getelementptr inbounds %struct.adp5520_bl, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @adp5520_bl_probe.__key) #6
  %12 = call ptr @memset(ptr %props, i32 0, i32 28)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %1, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 127, ptr %0, align 4
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %call15 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %16, ptr noundef %18, ptr noundef nonnull %call.i, ptr noundef nonnull @adp5520_bl_ops, ptr noundef nonnull %props) #6
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %19 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %20 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 127, ptr %call15, align 8
  %21 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata, align 4
  %en_ambl_sens = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %en_ambl_sens to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %en_ambl_sens, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.end23.if.end36_crit_edge, label %if.end29

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end29:                                         ; preds = %if.end23
  %dev27 = getelementptr inbounds %struct.backlight_device, ptr %call15, i32 0, i32 6
  %call28 = call i32 @sysfs_create_group(ptr noundef %dev27, ptr noundef nonnull @adp5520_bl_attr_group) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %if.end29.if.end36_crit_edge, label %do.end34

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end29.if.end36_crit_edge, %if.end23.if.end36_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call15, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %call15, i32 0, i32 6, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %pdata2.i = getelementptr inbounds %struct.adp5520_bl, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %pdata2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata2.i, align 4
  %l1_daylight_max.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %l1_daylight_max.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %l1_daylight_max.i, align 1
  %call3.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 5, i8 noundef zeroext %33) #6
  %l1_daylight_dim.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 6
  %34 = ptrtoint ptr %l1_daylight_dim.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %l1_daylight_dim.i, align 1
  %call4.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 6, i8 noundef zeroext %35) #6
  %or5.i = or i32 %call4.i, %call3.i
  %en_ambl_sens.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 3
  %36 = ptrtoint ptr %en_ambl_sens.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %en_ambl_sens.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.end36.adp5520_bl_setup.exit_crit_edge, label %if.then.i

if.end36.adp5520_bl_setup.exit_crit_edge:         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_bl_setup.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %l1_daylight_max.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %l1_daylight_max.i, align 1
  %conv.i = zext i8 %39 to i32
  %cached_daylight_max.i = getelementptr inbounds %struct.adp5520_bl, ptr %27, i32 0, i32 3
  %40 = ptrtoint ptr %cached_daylight_max.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.i, ptr %cached_daylight_max.i, align 4
  %l2_office_max.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 7
  %41 = ptrtoint ptr %l2_office_max.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %l2_office_max.i, align 1
  %call7.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 7, i8 noundef zeroext %42) #6
  %or8.i = or i32 %call7.i, %or5.i
  %l2_office_dim.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 8
  %43 = ptrtoint ptr %l2_office_dim.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %l2_office_dim.i, align 1
  %call9.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 8, i8 noundef zeroext %44) #6
  %or10.i = or i32 %or8.i, %call9.i
  %l3_dark_max.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 9
  %45 = ptrtoint ptr %l3_dark_max.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %l3_dark_max.i, align 1
  %call11.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 9, i8 noundef zeroext %46) #6
  %or12.i = or i32 %or10.i, %call11.i
  %l3_dark_dim.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 10
  %47 = ptrtoint ptr %l3_dark_dim.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %l3_dark_dim.i, align 1
  %call13.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 10, i8 noundef zeroext %48) #6
  %or14.i = or i32 %or12.i, %call13.i
  %l2_trip.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 11
  %49 = ptrtoint ptr %l2_trip.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %l2_trip.i, align 1
  %call15.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 13, i8 noundef zeroext %50) #6
  %or16.i = or i32 %or14.i, %call15.i
  %l2_hyst.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 12
  %51 = ptrtoint ptr %l2_hyst.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %l2_hyst.i, align 1
  %call17.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 14, i8 noundef zeroext %52) #6
  %or18.i = or i32 %or16.i, %call17.i
  %l3_trip.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 13
  %53 = ptrtoint ptr %l3_trip.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %l3_trip.i, align 1
  %call19.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 15, i8 noundef zeroext %54) #6
  %or20.i = or i32 %or18.i, %call19.i
  %l3_hyst.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 14
  %55 = ptrtoint ptr %l3_hyst.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %l3_hyst.i, align 1
  %call21.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 16, i8 noundef zeroext %56) #6
  %or22.i = or i32 %or20.i, %call21.i
  %abml_filt.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 4
  %57 = ptrtoint ptr %abml_filt.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %abml_filt.i, align 1
  %59 = shl i8 %58, 5
  %60 = or i8 %59, 2
  %call26.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 12, i8 noundef zeroext %60) #6
  %or27.i = or i32 %or22.i, %call26.i
  br label %adp5520_bl_setup.exit

adp5520_bl_setup.exit:                            ; preds = %if.then.i, %if.end36.adp5520_bl_setup.exit_crit_edge
  %ret.0.i = phi i32 [ %or27.i, %if.then.i ], [ %or5.i, %if.end36.adp5520_bl_setup.exit_crit_edge ]
  %61 = ptrtoint ptr %en_ambl_sens.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %en_ambl_sens.i, align 1
  %63 = shl i8 %62, 3
  %64 = and i8 %63, 8
  %fade_led_law.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 2
  %65 = ptrtoint ptr %fade_led_law.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %fade_led_law.i, align 1
  %67 = shl i8 %66, 4
  %68 = and i8 %67, 48
  %or3595.i = or i8 %68, %64
  %call37.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 2, i8 noundef zeroext %or3595.i) #6
  %or38.i = or i32 %call37.i, %ret.0.i
  %69 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %31, align 1
  %71 = and i8 %70, 15
  %fade_out.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %31, i32 0, i32 1
  %72 = ptrtoint ptr %fade_out.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fade_out.i, align 1
  %74 = shl i8 %73, 4
  %or4496.i = or i8 %74, %71
  %call46.i = call i32 @adp5520_write(ptr noundef %29, i32 noundef 4, i8 noundef zeroext %or4496.i) #6
  %or47.i = or i32 %or38.i, %call46.i
  %call48.i = call i32 @adp5520_set_bits(ptr noundef %29, i32 noundef 0, i8 noundef zeroext 96) #6
  %or49.i = or i32 %or47.i, %call48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or49.i)
  %tobool38.not = icmp eq i32 %or49.i, 0
  br i1 %tobool38.not, label %if.end51, label %do.end42

do.end42:                                         ; preds = %adp5520_bl_setup.exit
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  %75 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdata, align 4
  %en_ambl_sens45 = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %en_ambl_sens45 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %en_ambl_sens45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool46.not = icmp eq i8 %78, 0
  br i1 %tobool46.not, label %do.end42.cleanup_crit_edge, label %if.then47

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  %dev48 = getelementptr inbounds %struct.backlight_device, ptr %call15, i32 0, i32 6
  call void @sysfs_remove_group(ptr noundef %dev48, ptr noundef nonnull @adp5520_bl_attr_group) #6
  br label %cleanup

if.end51:                                         ; preds = %adp5520_bl_setup.exit
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call15, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call15, i32 0, i32 3
  %79 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i, align 4
  %tobool.not.i86 = icmp eq ptr %80, null
  br i1 %tobool.not.i86, label %if.end51.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end51.backlight_update_status.exit_crit_edge:  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end51
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %82, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i88

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i88:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i87 = call i32 %82(ptr noundef %call15) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i88, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end51.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %if.then47, %do.end42.cleanup_crit_edge, %do.end34, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %19, %do.end20 ], [ %call28, %do.end34 ], [ 0, %backlight_update_status.exit ], [ -12, %entry.cleanup_crit_edge ], [ %or49.i, %if.then47 ], [ %or49.i, %do.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i5 = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i5, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @adp5520_clr_bits(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 64) #6
  %pdata = getelementptr inbounds %struct.adp5520_bl, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %en_ambl_sens = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %en_ambl_sens to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %en_ambl_sens, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 6
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @adp5520_bl_attr_group) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %0 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit_crit_edge

entry.backlight_get_brightness.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %2 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bl, align 8
  br label %backlight_get_brightness.exit

backlight_get_brightness.exit:                    ; preds = %if.else.i, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge, %entry.backlight_get_brightness.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.else.i ], [ 0, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge ], [ 0, %entry.backlight_get_brightness.exit_crit_edge ]
  %call1 = tail call fastcc i32 @adp5520_bl_set(ptr noundef %bl, i32 noundef %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_get_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %reg_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val) #6
  %2 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg_val, align 1, !annotation !76
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @adp5520_read(ptr noundef %4, i32 noundef 11, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %current_brightness = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_brightness, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_val, align 1
  %conv = zext i8 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %conv, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val) #6
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adp5520_bl_set(ptr nocapture noundef readonly %bl, i32 noundef %brightness) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pdata = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %en_ambl_sens = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %en_ambl_sens to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %en_ambl_sens, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else12, label %if.then

if.then:                                          ; preds = %entry
  %8 = add i32 %brightness, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %8)
  %9 = icmp ult i32 %8, 126
  br i1 %9, label %if.end16.thread, label %if.else

if.end16.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @adp5520_clr_bits(ptr noundef %3, i32 noundef 2, i8 noundef zeroext 8) #6
  %conv = trunc i32 %brightness to i8
  %call5 = tail call i32 @adp5520_write(ptr noundef %3, i32 noundef 5, i8 noundef zeroext %conv) #6
  %or6 = or i32 %call5, %call4
  %current_brightness67 = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %current_brightness67 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_brightness67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool17.not68 = icmp ne i32 %11, 0
  br label %if.else24

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %cached_daylight_max = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %cached_daylight_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cached_daylight_max, align 4
  %conv7 = trunc i32 %13 to i8
  %call8 = tail call i32 @adp5520_write(ptr noundef %3, i32 noundef 5, i8 noundef zeroext %conv7) #6
  %call10 = tail call i32 @adp5520_set_bits(ptr noundef %3, i32 noundef 2, i8 noundef zeroext 8) #6
  %or11 = or i32 %call10, %call8
  br label %if.end16

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv13 = trunc i32 %brightness to i8
  %call14 = tail call i32 @adp5520_write(ptr noundef %3, i32 noundef 5, i8 noundef zeroext %conv13) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.else
  %ret.0 = phi i32 [ %or11, %if.else ], [ %call14, %if.else12 ]
  %current_brightness = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp19 = icmp eq i32 %brightness, 0
  %or.cond64 = and i1 %cmp19, %tobool17.not
  br i1 %or.cond64, label %if.then21, label %if.end16.if.else24_crit_edge

if.end16.if.else24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @adp5520_set_bits(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 32) #6
  %or23 = or i32 %call22, %ret.0
  br label %if.end34

if.else24:                                        ; preds = %if.end16.if.else24_crit_edge, %if.end16.thread
  %cmp1975 = phi i1 [ false, %if.end16.thread ], [ %cmp19, %if.end16.if.else24_crit_edge ]
  %tobool17.not74 = phi i1 [ %tobool17.not68, %if.end16.thread ], [ %tobool17.not, %if.end16.if.else24_crit_edge ]
  %current_brightness73 = phi ptr [ %current_brightness67, %if.end16.thread ], [ %current_brightness, %if.end16.if.else24_crit_edge ]
  %ret.071 = phi i32 [ %or6, %if.end16.thread ], [ %ret.0, %if.end16.if.else24_crit_edge ]
  %or.cond65 = or i1 %cmp1975, %tobool17.not74
  br i1 %or.cond65, label %if.else24.if.end34_crit_edge, label %if.then30

if.else24.if.end34_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then30:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 @adp5520_clr_bits(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 32) #6
  %or32 = or i32 %call31, %ret.071
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.else24.if.end34_crit_edge, %if.then21
  %current_brightness72 = phi ptr [ %current_brightness, %if.then21 ], [ %current_brightness73, %if.then30 ], [ %current_brightness73, %if.else24.if.end34_crit_edge ]
  %ret.1 = phi i32 [ %or23, %if.then21 ], [ %or32, %if.then30 ], [ %ret.071, %if.else24.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool35.not = icmp eq i32 %ret.1, 0
  br i1 %tobool35.not, label %if.then36, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %current_brightness72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %brightness, ptr %current_brightness72, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34.if.end38_crit_edge
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_clr_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_dark_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val.i) #6
  %2 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg_val.i, align 1, !annotation !76
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1.i = call i32 @adp5520_read(ptr noundef %4, i32 noundef 9, ptr noundef nonnull %reg_val.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.adp5520_show.exit_crit_edge, label %if.end.i

entry.adp5520_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_val.i, align 1
  %conv.i = zext i8 %6 to i32
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv.i) #6
  br label %adp5520_show.exit

adp5520_show.exit:                                ; preds = %if.end.i, %entry.adp5520_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call1.i, %entry.adp5520_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_dark_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp5520_store.exit_crit_edge

entry.adp5520_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %6 to i8
  %call2.i = call i32 @adp5520_write(ptr noundef %4, i32 noundef 9, i8 noundef zeroext %conv.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %adp5520_store.exit

adp5520_store.exit:                               ; preds = %if.end.i, %entry.adp5520_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.adp5520_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_dark_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val.i) #6
  %2 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg_val.i, align 1, !annotation !76
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1.i = call i32 @adp5520_read(ptr noundef %4, i32 noundef 10, ptr noundef nonnull %reg_val.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.adp5520_show.exit_crit_edge, label %if.end.i

entry.adp5520_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_val.i, align 1
  %conv.i = zext i8 %6 to i32
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv.i) #6
  br label %adp5520_show.exit

adp5520_show.exit:                                ; preds = %if.end.i, %entry.adp5520_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call1.i, %entry.adp5520_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_dark_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp5520_store.exit_crit_edge

entry.adp5520_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %6 to i8
  %call2.i = call i32 @adp5520_write(ptr noundef %4, i32 noundef 10, i8 noundef zeroext %conv.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %adp5520_store.exit

adp5520_store.exit:                               ; preds = %if.end.i, %entry.adp5520_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.adp5520_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_office_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val.i) #6
  %2 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg_val.i, align 1, !annotation !76
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1.i = call i32 @adp5520_read(ptr noundef %4, i32 noundef 7, ptr noundef nonnull %reg_val.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.adp5520_show.exit_crit_edge, label %if.end.i

entry.adp5520_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_val.i, align 1
  %conv.i = zext i8 %6 to i32
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv.i) #6
  br label %adp5520_show.exit

adp5520_show.exit:                                ; preds = %if.end.i, %entry.adp5520_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call1.i, %entry.adp5520_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_office_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp5520_store.exit_crit_edge

entry.adp5520_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %6 to i8
  %call2.i = call i32 @adp5520_write(ptr noundef %4, i32 noundef 7, i8 noundef zeroext %conv.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %adp5520_store.exit

adp5520_store.exit:                               ; preds = %if.end.i, %entry.adp5520_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.adp5520_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_office_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val.i) #6
  %2 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg_val.i, align 1, !annotation !76
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1.i = call i32 @adp5520_read(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %reg_val.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.adp5520_show.exit_crit_edge, label %if.end.i

entry.adp5520_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_val.i, align 1
  %conv.i = zext i8 %6 to i32
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv.i) #6
  br label %adp5520_show.exit

adp5520_show.exit:                                ; preds = %if.end.i, %entry.adp5520_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call1.i, %entry.adp5520_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_office_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp5520_store.exit_crit_edge

entry.adp5520_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %6 to i8
  %call2.i = call i32 @adp5520_write(ptr noundef %4, i32 noundef 8, i8 noundef zeroext %conv.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %adp5520_store.exit

adp5520_store.exit:                               ; preds = %if.end.i, %entry.adp5520_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.adp5520_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_daylight_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val.i) #6
  %2 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg_val.i, align 1, !annotation !76
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1.i = call i32 @adp5520_read(ptr noundef %4, i32 noundef 5, ptr noundef nonnull %reg_val.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.adp5520_show.exit_crit_edge, label %if.end.i

entry.adp5520_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_val.i, align 1
  %conv.i = zext i8 %6 to i32
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv.i) #6
  br label %adp5520_show.exit

adp5520_show.exit:                                ; preds = %if.end.i, %entry.adp5520_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call1.i, %entry.adp5520_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_daylight_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cached_daylight_max = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef %cached_daylight_max) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.adp5520_store.exit_crit_edge

if.end.adp5520_store.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_store.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %8 to i8
  %call2.i = call i32 @adp5520_write(ptr noundef %6, i32 noundef 5, i8 noundef zeroext %conv.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %adp5520_store.exit

adp5520_store.exit:                               ; preds = %if.end.i, %if.end.adp5520_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %if.end.adp5520_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %adp5520_store.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %adp5520_store.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_daylight_dim_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val.i) #6
  %2 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg_val.i, align 1, !annotation !76
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1.i = call i32 @adp5520_read(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %reg_val.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %entry.adp5520_show.exit_crit_edge, label %if.end.i

entry.adp5520_show.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_val.i, align 1
  %conv.i = zext i8 %6 to i32
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv.i) #6
  br label %adp5520_show.exit

adp5520_show.exit:                                ; preds = %if.end.i, %entry.adp5520_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call1.i, %entry.adp5520_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_daylight_dim_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !76
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adp5520_store.exit_crit_edge

entry.adp5520_store.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.adp5520_bl, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %6 to i8
  %call2.i = call i32 @adp5520_write(ptr noundef %4, i32 noundef 6, i8 noundef zeroext %conv.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %adp5520_store.exit

adp5520_store.exit:                               ; preds = %if.end.i, %entry.adp5520_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.adp5520_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pdata.i = getelementptr inbounds %struct.adp5520_bl, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %en_ambl_sens.i = getelementptr inbounds %struct.adp5520_backlight_platform_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %en_ambl_sens.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %en_ambl_sens.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.else12.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cached_daylight_max.i = getelementptr inbounds %struct.adp5520_bl, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %cached_daylight_max.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cached_daylight_max.i, align 4
  %conv7.i = trunc i32 %11 to i8
  %call8.i = tail call i32 @adp5520_write(ptr noundef %5, i32 noundef 5, i8 noundef zeroext %conv7.i) #6
  %call10.i = tail call i32 @adp5520_set_bits(ptr noundef %5, i32 noundef 2, i8 noundef zeroext 8) #6
  %or11.i = or i32 %call10.i, %call8.i
  br label %if.end16.i

if.else12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 @adp5520_write(ptr noundef %5, i32 noundef 5, i8 noundef zeroext 0) #6
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else12.i, %if.then.i
  %ret.0.i = phi i32 [ %or11.i, %if.then.i ], [ %call14.i, %if.else12.i ]
  %current_brightness.i = getelementptr inbounds %struct.adp5520_bl, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %current_brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not.i.not = icmp eq i32 %13, 0
  br i1 %tobool17.not.i.not, label %if.end16.i.if.end34.i_crit_edge, label %if.then21.i

if.end16.i.if.end34.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %call22.i = tail call i32 @adp5520_set_bits(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 32) #6
  %or23.i = or i32 %call22.i, %ret.0.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then21.i, %if.end16.i.if.end34.i_crit_edge
  %ret.1.i = phi i32 [ %or23.i, %if.then21.i ], [ %ret.0.i, %if.end16.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool35.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end34.i.adp5520_bl_set.exit_crit_edge

if.end34.i.adp5520_bl_set.exit_crit_edge:         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adp5520_bl_set.exit

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %current_brightness.i, align 4
  br label %adp5520_bl_set.exit

adp5520_bl_set.exit:                              ; preds = %if.then36.i, %if.end34.i.adp5520_bl_set.exit_crit_edge
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_bl_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

entry.backlight_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %entry
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %5(ptr noundef %1) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %entry.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #6
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !48, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_adp5520_bl__301_383_adp5520_bl_driver_init6, !1, !"__initcall__kmod_adp5520_bl__301_383_adp5520_bl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 383, i32 1}
!2 = !{ptr @__exitcall_adp5520_bl_driver_exit, !1, !"__exitcall_adp5520_bl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 385, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 386, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 387, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias306, !11, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 388, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 376, i32 11}
!14 = !{ptr @adp5520_bl_driver, !15, !"adp5520_bl_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 374, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 295, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adp5520_bl_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adp5520_bl_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @adp5520_bl_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 302, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 311, i32 3}
!29 = !{ptr @adp5520_bl_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @adp5520_bl_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 321, i32 3}
!33 = !{ptr @adp5520_bl_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @adp5520_bl_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 328, i32 3}
!37 = !{ptr @adp5520_bl_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @adp5520_bl_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @adp5520_bl_ops, !40, !"adp5520_bl_ops", i1 false, i1 false}
!40 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 82, i32 35}
!41 = !{ptr @adp5520_bl_attr_group, !42, !"adp5520_bl_attr_group", i1 false, i1 false}
!42 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 276, i32 37}
!43 = !{ptr @adp5520_bl_attributes, !44, !"adp5520_bl_attributes", i1 false, i1 false}
!44 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 266, i32 26}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 181, i32 8}
!47 = !{ptr @dev_attr_dark_max, !46, !"dev_attr_dark_max", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 148, i32 22}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 233, i32 8}
!52 = !{ptr @dev_attr_dark_dim, !51, !"dev_attr_dark_dim", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 196, i32 8}
!55 = !{ptr @dev_attr_office_max, !54, !"dev_attr_office_max", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 248, i32 8}
!58 = !{ptr @dev_attr_office_dim, !57, !"dev_attr_office_dim", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 218, i32 8}
!61 = !{ptr @dev_attr_daylight_max, !60, !"dev_attr_daylight_max", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 263, i32 8}
!64 = !{ptr @dev_attr_daylight_dim, !63, !"dev_attr_daylight_dim", i1 false, i1 false}
!65 = !{ptr @adp5520_bl_pm_ops, !66, !"adp5520_bl_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/video/backlight/adp5520_bl.c", i32 371, i32 8}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
