; ModuleID = '/llk/IR_all_yes/drivers/platform/mellanox/mlxreg-hotplug.c_pt.bc'
source_filename = "../drivers/platform/mellanox/mlxreg-hotplug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mlxreg_core_hotplug_platform_data = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlxreg_hotplug_priv_data = type { i32, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.spinlock, ptr, [129 x ptr], [128 x %struct.sensor_device_attribute_2], %struct.attribute_group, [2 x ptr], i32, i32, i32, i8, i8 }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.mlxreg_core_item = type { ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.mlxreg_core_data = type { [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, %struct.mlxreg_hotplug_device, ptr, i32, i8, i8, i8, i8 }
%struct.mlxreg_hotplug_device = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.mlxreg_core_hotplug_notifier = type { [32 x i8], ptr, ptr }

@__initcall__kmod_mlxreg_hotplug__288_791_mlxreg_hotplug_driver_init6 = internal global ptr @mlxreg_hotplug_driver_init, section ".initcall6.init", align 4
@mlxreg_hotplug_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mlxreg_hotplug_probe, ptr @mlxreg_hotplug_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mlxreg_hotplug_driver_exit = internal global ptr @mlxreg_hotplug_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [60 x i8] c"mlxreg_hotplug.author=Vadim Pasternak <vadimp@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [67 x i8] c"mlxreg_hotplug.description=Mellanox regmap hotplug platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"mlxreg_hotplug.file=drivers/platform/mellanox/mlxreg-hotplug\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [36 x i8] c"mlxreg_hotplug.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [45 x i8] c"mlxreg_hotplug.alias=platform:mlxreg-hotplug\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlxreg-hotplug\00", [17 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get platform data.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlxreg_hotplug_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/platform/mellanox/mlxreg-hotplug.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_probe._entry_ptr = internal global ptr @mlxreg_hotplug_probe._entry, section ".printk_index", align 4
@mlxreg_hotplug_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_probe._entry_ptr.8 = internal global ptr @mlxreg_hotplug_probe._entry.6, section ".printk_index", align 4
@mlxreg_hotplug_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&priv->dwork_irq)->work)\00", [51 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&priv->dwork_irq)->timer\00", [37 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 753, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate attributes: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_probe._entry_ptr.16 = internal global ptr @mlxreg_hotplug_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlxreg_hotplug\00", [17 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 761, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register hwmon device %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_probe._entry_ptr.20 = internal global ptr @mlxreg_hotplug_probe._entry.18, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mlxreg_hotplug_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 576, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to complete workqueue.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxreg_hotplug_work_handler\00", [36 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_work_handler._entry_ptr = internal global ptr @mlxreg_hotplug_work_handler._entry, section ".printk_index", align 4
@mlxreg_hotplug_health_work_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.23, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mlxreg_hotplug_health_work_helper\00", [62 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_health_work_helper._entry_ptr = internal global ptr @mlxreg_hotplug_health_work_helper._entry, section ".printk_index", align 4
@mlxreg_hotplug_device_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get adapter for bus %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlxreg_hotplug_device_create\00", [35 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_device_create._entry_ptr = internal global ptr @mlxreg_hotplug_device_create._entry, section ".printk_index", align 4
@mlxreg_hotplug_device_create._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to create client %s at bus %d at addr 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_device_create._entry_ptr.28 = internal global ptr @mlxreg_hotplug_device_create._entry.26, section ".printk_index", align 4
@mlxreg_hotplug_udev_envp = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s=%d\00", [26 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@mlxreg_hotplug_work_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"False signal: at offset:mask 0x%02x:0x%02x.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlxreg_hotplug_work_helper\00", [37 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_work_helper._entry_ptr = internal global ptr @mlxreg_hotplug_work_helper._entry, section ".printk_index", align 4
@mlxreg_hotplug_work_helper._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.31, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_work_helper._entry_ptr.33 = internal global ptr @mlxreg_hotplug_work_helper._entry.32, section ".printk_index", align 4
@mlxreg_hotplug_attr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Memory allocation failed for attr %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxreg_hotplug_attr_init\00", [39 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_attr_init._entry_ptr = internal global ptr @mlxreg_hotplug_attr_init._entry, section ".printk_index", align 4
@mlxreg_hotplug_attr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_set_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set interrupts.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlxreg_hotplug_set_irq\00", [41 x i8] zeroinitializer }, align 32
@mlxreg_hotplug_set_irq._entry_ptr = internal global ptr @mlxreg_hotplug_set_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"mlxreg_hotplug_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 783, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 785, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 711, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 741, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 746, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 747, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 752, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 758, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 760, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 576, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 469, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 125, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 137, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"mlxreg_hotplug_udev_envp\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 76, i32 14 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 87, i32 50 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 347, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 396, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 296, i32 5 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 308, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 236, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [46 x i8] c"../drivers/platform/mellanox/mlxreg-hotplug.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 647, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mlxreg_hotplug_driver_exit, ptr @__initcall__kmod_mlxreg_hotplug__288_791_mlxreg_hotplug_driver_init6, ptr @mlxreg_hotplug_attr_init._entry, ptr @mlxreg_hotplug_attr_init._entry_ptr, ptr @mlxreg_hotplug_device_create._entry, ptr @mlxreg_hotplug_device_create._entry.26, ptr @mlxreg_hotplug_device_create._entry_ptr, ptr @mlxreg_hotplug_device_create._entry_ptr.28, ptr @mlxreg_hotplug_driver_exit, ptr @mlxreg_hotplug_health_work_helper._entry, ptr @mlxreg_hotplug_health_work_helper._entry_ptr, ptr @mlxreg_hotplug_probe._entry, ptr @mlxreg_hotplug_probe._entry.14, ptr @mlxreg_hotplug_probe._entry.18, ptr @mlxreg_hotplug_probe._entry.6, ptr @mlxreg_hotplug_probe._entry_ptr, ptr @mlxreg_hotplug_probe._entry_ptr.16, ptr @mlxreg_hotplug_probe._entry_ptr.20, ptr @mlxreg_hotplug_probe._entry_ptr.8, ptr @mlxreg_hotplug_set_irq._entry, ptr @mlxreg_hotplug_set_irq._entry_ptr, ptr @mlxreg_hotplug_work_handler._entry, ptr @mlxreg_hotplug_work_handler._entry_ptr, ptr @mlxreg_hotplug_work_helper._entry, ptr @mlxreg_hotplug_work_helper._entry.32, ptr @mlxreg_hotplug_work_helper._entry_ptr, ptr @mlxreg_hotplug_work_helper._entry_ptr.33, ptr @mlxreg_hotplug_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @mlxreg_hotplug_probe.__key, ptr @.str.9, ptr @mlxreg_hotplug_probe.__key.10, ptr @.str.11, ptr @mlxreg_hotplug_probe.__key.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @mlxreg_hotplug_udev_envp, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @mlxreg_hotplug_attr_init.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_health_work_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_device_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_device_create._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_udev_envp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_work_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_work_helper._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_attr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_attr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_hotplug_set_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_hotplug_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlxreg_hotplug_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlxreg_hotplug_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlxreg_hotplug_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_hotplug_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regval.i137 = alloca i32, align 4
  %mask.i = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %deferred_nr = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %deferred_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %deferred_nr, align 4
  %call2 = tail call ptr @i2c_get_adapter(i32 noundef %3) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @i2c_put_adapter(ptr noundef nonnull %call2) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4824, i32 noundef 3520) #7
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %irq = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call.i, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end10
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call15, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then12
  %regmap = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %regmap22 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %regmap22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %regmap22, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %dev24 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev24, align 4
  %pdev25 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %pdev25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdev, ptr %pdev25, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i, align 4
  %call.i135 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %16, ptr noundef nonnull @mlxreg_hotplug_irq_handler, ptr noundef null, i32 noundef 130, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool29.not = icmp eq i32 %call.i135, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call.i135) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 4
  tail call void @disable_irq(i32 noundef %18) #7
  %lock = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @mlxreg_hotplug_probe.__key, i16 noundef signext 3) #7
  %dwork_irq = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %dwork_irq, i32 noundef 0) #7
  %19 = ptrtoint ptr %dwork_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %dwork_irq, align 4
  %lockdep_map = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @mlxreg_hotplug_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry49 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %entry49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry49, ptr %entry49, align 4
  %prev.i = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry49, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlxreg_hotplug_work_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @mlxreg_hotplug_probe.__key.12) #7
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #7
  %24 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %mask.i, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %25 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %regval.i, align 4, !annotation !99
  %26 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev25, align 4
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3, i32 7
  %28 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %platform_data.i.i, align 8
  %counter.i = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp191.i = icmp sgt i32 %31, 0
  br i1 %cmp191.i, label %for.body.lr.ph.i, label %if.end35.for.end84.i_crit_edge

