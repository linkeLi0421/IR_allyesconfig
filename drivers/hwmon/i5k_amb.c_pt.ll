; ModuleID = '/llk/IR_all_yes/drivers/hwmon/i5k_amb.c_pt.bc'
source_filename = "../drivers/hwmon/i5k_amb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.71 = type { i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i5k_amb_data = type { ptr, i32, i32, [4 x i16], ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.i5k_device_attribute = type { %struct.sensor_device_attribute, [16 x i8] }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }

@amb_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@i5k_amb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i5k_amb_probe, ptr @i5k_amb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author236 = internal constant [57 x i8] c"i5k_amb.author=Darrick J. Wong <darrick.wong@oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [70 x i8] c"i5k_amb.description=Intel 5000 chipset FB-DIMM AMB temperature sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [35 x i8] c"i5k_amb.file=drivers/hwmon/i5k_amb\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [20 x i8] c"i5k_amb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_i5k_amb__240_607_i5k_amb_init6 = internal global ptr @i5k_amb_init, section ".initcall6.init", align 4
@__exitcall_i5k_amb_exit = internal global ptr @i5k_amb_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i5k_amb\00", [24 x i8] zeroinitializer }, align 32
@chipset_ids = internal constant { [3 x %struct.anon.71], [40 x i8] } { [3 x %struct.anon.71] [%struct.anon.71 { i32 9712, i32 9717 }, %struct.anon.71 { i32 16432, i32 16437 }, %struct.anon.71 zeroinitializer], [40 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@i5k_find_amb_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 442, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AMB region too small!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i5k_find_amb_registers\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/i5k_amb.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i5k_find_amb_registers._entry_ptr = internal global ptr @i5k_find_amb_registers._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_label\00", [19 x i8] zeroinitializer }, align 32
@i5k_amb_hwmon_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_input\00", [19 x i8] zeroinitializer }, align 32
@i5k_amb_hwmon_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp%d_min\00", [21 x i8] zeroinitializer }, align 32
@i5k_amb_hwmon_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp%d_mid\00", [21 x i8] zeroinitializer }, align 32
@i5k_amb_hwmon_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp%d_max\00", [21 x i8] zeroinitializer }, align 32
@i5k_amb_hwmon_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_alarm\00", [19 x i8] zeroinitializer }, align 32
@i5k_amb_hwmon_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ch. %d DIMM %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"amb_pdev\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 113, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"i5k_amb_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 574, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 576, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"chipset_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 483, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 442, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 284, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 289, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 299, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 304, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 314, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 320, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 330, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 336, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 346, i32 6 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 352, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 362, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 367, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 246, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 236, i32 22 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 135, i32 23 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 137, i32 23 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 111, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [27 x i8] c"../drivers/hwmon/i5k_amb.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 107, i32 22 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_i5k_amb_exit, ptr @__initcall__kmod_i5k_amb__240_607_i5k_amb_init6, ptr @i5k_amb_exit, ptr @i5k_find_amb_registers._entry, ptr @i5k_find_amb_registers._entry_ptr, ptr @amb_pdev, ptr @i5k_amb_driver, ptr @.str, ptr @chipset_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @i5k_amb_hwmon_init.__key, ptr @.str.7, ptr @i5k_amb_hwmon_init.__key.8, ptr @.str.9, ptr @i5k_amb_hwmon_init.__key.10, ptr @.str.11, ptr @i5k_amb_hwmon_init.__key.12, ptr @.str.13, ptr @i5k_amb_hwmon_init.__key.14, ptr @.str.15, ptr @i5k_amb_hwmon_init.__key.16, ptr @dev_attr_name, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amb_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i5k_amb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chipset_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i5k_find_amb_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i5k_amb_hwmon_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i5k_amb_hwmon_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i5k_amb_hwmon_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i5k_amb_hwmon_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i5k_amb_hwmon_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i5k_amb_hwmon_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i5k_amb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @amb_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @i5k_amb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i5k_amb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i5k_amb_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef 0) #10
  store ptr %call.i, ptr @amb_pdev, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @platform_device_add(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %err.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err.i:                                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @amb_pdev, align 4
  tail call void @platform_device_put(ptr noundef %0) #10
  br label %if.then3

if.then3:                                         ; preds = %err.i, %if.end.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.if.then3_crit_edge ], [ %call1.i, %err.i ]
  tail call void @platform_driver_unregister(ptr noundef nonnull @i5k_amb_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then3 ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i5k_amb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val16.i75 = alloca i16, align 2
  %val16.i = alloca i16, align 2
  %val32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %amb_base.i = getelementptr inbounds %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 1
  %amb_len.i = getelementptr inbounds %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #10
  %1 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val32.i, align 4, !annotation !73
  %call.i = call ptr @pci_get_device(i32 noundef 32902, i32 noundef 9712, ptr noundef null) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %i5k_find_amb_registers.exit.thread, label %if.end.i

i5k_find_amb_registers.exit.thread:               ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #10
  br label %if.end3

if.end.i:                                         ; preds = %do.body.preheader
  %call1.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call.i, i32 noundef 72, ptr noundef nonnull %val32.i) #10
  %2 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %if.end.i.i5k_find_amb_registers.exit.thread99_crit_edge, label %if.end3.i

if.end.i.i5k_find_amb_registers.exit.thread99_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i5k_find_amb_registers.exit.thread99

if.end3.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %amb_base.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %amb_base.i, align 4
  %call4.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call.i, i32 noundef 80, ptr noundef nonnull %val32.i) #10
  %5 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp5.i = icmp eq i32 %6, -1
  br i1 %cmp5.i, label %if.end3.i.i5k_find_amb_registers.exit.thread99_crit_edge, label %if.end7.i

