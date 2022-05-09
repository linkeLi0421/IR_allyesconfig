; ModuleID = '/llk/IR_all_yes/drivers/staging/fieldbus/anybuss/arcx-anybus.c_pt.bc'
source_filename = "../drivers/staging/fieldbus/anybuss/arcx-anybus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anybuss_ops = type { ptr, ptr, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.controller_priv = type { ptr, i8, ptr, ptr, %struct.mutex, i8, [3 x i8], i16 }

@controller_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @controller_probe, ptr @controller_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @controller_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@controller_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@controller_index_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_arcx_anybus__288_372_controller_init6 = internal global ptr @controller_init, section ".initcall6.init", align 4
@__exitcall_controller_exit = internal global ptr @controller_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [56 x i8] c"arcx_anybus.description=Arcx Anybus-S Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [59 x i8] c"arcx_anybus.author=Sven Van Asbroeck <TheSven73@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [62 x i8] c"arcx_anybus.file=drivers/staging/fieldbus/anybuss/arcx-anybus\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"arcx_anybus.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arcx-anybus-controller\00", [41 x i8] zeroinitializer }, align 32
@controller_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arcx,anybus-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@controller_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cd->ctrl_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@controller_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to map cpld base address\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"controller_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/fieldbus/anybuss/arcx-anybus.c\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@controller_probe._entry_ptr = internal global ptr @controller_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%c%d\00", [27 x i8] zeroinitializer }, align 32
@controller_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 261, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"design number %d, revision %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@controller_probe._entry_ptr.12 = internal global ptr @controller_probe._entry.9, section ".printk_index", align 4
@controller_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 264, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported controller [cap=0x%02X]\00", [60 x i8] zeroinitializer }, align 32
@controller_probe._entry_ptr.15 = internal global ptr @controller_probe._entry.13, section ".printk_index", align 4
@controller_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 270, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"has anybus-S slot(s)\00", [43 x i8] zeroinitializer }, align 32
@controller_probe._entry_ptr.18 = internal global ptr @controller_probe._entry.16, section ".printk_index", align 4
@controller_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 273, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"supports %s\00", [20 x i8] zeroinitializer }, align 32
@controller_probe._entry_ptr.21 = internal global ptr @controller_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"a common reset\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"separate resets\00", [16 x i8] zeroinitializer }, align 32
@can_power_desc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, ptr @can_power_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@controller_attribute_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @controller_attribute_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@create_parallel_regmap._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@arcx_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2047, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"arcx_anybus:136:(&arcx_regmap_cfg)->lock\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regulator-can-power\00", [44 x i8] zeroinitializer }, align 32
@can_power_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_power_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@controller_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @controller_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@controller_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_version, ptr @dev_attr_design_number, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_design_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @design_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"design_number\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"controller_index_ida.xa_lock\00", [35 x i8] zeroinitializer }, align 32
@controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arcx_anybus_controller\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"controller_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 342, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"controller_class\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 221, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"controller_index_ida\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 346, i32 13 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"controller_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 335, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 238, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 239, i32 40 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 246, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 256, i32 45 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 259, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 264, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 270, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 272, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"can_power_desc\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 213, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant [28 x i8] c"controller_attribute_groups\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 192, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 309, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [16 x i8] c"arcx_regmap_cfg\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 114, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 136, i32 9 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 214, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"can_power_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 209, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant [27 x i8] c"controller_attribute_group\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 188, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant [22 x i8] c"controller_attributes\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 182, i32 26 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"dev_attr_version\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"dev_attr_design_number\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 171, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 169, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 180, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 178, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 222, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [50 x i8] c"../drivers/staging/fieldbus/anybuss/arcx-anybus.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 355, i32 21 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_controller_exit, ptr @__initcall__kmod_arcx_anybus__288_372_controller_init6, ptr @controller_exit, ptr @controller_probe._entry, ptr @controller_probe._entry.13, ptr @controller_probe._entry.16, ptr @controller_probe._entry.19, ptr @controller_probe._entry.9, ptr @controller_probe._entry_ptr, ptr @controller_probe._entry_ptr.12, ptr @controller_probe._entry_ptr.15, ptr @controller_probe._entry_ptr.18, ptr @controller_probe._entry_ptr.21, ptr @controller_driver, ptr @controller_class, ptr @controller_index_ida, ptr @.str, ptr @controller_of_match, ptr @controller_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @can_power_desc, ptr @controller_attribute_groups, ptr @.str.24, ptr @create_parallel_regmap._key, ptr @arcx_regmap_cfg, ptr @.str.25, ptr @.str.26, ptr @can_power_ops, ptr @controller_attribute_group, ptr @controller_attributes, ptr @dev_attr_version, ptr @dev_attr_design_number, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @controller_init.__key, ptr @.str.32], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_index_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_power_desc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_attribute_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_parallel_regmap._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcx_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_power_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_design_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @controller_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @controller_driver) #8
  %0 = load ptr, ptr @controller_class, align 4
  tail call void @class_destroy(ptr noundef %0) #8
  tail call void @ida_destroy(ptr noundef nonnull @controller_index_ida) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @controller_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @controller_init.__key) #8
  store ptr %call, ptr @controller_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @controller_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @controller_class, align 4
  tail call void @class_destroy(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @controller_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ops.i = alloca %struct.anybuss_ops, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #8
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %ctrl_lock = getelementptr inbounds %struct.controller_priv, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @controller_probe.__key) #8
  %call2 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 3) #8
  %reset_gpiod = getelementptr inbounds %struct.controller_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %reset_gpiod to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %reset_gpiod, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cpld_base = getelementptr inbounds %struct.controller_priv, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %cpld_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %cpld_base, align 4
  %cmp.i194 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  %5 = ptrtoint ptr %cpld_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpld_base, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %out_reset