if.end35.for.end84.i_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end84.i

for.body.lr.ph.i:                                 ; preds = %if.end35
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0195.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc82.i, %for.end.i.for.body.i_crit_edge ]
  %id.0194.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %id.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %num_attrs.0193.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add80.i, %for.end.i.for.body.i_crit_edge ]
  %item.0192.i = phi ptr [ %33, %for.body.lr.ph.i ], [ %incdec.ptr83.i, %for.end.i.for.body.i_crit_edge ]
  %capability.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0192.i, i32 0, i32 5
  %34 = ptrtoint ptr %capability.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %capability.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %for.body.i.if.end9.i_crit_edge, label %if.then.i

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then.i:                                        ; preds = %for.body.i
  %36 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap22, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %37, i32 noundef %35, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %if.then.i.do.end66_crit_edge

if.then.i.do.end66_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regval.i, align 4
  %mask5.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0192.i, i32 0, i32 4
  %40 = ptrtoint ptr %mask5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask5.i, align 4
  %and.i = and i32 %41, %39
  %sub6.i = sub i32 32, %and.i
  %shr.i = lshr i32 -1, %sub6.i
  store i32 %shr.i, ptr %mask5.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %for.body.i.if.end9.i_crit_edge
  %42 = ptrtoint ptr %item.0192.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %item.0192.i, align 4
  %mask11.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0192.i, i32 0, i32 4
  %44 = ptrtoint ptr %mask11.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask11.i, align 4
  %46 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %mask.i, align 4
  %count.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0192.i, i32 0, i32 7
  %47 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %count.i, align 4
  %conv.i = zext i8 %48 to i32
  %call12.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef %conv.i, i32 noundef 0) #7
  %49 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %count.i, align 4
  %conv15183.i = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call12.i, i32 %conv15183.i)
  %cmp16184.i = icmp slt i32 %call12.i, %conv15183.i
  br i1 %cmp16184.i, label %for.body18.lr.ph.i, label %if.end9.i.for.end.i_crit_edge

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body18.lr.ph.i:                               ; preds = %if.end9.i
  %conv61.i = trunc i32 %i.0195.i to i8
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.inc.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %k.0188.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %k.1.i, %for.inc.i.for.body18.i_crit_edge ]
  %j.0187.i = phi i32 [ %call12.i, %for.body18.lr.ph.i ], [ %call79.i, %for.inc.i.for.body18.i_crit_edge ]
  %id.1186.i = phi i32 [ %id.0194.i, %for.body18.lr.ph.i ], [ %id.2.i, %for.inc.i.for.body18.i_crit_edge ]
  %data.0185.i = phi ptr [ %43, %for.body18.lr.ph.i ], [ %data.1.i, %for.inc.i.for.body18.i_crit_edge ]
  %capability19.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0185.i, i32 0, i32 4
  %51 = ptrtoint ptr %capability19.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %capability19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool20.not.i = icmp eq i32 %52, 0
  br i1 %tobool20.not.i, label %for.body18.i.if.end32.i_crit_edge, label %if.then21.i

for.body18.i.if.end32.i_crit_edge:                ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then21.i:                                      ; preds = %for.body18.i
  %53 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap22, align 4
  %call24.i = call i32 @regmap_read(ptr noundef %54, i32 noundef %52, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.then21.i.do.end66_crit_edge

if.then21.i.do.end66_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

if.end27.i:                                       ; preds = %if.then21.i
  %55 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %regval.i, align 4
  %bit.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.0185.i, i32 0, i32 3
  %57 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bit.i, align 4
  %and28.i = and i32 %58, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.for.inc.i_crit_edge, label %if.end27.i.if.end32.i_crit_edge

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.end27.i.for.inc.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end32.i:                                       ; preds = %if.end27.i.if.end32.i_crit_edge, %for.body18.i.if.end32.i_crit_edge
  %arrayidx.i = getelementptr %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 9, i32 %id.1186.i
  %arrayidx33.i = getelementptr %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 8, i32 %id.1186.i
  %59 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx.i, ptr %arrayidx33.i, align 4
  %60 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev25, align 4
  %dev35.i = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  %call36.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev35.i, i32 noundef 3264, ptr noundef %data.0185.i) #7
  %62 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx33.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call36.i, ptr %63, align 4
  %65 = load ptr, ptr %arrayidx33.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %tobool42.not.i = icmp eq ptr %67, null
  br i1 %tobool42.not.i, label %do.end.i, label %if.end45.i

do.end.i:                                         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.34, i32 noundef %id.1186.i) #10
  br label %do.end66

if.end45.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %arrayidx.i, align 4
  %mode.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 1
  %71 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 292, ptr %mode.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i, i32 0, i32 1
  %72 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @mlxreg_hotplug_attr_show, ptr %show.i, align 4
  %nr.i = getelementptr %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 9, i32 %id.1186.i, i32 2
  %73 = ptrtoint ptr %nr.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv61.i, ptr %nr.i, align 1
  %conv64.i = trunc i32 %k.0188.i to i8
  %index.i = getelementptr %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 9, i32 %id.1186.i, i32 1
  %74 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv64.i, ptr %index.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 3
  %75 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @mlxreg_hotplug_attr_init.__key, ptr %key.i, align 4
  %inc.i = add i32 %id.1186.i, 1
  %inc75.i = add i32 %k.0188.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end45.i, %if.end27.i.for.inc.i_crit_edge
  %id.2.i = phi i32 [ %inc.i, %if.end45.i ], [ %id.1186.i, %if.end27.i.for.inc.i_crit_edge ]
  %k.1.i = phi i32 [ %inc75.i, %if.end45.i ], [ %k.0188.i, %if.end27.i.for.inc.i_crit_edge ]
  %data.1.i = getelementptr %struct.mlxreg_core_data, ptr %data.0185.i, i32 1
  %76 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %count.i, align 4
  %conv77.i = zext i8 %77 to i32
  %add78.i = add nsw i32 %j.0187.i, 1
  %call79.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef %conv77.i, i32 noundef %add78.i) #7
  %78 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %count.i, align 4
  %conv15.i = zext i8 %79 to i32
  %cmp16.i = icmp slt i32 %call79.i, %conv15.i
  br i1 %cmp16.i, label %for.inc.i.for.body18.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body18.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end9.i.for.end.i_crit_edge
  %id.1.lcssa.i = phi i32 [ %id.0194.i, %if.end9.i.for.end.i_crit_edge ], [ %id.2.i, %for.inc.i.for.end.i_crit_edge ]
  %k.0.lcssa.i = phi i32 [ 0, %if.end9.i.for.end.i_crit_edge ], [ %k.1.i, %for.inc.i.for.end.i_crit_edge ]
  %add80.i = add i32 %k.0.lcssa.i, %num_attrs.0193.i
  %inc82.i = add nuw nsw i32 %i.0195.i, 1
  %incdec.ptr83.i = getelementptr %struct.mlxreg_core_item, ptr %item.0192.i, i32 1
  %80 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %counter.i, align 4
  %cmp.i = icmp slt i32 %inc82.i, %81
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.for.end84.i_crit_edge

