; ModuleID = '/llk/IR_all_yes/drivers/thermal/broadcom/bcm2835_thermal.c_pt.bc'
source_filename = "../drivers/thermal/broadcom/bcm2835_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
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
%struct.bcm2835_thermal_data = type { ptr, ptr, ptr, ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }

@__initcall__kmod_bcm2835_thermal__210_307_bcm2835_thermal_driver_init6 = internal global ptr @bcm2835_thermal_driver_init, section ".initcall6.init", align 4
@bcm2835_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_thermal_probe, ptr @bcm2835_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_thermal_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_thermal_driver_exit = internal global ptr @bcm2835_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [36 x i8] c"bcm2835_thermal.author=Martin Sperl\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [60 x i8] c"bcm2835_thermal.description=Thermal driver for bcm2835 chip\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [62 x i8] c"bcm2835_thermal.file=drivers/thermal/broadcom/bcm2835_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [28 x i8] c"bcm2835_thermal.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm2835_thermal\00", [16 x i8] zeroinitializer }, align 32
@bcm2835_thermal_of_match_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2836-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2837-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@bcm2835_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not get clk: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm2835_thermal_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/thermal/broadcom/bcm2835_thermal.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_thermal_probe._entry_ptr = internal global ptr @bcm2835_thermal_probe._entry, section ".printk_index", align 4
@bcm2835_thermal_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 206, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Clock %pCn running at %lu Hz is outside of the recommended range: 1.92 to 5MHz\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_thermal_probe._entry_ptr.9 = internal global ptr @bcm2835_thermal_probe._entry.6, section ".printk_index", align 4
@bcm2835_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @bcm2835_thermal_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@bcm2835_thermal_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register the thermal device: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm2835_thermal_probe._entry_ptr.12 = internal global ptr @bcm2835_thermal_probe._entry.10, section ".printk_index", align 4
@bcm2835_thermal_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Not able to read trip_temp: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm2835_thermal_probe._entry_ptr.15 = internal global ptr @bcm2835_thermal_probe._entry.13, section ".printk_index", align 4
@bcm2835_thermal_regs = internal constant { [2 x %struct.debugfs_reg32], [16 x i8] } { [2 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.17, i32 0 }, %struct.debugfs_reg32 { ptr @.str.18, i32 4 }], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regset\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"bcm2835_thermal_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 299, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 303, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"bcm2835_thermal_of_match_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 150, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 194, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 204, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"bcm2835_thermal_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 138, i32 48 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 213, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 237, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"bcm2835_thermal_regs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 109, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 135, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 111, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [46 x i8] c"../drivers/thermal/broadcom/bcm2835_thermal.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 115, i32 11 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_bcm2835_thermal_driver_exit, ptr @__initcall__kmod_bcm2835_thermal__210_307_bcm2835_thermal_driver_init6, ptr @bcm2835_thermal_driver_exit, ptr @bcm2835_thermal_probe._entry, ptr @bcm2835_thermal_probe._entry.10, ptr @bcm2835_thermal_probe._entry.13, ptr @bcm2835_thermal_probe._entry.6, ptr @bcm2835_thermal_probe._entry_ptr, ptr @bcm2835_thermal_probe._entry_ptr.12, ptr @bcm2835_thermal_probe._entry_ptr.15, ptr @bcm2835_thermal_probe._entry_ptr.9, ptr @bcm2835_thermal_driver, ptr @.str, ptr @bcm2835_thermal_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @bcm2835_thermal_ops, ptr @.str.11, ptr @.str.14, ptr @bcm2835_thermal_regs, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_thermal_of_match_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_thermal_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_thermal_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_thermal_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_thermal_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_thermal_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_thermal_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %trip_temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup90_crit_edge, label %if.end

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup90

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @bcm2835_thermal_of_match_table, ptr noundef %dev) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup90_crit_edge, label %if.end5

if.end.cleanup90_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup90

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call6) #6
  %regs = getelementptr inbounds %struct.bcm2835_thermal_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call8, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call8 to i32
  br label %cleanup90