if.end18:                                         ; preds = %if.end8
  %add.ptr = getelementptr i8, ptr %call9, i32 128
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %9 = ptrtoint ptr %cpld_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpld_base, align 4
  %add.ptr25 = getelementptr i8, ptr %10, i32 130
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %conv = zext i8 %11 to i16
  %shl = shl nuw i16 %conv, 8
  %12 = ptrtoint ptr %cpld_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpld_base, align 4
  %add.ptr32 = getelementptr i8, ptr %13, i32 129
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr32) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %conv36 = zext i8 %14 to i16
  %or = or i16 %shl, %conv36
  %design_no = getelementptr inbounds %struct.controller_priv, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %design_no to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %or, ptr %design_no, align 4
  %version = getelementptr inbounds %struct.controller_priv, ptr %call.i, i32 0, i32 6
  %conv38 = zext i8 %8 to i32
  %16 = lshr i32 %conv38, 5
  %add = add nuw nsw i32 %16, 65
  %17 = lshr i32 %conv38, 2
  %and41 = and i32 %17, 7
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %version, i32 noundef 3, ptr noundef nonnull @.str.8, i32 noundef %add, i32 noundef %and41)
  %18 = ptrtoint ptr %design_no to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %design_no, align 4
  %conv47 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %conv47, ptr noundef %version) #11
  %20 = ptrtoint ptr %cpld_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpld_base, align 4
  %add.ptr53 = getelementptr i8, ptr %21, i32 131
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr53) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %conv57 = zext i8 %22 to i32
  %and58 = and i32 %conv57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.end63, label %if.end65

do.end63:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %conv57) #11
  br label %out_reset

if.end65:                                         ; preds = %if.end18
  %and67 = and i32 %conv38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end65.if.end92_crit_edge, label %sw.epilog.i

if.end65.if.end92_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