for.end.i.for.end84.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end84.i

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end84.i:                                      ; preds = %for.end.i.for.end84.i_crit_edge, %if.end35.for.end84.i_crit_edge
  %num_attrs.0.lcssa.i = phi i32 [ 0, %if.end35.for.end84.i_crit_edge ], [ %add80.i, %for.end.i.for.end84.i_crit_edge ]
  %82 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_attrs.0.lcssa.i, i32 4) #7
  %83 = extractvalue { i32, i1 } %82, 1
  br i1 %83, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !100

devm_kcalloc.exit.thread.i:                       ; preds = %for.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  %attrs173.i = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 10, i32 3
  %84 = ptrtoint ptr %attrs173.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %attrs173.i, align 4
  br label %do.end66

devm_kcalloc.exit.i:                              ; preds = %for.end84.i
  %85 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev25, align 4
  %dev86.i = getelementptr inbounds %struct.platform_device, ptr %86, i32 0, i32 3
  %87 = extractvalue { i32, i1 } %82, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev86.i, i32 noundef %87, i32 noundef 3520) #7
  %attrs.i = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 10, i32 3
  %88 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call5.i.i.i, ptr %attrs.i, align 4
  %tobool90.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool90.not.i, label %devm_kcalloc.exit.i.do.end66_crit_edge, label %if.end68

devm_kcalloc.exit.i.do.end66_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.end66:                                         ; preds = %devm_kcalloc.exit.i.do.end66_crit_edge, %devm_kcalloc.exit.thread.i, %do.end.i, %if.then21.i.do.end66_crit_edge, %if.then.i.do.end66_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.do.end66_crit_edge ], [ -12, %do.end.i ], [ %call24.i, %if.then21.i.do.end66_crit_edge ], [ %call2.i, %if.then.i.do.end66_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end68:                                         ; preds = %devm_kcalloc.exit.i
  %group.i = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 10
  %mlxreg_hotplug_attr93.i = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 8
  %89 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %mlxreg_hotplug_attr93.i, ptr %attrs.i, align 4
  %groups.i = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 11
  %90 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %group.i, ptr %groups.i, align 4
  %arrayidx100.i = getelementptr %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 11, i32 1
  %91 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %arrayidx100.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  %call70 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i, ptr noundef %groups.i) #7
  %hwmon = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 7
  %92 = ptrtoint ptr %hwmon to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call70, ptr %hwmon, align 4
  %cmp.i136 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %do.end76, label %if.end82

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %call70 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %93) #10
  %94 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hwmon, align 4
  %96 = ptrtoint ptr %95 to i32
  br label %cleanup

if.end82:                                         ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i137) #7
  %97 = ptrtoint ptr %regval.i137 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %regval.i137, align 4, !annotation !99
  %98 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev25, align 4
  %platform_data.i.i139 = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3, i32 7
  %100 = ptrtoint ptr %platform_data.i.i139 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %platform_data.i.i139, align 8
  %counter.i140 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %counter.i140 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %counter.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp9.i = icmp sgt i32 %103, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i142, label %if.end82.for.end35.i_crit_edge

if.end82.for.end35.i_crit_edge:                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35.i

for.body.lr.ph.i142:                              ; preds = %if.end82
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %101, align 4
  br label %for.body.i144

for.body.i144:                                    ; preds = %for.inc32.i.for.body.i144_crit_edge, %for.body.lr.ph.i142
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i142 ], [ %inc33.i, %for.inc32.i.for.body.i144_crit_edge ]
  %item.010.i = phi ptr [ %105, %for.body.lr.ph.i142 ], [ %incdec.ptr34.i, %for.inc32.i.for.body.i144_crit_edge ]
  %106 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap22, align 4
  %reg.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.010.i, i32 0, i32 3
  %108 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %reg.i, align 4
  %add.i = add i32 %109, 1
  %call1.i = call i32 @regmap_write(ptr noundef %107, i32 noundef %add.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i143 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i143, label %if.end.i146, label %for.body.i144.do.end.i158_crit_edge

for.body.i144.do.end.i158_crit_edge:              ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i158

if.end.i146:                                      ; preds = %for.body.i144
  %count.i145 = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.010.i, i32 0, i32 7
  %110 = ptrtoint ptr %count.i145 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %count.i145, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp45.not.i = icmp eq i8 %111, 0
  br i1 %cmp45.not.i, label %if.end.i146.for.end.i155_crit_edge, label %for.body6.lr.ph.i

if.end.i146.for.end.i155_crit_edge:               ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i155

for.body6.lr.ph.i:                                ; preds = %if.end.i146
  %112 = ptrtoint ptr %item.010.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %item.010.i, align 4
  %mask.i147 = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.010.i, i32 0, i32 4
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i153.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.07.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i151, %for.inc.i153.for.body6.i_crit_edge ]
  %data.06.i = phi ptr [ %113, %for.body6.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i153.for.body6.i_crit_edge ]
  %capability.i148 = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.06.i, i32 0, i32 4
  %114 = ptrtoint ptr %capability.i148 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %capability.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool7.not.i = icmp eq i32 %115, 0
  br i1 %tobool7.not.i, label %for.body6.i.for.inc.i153_crit_edge, label %if.then8.i

for.body6.i.for.inc.i153_crit_edge:               ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i153

if.then8.i:                                       ; preds = %for.body6.i
  %116 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap22, align 4
  %call11.i = call i32 @regmap_read(ptr noundef %117, i32 noundef %115, ptr noundef nonnull %regval.i137) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then8.i.do.end.i158_crit_edge

if.then8.i.do.end.i158_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i158

if.end14.i:                                       ; preds = %if.then8.i
  %118 = ptrtoint ptr %regval.i137 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %regval.i137, align 4
  %bit.i149 = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.06.i, i32 0, i32 3
  %120 = ptrtoint ptr %bit.i149 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bit.i149, align 4
  %and.i150 = and i32 %121, %119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool15.not.i = icmp eq i32 %and.i150, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end14.i.for.inc.i153_crit_edge

if.end14.i.for.inc.i153_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i153

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 1, %j.07.i
  %neg.i = xor i32 %shl.i, -1
  %122 = ptrtoint ptr %mask.i147 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mask.i147, align 4
  %and17.i = and i32 %123, %neg.i
  store i32 %and17.i, ptr %mask.i147, align 4
  br label %for.inc.i153

for.inc.i153:                                     ; preds = %if.then16.i, %if.end14.i.for.inc.i153_crit_edge, %for.body6.i.for.inc.i153_crit_edge
  %inc.i151 = add nuw nsw i32 %j.07.i, 1
  %incdec.ptr.i = getelementptr %struct.mlxreg_core_data, ptr %data.06.i, i32 1
  %124 = ptrtoint ptr %count.i145 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %count.i145, align 4
  %conv.i152 = zext i8 %125 to i32
  %cmp4.i = icmp ult i32 %inc.i151, %conv.i152
  br i1 %cmp4.i, label %for.inc.i153.for.body6.i_crit_edge, label %for.inc.i153.for.end.i155_crit_edge

for.inc.i153.for.end.i155_crit_edge:              ; preds = %for.inc.i153
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i155

for.inc.i153.for.body6.i_crit_edge:               ; preds = %for.inc.i153
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i

for.end.i155:                                     ; preds = %for.inc.i153.for.end.i155_crit_edge, %if.end.i146.for.end.i155_crit_edge
  %inversed.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.010.i, i32 0, i32 9
  %126 = ptrtoint ptr %inversed.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %inversed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool20.not.i154 = icmp eq i8 %127, 0
  br i1 %tobool20.not.i154, label %for.end.i155.for.inc32.i_crit_edge, label %if.then21.i156