if.end3.i.i5k_find_amb_registers.exit.thread99_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i5k_find_amb_registers.exit.thread99

if.end7.i:                                        ; preds = %if.end3.i
  %7 = ptrtoint ptr %amb_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %amb_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %6)
  %cmp9.i = icmp ult i32 %6, 131072
  br i1 %cmp9.i, label %do.end.i, label %if.end7.i.if.end9_crit_edge

if.end7.i.if.end9_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1) #14
  br label %i5k_find_amb_registers.exit.thread99

i5k_find_amb_registers.exit.thread99:             ; preds = %do.end.i, %if.end3.i.i5k_find_amb_registers.exit.thread99_crit_edge, %if.end.i.i5k_find_amb_registers.exit.thread99_crit_edge
  call void @pci_dev_put(ptr noundef nonnull %call.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #10
  br label %if.end3

if.end3:                                          ; preds = %i5k_find_amb_registers.exit.thread99, %i5k_find_amb_registers.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #10
  %8 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val32.i, align 4, !annotation !73
  %call.i.1 = call ptr @pci_get_device(i32 noundef 32902, i32 noundef 16432, ptr noundef null) #10
  %tobool.not.i.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i.1, label %i5k_find_amb_registers.exit.thread.1, label %if.end.i.1

if.end.i.1:                                       ; preds = %if.end3
  %call1.i.1 = call i32 @pci_read_config_dword(ptr noundef nonnull %call.i.1, i32 noundef 72, ptr noundef nonnull %val32.i) #10
  %9 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.1 = icmp eq i32 %10, -1
  br i1 %cmp.i.1, label %if.end.i.1.i5k_find_amb_registers.exit.thread99.1_crit_edge, label %if.end3.i.1

if.end.i.1.i5k_find_amb_registers.exit.thread99.1_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %i5k_find_amb_registers.exit.thread99.1

if.end3.i.1:                                      ; preds = %if.end.i.1
  %11 = ptrtoint ptr %amb_base.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %amb_base.i, align 4
  %call4.i.1 = call i32 @pci_read_config_dword(ptr noundef nonnull %call.i.1, i32 noundef 80, ptr noundef nonnull %val32.i) #10
  %12 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp5.i.1 = icmp eq i32 %13, -1
  br i1 %cmp5.i.1, label %if.end3.i.1.i5k_find_amb_registers.exit.thread99.1_crit_edge, label %if.end7.i.1

if.end3.i.1.i5k_find_amb_registers.exit.thread99.1_crit_edge: ; preds = %if.end3.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %i5k_find_amb_registers.exit.thread99.1

if.end7.i.1:                                      ; preds = %if.end3.i.1
  %14 = ptrtoint ptr %amb_len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %amb_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %13)
  %cmp9.i.1 = icmp ult i32 %13, 131072
  br i1 %cmp9.i.1, label %do.end.i.1, label %if.end7.i.1.if.end9_crit_edge

if.end7.i.1.if.end9_crit_edge:                    ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end.i.1:                                       ; preds = %if.end7.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.1 = getelementptr inbounds %struct.pci_dev, ptr %call.i.1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.1, ptr noundef nonnull @.str.1) #14
  br label %i5k_find_amb_registers.exit.thread99.1

i5k_find_amb_registers.exit.thread99.1:           ; preds = %do.end.i.1, %if.end3.i.1.i5k_find_amb_registers.exit.thread99.1_crit_edge, %if.end.i.1.i5k_find_amb_registers.exit.thread99.1_crit_edge
  call void @pci_dev_put(ptr noundef nonnull %call.i.1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #10
  br label %err39

i5k_find_amb_registers.exit.thread.1:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #10
  br label %err39

if.end9:                                          ; preds = %if.end7.i.1.if.end9_crit_edge, %if.end7.i.if.end9_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end7.i.if.end9_crit_edge ], [ 1, %if.end7.i.1.if.end9_crit_edge ]
  %call.i.lcssa = phi ptr [ %call.i, %if.end7.i.if.end9_crit_edge ], [ %call.i.1, %if.end7.i.1.if.end9_crit_edge ]
  call void @pci_dev_put(ptr noundef nonnull %call.i.lcssa) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #10
  %amb_present = getelementptr inbounds %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 3
  %fbd0 = getelementptr [3 x %struct.anon.71], ptr @chipset_ids, i32 0, i32 %i.0.lcssa, i32 1
  %15 = ptrtoint ptr %fbd0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fbd0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val16.i) #10
  %17 = ptrtoint ptr %val16.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %val16.i, align 2, !annotation !73
  %call.i67 = call ptr @pci_get_device(i32 noundef 32902, i32 noundef %16, ptr noundef null) #10
  %tobool.not.i68 = icmp eq ptr %call.i67, null
  br i1 %tobool.not.i68, label %i5k_channel_probe.exit.thread, label %if.end.i71

i5k_channel_probe.exit.thread:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val16.i) #10
  br label %err39

if.end.i71:                                       ; preds = %if.end9
  %call1.i69 = call i32 @pci_read_config_word(ptr noundef nonnull %call.i67, i32 noundef 100, ptr noundef nonnull %val16.i) #10
  %18 = ptrtoint ptr %val16.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp.i70 = icmp eq i16 %19, -1
  br i1 %cmp.i70, label %if.end.i71.i5k_channel_probe.exit.thread108_crit_edge, label %if.end4.i

if.end.i71.i5k_channel_probe.exit.thread108_crit_edge: ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %i5k_channel_probe.exit.thread108

if.end4.i:                                        ; preds = %if.end.i71
  %20 = ptrtoint ptr %amb_present to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %amb_present, align 4
  %call5.i = call i32 @pci_read_config_word(ptr noundef nonnull %call.i67, i32 noundef 102, ptr noundef nonnull %val16.i) #10
  %21 = ptrtoint ptr %val16.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %val16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp7.i = icmp eq i16 %22, -1
  br i1 %cmp7.i, label %if.end4.i.i5k_channel_probe.exit.thread108_crit_edge, label %if.end15