sw.epilog.i:                                      ; preds = %if.end65
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17) #11
  %and74 = and i32 %conv57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %common_reset = getelementptr inbounds %struct.controller_priv, ptr %call.i, i32 0, i32 1
  %and74.lobit = lshr exact i32 %and74, 1
  %23 = trunc i32 %and74.lobit to i8
  %24 = xor i8 %23, 1
  %25 = ptrtoint ptr %common_reset to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %common_reset, align 4
  %cond = select i1 %tobool75.not, ptr @.str.22, ptr @.str.23
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond) #11
  %host_idx.i = getelementptr inbounds %struct.anybuss_ops, ptr %ops.i, i32 0, i32 3
  %regmap.i = getelementptr inbounds %struct.anybuss_ops, ptr %ops.i, i32 0, i32 1
  %irq.i = getelementptr inbounds %struct.anybuss_ops, ptr %ops.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ops.i) #8
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @export_reset_0, ptr %ops.i, align 4
  %27 = ptrtoint ptr %host_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %host_idx.i, align 4
  %call.i.i = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %sw.epilog.i.create_parallel_regmap.exit.i_crit_edge, label %if.end.i.i

sw.epilog.i.create_parallel_regmap.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_parallel_regmap.exit.i

if.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call.i.i, ptr noundef nonnull @arcx_regmap_cfg, ptr noundef nonnull @create_parallel_regmap._key, ptr noundef nonnull @.str.25) #8
  br label %create_parallel_regmap.exit.i

create_parallel_regmap.exit.i:                    ; preds = %if.end.i.i, %sw.epilog.i.create_parallel_regmap.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call4.i.i, %if.end.i.i ], [ %call.i.i, %sw.epilog.i.create_parallel_regmap.exit.i_crit_edge ]
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i.i, ptr %regmap.i, align 4
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %create_parallel_regmap.exit.i.create_anybus_host.exit_crit_edge, label %if.end.i

create_parallel_regmap.exit.i.create_anybus_host.exit_crit_edge: ; preds = %create_parallel_regmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_anybus_host.exit

if.end.i:                                         ; preds = %create_parallel_regmap.exit.i
  %call8.i = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call8.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i)
  %cmp.i195 = icmp slt i32 %call8.i, 1
  br i1 %cmp.i195, label %if.end86.thread, label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call ptr @devm_anybuss_host_common_probe(ptr noundef %dev1, ptr noundef nonnull %ops.i) #8
  br label %create_anybus_host.exit

if.end86.thread:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ops.i) #8
  br label %out_reset.loopexit

create_anybus_host.exit:                          ; preds = %if.end12.i, %create_parallel_regmap.exit.i.create_anybus_host.exit_crit_edge
  %retval.0.i = phi ptr [ %call13.i, %if.end12.i ], [ %retval.0.i.i, %create_parallel_regmap.exit.i.create_anybus_host.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ops.i) #8
  %cmp.i196 = icmp ule ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %cmp88.not = icmp eq ptr %retval.0.i, inttoptr (i32 -19 to ptr)
  %or.cond = or i1 %cmp.i196, %cmp88.not
  br i1 %or.cond, label %sw.epilog.i.1, label %create_anybus_host.exit.out_reset.loopexit_crit_edge

create_anybus_host.exit.out_reset.loopexit_crit_edge: ; preds = %create_anybus_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_reset.loopexit

sw.epilog.i.1:                                    ; preds = %create_anybus_host.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ops.i) #8
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @export_reset_1, ptr %ops.i, align 4
  %31 = ptrtoint ptr %host_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %host_idx.i, align 4
  %call.i.i.1 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 2) #8
  %cmp.i.i.i.1 = icmp ugt ptr %call.i.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.1, label %sw.epilog.i.1.create_parallel_regmap.exit.i.1_crit_edge, label %if.end.i.i.1

sw.epilog.i.1.create_parallel_regmap.exit.i.1_crit_edge: ; preds = %sw.epilog.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_parallel_regmap.exit.i.1

if.end.i.i.1:                                     ; preds = %sw.epilog.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i.1 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call.i.i.1, ptr noundef nonnull @arcx_regmap_cfg, ptr noundef nonnull @create_parallel_regmap._key, ptr noundef nonnull @.str.25) #8
  br label %create_parallel_regmap.exit.i.1