for.end.i155.for.inc32.i_crit_edge:               ; preds = %for.end.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc32.i

if.then21.i156:                                   ; preds = %for.end.i155
  %mask22.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.010.i, i32 0, i32 4
  %128 = ptrtoint ptr %mask22.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mask22.i, align 4
  %cache.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.010.i, i32 0, i32 6
  %130 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %cache.i, align 4
  %131 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap22, align 4
  %133 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %reg.i, align 4
  %add25.i = add i32 %134, 2
  %call27.i = call i32 @regmap_write(ptr noundef %132, i32 noundef %add25.i, i32 noundef %129) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then21.i156.for.inc32.i_crit_edge, label %if.then21.i156.do.end.i158_crit_edge

if.then21.i156.do.end.i158_crit_edge:             ; preds = %if.then21.i156
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i158

if.then21.i156.for.inc32.i_crit_edge:             ; preds = %if.then21.i156
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %if.then21.i156.for.inc32.i_crit_edge, %for.end.i155.for.inc32.i_crit_edge
  %inc33.i = add nuw nsw i32 %i.011.i, 1
  %incdec.ptr34.i = getelementptr %struct.mlxreg_core_item, ptr %item.010.i, i32 1
  %135 = ptrtoint ptr %counter.i140 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %counter.i140, align 4
  %cmp.i157 = icmp slt i32 %inc33.i, %136
  br i1 %cmp.i157, label %for.inc32.i.for.body.i144_crit_edge, label %for.inc32.i.for.end35.i_crit_edge

for.inc32.i.for.end35.i_crit_edge:                ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35.i

for.inc32.i.for.body.i144_crit_edge:              ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i144

for.end35.i:                                      ; preds = %for.inc32.i.for.end35.i_crit_edge, %if.end82.for.end35.i_crit_edge
  %137 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap22, align 4
  %cell.i = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %101, i32 0, i32 4
  %139 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cell.i, align 4
  %add37.i = add i32 %140, 1
  %mask38.i = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %101, i32 0, i32 5
  %141 = ptrtoint ptr %mask38.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %mask38.i, align 4
  %call39.i = call i32 @regmap_write(ptr noundef %138, i32 noundef %add37.i, i32 noundef %142) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %for.end35.i.do.end.i158_crit_edge

for.end35.i.do.end.i158_crit_edge:                ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i158

if.end42.i:                                       ; preds = %for.end35.i
  %cell_low.i = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %101, i32 0, i32 6
  %143 = ptrtoint ptr %cell_low.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cell_low.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool43.not.i = icmp eq i32 %144, 0
  br i1 %tobool43.not.i, label %if.end42.i.out.i_crit_edge, label %if.then44.i

if.end42.i.out.i_crit_edge:                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then44.i:                                      ; preds = %if.end42.i
  %145 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regmap22, align 4
  %add47.i = add i32 %144, 1
  %mask_low.i = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %101, i32 0, i32 7
  %147 = ptrtoint ptr %mask_low.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mask_low.i, align 4
  %call48.i = call i32 @regmap_write(ptr noundef %146, i32 noundef %add47.i, i32 noundef %148) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.then44.i.out.i_crit_edge, label %if.then44.i.do.end.i158_crit_edge

if.then44.i.do.end.i158_crit_edge:                ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i158

if.then44.i.out.i_crit_edge:                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

out.i:                                            ; preds = %if.then44.i.out.i_crit_edge, %if.end42.i.out.i_crit_edge
  call void @mlxreg_hotplug_work_handler(ptr noundef %dwork_irq) #7
  br label %mlxreg_hotplug_set_irq.exit

do.end.i158:                                      ; preds = %if.then44.i.do.end.i158_crit_edge, %for.end35.i.do.end.i158_crit_edge, %if.then21.i156.do.end.i158_crit_edge, %if.then8.i.do.end.i158_crit_edge, %for.body.i144.do.end.i158_crit_edge
  %149 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.37) #10
  br label %mlxreg_hotplug_set_irq.exit

mlxreg_hotplug_set_irq.exit:                      ; preds = %do.end.i158, %out.i
  %151 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %call.i, align 4
  call void @enable_irq(i32 noundef %152) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i137) #7
  %after_probe = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %call.i, i32 0, i32 15
  %153 = ptrtoint ptr %after_probe to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %after_probe, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxreg_hotplug_set_irq.exit, %do.end76, %do.end66, %do.end33, %if.else.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i135, %do.end33 ], [ %retval.0.i.ph, %do.end66 ], [ %96, %do.end76 ], [ 0, %mlxreg_hotplug_set_irq.exit ], [ -22, %do.end ], [ -517, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call15, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_hotplug_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdev.i = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  tail call void @disable_irq(i32 noundef %9) #7
  %dwork_irq.i = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %1, i32 0, i32 5
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork_irq.i) #7
  %cell_low.i = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %cell_low.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cell_low.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %add.i = add i32 %11, 1
  %call3.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add.i, i32 noundef 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %regmap4.i = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap4.i, align 4
  %cell.i = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cell.i, align 4
  %add5.i = add i32 %17, 1
  %call6.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %add5.i, i32 noundef 0) #7
  %counter.i = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp46.i = icmp sgt i32 %19, 0
  br i1 %cmp46.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.mlxreg_hotplug_unset_irq.exit_crit_edge

if.end.i.mlxreg_hotplug_unset_irq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_hotplug_unset_irq.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc20.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc21.i, %for.inc20.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %item.047.i = phi ptr [ %incdec.ptr22.i, %for.inc20.i.for.body.i_crit_edge ], [ %7, %if.end.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %item.047.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %item.047.i, align 4
  %22 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap4.i, align 4
  %reg.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg.i, align 4
  %add9.i = add i32 %25, 2
  %call10.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %add9.i, i32 noundef 0) #7
  %26 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap4.i, align 4
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg.i, align 4
  %add13.i = add i32 %29, 1
  %call14.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef %add13.i, i32 noundef 0) #7
  %count15.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.047.i, i32 0, i32 7
  %30 = ptrtoint ptr %count15.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %count15.i, align 4
  %conv.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp1743.not.i = icmp eq i8 %31, 0
  br i1 %cmp1743.not.i, label %for.body.i.for.inc20.i_crit_edge, label %for.body19.lr.ph.i

for.body.i.for.inc20.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

for.body19.lr.ph.i:                               ; preds = %for.body.i
  %kind.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.047.i, i32 0, i32 1
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %j.045.i = phi i32 [ 0, %for.body19.lr.ph.i ], [ %inc.i, %for.body19.i.for.body19.i_crit_edge ]
  %data.044.i = phi ptr [ %21, %for.body19.lr.ph.i ], [ %incdec.ptr.i, %for.body19.i.for.body19.i_crit_edge ]
  %32 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %kind.i, align 4
  tail call fastcc void @mlxreg_hotplug_device_destroy(ptr noundef %1, ptr noundef %data.044.i, i32 noundef %33) #7
  %inc.i = add nuw nsw i32 %j.045.i, 1
  %incdec.ptr.i = getelementptr %struct.mlxreg_core_data, ptr %data.044.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body19.i.for.inc20.i_crit_edge, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19.i

for.body19.i.for.inc20.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %for.body19.i.for.inc20.i_crit_edge, %for.body.i.for.inc20.i_crit_edge
  %inc21.i = add nuw nsw i32 %i.048.i, 1
  %incdec.ptr22.i = getelementptr %struct.mlxreg_core_item, ptr %item.047.i, i32 1
  %34 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %counter.i, align 4
  %cmp.i = icmp slt i32 %inc21.i, %35
  br i1 %cmp.i, label %for.inc20.i.for.body.i_crit_edge, label %for.inc20.i.mlxreg_hotplug_unset_irq.exit_crit_edge