if.end4.i.i5k_channel_probe.exit.thread108_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i5k_channel_probe.exit.thread108

i5k_channel_probe.exit.thread108:                 ; preds = %if.end4.i.i5k_channel_probe.exit.thread108_crit_edge, %if.end.i71.i5k_channel_probe.exit.thread108_crit_edge
  call void @pci_dev_put(ptr noundef nonnull %call.i67) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val16.i) #10
  br label %err39

if.end15:                                         ; preds = %if.end4.i
  %arrayidx11.i = getelementptr %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx11.i, align 2
  call void @pci_dev_put(ptr noundef nonnull %call.i67) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val16.i) #10
  %arrayidx17 = getelementptr %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 3, i32 2
  %add = add i32 %16, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val16.i75) #10
  %24 = ptrtoint ptr %val16.i75 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %val16.i75, align 2, !annotation !73
  %call.i76 = call ptr @pci_get_device(i32 noundef 32902, i32 noundef %add, ptr noundef null) #10
  %tobool.not.i77 = icmp eq ptr %call.i76, null
  br i1 %tobool.not.i77, label %if.end15.i5k_channel_probe.exit89_crit_edge, label %if.end.i80

if.end15.i5k_channel_probe.exit89_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %i5k_channel_probe.exit89

if.end.i80:                                       ; preds = %if.end15
  %call1.i78 = call i32 @pci_read_config_word(ptr noundef nonnull %call.i76, i32 noundef 100, ptr noundef nonnull %val16.i75) #10
  %25 = ptrtoint ptr %val16.i75 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %val16.i75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp.i79 = icmp eq i16 %26, -1
  br i1 %cmp.i79, label %if.end.i80.out.i87_crit_edge, label %if.end4.i83

if.end.i80.out.i87_crit_edge:                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i87

if.end4.i83:                                      ; preds = %if.end.i80
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx17, align 8
  %call5.i81 = call i32 @pci_read_config_word(ptr noundef nonnull %call.i76, i32 noundef 102, ptr noundef nonnull %val16.i75) #10
  %28 = ptrtoint ptr %val16.i75 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %val16.i75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %29)
  %cmp7.i82 = icmp eq i16 %29, -1
  br i1 %cmp7.i82, label %if.end4.i83.out.i87_crit_edge, label %if.end10.i85

if.end4.i83.out.i87_crit_edge:                    ; preds = %if.end4.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i87

if.end10.i85:                                     ; preds = %if.end4.i83
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i84 = getelementptr %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %arrayidx11.i84 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx11.i84, align 2
  br label %out.i87

out.i87:                                          ; preds = %if.end10.i85, %if.end4.i83.out.i87_crit_edge, %if.end.i80.out.i87_crit_edge
  call void @pci_dev_put(ptr noundef nonnull %call.i76) #10
  br label %i5k_channel_probe.exit89

i5k_channel_probe.exit89:                         ; preds = %out.i87, %if.end15.i5k_channel_probe.exit89_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val16.i75) #10
  %31 = ptrtoint ptr %amb_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %amb_base.i, align 4
  %33 = ptrtoint ptr %amb_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %amb_len.i, align 8
  %call21 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %32, i32 noundef %34, ptr noundef nonnull @.str, i32 noundef 0) #10
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %i5k_channel_probe.exit89.err39_crit_edge, label %if.end24

i5k_channel_probe.exit89.err39_crit_edge:         ; preds = %i5k_channel_probe.exit89
  call void @__sanitizer_cov_trace_pc() #12
  br label %err39

if.end24:                                         ; preds = %i5k_channel_probe.exit89
  %35 = ptrtoint ptr %amb_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %amb_base.i, align 4
  %37 = ptrtoint ptr %amb_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %amb_len.i, align 8
  %call27 = call ptr @ioremap(i32 noundef %36, i32 noundef %38) #10
  %amb_mmio = getelementptr inbounds %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %amb_mmio to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call27, ptr %amb_mmio, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end24.err_map_failed_crit_edge, label %if.end31

if.end24.err_map_failed_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_map_failed

if.end31:                                         ; preds = %if.end24
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 3, i32 0
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i, align 4
  %43 = and i16 %42, 32767
  %and.i = zext i16 %43 to i32
  %call.i.i = call i32 @__sw_hweight16(i32 noundef %and.i) #10
  %arrayidx.i.1 = getelementptr %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i.1, align 2
  %46 = and i16 %45, 32767
  %and.i.1 = zext i16 %46 to i32
  %call.i.i.1 = call i32 @__sw_hweight16(i32 noundef %and.i.1) #10
  %add199.i.1 = add i32 %call.i.i.1, %call.i.i
  %arrayidx.i.2 = getelementptr %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i.2, align 8
  %49 = and i16 %48, 32767
  %and.i.2 = zext i16 %49 to i32
  %call.i.i.2 = call i32 @__sw_hweight16(i32 noundef %and.i.2) #10
  %add199.i.2 = add i32 %call.i.i.2, %add199.i.1
  %arrayidx.i.3 = getelementptr %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i.3, align 2
  %52 = and i16 %51, 32767
  %and.i.3 = zext i16 %52 to i32
  %call.i.i.3 = call i32 @__sw_hweight16(i32 noundef %and.i.3) #10
  %add199.i.3 = add i32 %call.i.i.3, %add199.i.2
  %53 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add199.i.3, i32 6) #10
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %if.end31.if.end8.i.i.i_crit_edge, label %if.end.i.i

