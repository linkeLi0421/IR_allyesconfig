; ModuleID = '/llk/IR_all_yes/drivers/platform/mellanox/mlxreg-io.c_pt.bc'
source_filename = "../drivers/platform/mellanox/mlxreg-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.mlxreg_io_priv_data = type { ptr, ptr, ptr, [97 x ptr], [96 x %struct.sensor_device_attribute], %struct.attribute_group, [2 x ptr], i32 }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.mlxreg_core_platform_data = type { ptr, ptr, i32, i32, i32, [32 x i8], i32 }
%struct.mlxreg_core_data = type { [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, %struct.mlxreg_hotplug_device, ptr, i32, i8, i8, i8, i8 }
%struct.mlxreg_hotplug_device = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr }

@__initcall__kmod_mlxreg_io__170_261_mlxreg_io_driver_init6 = internal global ptr @mlxreg_io_driver_init, section ".initcall6.init", align 4
@mlxreg_io_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mlxreg_io_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mlxreg_io_driver_exit = internal global ptr @mlxreg_io_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [55 x i8] c"mlxreg_io.author=Vadim Pasternak <vadimp@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [56 x i8] c"mlxreg_io.description=Mellanox regmap I/O access driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [51 x i8] c"mlxreg_io.file=drivers/platform/mellanox/mlxreg-io\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [22 x i8] c"mlxreg_io.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [35 x i8] c"mlxreg_io.alias=platform:mlxreg-io\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlxreg-io\00", [22 x i8] zeroinitializer }, align 32
@mlxreg_io_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get platform data.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlxreg_io_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/platform/mellanox/mlxreg-io.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxreg_io_probe._entry_ptr = internal global ptr @mlxreg_io_probe._entry, section ".printk_index", align 4
@mlxreg_io_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate attributes: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mlxreg_io_probe._entry_ptr.8 = internal global ptr @mlxreg_io_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlxreg_io\00", [22 x i8] zeroinitializer }, align 32
@mlxreg_io_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register hwmon device %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@mlxreg_io_probe._entry_ptr.12 = internal global ptr @mlxreg_io_probe._entry.10, section ".printk_index", align 4
@mlxreg_io_devattr_rw = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute zeroinitializer, ptr @mlxreg_io_attr_show, ptr @mlxreg_io_attr_store }, [36 x i8] zeroinitializer }, align 32
@mlxreg_io_attr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Memory allocation failed for sysfs attribute %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlxreg_io_attr_init\00", [44 x i8] zeroinitializer }, align 32
@mlxreg_io_attr_init._entry_ptr = internal global ptr @mlxreg_io_attr_init._entry, section ".printk_index", align 4
@mlxreg_io_attr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@mlxreg_io_attr_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bus access error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlxreg_io_attr_store\00", [43 x i8] zeroinitializer }, align 32
@mlxreg_io_attr_store._entry_ptr = internal global ptr @mlxreg_io_attr_store._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"mlxreg_io_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 254, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 256, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 223, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 234, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 240, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 244, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"mlxreg_io_devattr_rw\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 164, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 192, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 202, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 124, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [41 x i8] c"../drivers/platform/mellanox/mlxreg-io.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 160, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_mlxreg_io_driver_exit, ptr @__initcall__kmod_mlxreg_io__170_261_mlxreg_io_driver_init6, ptr @mlxreg_io_attr_init._entry, ptr @mlxreg_io_attr_init._entry_ptr, ptr @mlxreg_io_attr_store._entry, ptr @mlxreg_io_attr_store._entry_ptr, ptr @mlxreg_io_driver_exit, ptr @mlxreg_io_probe._entry, ptr @mlxreg_io_probe._entry.10, ptr @mlxreg_io_probe._entry.6, ptr @mlxreg_io_probe._entry_ptr, ptr @mlxreg_io_probe._entry_ptr.12, ptr @mlxreg_io_probe._entry_ptr.8, ptr @mlxreg_io_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @mlxreg_io_devattr_rw, ptr @.str.13, ptr @.str.14, ptr @mlxreg_io_attr_init.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_io_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_io_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_io_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_io_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_io_devattr_rw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_io_attr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_io_attr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_io_attr_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_io_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlxreg_io_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlxreg_io_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlxreg_io_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_io_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3504, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pdata, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call.i, align 4
  %regmap = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_get_val_bytes(ptr noundef %5) #7
  %regsize = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %regsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call10, ptr %regsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %counter.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %counter.i, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !59

devm_kcalloc.exit.thread.i:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %attrs97.i = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %attrs97.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %attrs97.i, align 4
  br label %do.end20

devm_kcalloc.exit.i:                              ; preds = %if.end14
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %16 = extractvalue { i32, i1 } %11, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %16, i32 noundef 3520) #7
  %group.i = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 5
  %attrs.i = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i.i, ptr %attrs.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.do.end20_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.do.end20_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 4
  %counter4100.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %counter4100.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %counter4100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp101.i = icmp sgt i32 %21, 0
  br i1 %cmp101.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end23_crit_edge