for.inc20.i.mlxreg_hotplug_unset_irq.exit_crit_edge: ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_hotplug_unset_irq.exit

for.inc20.i.for.body.i_crit_edge:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mlxreg_hotplug_unset_irq.exit:                    ; preds = %for.inc20.i.mlxreg_hotplug_unset_irq.exit_crit_edge, %if.end.i.mlxreg_hotplug_unset_irq.exit_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %37, ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_hotplug_irq_handler(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dwork_irq = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %dev, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %dwork_irq, i32 noundef 0) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxreg_hotplug_work_handler(ptr noundef %work) #2 align 64 {
entry:
  %asserted.i = alloca i32, align 4
  %regval.i89 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !99
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %pdev = getelementptr i8, ptr %work, i32 -12
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %regmap = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %cell = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cell, align 4
  %add = add i32 %10, 1
  %call1 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %add, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.do.end49_crit_edge, label %if.end

entry.do.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cell, align 4
  %call4 = call i32 @regmap_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.do.end49_crit_edge

if.end.do.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

if.end6:                                          ; preds = %if.end
  %mask = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %4, i32 0, i32 5
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %17 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regval, align 4
  %and = and i32 %18, %16
  store i32 %and, ptr %regval, align 4
  %aggr_cache = getelementptr i8, ptr %work, i32 4796
  %19 = ptrtoint ptr %aggr_cache to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aggr_cache, align 4
  %xor = xor i32 %20, %and
  store i32 %and, ptr %aggr_cache, align 4
  %not_asserted = getelementptr i8, ptr %work, i32 4801
  %21 = ptrtoint ptr %not_asserted to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %not_asserted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp8 = icmp eq i8 %22, 3
  br i1 %cmp8, label %if.then10, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %not_asserted to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %not_asserted, align 1
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6.if.end13_crit_edge
  %aggr_asserted.0 = phi i32 [ %25, %if.then10 ], [ %xor, %if.end6.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aggr_asserted.0)
  %tobool14.not = icmp eq i32 %aggr_asserted.0, 0
  br i1 %tobool14.not, label %out, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end13
  %counter = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %4, i32 0, i32 3
  %26 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp17106 = icmp sgt i32 %27, 0
  br i1 %cmp17106, label %for.body.lr.ph, label %for.cond.preheader.do.body26_crit_edge

for.cond.preheader.do.body26_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev.i = getelementptr i8, ptr %work, i32 -16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %item.0108 = phi ptr [ %6, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %aggr_mask = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0108, i32 0, i32 2
  %28 = ptrtoint ptr %aggr_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aggr_mask, align 4
  %and19 = and i32 %29, %aggr_asserted.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %for.body.for.inc_crit_edge, label %if.then21

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then21:                                        ; preds = %for.body
  %health = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0108, i32 0, i32 10
  %30 = ptrtoint ptr %health to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %health, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool22.not = icmp eq i8 %31, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then21
  %32 = ptrtoint ptr %item.0108 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %item.0108, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %34 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %regval.i, align 4, !annotation !99
  %count.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0108, i32 0, i32 7
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp79.not.i = icmp eq i8 %36, 0
  br i1 %cmp79.not.i, label %if.then23.mlxreg_hotplug_health_work_helper.exit_crit_edge, label %for.body.lr.ph.i

if.then23.mlxreg_hotplug_health_work_helper.exit_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_hotplug_health_work_helper.exit

for.body.lr.ph.i:                                 ; preds = %if.then23
  %cache.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0108, i32 0, i32 6
  %kind24.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0108, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.083.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %data.080.i = phi ptr [ %33, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %reg.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.080.i, i32 0, i32 1
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg.i, align 4
  %add.i = add i32 %40, 2
  %call.i = call i32 @regmap_write(ptr noundef %38, i32 noundef %add.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i:                                         ; preds = %for.body.i
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg.i, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %42, i32 noundef %44, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end8.i:                                        ; preds = %if.end.i
  %mask.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.080.i, i32 0, i32 2
  %45 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mask.i, align 4
  %47 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %regval.i, align 4
  %and.i = and i32 %48, %46
  store i32 %and.i, ptr %regval.i, align 4
  %49 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cache.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %and.i)
  %cmp9.i = icmp eq i32 %50, %and.i
  br i1 %cmp9.i, label %if.end8.i.ack_event.i_crit_edge, label %if.end12.i

if.end8.i.ack_event.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ack_event.i

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp13.i = icmp eq i32 %and.i, 2
  %attached.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.080.i, i32 0, i32 14
  %51 = ptrtoint ptr %attached.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %attached.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool16.not.i = icmp eq i8 %52, 0
  br i1 %cmp13.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end12.i
  br i1 %tobool16.not.i, label %if.then17.i, label %if.then15.i.if.end27.i_crit_edge

if.then15.i.if.end27.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then17.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %kind24.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %kind24.i, align 4
  call fastcc void @mlxreg_hotplug_device_create(ptr noundef %add.ptr, ptr noundef %data.080.i, i32 noundef %54) #7
  %55 = ptrtoint ptr %attached.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %attached.i, align 4
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end12.i
  br i1 %tobool16.not.i, label %if.else.i.if.end27.i_crit_edge, label %if.then23.i

if.else.i.if.end27.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %kind24.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %kind24.i, align 4
  call fastcc void @mlxreg_hotplug_device_destroy(ptr noundef %add.ptr, ptr noundef %data.080.i, i32 noundef %57) #7
  %58 = ptrtoint ptr %attached.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %attached.i, align 4
  %health_cntr.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %data.080.i, i32 0, i32 13
  %59 = ptrtoint ptr %health_cntr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %health_cntr.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.else.i.if.end27.i_crit_edge, %if.then17.i, %if.then15.i.if.end27.i_crit_edge
  %60 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %regval.i, align 4
  %62 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %cache.i, align 4
  br label %ack_event.i

ack_event.i:                                      ; preds = %if.end27.i, %if.end8.i.ack_event.i_crit_edge
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %65 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg.i, align 4
  %add31.i = add i32 %66, 1
  %call32.i = call i32 @regmap_write(ptr noundef %64, i32 noundef %add31.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %ack_event.i.do.end.i_crit_edge

ack_event.i.do.end.i_crit_edge:                   ; preds = %ack_event.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end35.i:                                       ; preds = %ack_event.i
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %69 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg.i, align 4
  %add38.i = add i32 %70, 2
  %71 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mask.i, align 4
  %call40.i = call i32 @regmap_write(ptr noundef %68, i32 noundef %add38.i, i32 noundef %72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %for.inc.i, label %if.end35.i.do.end.i_crit_edge

if.end35.i.do.end.i_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.inc.i:                                        ; preds = %if.end35.i
  %inc.i = add nuw nsw i32 %i.083.i, 1
  %incdec.ptr.i = getelementptr %struct.mlxreg_core_data, ptr %data.080.i, i32 1
  %73 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %count.i, align 4
  %conv.i = zext i8 %74 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mlxreg_hotplug_health_work_helper.exit_crit_edge

for.inc.i.mlxreg_hotplug_health_work_helper.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_hotplug_health_work_helper.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.end35.i.do.end.i_crit_edge, %ack_event.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.21) #10
  br label %mlxreg_hotplug_health_work_helper.exit

mlxreg_hotplug_health_work_helper.exit:           ; preds = %do.end.i, %for.inc.i.mlxreg_hotplug_health_work_helper.exit_crit_edge, %if.then23.mlxreg_hotplug_health_work_helper.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %for.inc

if.else:                                          ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %asserted.i) #7
  %77 = ptrtoint ptr %asserted.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %asserted.i, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i89) #7
  %78 = ptrtoint ptr %regval.i89 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %regval.i89, align 4, !annotation !99
  %tobool.not.i90 = icmp eq ptr %item.0108, null
  br i1 %tobool.not.i90, label %do.end.i92, label %if.end.i96, !prof !100

do.end.i92:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  call void @__asan_load4_noabort(i32 12)
  %81 = load i32, ptr inttoptr (i32 12 to ptr), align 4
  call void @__asan_load4_noabort(i32 16)
  %82 = load i32, ptr inttoptr (i32 16 to ptr), align 16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.30, i32 noundef %81, i32 noundef %82) #10
  br label %mlxreg_hotplug_work_helper.exit