if.end31.if.end8.i.i.i_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %55 = extractvalue { i32, i1 } %53, 0
  %56 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 48) #10
  %57 = extractvalue { i32, i1 } %56, 1
  %58 = extractvalue { i32, i1 } %56, 0
  %spec.select.i.i = select i1 %57, i32 -1, i32 %58
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i.i, %if.end31.if.end8.i.i.i_crit_edge
  %retval.0.i.i = phi i32 [ -1, %if.end31.if.end8.i.i.i_crit_edge ], [ %spec.select.i.i, %if.end.i.i ]
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #15
  %attrs.i = getelementptr inbounds %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call9.i.i.i, ptr %attrs.i, align 8
  %tobool203.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool203.not.i, label %if.end8.i.i.i.err_init_failed_crit_edge, label %if.end.i91

if.end8.i.i.i.err_init_failed_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init_failed

if.end.i91:                                       ; preds = %if.end8.i.i.i
  %num_attrs.i = getelementptr inbounds %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %num_attrs.i, align 4
  %dev.i90 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body207.i

for.body207.i:                                    ; preds = %for.inc443.i.for.body207.i_crit_edge, %if.end.i91
  %d.0656.i = phi i32 [ 0, %if.end.i91 ], [ %d.2.i, %for.inc443.i.for.body207.i_crit_edge ]
  %i.1655.i = phi i32 [ 0, %if.end.i91 ], [ %inc444.i, %for.inc443.i.for.body207.i_crit_edge ]
  %arrayidx209.i = getelementptr %struct.i5k_amb_data, ptr %call7.i.i, i32 0, i32 3, i32 %i.1655.i
  %61 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx209.i, align 2
  %mul.i.i = shl i32 %i.1655.i, 4
  br label %for.body213.i

for.body213.i:                                    ; preds = %for.inc437.i.for.body213.i_crit_edge, %for.body207.i
  %c.0654.i = phi i16 [ %62, %for.body207.i ], [ %123, %for.inc437.i.for.body213.i_crit_edge ]
  %d.1653.i = phi i32 [ %d.0656.i, %for.body207.i ], [ %d.2.i, %for.inc437.i.for.body213.i_crit_edge ]
  %j.0652.i = phi i32 [ 0, %for.body207.i ], [ %inc438.i, %for.inc437.i.for.body213.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %j.0652.i, %mul.i.i
  %63 = and i16 %c.0654.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool217.not.i = icmp eq i16 %63, 0
  br i1 %tobool217.not.i, label %for.body213.i.for.inc437.i_crit_edge, label %if.end219.i

for.body213.i.for.inc437.i_crit_edge:             ; preds = %for.body213.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc437.i

if.end219.i:                                      ; preds = %for.body213.i
  %inc220.i = add i32 %d.1653.i, 1
  %64 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %attrs.i, align 8
  %66 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_attrs.i, align 4
  %add.ptr.i = getelementptr %struct.i5k_device_attribute, ptr %65, i32 %67
  %name.i = getelementptr %struct.i5k_device_attribute, ptr %65, i32 %67, i32 1
  %call223.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %inc220.i) #10
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %name.i, ptr %add.ptr.i, align 4
  %mode.i = getelementptr inbounds %struct.attribute, ptr %add.ptr.i, i32 0, i32 1
  %69 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 292, ptr %mode.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %add.ptr.i, i32 0, i32 1
  %70 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @show_label, ptr %show.i, align 4
  %index.i = getelementptr inbounds %struct.sensor_device_attribute, ptr %add.ptr.i, i32 0, i32 1
  %71 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add.i.i, ptr %index.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %add.ptr.i, i32 0, i32 3
  %72 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @i5k_amb_hwmon_init.__key, ptr %key.i, align 4
  %call238.i = call i32 @device_create_file(ptr noundef %dev.i90, ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238.i)
  %tobool239.not.i = icmp eq i32 %call238.i, 0
  br i1 %tobool239.not.i, label %if.end241.i, label %if.end219.i.exit_remove.i_crit_edge

if.end219.i.exit_remove.i_crit_edge:              ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_remove.i

if.end241.i:                                      ; preds = %if.end219.i
  %73 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_attrs.i, align 4
  %inc243.i = add i32 %74, 1
  store i32 %inc243.i, ptr %num_attrs.i, align 4
  %75 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %attrs.i, align 8
  %add.ptr246.i = getelementptr %struct.i5k_device_attribute, ptr %76, i32 %inc243.i
  %name247.i = getelementptr %struct.i5k_device_attribute, ptr %76, i32 %inc243.i, i32 1
  %call249.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name247.i, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %inc220.i) #10
  %77 = ptrtoint ptr %add.ptr246.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %name247.i, ptr %add.ptr246.i, align 4
  %mode259.i = getelementptr inbounds %struct.attribute, ptr %add.ptr246.i, i32 0, i32 1
  %78 = ptrtoint ptr %mode259.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 292, ptr %mode259.i, align 4
  %show262.i = getelementptr inbounds %struct.device_attribute, ptr %add.ptr246.i, i32 0, i32 1
  %79 = ptrtoint ptr %show262.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @show_amb_temp, ptr %show262.i, align 4
  %index264.i = getelementptr inbounds %struct.sensor_device_attribute, ptr %add.ptr246.i, i32 0, i32 1
  %80 = ptrtoint ptr %index264.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add.i.i, ptr %index264.i, align 4
  %key269.i = getelementptr inbounds %struct.attribute, ptr %add.ptr246.i, i32 0, i32 3
  %81 = ptrtoint ptr %key269.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @i5k_amb_hwmon_init.__key.8, ptr %key269.i, align 4
  %call275.i = call i32 @device_create_file(ptr noundef %dev.i90, ptr noundef %add.ptr246.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275.i)
  %tobool276.not.i = icmp eq i32 %call275.i, 0
  br i1 %tobool276.not.i, label %if.end278.i, label %if.end241.i.exit_remove.i_crit_edge