if.end14:                                         ; preds = %if.end5
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.bcm2835_thermal_data, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call16, ptr %clk, align 4
  %cmp.i151 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end14
  %cmp.not = icmp eq ptr %call16, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then19.cleanup90_crit_edge, label %do.end

if.then19.cleanup90_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup90

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %3) #9
  br label %cleanup90

if.end25:                                         ; preds = %if.end14
  %call.i152 = tail call i32 @clk_prepare(ptr noundef %call16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.cleanup90_crit_edge

if.end25.cleanup90_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup90

if.end.i:                                         ; preds = %if.end25
  %call1.i = tail call i32 @clk_enable(ptr noundef %call16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end30, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call16) #6
  br label %cleanup90

if.end30:                                         ; preds = %if.end.i
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call32 = tail call i32 @clk_get_rate(ptr noundef %5) #6
  %6 = add i32 %call32, -5000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3080001, i32 %6)
  %7 = icmp ult i32 %6, -3080001
  br i1 %7, label %do.end38, label %if.end30.if.end41_crit_edge

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %9, i32 noundef %call32) #9
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.end30.if.end41_crit_edge
  %call43 = tail call ptr @thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @bcm2835_thermal_ops) #6
  %cmp.i153 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %10) #9
  br label %err_clk

if.end51:                                         ; preds = %if.end41
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %14 = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not = icmp eq i32 %14, 0
  br i1 %tobool55.not, label %if.then56, label %if.end51.if.end82_crit_edge

if.end51.if.end82_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then56:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip_temp) #6
  %15 = ptrtoint ptr %trip_temp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %trip_temp, align 4, !annotation !58
  %call57 = tail call i32 @thermal_zone_get_slope(ptr noundef %call43) #6
  %call58 = tail call i32 @thermal_zone_get_offset(ptr noundef %call43) #6
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %call43, i32 0, i32 20
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_trip_temp, align 4
  %call59 = call i32 %19(ptr noundef %call43, i32 noundef 0, ptr noundef nonnull %trip_temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %trip_temp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %trip_temp, align 4
  %sub.i = sub i32 %21, %call58
  %div.i = sdiv i32 %sub.i, %call57
  %22 = call i32 @llvm.smax.i32(i32 %div.i, i32 0) #6
  %23 = call i32 @llvm.umin.i32(i32 %22, i32 1023) #6
  %shl = shl nuw nsw i32 %23, 8
  %or68 = or i32 %shl, 133693444
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  call void @arm_heavy_mb() #6
  %24 = call i32 @llvm.bswap.i32(i32 %or68)
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #6, !srcloc !60
  %or74 = or i32 %shl, 133693446
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @arm_heavy_mb() #6
  %27 = call i32 @llvm.bswap.i32(i32 %or74)
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_temp) #6
  br label %if.end82

cleanup:                                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call59) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_temp) #6
  br label %err_tz

if.end82:                                         ; preds = %cleanup.thread, %if.end51.if.end82_crit_edge
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call43, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %call43, i32 0, i32 21
  %32 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tzp, align 8
  %no_hwmon = getelementptr inbounds %struct.thermal_zone_params, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %no_hwmon to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %no_hwmon, align 4
  %call84 = call i32 @thermal_add_hwmon_sysfs(ptr noundef %call43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end82.err_tz_crit_edge

if.end82.err_tz_crit_edge:                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_tz

if.end87:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @bcm2835_thermal_debugfs(ptr noundef %pdev)
  br label %cleanup90

err_tz:                                           ; preds = %if.end82.err_tz_crit_edge, %cleanup
  %err.0 = phi i32 [ %call84, %if.end82.err_tz_crit_edge ], [ %call59, %cleanup ]
  call void @thermal_zone_of_sensor_unregister(ptr noundef %dev, ptr noundef %call43) #6
  br label %err_clk

err_clk:                                          ; preds = %err_tz, %if.then45
  %err.1 = phi i32 [ %10, %if.then45 ], [ %err.0, %err_tz ]
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %36) #6
  call void @clk_unprepare(ptr noundef %36) #6
  br label %cleanup90