if.end.i96:                                       ; preds = %if.else
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %reg4.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0108, i32 0, i32 3
  %85 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %reg4.i, align 4
  %add.i94 = add i32 %86, 2
  %call.i95 = call i32 @regmap_write(ptr noundef %84, i32 noundef %add.i94, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool5.not.i = icmp eq i32 %call.i95, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i96.do.end54.i_crit_edge

if.end.i96.do.end54.i_crit_edge:                  ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

if.end7.i:                                        ; preds = %if.end.i96
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %89 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %reg4.i, align 4
  %call10.i = call i32 @regmap_read(ptr noundef %88, i32 noundef %90, ptr noundef nonnull %regval.i89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end7.i.do.end54.i_crit_edge

if.end7.i.do.end54.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

if.end13.i:                                       ; preds = %if.end7.i
  %mask14.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0108, i32 0, i32 4
  %91 = ptrtoint ptr %mask14.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mask14.i, align 4
  %93 = ptrtoint ptr %regval.i89 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %regval.i89, align 4
  %and.i97 = and i32 %94, %92
  store i32 %and.i97, ptr %regval.i89, align 4
  %cache.i98 = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0108, i32 0, i32 6
  %95 = ptrtoint ptr %cache.i98 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cache.i98, align 4
  %xor.i = xor i32 %96, %and.i97
  %97 = ptrtoint ptr %asserted.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %xor.i, ptr %asserted.i, align 4
  store i32 %and.i97, ptr %cache.i98, align 4
  %call16.i = call i32 @_find_next_bit_be(ptr noundef nonnull %asserted.i, i32 noundef 8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16.i)
  %cmp98.i = icmp ult i32 %call16.i, 8
  br i1 %cmp98.i, label %for.body.lr.ph.i99, label %if.end13.i.for.end.i_crit_edge

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i99:                               ; preds = %if.end13.i
  %inversed.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0108, i32 0, i32 9
  %kind.i = getelementptr inbounds %struct.mlxreg_core_item, ptr %item.0108, i32 0, i32 1
  br label %for.body.i100

for.body.i100:                                    ; preds = %for.inc.i103.for.body.i100_crit_edge, %for.body.lr.ph.i99
  %bit.099.i = phi i32 [ %call16.i, %for.body.lr.ph.i99 ], [ %call37.i, %for.inc.i103.for.body.i100_crit_edge ]
  %98 = ptrtoint ptr %item.0108 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %item.0108, align 4
  %add.ptr.i = getelementptr %struct.mlxreg_core_data, ptr %99, i32 %bit.099.i
  %100 = ptrtoint ptr %regval.i89 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %regval.i89, align 4
  %shl.i = shl nuw nsw i32 1, %bit.099.i
  %and18.i = and i32 %101, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %102 = ptrtoint ptr %inversed.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %inversed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool28.not.i = icmp eq i8 %103, 0
  %104 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %kind.i, align 4
  br i1 %tobool19.not.i, label %if.else26.i, label %if.then20.i

if.then20.i:                                      ; preds = %for.body.i100
  br i1 %tobool28.not.i, label %if.else.i101, label %if.then22.i

if.then22.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mlxreg_hotplug_device_destroy(ptr noundef %add.ptr, ptr noundef %add.ptr.i, i32 noundef %105) #7
  br label %for.inc.i103

if.else.i101:                                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mlxreg_hotplug_device_create(ptr noundef %add.ptr, ptr noundef %add.ptr.i, i32 noundef %105) #7
  br label %for.inc.i103

if.else26.i:                                      ; preds = %for.body.i100
  br i1 %tobool28.not.i, label %if.else32.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mlxreg_hotplug_device_create(ptr noundef %add.ptr, ptr noundef %add.ptr.i, i32 noundef %105) #7
  br label %for.inc.i103

if.else32.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mlxreg_hotplug_device_destroy(ptr noundef %add.ptr, ptr noundef %add.ptr.i, i32 noundef %105) #7
  br label %for.inc.i103

for.inc.i103:                                     ; preds = %if.else32.i, %if.then29.i, %if.else.i101, %if.then22.i
  %add36.i = add nuw nsw i32 %bit.099.i, 1
  %call37.i = call i32 @_find_next_bit_be(ptr noundef nonnull %asserted.i, i32 noundef 8, i32 noundef %add36.i) #7
  %cmp.i102 = icmp ult i32 %call37.i, 8
  br i1 %cmp.i102, label %for.inc.i103.for.body.i100_crit_edge, label %for.inc.i103.for.end.i_crit_edge

for.inc.i103.for.end.i_crit_edge:                 ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i103.for.body.i100_crit_edge:             ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i100

for.end.i:                                        ; preds = %for.inc.i103.for.end.i_crit_edge, %if.end13.i.for.end.i_crit_edge
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %108 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %reg4.i, align 4
  %add40.i = add i32 %109, 1
  %call41.i = call i32 @regmap_write(ptr noundef %107, i32 noundef %add40.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %out.i, label %for.end.i.do.end54.i_crit_edge

for.end.i.do.end54.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

out.i:                                            ; preds = %for.end.i
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %112 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reg4.i, align 4
  %add47.i = add i32 %113, 2
  %114 = ptrtoint ptr %mask14.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mask14.i, align 4
  %call49.i = call i32 @regmap_write(ptr noundef %111, i32 noundef %add47.i, i32 noundef %115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %out.i.mlxreg_hotplug_work_helper.exit_crit_edge, label %out.i.do.end54.i_crit_edge

out.i.do.end54.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

out.i.mlxreg_hotplug_work_helper.exit_crit_edge:  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_hotplug_work_helper.exit

do.end54.i:                                       ; preds = %out.i.do.end54.i_crit_edge, %for.end.i.do.end54.i_crit_edge, %if.end7.i.do.end54.i_crit_edge, %if.end.i96.do.end54.i_crit_edge
  %116 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.21) #10
  br label %mlxreg_hotplug_work_helper.exit

mlxreg_hotplug_work_helper.exit:                  ; preds = %do.end54.i, %out.i.mlxreg_hotplug_work_helper.exit_crit_edge, %do.end.i92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i89) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %asserted.i) #7
  br label %for.inc

for.inc:                                          ; preds = %mlxreg_hotplug_work_helper.exit, %mlxreg_hotplug_health_work_helper.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0107, 1
  %incdec.ptr = getelementptr %struct.mlxreg_core_item, ptr %item.0108, i32 1
  %118 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %counter, align 4
  %cmp17 = icmp slt i32 %inc, %119
  br i1 %cmp17, label %for.inc.for.body_crit_edge, label %for.inc.do.body26_crit_edge

for.inc.do.body26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body26:                                        ; preds = %for.inc.do.body26_crit_edge, %for.cond.preheader.do.body26_crit_edge
  %lock = getelementptr i8, ptr %work, i32 100
  %call31 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call34 = call zeroext i1 @cancel_delayed_work(ptr noundef %work) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %120 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %120, ptr noundef %work, i32 noundef 0) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #7
  br label %cleanup