if.end241.i.exit_remove.i_crit_edge:              ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_remove.i

if.end278.i:                                      ; preds = %if.end241.i
  %82 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_attrs.i, align 4
  %inc280.i = add i32 %83, 1
  store i32 %inc280.i, ptr %num_attrs.i, align 4
  %84 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %attrs.i, align 8
  %add.ptr283.i = getelementptr %struct.i5k_device_attribute, ptr %85, i32 %inc280.i
  %name284.i = getelementptr %struct.i5k_device_attribute, ptr %85, i32 %inc280.i, i32 1
  %call286.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name284.i, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %inc220.i) #10
  %86 = ptrtoint ptr %add.ptr283.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %name284.i, ptr %add.ptr283.i, align 4
  %mode296.i = getelementptr inbounds %struct.attribute, ptr %add.ptr283.i, i32 0, i32 1
  %87 = ptrtoint ptr %mode296.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 420, ptr %mode296.i, align 4
  %show299.i = getelementptr inbounds %struct.device_attribute, ptr %add.ptr283.i, i32 0, i32 1
  %88 = ptrtoint ptr %show299.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @show_amb_min, ptr %show299.i, align 4
  %store.i = getelementptr inbounds %struct.device_attribute, ptr %add.ptr283.i, i32 0, i32 2
  %89 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @store_amb_min, ptr %store.i, align 4
  %index303.i = getelementptr inbounds %struct.sensor_device_attribute, ptr %add.ptr283.i, i32 0, i32 1
  %90 = ptrtoint ptr %index303.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add.i.i, ptr %index303.i, align 4
  %key308.i = getelementptr inbounds %struct.attribute, ptr %add.ptr283.i, i32 0, i32 3
  %91 = ptrtoint ptr %key308.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @i5k_amb_hwmon_init.__key.10, ptr %key308.i, align 4
  %call314.i = call i32 @device_create_file(ptr noundef %dev.i90, ptr noundef %add.ptr283.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314.i)
  %tobool315.not.i = icmp eq i32 %call314.i, 0
  br i1 %tobool315.not.i, label %if.end317.i, label %if.end278.i.exit_remove.i_crit_edge

if.end278.i.exit_remove.i_crit_edge:              ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_remove.i

if.end317.i:                                      ; preds = %if.end278.i
  %92 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_attrs.i, align 4
  %inc319.i = add i32 %93, 1
  store i32 %inc319.i, ptr %num_attrs.i, align 4
  %94 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %attrs.i, align 8
  %add.ptr322.i = getelementptr %struct.i5k_device_attribute, ptr %95, i32 %inc319.i
  %name323.i = getelementptr %struct.i5k_device_attribute, ptr %95, i32 %inc319.i, i32 1
  %call325.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name323.i, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %inc220.i) #10
  %96 = ptrtoint ptr %add.ptr322.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %name323.i, ptr %add.ptr322.i, align 4
  %mode335.i = getelementptr inbounds %struct.attribute, ptr %add.ptr322.i, i32 0, i32 1
  %97 = ptrtoint ptr %mode335.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 420, ptr %mode335.i, align 4
  %show338.i = getelementptr inbounds %struct.device_attribute, ptr %add.ptr322.i, i32 0, i32 1
  %98 = ptrtoint ptr %show338.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @show_amb_mid, ptr %show338.i, align 4
  %store341.i = getelementptr inbounds %struct.device_attribute, ptr %add.ptr322.i, i32 0, i32 2
  %99 = ptrtoint ptr %store341.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @store_amb_mid, ptr %store341.i, align 4
  %index343.i = getelementptr inbounds %struct.sensor_device_attribute, ptr %add.ptr322.i, i32 0, i32 1
  %100 = ptrtoint ptr %index343.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add.i.i, ptr %index343.i, align 4
  %key348.i = getelementptr inbounds %struct.attribute, ptr %add.ptr322.i, i32 0, i32 3
  %101 = ptrtoint ptr %key348.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @i5k_amb_hwmon_init.__key.12, ptr %key348.i, align 4
  %call354.i = call i32 @device_create_file(ptr noundef %dev.i90, ptr noundef %add.ptr322.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354.i)
  %tobool355.not.i = icmp eq i32 %call354.i, 0
  br i1 %tobool355.not.i, label %if.end357.i, label %if.end317.i.exit_remove.i_crit_edge

if.end317.i.exit_remove.i_crit_edge:              ; preds = %if.end317.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_remove.i

if.end357.i:                                      ; preds = %if.end317.i
  %102 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_attrs.i, align 4
  %inc359.i = add i32 %103, 1
  store i32 %inc359.i, ptr %num_attrs.i, align 4
  %104 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %attrs.i, align 8
  %add.ptr362.i = getelementptr %struct.i5k_device_attribute, ptr %105, i32 %inc359.i
  %name363.i = getelementptr %struct.i5k_device_attribute, ptr %105, i32 %inc359.i, i32 1
  %call365.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name363.i, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %inc220.i) #10
  %106 = ptrtoint ptr %add.ptr362.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %name363.i, ptr %add.ptr362.i, align 4
  %mode375.i = getelementptr inbounds %struct.attribute, ptr %add.ptr362.i, i32 0, i32 1
  %107 = ptrtoint ptr %mode375.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 420, ptr %mode375.i, align 4
  %show378.i = getelementptr inbounds %struct.device_attribute, ptr %add.ptr362.i, i32 0, i32 1
  %108 = ptrtoint ptr %show378.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @show_amb_max, ptr %show378.i, align 4
  %store381.i = getelementptr inbounds %struct.device_attribute, ptr %add.ptr362.i, i32 0, i32 2
  %109 = ptrtoint ptr %store381.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @store_amb_max, ptr %store381.i, align 4
  %index383.i = getelementptr inbounds %struct.sensor_device_attribute, ptr %add.ptr362.i, i32 0, i32 1
  %110 = ptrtoint ptr %index383.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add.i.i, ptr %index383.i, align 4
  %key388.i = getelementptr inbounds %struct.attribute, ptr %add.ptr362.i, i32 0, i32 3
  %111 = ptrtoint ptr %key388.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @i5k_amb_hwmon_init.__key.14, ptr %key388.i, align 4
  %call394.i = call i32 @device_create_file(ptr noundef %dev.i90, ptr noundef %add.ptr362.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call394.i)
  %tobool395.not.i = icmp eq i32 %call394.i, 0
  br i1 %tobool395.not.i, label %if.end397.i, label %if.end357.i.exit_remove.i_crit_edge