create_parallel_regmap.exit.i.1:                  ; preds = %if.end.i.i.1, %sw.epilog.i.1.create_parallel_regmap.exit.i.1_crit_edge
  %retval.0.i.i.1 = phi ptr [ %call4.i.i.1, %if.end.i.i.1 ], [ %call.i.i.1, %sw.epilog.i.1.create_parallel_regmap.exit.i.1_crit_edge ]
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i.i.1, ptr %regmap.i, align 4
  %cmp.i.i.1 = icmp ugt ptr %retval.0.i.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1, label %create_parallel_regmap.exit.i.1.create_anybus_host.exit.1_crit_edge, label %if.end.i.1

create_parallel_regmap.exit.i.1.create_anybus_host.exit.1_crit_edge: ; preds = %create_parallel_regmap.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_anybus_host.exit.1

if.end.i.1:                                       ; preds = %create_parallel_regmap.exit.i.1
  %call8.i.1 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #8
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call8.i.1, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i.1)
  %cmp.i195.1 = icmp slt i32 %call8.i.1, 1
  br i1 %cmp.i195.1, label %if.end86.1.thread, label %if.end12.i.1

if.end12.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.1 = call ptr @devm_anybuss_host_common_probe(ptr noundef %dev1, ptr noundef nonnull %ops.i) #8
  br label %create_anybus_host.exit.1

create_anybus_host.exit.1:                        ; preds = %if.end12.i.1, %create_parallel_regmap.exit.i.1.create_anybus_host.exit.1_crit_edge
  %retval.0.i.1 = phi ptr [ %call13.i.1, %if.end12.i.1 ], [ %retval.0.i.i.1, %create_parallel_regmap.exit.i.1.create_anybus_host.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ops.i) #8
  %cmp.i196.1 = icmp ule ptr %retval.0.i.1, inttoptr (i32 -4096 to ptr)
  %cmp88.not.1 = icmp eq ptr %retval.0.i.1, inttoptr (i32 -19 to ptr)
  %or.cond211 = or i1 %cmp.i196.1, %cmp88.not.1
  br i1 %or.cond211, label %create_anybus_host.exit.1.if.end92_crit_edge, label %create_anybus_host.exit.1.out_reset.loopexit_crit_edge

create_anybus_host.exit.1.out_reset.loopexit_crit_edge: ; preds = %create_anybus_host.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_reset.loopexit

create_anybus_host.exit.1.if.end92_crit_edge:     ; preds = %create_anybus_host.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end86.1.thread:                                ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ops.i) #8
  br label %out_reset.loopexit

if.end92:                                         ; preds = %create_anybus_host.exit.1.if.end92_crit_edge, %if.end65.if.end92_crit_edge
  %call93 = call i32 @ida_alloc_range(ptr noundef nonnull @controller_index_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.end92.out_reset_crit_edge, label %if.end97

if.end92.out_reset_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_reset

if.end97:                                         ; preds = %if.end92
  %34 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev1, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %35 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data, align 4
  %call99 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull @can_power_desc, ptr noundef nonnull %config) #8
  %cmp.i197 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call99 to i32
  br label %out_ida

if.end103:                                        ; preds = %if.end97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 928) #12
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %call.i, align 4
  %tobool106.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool106.not, label %if.end103.out_ida_crit_edge, label %if.end108

if.end103.out_ida_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ida