out:                                              ; preds = %if.end13
  %121 = ptrtoint ptr %not_asserted to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %not_asserted, align 1
  %inc39 = add i8 %122, 1
  store i8 %inc39, ptr %not_asserted, align 1
  %123 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap, align 4
  %125 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cell, align 4
  %add42 = add i32 %126, 1
  %127 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %mask, align 4
  %call44 = call i32 @regmap_write(ptr noundef %124, i32 noundef %add42, i32 noundef %128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %out.cleanup_crit_edge, label %out.do.end49_crit_edge

out.do.end49_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end49:                                         ; preds = %out.do.end49_crit_edge, %if.end.do.end49_crit_edge, %entry.do.end49_crit_edge
  %dev50 = getelementptr i8, ptr %work, i32 -16
  %129 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev50, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.21) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %out.cleanup_crit_edge, %do.body26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxreg_hotplug_device_create(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %kind) unnamed_addr #2 align 64 {
entry:
  %pdevinfo.i = alloca %struct.platform_device_info, align 8
  %event_str.i = alloca [34 x i8], align 1
  %label.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %brdinfo1 = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %brdinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %brdinfo1, align 4
  %hwmon = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %event_str.i) #7
  %4 = call ptr @memset(ptr %event_str.i, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %label.i) #7
  %5 = call ptr @memset(ptr %label.i, i32 0, i32 32)
  store ptr %event_str.i, ptr @mlxreg_hotplug_udev_envp, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  %dst.addr.0.i.i = phi ptr [ %label.i, %entry ], [ %incdec.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %src.addr.0.i.i = phi ptr [ %data, %entry ], [ %incdec.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %src.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %src.addr.0.i.i, align 1
  %conv.i.i.i = zext i8 %7 to i32
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i, align 1
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not.i.i.i = icmp eq i8 %10, 0
  %sub.i.i.i = add i8 %7, -32
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i8 %7, i8 %sub.i.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %dst.addr.0.i.i, i32 1
  %11 = ptrtoint ptr %dst.addr.0.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select.i.i.i, ptr %dst.addr.0.i.i, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %src.addr.0.i.i, i32 1
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %mlxreg_hotplug_udev_event_send.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

mlxreg_hotplug_udev_event_send.exit:              ; preds = %do.body.i.i
  %hpdev = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %event_str.i, i32 noundef 32, ptr noundef nonnull @.str.29, ptr noundef nonnull %label.i, i32 noundef 1) #7
  %call7.i = call i32 @kobject_uevent_env(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @mlxreg_hotplug_udev_envp) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %label.i) #7
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %event_str.i) #7
  %nr = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %mlxreg_hotplug_udev_event_send.exit.cleanup_crit_edge, label %if.end

mlxreg_hotplug_udev_event_send.exit.cleanup_crit_edge: ; preds = %mlxreg_hotplug_udev_event_send.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mlxreg_hotplug_udev_event_send.exit
  %pdev = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %priv, i32 0, i32 2
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, i32 7
  %16 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data.i, align 8
  %action = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 5
  %18 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %action, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb43
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %shift_nr = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %17, i32 0, i32 9
  %21 = ptrtoint ptr %shift_nr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %shift_nr, align 4
  %add = add i32 %22, %13
  %call7 = call ptr @i2c_get_adapter(i32 noundef %add) #7
  %23 = ptrtoint ptr %hpdev to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7, ptr %hpdev, align 4
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev12 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %priv, i32 0, i32 1
  %24 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev12, align 4
  %26 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr, align 4
  %28 = ptrtoint ptr %shift_nr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %shift_nr, align 4
  %add16 = add i32 %29, %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.24, i32 noundef %add16) #10
  br label %cleanup

if.end17:                                         ; preds = %sw.bb
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %platform_data, align 4
  %tobool18.not = icmp eq ptr %31, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %17, i32 0, i32 2
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %regmap1.i = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %regmap1.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %35 = ptrtoint ptr %hpdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hpdev, align 4
  %call24 = call ptr @i2c_new_client_device(ptr noundef %36, ptr noundef %1) #7
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end29, label %if.end40

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %dev30 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %priv, i32 0, i32 1
  %37 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev30, align 4
  %39 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr, align 4
  %41 = ptrtoint ptr %shift_nr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %shift_nr, align 4
  %add34 = add i32 %42, %40
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr, align 2
  %conv = zext i16 %44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef %add34, i32 noundef %conv) #10
  %45 = ptrtoint ptr %hpdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hpdev, align 4
  call void @i2c_put_adapter(ptr noundef %46) #7
  %47 = ptrtoint ptr %hpdev to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %hpdev, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %client42 = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %client42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call24, ptr %client42, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end
  %49 = ptrtoint ptr %brdinfo1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %brdinfo1, align 4
  %tobool46.not = icmp eq ptr %50, null
  br i1 %tobool46.not, label %sw.bb43.if.end56_crit_edge, label %land.lhs.true

sw.bb43.if.end56_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

land.lhs.true:                                    ; preds = %sw.bb43
  %platform_data49 = getelementptr inbounds %struct.i2c_board_info, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %platform_data49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %platform_data49, align 4
  %tobool50.not = icmp eq ptr %52, null
  br i1 %tobool50.not, label %land.lhs.true.if.end56_crit_edge, label %if.then51

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %regmap55 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %17, i32 0, i32 2
  %53 = ptrtoint ptr %regmap55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap55, align 4
  %regmap1.i1 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %52, i32 0, i32 2
  %55 = ptrtoint ptr %regmap1.i1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %regmap1.i1, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %land.lhs.true.if.end56_crit_edge, %sw.bb43.if.end56_crit_edge
  %notifier = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 8
  %56 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %notifier, align 4
  %notifier58 = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 12
  %58 = ptrtoint ptr %notifier58 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %notifier58, align 4
  %59 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev, align 4
  %dev60 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i) #7
  %63 = getelementptr inbounds i8, ptr %pdevinfo.i, i32 8
  %64 = call ptr @memset(ptr %63, i32 255, i32 48)
  %65 = ptrtoint ptr %pdevinfo.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %dev60, ptr %pdevinfo.i, align 8
  %fwnode.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 1
  %66 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %fwnode.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %63, align 8
  %name2.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 3
  %68 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %1, ptr %name2.i, align 4
  %id3.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 4
  %69 = ptrtoint ptr %id3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %62, ptr %id3.i, align 8
  %res4.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 5
  %70 = ptrtoint ptr %res4.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %res4.i, align 4
  %num_res.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 6
  %71 = ptrtoint ptr %num_res.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %num_res.i, align 8
  %data5.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 7
  %72 = ptrtoint ptr %data5.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %data, ptr %data5.i, align 4
  %size_data.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 8
  %73 = ptrtoint ptr %size_data.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 120, ptr %size_data.i, align 8
  %dma_mask.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 9
  %74 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %dma_mask.i, align 8
  %properties.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i, i32 0, i32 10
  %75 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %properties.i, align 8
  %call.i2 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i) #7
  %pdev67 = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 4
  %76 = ptrtoint ptr %pdev67 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i2, ptr %pdev67, align 4
  %cmp.i3 = icmp ugt ptr %call.i2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3, label %if.end56.cleanup_crit_edge, label %if.end56.sw.epilog_crit_edge

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end56.sw.epilog_crit_edge, %if.end40, %if.end.sw.epilog_crit_edge
  %notifier77 = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 8
  %77 = ptrtoint ptr %notifier77 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %notifier77, align 4
  %tobool78.not = icmp eq ptr %78, null
  br i1 %tobool78.not, label %sw.epilog.cleanup_crit_edge, label %land.lhs.true79

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true79:                                  ; preds = %sw.epilog
  %user_handler = getelementptr inbounds %struct.mlxreg_core_hotplug_notifier, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %user_handler to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %user_handler, align 4
  %tobool82.not = icmp eq ptr %80, null
  br i1 %tobool82.not, label %land.lhs.true79.cleanup_crit_edge, label %if.then83