cleanup90:                                        ; preds = %err_clk, %if.end87, %if.then3.i, %if.end25.cleanup90_crit_edge, %do.end, %if.then19.cleanup90_crit_edge, %if.then11, %if.end.cleanup90_crit_edge, %entry.cleanup90_crit_edge
  %retval.0 = phi i32 [ %1, %if.then11 ], [ %err.1, %err_clk ], [ 0, %if.end87 ], [ -12, %entry.cleanup90_crit_edge ], [ -22, %if.end.cleanup90_crit_edge ], [ %3, %do.end ], [ -517, %if.then19.cleanup90_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i152, %if.end25.cleanup90_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_thermal_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %debugfsdir = getelementptr inbounds %struct.bcm2835_thermal_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfsdir, align 4
  tail call void @debugfs_remove(ptr noundef %5) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @thermal_zone_of_sensor_unregister(ptr noundef %dev, ptr noundef %3) #6
  %clk = getelementptr inbounds %struct.bcm2835_thermal_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_slope(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_thermal_debugfs(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #6
  %debugfsdir = getelementptr inbounds %struct.bcm2835_thermal_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %debugfsdir, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bcm2835_thermal_regs, ptr %call.i, align 4
  %nregs = getelementptr inbounds %struct.debugfs_regset32, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %nregs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %nregs, align 4
  %regs3 = getelementptr inbounds %struct.bcm2835_thermal_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs3, align 4
  %base = getelementptr inbounds %struct.debugfs_regset32, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %base, align 4
  %8 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfsdir, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %9, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_of_sensor_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_thermal_get_temp(ptr nocapture noundef readonly %d, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bcm2835_thermal_data, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !56
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and2 = and i32 %3, 1023
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 4
  %call3 = tail call i32 @thermal_zone_get_offset(ptr noundef %5) #6
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 4
  %call5 = tail call i32 @thermal_zone_get_slope(ptr noundef %7) #6
  %mul.i = mul i32 %call5, %and2
  %add.i = add i32 %mul.i, %call3
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_bcm2835_thermal__210_307_bcm2835_thermal_driver_init6, !1, !"__initcall__kmod_bcm2835_thermal__210_307_bcm2835_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 307, i32 1}
!2 = !{ptr @__exitcall_bcm2835_thermal_driver_exit, !1, !"__exitcall_bcm2835_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author211, !4, !"__UNIQUE_ID_author211", i1 false, i1 false}
!4 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 309, i32 1}
!5 = !{ptr @__UNIQUE_ID_description212, !6, !"__UNIQUE_ID_description212", i1 false, i1 false}
!6 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 310, i32 1}
!7 = !{ptr @__UNIQUE_ID_file213, !8, !"__UNIQUE_ID_file213", i1 false, i1 false}
!8 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 311, i32 1}
!9 = !{ptr @__UNIQUE_ID_license214, !8, !"__UNIQUE_ID_license214", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 303, i32 11}
!12 = !{ptr @bcm2835_thermal_driver, !13, !"bcm2835_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 299, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 194, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcm2835_thermal_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcm2835_thermal_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 204, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bcm2835_thermal_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @bcm2835_thermal_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 213, i32 3}
!29 = !{ptr @bcm2835_thermal_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @bcm2835_thermal_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 237, i32 4}
!33 = !{ptr @bcm2835_thermal_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @bcm2835_thermal_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @bcm2835_thermal_ops, !36, !"bcm2835_thermal_ops", i1 false, i1 false}
!36 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 138, i32 48}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 135, i32 26}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 111, i32 11}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 115, i32 11}
!43 = !{ptr @bcm2835_thermal_regs, !44, !"bcm2835_thermal_regs", i1 false, i1 false}
!44 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 109, i32 35}
!45 = !{ptr @bcm2835_thermal_of_match_table, !46, !"bcm2835_thermal_of_match_table", i1 false, i1 false}
!46 = !{!"../drivers/thermal/broadcom/bcm2835_thermal.c", i32 150, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 5577863}
!57 = !{i64 2153329615}
!58 = !{!"auto-init"}
!59 = !{i64 2153331699}
!60 = !{i64 5577445}
!61 = !{i64 2153332175}
!62 = !{i64 2153321761}