for.cond.preheader.i.if.end23_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0102.i = phi i32 [ %inc.i, %if.end23.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 4, i32 %i.0102.i
  %arrayidx5.i = getelementptr %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 3, i32 %i.0102.i
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.i, ptr %arrayidx5.i, align 4
  %23 = call ptr @memcpy(ptr %arrayidx.i, ptr @mlxreg_io_devattr_rw, i32 28)
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %dev10.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %arrayidx12.i = getelementptr %struct.mlxreg_core_data, ptr %29, i32 %i.0102.i
  %call13.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev10.i, i32 noundef 3264, ptr noundef %arrayidx12.i) #7
  %30 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx5.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call13.i, ptr %31, align 4
  %33 = load ptr, ptr %arrayidx5.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool19.not.i = icmp eq ptr %35, null
  br i1 %tobool19.not.i, label %do.end.i, label %if.end23.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %dev22.i = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %add.i = add nuw nsw i32 %i.0102.i, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.13, i32 noundef %add.i) #10
  br label %do.end20

if.end23.i:                                       ; preds = %for.body.i
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %mode.i = getelementptr %struct.mlxreg_core_data, ptr %41, i32 %i.0102.i, i32 9
  %42 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mode.i, align 4
  %mode31.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 1
  %44 = ptrtoint ptr %mode31.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %mode31.i, align 4
  %45 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx5.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %arrayidx.i, align 4
  %index.i = getelementptr %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 4, i32 %i.0102.i, i32 1
  %50 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %i.0102.i, ptr %index.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 3
  %51 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @mlxreg_io_attr_init.__key, ptr %key.i, align 4
  %inc.i = add nuw nsw i32 %i.0102.i, 1
  %counter4.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %39, i32 0, i32 2
  %52 = ptrtoint ptr %counter4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %counter4.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %53
  br i1 %cmp.i, label %if.end23.i.for.body.i_crit_edge, label %if.end23.i.if.end23_crit_edge

if.end23.i.if.end23_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end20:                                         ; preds = %do.end.i, %devm_kcalloc.exit.i.do.end20_crit_edge, %devm_kcalloc.exit.thread.i
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %dev22 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.7, i32 noundef -12) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end23.i.if.end23_crit_edge, %for.cond.preheader.i.if.end23_crit_edge
  %mlxreg_io_attr49.i = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 3
  %56 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %mlxreg_io_attr49.i, ptr %attrs.i, align 4
  %groups.i = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 6
  %57 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %group.i, ptr %groups.i, align 4
  %arrayidx56.i = getelementptr %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 6, i32 1
  %58 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx56.i, align 4
  %call25 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i, ptr noundef %groups.i) #7
  %hwmon = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %call.i, i32 0, i32 2
  %59 = ptrtoint ptr %hwmon to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call25, ptr %hwmon, align 4
  %cmp.i64 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %do.end31, label %if.end37

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %60) #10
  %61 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hwmon, align 4
  %63 = ptrtoint ptr %62 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %64 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end31, %do.end20, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end20 ], [ %63, %do.end31 ], [ 0, %if.end37 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_val_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_io_attr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %pdata = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr3 = getelementptr %struct.mlxreg_core_data, ptr %7, i32 %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %8 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %regval, align 4
  %regmap = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %regsize = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regsize, align 4
  %call5 = call fastcc i32 @mlxreg_io_get_reg(ptr noundef %10, ptr noundef %add.ptr3, i32 noundef 0, i1 noundef zeroext true, i32 noundef %12, ptr noundef nonnull %regval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval, align 4
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_io_attr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %input_val = alloca i32, align 4
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %pdata = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr3 = getelementptr %struct.mlxreg_core_data, ptr %7, i32 %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input_val) #7
  %8 = ptrtoint ptr %input_val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %input_val, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %9 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %regval, align 4, !annotation !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %len)
  %cmp = icmp ugt i32 %len, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %input_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 4
  %regmap = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %input_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input_val, align 4
  %regsize = getelementptr inbounds %struct.mlxreg_io_priv_data, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regsize, align 4
  %call8 = call fastcc i32 @mlxreg_io_get_reg(ptr noundef %13, ptr noundef %add.ptr3, i32 noundef %15, i1 noundef zeroext false, i32 noundef %17, ptr noundef nonnull %regval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end11:                                         ; preds = %if.end6
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 4
  %regmap13 = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap13, align 4
  %reg = getelementptr %struct.mlxreg_core_data, ptr %7, i32 %3, i32 1
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg, align 4
  %24 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %regval, align 4
  %call14 = call i32 @regmap_write(ptr noundef %21, i32 noundef %23, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end11.do.end_crit_edge, %if.end6.do.end_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end6.do.end_crit_edge ], [ %call14, %if.end11.do.end_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %len, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input_val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxreg_io_get_reg(ptr noundef %regmap, ptr nocapture noundef readonly %data, i32 noundef %in_val, i1 noundef zeroext %rw_flag, i32 noundef %regsize, ptr noundef %regval) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !60
  %reg = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %call = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef %2, ptr noundef %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.access_error_crit_edge

entry.access_error_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %access_error

if.end:                                           ; preds = %entry
  %bit = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.then2, label %if.else15

if.then2:                                         ; preds = %if.end
  br i1 %rw_flag, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %mask = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  %neg = xor i32 %8, -1
  %and = and i32 %6, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5 = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool5 to i32
  br label %access_error.sink.split

if.else:                                          ; preds = %if.then2
  %mask7 = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %mask7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask7, align 4
  %11 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regval, align 4
  %and8 = and i32 %12, %10
  store i32 %and8, ptr %regval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_val)
  %tobool9.not = icmp eq i32 %in_val, 0
  br i1 %tobool9.not, label %if.else.access_error_crit_edge, label %if.then10

if.else.access_error_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %access_error

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %mask7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask7, align 4
  %neg12 = xor i32 %14, -1
  %or = or i32 %and8, %neg12
  br label %access_error.sink.split

if.else15:                                        ; preds = %if.end
  %mask16 = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %mask16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %for.cond.preheader, label %if.then18

for.cond.preheader:                               ; preds = %if.else15
  %regnum = getelementptr inbounds %struct.mlxreg_core_data, ptr %data, i32 0, i32 15
  %17 = ptrtoint ptr %regnum to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %regnum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp82 = icmp ugt i8 %18, 1
  br i1 %cmp82, label %for.body.lr.ph, label %for.cond.preheader.access_error_crit_edge

for.cond.preheader.access_error_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %access_error

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul = shl i32 %regsize, 3
  br label %for.body

if.then18:                                        ; preds = %if.else15
  br i1 %rw_flag, label %if.then20, label %if.else25

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regval, align 4
  %and22 = and i32 %20, %16
  %sub = add i32 %4, 31
  %or.i = tail call i32 @llvm.fshr.i32(i32 %and22, i32 %and22, i32 %sub) #7
  br label %access_error.sink.split

if.else25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %sub27 = add i32 %4, 31
  %or.i79 = tail call i32 @llvm.fshl.i32(i32 %in_val, i32 %in_val, i32 %sub27) #7
  %and30 = and i32 %16, %or.i79
  %21 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regval, align 4
  %neg32 = xor i32 %16, -1
  %and33 = and i32 %22, %neg32
  %or34 = or i32 %and33, %and30
  br label %access_error.sink.split

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %if.end42.for.body_crit_edge ]
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %add = add i32 %24, %i.083
  %call39 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %add, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %for.body.access_error_crit_edge