if.end108:                                        ; preds = %if.end103
  %39 = load ptr, ptr @controller_class, align 4
  %class = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 33
  %40 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %class, align 4
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %41 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @controller_attribute_groups, ptr %groups, align 8
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev1, ptr %parent, align 8
  %id113 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 30
  %43 = ptrtoint ptr %id113 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call93, ptr %id113, align 4
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %44 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @controller_device_release, ptr %release, align 4
  %call118 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.24, i32 noundef %call93) #8
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %driver_data.i198 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %driver_data.i198 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i198, align 4
  %48 = load ptr, ptr %call.i, align 4
  %call121 = call i32 @device_register(ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end108.cleanup_crit_edge, label %out_dev

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_dev:                                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  call void @put_device(ptr noundef %50) #8
  br label %out_ida

out_ida:                                          ; preds = %out_dev, %if.end103.out_ida_crit_edge, %if.then101
  %err.0 = phi i32 [ %36, %if.then101 ], [ %call121, %out_dev ], [ -12, %if.end103.out_ida_crit_edge ]
  call void @ida_free(ptr noundef nonnull @controller_index_ida, i32 noundef %call93) #8
  br label %out_reset

out_reset.loopexit:                               ; preds = %if.end86.1.thread, %create_anybus_host.exit.1.out_reset.loopexit_crit_edge, %create_anybus_host.exit.out_reset.loopexit_crit_edge, %if.end86.thread
  %retval.0.i201.lcssa = phi ptr [ inttoptr (i32 -22 to ptr), %if.end86.thread ], [ inttoptr (i32 -22 to ptr), %if.end86.1.thread ], [ %retval.0.i, %create_anybus_host.exit.out_reset.loopexit_crit_edge ], [ %retval.0.i.1, %create_anybus_host.exit.1.out_reset.loopexit_crit_edge ]
  %51 = ptrtoint ptr %retval.0.i201.lcssa to i32
  br label %out_reset

out_reset:                                        ; preds = %out_reset.loopexit, %out_ida, %if.end92.out_reset_crit_edge, %do.end63, %do.end15
  %err.1 = phi i32 [ %7, %do.end15 ], [ %err.0, %out_ida ], [ -19, %do.end63 ], [ %call93, %if.end92.out_reset_crit_edge ], [ %51, %out_reset.loopexit ]
  %52 = ptrtoint ptr %reset_gpiod to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reset_gpiod, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %53, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %out_reset, %if.end108.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %err.1, %out_reset ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end108.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @controller_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %id1 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1, align 4
  tail call void @device_unregister(ptr noundef %3) #8
  tail call void @ida_free(ptr noundef nonnull @controller_index_ida, i32 noundef %5) #8
  %reset_gpiod = getelementptr inbounds %struct.controller_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %reset_gpiod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpiod, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @controller_device_release(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @export_reset_0(ptr nocapture noundef readonly %dev, i1 noundef zeroext %assert) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %common_reset.i = getelementptr inbounds %struct.controller_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %common_reset.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %common_reset.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %.sink.i = select i1 %tobool.not.i, i8 4, i8 64
  tail call fastcc void @do_reset(ptr noundef %1, i8 noundef zeroext %.sink.i, i1 noundef zeroext %assert) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @export_reset_1(ptr nocapture noundef readonly %dev, i1 noundef zeroext %assert) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %common_reset.i = getelementptr inbounds %struct.controller_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %common_reset.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %common_reset.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %.sink.i = select i1 %tobool.not.i, i8 -128, i8 64
  tail call fastcc void @do_reset(ptr noundef %1, i8 noundef zeroext %.sink.i, i1 noundef zeroext %assert) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_anybuss_host_common_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_reset(ptr noundef %cd, i8 noundef zeroext %rst_bit, i1 noundef zeroext %reset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_lock = getelementptr inbounds %struct.controller_priv, ptr %cd, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #8
  br i1 %reset, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i8 %rst_bit, -1
  %control_reg = getelementptr inbounds %struct.controller_priv, ptr %cd, i32 0, i32 5
  %0 = ptrtoint ptr %control_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %control_reg, align 4
  %and = and i8 %1, %neg
  store i8 %and, ptr %control_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %control_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %control_reg, align 4
  %cpld_base.c = getelementptr inbounds %struct.controller_priv, ptr %cd, i32 0, i32 3
  %4 = ptrtoint ptr %cpld_base.c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpld_base.c, align 4
  %add.ptr.c = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.c, i8 %3) #8, !srcloc !104
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %control_reg4 = getelementptr inbounds %struct.controller_priv, ptr %cd, i32 0, i32 5
  %6 = ptrtoint ptr %control_reg4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %control_reg4, align 4
  %or19 = or i8 %7, %rst_bit
  store i8 %or19, ptr %control_reg4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %control_reg4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %control_reg4, align 4
  %cpld_base.c21 = getelementptr inbounds %struct.controller_priv, ptr %cd, i32 0, i32 3
  %10 = ptrtoint ptr %cpld_base.c21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpld_base.c21, align 4
  %add.ptr.c22 = getelementptr i8, ptr %11, i32 128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.c22, i8 %9) #8, !srcloc !104
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_power_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %cpld_base = getelementptr inbounds %struct.controller_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %cpld_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpld_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 128
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %3 = and i8 %2, 1
  %4 = xor i8 %3, 1
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %version = getelementptr inbounds %struct.controller_priv, ptr %1, i32 0, i32 6
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef %version)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @design_number_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %design_no = getelementptr inbounds %struct.controller_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %design_no to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %design_no, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !75, !77, !78, !80, !82, !84, !85, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_arcx_anybus__288_372_controller_init6, !1, !"__initcall__kmod_arcx_anybus__288_372_controller_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 372, i32 1}
!2 = !{ptr @__exitcall_controller_exit, !3, !"__exitcall_controller_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 373, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 375, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 376, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 377, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @controller_class, !12, !"controller_class", i1 false, i1 false}
!12 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 221, i32 22}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 346, i32 13}
!15 = !{ptr @controller_driver, !16, !"controller_driver", i1 false, i1 false}
!16 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 342, i32 31}
!17 = !{ptr @controller_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 238, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 239, i32 40}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 246, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @controller_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @controller_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 256, i32 45}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 259, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @controller_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @controller_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 264, i32 3}
!39 = !{ptr @controller_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @controller_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 270, i32 3}
!43 = !{ptr @controller_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @controller_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 272, i32 3}
!47 = !{ptr @controller_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @controller_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 309, i32 30}
!53 = !{ptr @create_parallel_regmap._key, !54, !"_key", i1 false, i1 false}
!54 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 136, i32 9}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @arcx_regmap_cfg, !57, !"arcx_regmap_cfg", i1 false, i1 false}
!57 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 114, i32 35}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 214, i32 10}
!60 = !{ptr @can_power_desc, !61, !"can_power_desc", i1 false, i1 false}
!61 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 213, i32 36}
!62 = !{ptr @can_power_ops, !63, !"can_power_ops", i1 false, i1 false}
!63 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 209, i32 35}
!64 = !{ptr @controller_attribute_groups, !65, !"controller_attribute_groups", i1 false, i1 false}
!65 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 192, i32 38}
!66 = !{ptr @controller_attribute_group, !67, !"controller_attribute_group", i1 false, i1 false}
!67 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 188, i32 37}
!68 = !{ptr @controller_attributes, !69, !"controller_attributes", i1 false, i1 false}
!69 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 182, i32 26}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 171, i32 8}
!72 = !{ptr @dev_attr_version, !71, !"dev_attr_version", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 169, i32 22}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 180, i32 8}
!77 = !{ptr @dev_attr_design_number, !76, !"dev_attr_design_number", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 178, i32 22}
!80 = !{ptr @controller_of_match, !81, !"controller_of_match", i1 false, i1 false}
!81 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 335, i32 34}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 222, i32 8}
!84 = !{ptr @controller_index_ida, !83, !"controller_index_ida", i1 false, i1 false}
!85 = !{ptr @controller_init.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/staging/fieldbus/anybuss/arcx-anybus.c", i32 355, i32 21}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 5210645}
!98 = !{i64 2155129728}
!99 = !{i64 2155129971}
!100 = !{i64 2155130214}
!101 = !{i64 2155132181}
!102 = !{i8 0, i8 2}
!103 = !{i64 2155124060}
!104 = !{i64 5210250}
!105 = !{i64 2155125570}