if.end357.i.exit_remove.i_crit_edge:              ; preds = %if.end357.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_remove.i

if.end397.i:                                      ; preds = %if.end357.i
  %112 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_attrs.i, align 4
  %inc399.i = add i32 %113, 1
  store i32 %inc399.i, ptr %num_attrs.i, align 4
  %114 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %attrs.i, align 8
  %add.ptr402.i = getelementptr %struct.i5k_device_attribute, ptr %115, i32 %inc399.i
  %name403.i = getelementptr %struct.i5k_device_attribute, ptr %115, i32 %inc399.i, i32 1
  %call405.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name403.i, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %inc220.i) #10
  %116 = ptrtoint ptr %add.ptr402.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %name403.i, ptr %add.ptr402.i, align 4
  %mode415.i = getelementptr inbounds %struct.attribute, ptr %add.ptr402.i, i32 0, i32 1
  %117 = ptrtoint ptr %mode415.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 292, ptr %mode415.i, align 4
  %show418.i = getelementptr inbounds %struct.device_attribute, ptr %add.ptr402.i, i32 0, i32 1
  %118 = ptrtoint ptr %show418.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @show_amb_alarm, ptr %show418.i, align 4
  %index420.i = getelementptr inbounds %struct.sensor_device_attribute, ptr %add.ptr402.i, i32 0, i32 1
  %119 = ptrtoint ptr %index420.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add.i.i, ptr %index420.i, align 4
  %key425.i = getelementptr inbounds %struct.attribute, ptr %add.ptr402.i, i32 0, i32 3
  %120 = ptrtoint ptr %key425.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @i5k_amb_hwmon_init.__key.16, ptr %key425.i, align 4
  %call431.i = call i32 @device_create_file(ptr noundef %dev.i90, ptr noundef %add.ptr402.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call431.i)
  %tobool432.not.i = icmp eq i32 %call431.i, 0
  br i1 %tobool432.not.i, label %if.end434.i, label %if.end397.i.exit_remove.i_crit_edge

if.end397.i.exit_remove.i_crit_edge:              ; preds = %if.end397.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_remove.i

if.end434.i:                                      ; preds = %if.end397.i
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_attrs.i, align 4
  %inc436.i = add i32 %122, 1
  store i32 %inc436.i, ptr %num_attrs.i, align 4
  br label %for.inc437.i

for.inc437.i:                                     ; preds = %if.end434.i, %for.body213.i.for.inc437.i_crit_edge
  %d.2.i = phi i32 [ %inc220.i, %if.end434.i ], [ %d.1653.i, %for.body213.i.for.inc437.i_crit_edge ]
  %inc438.i = add nuw nsw i32 %j.0652.i, 1
  %123 = lshr i16 %c.0654.i, 1
  %exitcond659.not.i = icmp eq i32 %inc438.i, 15
  br i1 %exitcond659.not.i, label %for.inc443.i, label %for.inc437.i.for.body213.i_crit_edge

for.inc437.i.for.body213.i_crit_edge:             ; preds = %for.inc437.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body213.i

for.inc443.i:                                     ; preds = %for.inc437.i
  %inc444.i = add nuw nsw i32 %i.1655.i, 1
  %exitcond660.not.i = icmp eq i32 %inc444.i, 4
  br i1 %exitcond660.not.i, label %for.end445.i, label %for.inc443.i.for.body207.i_crit_edge

for.inc443.i.for.body207.i_crit_edge:             ; preds = %for.inc443.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body207.i

for.end445.i:                                     ; preds = %for.inc443.i
  %call447.i = call i32 @device_create_file(ptr noundef %dev.i90, ptr noundef nonnull @dev_attr_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447.i)
  %tobool448.not.i = icmp eq i32 %call447.i, 0
  br i1 %tobool448.not.i, label %if.end450.i, label %for.end445.i.exit_remove.i_crit_edge

for.end445.i.exit_remove.i_crit_edge:             ; preds = %for.end445.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_remove.i

if.end450.i:                                      ; preds = %for.end445.i
  %call452.i = call ptr @hwmon_device_register(ptr noundef %dev.i90) #10
  %124 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call452.i, ptr %call7.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call452.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then455.i, label %if.end450.i.cleanup_crit_edge

if.end450.i.cleanup_crit_edge:                    ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then455.i:                                     ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %call452.i to i32
  br label %exit_remove.i