for.body.access_error_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %access_error

if.end42:                                         ; preds = %for.body
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %mul43 = mul i32 %mul, %i.083
  %or.i80 = call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 %mul43) #7
  %27 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regval, align 4
  %or45 = or i32 %28, %or.i80
  store i32 %or45, ptr %regval, align 4
  %inc = add nuw nsw i32 %i.083, 1
  %29 = ptrtoint ptr %regnum to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %regnum, align 1
  %conv = zext i8 %30 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end42.for.body_crit_edge, label %if.end42.access_error_crit_edge

if.end42.access_error_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %access_error

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

access_error.sink.split:                          ; preds = %if.else25, %if.then20, %if.then10, %if.then4
  %or.sink = phi i32 [ %or, %if.then10 ], [ %lnot.ext, %if.then4 ], [ %or.i, %if.then20 ], [ %or34, %if.else25 ]
  %31 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.sink, ptr %regval, align 4
  br label %access_error

access_error:                                     ; preds = %access_error.sink.split, %if.end42.access_error_crit_edge, %for.body.access_error_crit_edge, %for.cond.preheader.access_error_crit_edge, %if.else.access_error_crit_edge, %entry.access_error_crit_edge
  %ret.1 = phi i32 [ %call, %entry.access_error_crit_edge ], [ 0, %if.else.access_error_crit_edge ], [ 0, %for.cond.preheader.access_error_crit_edge ], [ 0, %access_error.sink.split ], [ %call39, %for.body.access_error_crit_edge ], [ 0, %if.end42.access_error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %ret.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshr.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_mlxreg_io__170_261_mlxreg_io_driver_init6, !1, !"__initcall__kmod_mlxreg_io__170_261_mlxreg_io_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 261, i32 1}
!2 = !{ptr @__exitcall_mlxreg_io_driver_exit, !1, !"__exitcall_mlxreg_io_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 263, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 264, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 265, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 266, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 256, i32 14}
!14 = !{ptr @mlxreg_io_driver, !15, !"mlxreg_io_driver", i1 false, i1 false}
!15 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 254, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 223, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlxreg_io_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlxreg_io_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 234, i32 3}
!26 = !{ptr @mlxreg_io_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mlxreg_io_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 240, i32 13}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 244, i32 3}
!32 = !{ptr @mlxreg_io_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mlxreg_io_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 192, i32 4}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mlxreg_io_attr_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @mlxreg_io_attr_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @mlxreg_io_attr_init.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 202, i32 3}
!41 = !{ptr @mlxreg_io_devattr_rw, !42, !"mlxreg_io_devattr_rw", i1 false, i1 false}
!42 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 164, i32 32}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 124, i32 22}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/platform/mellanox/mlxreg-io.c", i32 160, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mlxreg_io_attr_store._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @mlxreg_io_attr_store._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{!"auto-init"}