land.lhs.true79.cleanup_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then83:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #9
  %handle = getelementptr inbounds %struct.mlxreg_core_hotplug_notifier, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %handle, align 4
  %call89 = call i32 %80(ptr noundef %82, i32 noundef %kind, i8 noundef zeroext 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %land.lhs.true79.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %do.end29, %do.end, %mlxreg_hotplug_udev_event_send.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxreg_hotplug_device_destroy(ptr nocapture noundef readonly %priv, ptr nocapture noundef %data, i32 noundef %kind) unnamed_addr #2 align 64 {
entry:
  %event_str.i = alloca [34 x i8], align 1
  %label.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %event_str.i) #7
  %2 = call ptr @memset(ptr %event_str.i, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %label.i) #7
  %3 = call ptr @memset(ptr %label.i, i32 0, i32 32)
  store ptr %event_str.i, ptr @mlxreg_hotplug_udev_envp, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  %dst.addr.0.i.i = phi ptr [ %label.i, %entry ], [ %incdec.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %src.addr.0.i.i = phi ptr [ %data, %entry ], [ %incdec.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %src.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %src.addr.0.i.i, align 1
  %conv.i.i.i = zext i8 %5 to i32
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i.i, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i.i.i = icmp eq i8 %8, 0
  %sub.i.i.i = add i8 %5, -32
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i8 %5, i8 %sub.i.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %dst.addr.0.i.i, i32 1
  %9 = ptrtoint ptr %dst.addr.0.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select.i.i.i, ptr %dst.addr.0.i.i, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %src.addr.0.i.i, i32 1
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %mlxreg_hotplug_udev_event_send.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

mlxreg_hotplug_udev_event_send.exit:              ; preds = %do.body.i.i
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %event_str.i, i32 noundef 32, ptr noundef nonnull @.str.29, ptr noundef nonnull %label.i, i32 noundef 0) #7
  %call7.i = call i32 @kobject_uevent_env(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @mlxreg_hotplug_udev_envp) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %label.i) #7
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %event_str.i) #7
  %hpdev = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11
  %notifier = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 8
  %10 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %notifier, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %mlxreg_hotplug_udev_event_send.exit.if.end_crit_edge, label %land.lhs.true

mlxreg_hotplug_udev_event_send.exit.if.end_crit_edge: ; preds = %mlxreg_hotplug_udev_event_send.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %mlxreg_hotplug_udev_event_send.exit
  %user_handler = getelementptr inbounds %struct.mlxreg_core_hotplug_notifier, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %user_handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_handler, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %handle = getelementptr inbounds %struct.mlxreg_core_hotplug_notifier, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 4
  %call9 = call i32 %13(ptr noundef %15, i32 noundef %kind, i8 noundef zeroext 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %mlxreg_hotplug_udev_event_send.exit.if.end_crit_edge
  %action = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 5
  %16 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %action, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %17, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb27
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %client = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %sw.bb.if.end18_crit_edge, label %if.then13

sw.bb.if.end18_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %20) #7
  %21 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %client, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %sw.bb.if.end18_crit_edge
  %22 = ptrtoint ptr %hpdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hpdev, align 4
  %tobool20.not = icmp eq ptr %23, null
  br i1 %tobool20.not, label %if.end18.sw.epilog_crit_edge, label %if.then21

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_put_adapter(ptr noundef nonnull %23) #7
  %24 = ptrtoint ptr %hpdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %hpdev, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 11, i32 4
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  %tobool29.not = icmp eq ptr %26, null
  br i1 %tobool29.not, label %sw.bb27.sw.epilog_crit_edge, label %if.then30

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then30:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  call void @platform_device_unregister(ptr noundef nonnull %26) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then30, %sw.bb27.sw.epilog_crit_edge, %if.then21, %if.end18.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_hotplug_attr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index1, align 4
  %conv = zext i8 %3 to i32
  %nr5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr5, align 1
  %conv6 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %6 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %regval, align 4, !annotation !99
  %pdev = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %add.ptr9 = getelementptr %struct.mlxreg_core_item, ptr %12, i32 %conv6
  %13 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr9, align 4
  %regmap = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %reg = getelementptr %struct.mlxreg_core_data, ptr %14, i32 %conv, i32 1
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %call12 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %health = getelementptr %struct.mlxreg_core_item, ptr %12, i32 %conv6, i32 10
  %19 = ptrtoint ptr %health to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %health, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mask = getelementptr %struct.mlxreg_core_data, ptr %14, i32 %conv, i32 2
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask, align 4
  %23 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regval, align 4
  %and = and i32 %24, %22
  store i32 %and, ptr %regval, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end
  %inversed = getelementptr %struct.mlxreg_core_item, ptr %12, i32 %conv6, i32 9
  %25 = ptrtoint ptr %inversed to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %inversed, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool15.not = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regval, align 4
  %mask21 = getelementptr %struct.mlxreg_core_data, ptr %14, i32 %conv, i32 2
  %29 = ptrtoint ptr %mask21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask21, align 4
  %and22 = and i32 %30, %28
  br i1 %tobool15.not, label %if.else20, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool19.not = icmp eq i32 %and22, 0
  %lnot.ext = zext i1 %tobool19.not to i32
  %31 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %lnot.ext, ptr %regval, align 4
  br label %if.end29

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23 = icmp ne i32 %and22, 0
  %lnot.ext27 = zext i1 %tobool23 to i32
  %32 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %lnot.ext27, ptr %regval, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else20, %if.then16, %if.then14
  %33 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %regval, align 4
  %call30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %34)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end29 ], [ %call12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !85, !87, !88, !89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_mlxreg_hotplug__288_791_mlxreg_hotplug_driver_init6, !1, !"__initcall__kmod_mlxreg_hotplug__288_791_mlxreg_hotplug_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 791, i32 1}
!2 = !{ptr @__exitcall_mlxreg_hotplug_driver_exit, !1, !"__exitcall_mlxreg_hotplug_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 793, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 794, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 795, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 796, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 785, i32 11}
!14 = !{ptr @mlxreg_hotplug_driver, !15, !"mlxreg_hotplug_driver", i1 false, i1 false}
!15 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 783, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 711, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlxreg_hotplug_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlxreg_hotplug_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 741, i32 3}
!26 = !{ptr @mlxreg_hotplug_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mlxreg_hotplug_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mlxreg_hotplug_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 746, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mlxreg_hotplug_probe.__key.10, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 747, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mlxreg_hotplug_probe.__key.12, !32, !"__key", i1 false, i1 false}
!35 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 752, i32 3}
!38 = !{ptr @mlxreg_hotplug_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mlxreg_hotplug_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 758, i32 6}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 760, i32 3}
!44 = !{ptr @mlxreg_hotplug_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mlxreg_hotplug_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 576, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mlxreg_hotplug_work_handler._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mlxreg_hotplug_work_handler._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 469, i32 3}
!53 = !{ptr @mlxreg_hotplug_health_work_helper._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mlxreg_hotplug_health_work_helper._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 125, i32 4}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mlxreg_hotplug_device_create._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mlxreg_hotplug_device_create._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 137, i32 4}
!62 = !{ptr @mlxreg_hotplug_device_create._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mlxreg_hotplug_device_create._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 87, i32 50}
!66 = !{ptr @mlxreg_hotplug_udev_envp, !67, !"mlxreg_hotplug_udev_envp", i1 false, i1 false}
!67 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 76, i32 14}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 347, i32 3}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mlxreg_hotplug_work_helper._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mlxreg_hotplug_work_helper._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @mlxreg_hotplug_work_helper._entry.32, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 396, i32 3}
!75 = !{ptr @mlxreg_hotplug_work_helper._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 296, i32 5}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mlxreg_hotplug_attr_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @mlxreg_hotplug_attr_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @mlxreg_hotplug_attr_init.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 308, i32 4}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 236, i32 22}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/platform/mellanox/mlxreg-hotplug.c", i32 647, i32 3}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mlxreg_hotplug_set_irq._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @mlxreg_hotplug_set_irq._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i8 0, i8 2}