exit_remove.i:                                    ; preds = %if.then455.i, %for.end445.i.exit_remove.i_crit_edge, %if.end397.i.exit_remove.i_crit_edge, %if.end357.i.exit_remove.i_crit_edge, %if.end317.i.exit_remove.i_crit_edge, %if.end278.i.exit_remove.i_crit_edge, %if.end241.i.exit_remove.i_crit_edge, %if.end219.i.exit_remove.i_crit_edge
  %res.3.i = phi i32 [ %call447.i, %for.end445.i.exit_remove.i_crit_edge ], [ %125, %if.then455.i ], [ %call431.i, %if.end397.i.exit_remove.i_crit_edge ], [ %call394.i, %if.end357.i.exit_remove.i_crit_edge ], [ %call354.i, %if.end317.i.exit_remove.i_crit_edge ], [ %call314.i, %if.end278.i.exit_remove.i_crit_edge ], [ %call275.i, %if.end241.i.exit_remove.i_crit_edge ], [ %call238.i, %if.end219.i.exit_remove.i_crit_edge ]
  call void @device_remove_file(ptr noundef %dev.i90, ptr noundef nonnull @dev_attr_name) #10
  %126 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_attrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp462657.not.i = icmp eq i32 %127, 0
  br i1 %cmp462657.not.i, label %exit_remove.i.i5k_amb_hwmon_init.exit_crit_edge, label %exit_remove.i.for.body464.i_crit_edge

exit_remove.i.for.body464.i_crit_edge:            ; preds = %exit_remove.i
  br label %for.body464.i

exit_remove.i.i5k_amb_hwmon_init.exit_crit_edge:  ; preds = %exit_remove.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i5k_amb_hwmon_init.exit

for.body464.i:                                    ; preds = %for.body464.i.for.body464.i_crit_edge, %exit_remove.i.for.body464.i_crit_edge
  %i.2658.i = phi i32 [ %inc471.i, %for.body464.i.for.body464.i_crit_edge ], [ 0, %exit_remove.i.for.body464.i_crit_edge ]
  %128 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %attrs.i, align 8
  %arrayidx467.i = getelementptr %struct.i5k_device_attribute, ptr %129, i32 %i.2658.i
  call void @device_remove_file(ptr noundef %dev.i90, ptr noundef %arrayidx467.i) #10
  %inc471.i = add nuw i32 %i.2658.i, 1
  %130 = ptrtoint ptr %num_attrs.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %num_attrs.i, align 4
  %cmp462.i = icmp ult i32 %inc471.i, %131
  br i1 %cmp462.i, label %for.body464.i.for.body464.i_crit_edge, label %for.body464.i.i5k_amb_hwmon_init.exit_crit_edge

for.body464.i.i5k_amb_hwmon_init.exit_crit_edge:  ; preds = %for.body464.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i5k_amb_hwmon_init.exit

for.body464.i.for.body464.i_crit_edge:            ; preds = %for.body464.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body464.i

i5k_amb_hwmon_init.exit:                          ; preds = %for.body464.i.i5k_amb_hwmon_init.exit_crit_edge, %exit_remove.i.i5k_amb_hwmon_init.exit_crit_edge
  %132 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %attrs.i, align 8
  call void @kfree(ptr noundef %133) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.3.i)
  %tobool33.not = icmp eq i32 %res.3.i, 0
  br i1 %tobool33.not, label %i5k_amb_hwmon_init.exit.cleanup_crit_edge, label %i5k_amb_hwmon_init.exit.err_init_failed_crit_edge

i5k_amb_hwmon_init.exit.err_init_failed_crit_edge: ; preds = %i5k_amb_hwmon_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init_failed

i5k_amb_hwmon_init.exit.cleanup_crit_edge:        ; preds = %i5k_amb_hwmon_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_init_failed:                                  ; preds = %i5k_amb_hwmon_init.exit.err_init_failed_crit_edge, %if.end8.i.i.i.err_init_failed_crit_edge
  %retval.0.i92116 = phi i32 [ %res.3.i, %i5k_amb_hwmon_init.exit.err_init_failed_crit_edge ], [ -12, %if.end8.i.i.i.err_init_failed_crit_edge ]
  %134 = ptrtoint ptr %amb_mmio to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %amb_mmio, align 4
  call void @iounmap(ptr noundef %135) #10
  br label %err_map_failed

err_map_failed:                                   ; preds = %err_init_failed, %if.end24.err_map_failed_crit_edge
  %res.0 = phi i32 [ %retval.0.i92116, %err_init_failed ], [ -16, %if.end24.err_map_failed_crit_edge ]
  %136 = ptrtoint ptr %amb_base.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %amb_base.i, align 4
  %138 = ptrtoint ptr %amb_len.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %amb_len.i, align 8
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %137, i32 noundef %139) #10
  br label %err39

err39:                                            ; preds = %err_map_failed, %i5k_channel_probe.exit89.err39_crit_edge, %i5k_channel_probe.exit.thread108, %i5k_channel_probe.exit.thread, %i5k_find_amb_registers.exit.thread.1, %i5k_find_amb_registers.exit.thread99.1
  %res.1 = phi i32 [ %res.0, %err_map_failed ], [ -16, %i5k_channel_probe.exit89.err39_crit_edge ], [ -19, %i5k_channel_probe.exit.thread ], [ -19, %i5k_channel_probe.exit.thread108 ], [ -19, %i5k_find_amb_registers.exit.thread.1 ], [ -19, %i5k_find_amb_registers.exit.thread99.1 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err39, %i5k_amb_hwmon_init.exit.cleanup_crit_edge, %if.end450.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.1, %err39 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %i5k_amb_hwmon_init.exit.cleanup_crit_edge ], [ 0, %if.end450.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i5k_amb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_name) #10
  %num_attrs = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %num_attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_attrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14.not = icmp eq i32 %5, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %attrs = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr %struct.i5k_device_attribute, ptr %7, i32 %i.015
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx) #10
  %inc = add nuw i32 %i.015, 1
  %8 = ptrtoint ptr %num_attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_attrs, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %attrs2 = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %attrs2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attrs2, align 4
  tail call void @kfree(ptr noundef %11) #10
  %amb_mmio = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %amb_mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %amb_mmio, align 4
  tail call void @iounmap(ptr noundef %13) #10
  %amb_base = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %amb_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %amb_base, align 4
  %amb_len = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %amb_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %amb_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %15, i32 noundef %17) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_label(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %shr = ashr i32 %1, 4
  %and = and i32 %1, 15
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %shr, i32 noundef %and)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_amb_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %mul.i = shl i32 %3, 11
  %add.i = or i32 %mul.i, 901
  %amb_mmio.i = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %amb_mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %amb_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %conv = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv, 500
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_amb_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %mul.i = shl i32 %3, 11
  %add.i = or i32 %mul.i, 896
  %amb_mmio.i = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %amb_mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %amb_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %conv = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv, 500
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_amb_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #10
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !73
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %div = udiv i32 %4, 500
  %5 = call i32 @llvm.umin.i32(i32 %div, i32 255)
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %temp, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %mul.i = shl i32 %8, 11
  %add.i = or i32 %mul.i, 896
  %conv = trunc i32 %5 to i8
  %amb_mmio.i = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %amb_mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %amb_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #10, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_amb_mid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %mul.i = shl i32 %3, 11
  %add.i = or i32 %mul.i, 897
  %amb_mmio.i = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %amb_mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %amb_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %conv = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv, 500
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_amb_mid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #10
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !73
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %div = udiv i32 %4, 500
  %5 = call i32 @llvm.umin.i32(i32 %div, i32 255)
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %temp, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %mul.i = shl i32 %8, 11
  %add.i = or i32 %mul.i, 897
  %conv = trunc i32 %5 to i8
  %amb_mmio.i = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %amb_mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %amb_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #10, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_amb_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %mul.i = shl i32 %3, 11
  %add.i = or i32 %mul.i, 898
  %amb_mmio.i = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %amb_mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %amb_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %conv = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv, 500
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_amb_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #10
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !73
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %div = udiv i32 %4, 500
  %5 = call i32 @llvm.umin.i32(i32 %div, i32 255)
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %temp, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %mul.i = shl i32 %8, 11
  %add.i = or i32 %mul.i, 898
  %conv = trunc i32 %5 to i8
  %amb_mmio.i = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %amb_mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %amb_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #10, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_amb_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %mul.i = shl i32 %3, 11
  %add.i = or i32 %mul.i, 900
  %amb_mmio.i = getelementptr inbounds %struct.i5k_amb_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %amb_mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %amb_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %7 = and i8 %6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %mul.i15 = shl i32 %9, 11
  %add.i16 = or i32 %mul.i15, 900
  %10 = ptrtoint ptr %amb_mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %amb_mmio.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %11, i32 %add.i16
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i18) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %13 = and i8 %12, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %14 = call ptr @memcpy(ptr %buf, ptr @.str.19, i32 3)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %15 = call ptr @memcpy(ptr %buf, ptr @.str.20, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__UNIQUE_ID_author236, !1, !"__UNIQUE_ID_author236", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/i5k_amb.c", i32 603, i32 1}
!2 = !{ptr @__UNIQUE_ID_description237, !3, !"__UNIQUE_ID_description237", i1 false, i1 false}
!3 = !{!"../drivers/hwmon/i5k_amb.c", i32 604, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/hwmon/i5k_amb.c", i32 605, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_i5k_amb__240_607_i5k_amb_init6, !8, !"__initcall__kmod_i5k_amb__240_607_i5k_amb_init6", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/i5k_amb.c", i32 607, i32 1}
!9 = !{ptr @__exitcall_i5k_amb_exit, !10, !"__exitcall_i5k_amb_exit", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/i5k_amb.c", i32 608, i32 1}
!11 = !{ptr @amb_pdev, !12, !"amb_pdev", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/i5k_amb.c", i32 113, i32 32}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/i5k_amb.c", i32 576, i32 11}
!15 = !{ptr @i5k_amb_driver, !16, !"i5k_amb_driver", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/i5k_amb.c", i32 574, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/i5k_amb.c", i32 442, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @i5k_find_amb_registers._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @i5k_find_amb_registers._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @chipset_ids, !26, !"chipset_ids", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/i5k_amb.c", i32 483, i32 3}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/i5k_amb.c", i32 284, i32 6}
!29 = !{ptr @i5k_amb_hwmon_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/i5k_amb.c", i32 289, i32 4}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/i5k_amb.c", i32 299, i32 6}
!33 = !{ptr @i5k_amb_hwmon_init.__key.8, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/i5k_amb.c", i32 304, i32 4}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/i5k_amb.c", i32 314, i32 6}
!37 = !{ptr @i5k_amb_hwmon_init.__key.10, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/i5k_amb.c", i32 320, i32 4}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/i5k_amb.c", i32 330, i32 6}
!41 = !{ptr @i5k_amb_hwmon_init.__key.12, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/i5k_amb.c", i32 336, i32 4}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/i5k_amb.c", i32 346, i32 6}
!45 = !{ptr @i5k_amb_hwmon_init.__key.14, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/i5k_amb.c", i32 352, i32 4}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/i5k_amb.c", i32 362, i32 6}
!49 = !{ptr @i5k_amb_hwmon_init.__key.16, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/i5k_amb.c", i32 367, i32 4}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/i5k_amb.c", i32 246, i32 22}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/i5k_amb.c", i32 236, i32 22}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/i5k_amb.c", i32 135, i32 23}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/i5k_amb.c", i32 137, i32 23}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/i5k_amb.c", i32 111, i32 8}
!61 = !{ptr @dev_attr_name, !60, !"dev_attr_name", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/i5k_amb.c", i32 107, i32 22}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 5011738}
!75 = !{i64 2152551083}
!76 = !{i64 2152552688}
!77 = !{i64 5011343}
