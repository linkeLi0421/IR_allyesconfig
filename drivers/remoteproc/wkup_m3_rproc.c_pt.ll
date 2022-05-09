; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/wkup_m3_rproc.c_pt.bc'
source_filename = "../drivers/remoteproc/wkup_m3_rproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wkup_m3_rproc = type { ptr, ptr, [2 x %struct.wkup_m3_mem], ptr }
%struct.wkup_m3_mem = type { ptr, i32, i32, i32 }
%struct.wkup_m3_platform_data = type { ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_wkup_m3_rproc__233_263_wkup_m3_rproc_driver_init6 = internal global ptr @wkup_m3_rproc_driver_init, section ".initcall6.init", align 4
@wkup_m3_rproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wkup_m3_rproc_probe, ptr @wkup_m3_rproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wkup_m3_rproc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wkup_m3_rproc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wkup_m3_rproc_driver_exit = internal global ptr @wkup_m3_rproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file234 = internal constant [52 x i8] c"wkup_m3_rproc.file=drivers/remoteproc/wkup_m3_rproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [29 x i8] c"wkup_m3_rproc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [71 x i8] c"wkup_m3_rproc.description=TI Wakeup M3 remote processor control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [53 x i8] c"wkup_m3_rproc.author=Dave Gerlach <d-gerlach@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wkup_m3_rproc\00", [18 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-wkup-m3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-wkup-m3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wkup_m3_rpm_suspend, ptr @wkup_m3_rpm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"umem\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmem\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,pm-firmware\00", [17 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 147, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No firmware filename given\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wkup_m3_rproc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/remoteproc/wkup_m3_rproc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_probe._entry_ptr = internal global ptr @wkup_m3_rproc_probe._entry, section ".printk_index", align 4
@wkup_m3_rproc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 154, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pm_runtime_get_sync() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_probe._entry_ptr.11 = internal global ptr @wkup_m3_rproc_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wkup_m3\00", [24 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @wkup_m3_rproc_start, ptr @wkup_m3_rproc_stop, ptr null, ptr null, ptr null, ptr @wkup_m3_rproc_da_to_va, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rstctrl\00", [24 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 177, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Platform data missing!\0A\00", [40 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_probe._entry_ptr.16 = internal global ptr @wkup_m3_rproc_probe._entry.14, section ".printk_index", align 4
@wkup_m3_rproc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 189, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"devm_ioremap_resource failed for resource %d\0A\00", [50 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_probe._entry_ptr.19 = internal global ptr @wkup_m3_rproc_probe._entry.17, section ".printk_index", align 4
@wkup_m3_rproc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 211, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rproc_add failed\0A\00", [46 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_probe._entry_ptr.22 = internal global ptr @wkup_m3_rproc_probe._entry.20, section ".printk_index", align 4
@wkup_m3_rproc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 67, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to reset wkup_m3!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wkup_m3_rproc_start\00", [44 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_start._entry_ptr = internal global ptr @wkup_m3_rproc_start._entry, section ".printk_index", align 4
@wkup_m3_rproc_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 85, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to assert reset of wkup_m3!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wkup_m3_rproc_stop\00", [45 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_stop._entry_ptr = internal global ptr @wkup_m3_rproc_stop._entry, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"wkup_m3_rproc_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 253, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 257, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"wkup_m3_rproc_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 121, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"wkup_m3_rproc_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 249, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 133, i32 44 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 133, i32 52 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 144, i32 46 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 147, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 154, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 158, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"wkup_m3_rproc_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 115, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 171, i32 61 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 177, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 188, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 211, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 67, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [38 x i8] c"../drivers/remoteproc/wkup_m3_rproc.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 85, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_wkup_m3_rproc_driver_exit, ptr @__initcall__kmod_wkup_m3_rproc__233_263_wkup_m3_rproc_driver_init6, ptr @wkup_m3_rproc_driver_exit, ptr @wkup_m3_rproc_probe._entry, ptr @wkup_m3_rproc_probe._entry.14, ptr @wkup_m3_rproc_probe._entry.17, ptr @wkup_m3_rproc_probe._entry.20, ptr @wkup_m3_rproc_probe._entry.9, ptr @wkup_m3_rproc_probe._entry_ptr, ptr @wkup_m3_rproc_probe._entry_ptr.11, ptr @wkup_m3_rproc_probe._entry_ptr.16, ptr @wkup_m3_rproc_probe._entry_ptr.19, ptr @wkup_m3_rproc_probe._entry_ptr.22, ptr @wkup_m3_rproc_start._entry, ptr @wkup_m3_rproc_start._entry_ptr, ptr @wkup_m3_rproc_stop._entry, ptr @wkup_m3_rproc_stop._entry_ptr, ptr @wkup_m3_rproc_driver, ptr @.str, ptr @wkup_m3_rproc_of_match, ptr @wkup_m3_rproc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @wkup_m3_rproc_ops, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_rproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wkup_m3_rproc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wkup_m3_rproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @wkup_m3_rproc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_rproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fw_name = alloca ptr, align 4
  %size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_name) #8
  %2 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_name, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #8
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %size, align 8, !annotation !73
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = call i32 @of_property_read_string(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %fw_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %err

if.end10:                                         ; preds = %if.end
  %6 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_name, align 4
  %call11 = call ptr @rproc_alloc(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef nonnull @wkup_m3_rproc_ops, ptr noundef %7, i32 noundef 44) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.err_crit_edge, label %if.end14

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end14:                                         ; preds = %if.end10
  %auto_boot = getelementptr inbounds %struct.rproc, ptr %call11, i32 0, i32 30
  %8 = ptrtoint ptr %auto_boot to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %auto_boot, align 1
  %priv = getelementptr inbounds %struct.rproc, ptr %call11, i32 0, i32 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11, ptr %10, align 4
  %pdev16 = getelementptr inbounds %struct.wkup_m3_rproc, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pdev16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %pdev16, align 4
  %call.i144 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #8
  %rsts = getelementptr inbounds %struct.wkup_m3_rproc, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %rsts to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i144, ptr %rsts, align 4
  %cmp.i = icmp ugt ptr %call.i144, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call.i144 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %tobool25.not = icmp eq ptr %call.i144, null
  br i1 %tobool25.not, label %if.then26, label %if.end23.if.end38_crit_edge

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then26:                                        ; preds = %if.end23
  %tobool27.not = icmp eq ptr %1, null
  br i1 %tobool27.not, label %if.then26.do.end36_crit_edge, label %land.lhs.true

if.then26.do.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

land.lhs.true:                                    ; preds = %if.then26
  %deassert_reset = getelementptr inbounds %struct.wkup_m3_platform_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %deassert_reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %deassert_reset, align 4
  %tobool28.not = icmp eq ptr %16, null
  br i1 %tobool28.not, label %land.lhs.true.do.end36_crit_edge, label %land.lhs.true29

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

land.lhs.true29:                                  ; preds = %land.lhs.true
  %assert_reset = getelementptr inbounds %struct.wkup_m3_platform_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %assert_reset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %assert_reset, align 4
  %tobool30.not = icmp eq ptr %18, null
  br i1 %tobool30.not, label %land.lhs.true29.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true29.do.end36_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true29
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %land.lhs.true31.do.end36_crit_edge, label %land.lhs.true31.if.end38_crit_edge

land.lhs.true31.if.end38_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end36:                                         ; preds = %land.lhs.true31.do.end36_crit_edge, %land.lhs.true29.do.end36_crit_edge, %land.lhs.true.do.end36_crit_edge, %if.then26.do.end36_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  br label %err_put_rproc

if.end38:                                         ; preds = %land.lhs.true31.if.end38_crit_edge, %if.end23.if.end38_crit_edge
  %call40 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #8
  %call41 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call40) #8
  %arrayidx42 = getelementptr %struct.wkup_m3_rproc, ptr %10, i32 0, i32 2, i32 0
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call41, ptr %arrayidx42, align 4
  %cmp.i145 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.end38.do.end50_crit_edge, label %if.end69

if.end38.do.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

do.end50:                                         ; preds = %if.end69.do.end50_crit_edge, %if.end38.do.end50_crit_edge
  %i.0149.lcssa = phi i32 [ 0, %if.end38.do.end50_crit_edge ], [ 1, %if.end69.do.end50_crit_edge ]
  %arrayidx42.lcssa = phi ptr [ %arrayidx42, %if.end38.do.end50_crit_edge ], [ %arrayidx42.1, %if.end69.do.end50_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %i.0149.lcssa) #11
  %22 = ptrtoint ptr %arrayidx42.lcssa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx42.lcssa, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %err_put_rproc

if.end69:                                         ; preds = %if.end38
  %25 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call40, align 4
  %bus_addr = getelementptr %struct.wkup_m3_rproc, ptr %10, i32 0, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %bus_addr, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call40, i32 0, i32 1
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i, align 4
  %30 = load i32, ptr %call40, align 4
  %sub.i = add i32 %29, 1
  %add.i = sub i32 %sub.i, %30
  %size62 = getelementptr %struct.wkup_m3_rproc, ptr %10, i32 0, i32 2, i32 0, i32 3
  %31 = ptrtoint ptr %size62 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %size62, align 4
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.i146 = call ptr @__of_get_address(ptr noundef %33, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %size, ptr noundef null) #8
  %34 = ptrtoint ptr %call.i146 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i146, align 4
  %dev_addr = getelementptr %struct.wkup_m3_rproc, ptr %10, i32 0, i32 2, i32 0, i32 2
  %36 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %dev_addr, align 4
  %call40.1 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #8
  %call41.1 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call40.1) #8
  %arrayidx42.1 = getelementptr %struct.wkup_m3_rproc, ptr %10, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call41.1, ptr %arrayidx42.1, align 4
  %cmp.i145.1 = icmp ugt ptr %call41.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145.1, label %if.end69.do.end50_crit_edge, label %if.end69.1

if.end69.do.end50_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

if.end69.1:                                       ; preds = %if.end69
  %38 = ptrtoint ptr %call40.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call40.1, align 4
  %bus_addr.1 = getelementptr %struct.wkup_m3_rproc, ptr %10, i32 0, i32 2, i32 1, i32 1
  %40 = ptrtoint ptr %bus_addr.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %bus_addr.1, align 4
  %end.i.1 = getelementptr inbounds %struct.resource, ptr %call40.1, i32 0, i32 1
  %41 = ptrtoint ptr %end.i.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %end.i.1, align 4
  %43 = load i32, ptr %call40.1, align 4
  %sub.i.1 = add i32 %42, 1
  %add.i.1 = sub i32 %sub.i.1, %43
  %size62.1 = getelementptr %struct.wkup_m3_rproc, ptr %10, i32 0, i32 2, i32 1, i32 3
  %44 = ptrtoint ptr %size62.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add.i.1, ptr %size62.1, align 4
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %call.i146.1 = call ptr @__of_get_address(ptr noundef %46, i32 noundef 1, i32 noundef -1, ptr noundef nonnull %size, ptr noundef null) #8
  %47 = ptrtoint ptr %call.i146.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call.i146.1, align 4
  %sub.1 = sub i32 %48, %35
  %dev_addr.1 = getelementptr %struct.wkup_m3_rproc, ptr %10, i32 0, i32 2, i32 1, i32 2
  %49 = ptrtoint ptr %dev_addr.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.1, ptr %dev_addr.1, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call11, ptr %driver_data.i, align 4
  %call72 = call i32 @rproc_add(ptr noundef nonnull %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end69.1.cleanup_crit_edge, label %do.end77

if.end69.1.cleanup_crit_edge:                     ; preds = %if.end69.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end77:                                         ; preds = %if.end69.1
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #11
  br label %err_put_rproc

err_put_rproc:                                    ; preds = %do.end77, %do.end50, %do.end36
  %ret.0 = phi i32 [ %24, %do.end50 ], [ %call72, %do.end77 ], [ -19, %do.end36 ]
  call void @rproc_free(ptr noundef nonnull %call11) #8
  br label %err

err:                                              ; preds = %err_put_rproc, %if.end10.err_crit_edge, %do.end8
  %ret.1 = phi i32 [ %call.i, %do.end8 ], [ %ret.0, %err_put_rproc ], [ -12, %if.end10.err_crit_edge ]
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !75
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

err.pm_runtime_put_noidle.exit_crit_edge:         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %err.pm_runtime_put_noidle.exit_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end69.1.cleanup_crit_edge, %if.then20, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %ret.1, %pm_runtime_put_noidle.exit ], [ %14, %if.then20 ], [ 0, %if.end69.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_name) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_rproc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @rproc_del(ptr noundef %1) #8
  tail call void @rproc_free(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_rproc_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pdev1 = getelementptr inbounds %struct.wkup_m3_rproc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %rsts = getelementptr inbounds %struct.wkup_m3_rproc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rsts, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %7) #8
  %8 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsts, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %deassert_reset = getelementptr inbounds %struct.wkup_m3_platform_data, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %deassert_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %deassert_reset, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %call5 = tail call i32 %11(ptr noundef %3, ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.23) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call3, %entry.if.end_crit_edge ], [ -19, %do.end ], [ %call3, %land.lhs.true.if.end_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_rproc_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pdev1 = getelementptr inbounds %struct.wkup_m3_rproc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %rsts = getelementptr inbounds %struct.wkup_m3_rproc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rsts, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %7) #8
  %8 = ptrtoint ptr %rsts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsts, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %assert_reset = getelementptr inbounds %struct.wkup_m3_platform_data, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %assert_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %assert_reset, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %call5 = tail call i32 %11(ptr noundef %3, ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.25) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call3, %entry.if.end_crit_edge ], [ -19, %do.end ], [ %call3, %land.lhs.true.if.end_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @wkup_m3_rproc_da_to_va(ptr nocapture noundef readonly %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %conv4 = zext i32 %len to i64
  %add = add i64 %conv4, %da
  %dev_addr = getelementptr %struct.wkup_m3_rproc, ptr %1, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_addr, align 4
  %conv = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %da)
  %cmp2.not = icmp ugt i64 %conv, %da
  br i1 %cmp2.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %size = getelementptr %struct.wkup_m3_rproc, ptr %1, i32 0, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %add10 = add i32 %5, %3
  %conv11 = zext i32 %add10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv11)
  %cmp12.not = icmp ugt i64 %add, %conv11
  br i1 %cmp12.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.then14_crit_edge

land.lhs.true.if.then14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true.1.if.then14_crit_edge, %land.lhs.true.if.then14_crit_edge
  %i.039.lcssa = phi i32 [ 0, %land.lhs.true.if.then14_crit_edge ], [ 1, %land.lhs.true.1.if.then14_crit_edge ]
  %.lcssa = phi i32 [ %3, %land.lhs.true.if.then14_crit_edge ], [ %10, %land.lhs.true.1.if.then14_crit_edge ]
  %arrayidx.le = getelementptr %struct.wkup_m3_rproc, ptr %1, i32 0, i32 2, i32 %i.039.lcssa
  %6 = trunc i64 %da to i32
  %conv19 = sub i32 %6, %.lcssa
  %7 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.le, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %conv19
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %dev_addr.1 = getelementptr %struct.wkup_m3_rproc, ptr %1, i32 0, i32 2, i32 1, i32 2
  %9 = ptrtoint ptr %dev_addr.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_addr.1, align 4
  %conv.1 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.1, i64 %da)
  %cmp2.not.1 = icmp ugt i64 %conv.1, %da
  br i1 %cmp2.not.1, label %for.inc.cleanup_crit_edge, label %land.lhs.true.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.1:                                  ; preds = %for.inc
  %size.1 = getelementptr %struct.wkup_m3_rproc, ptr %1, i32 0, i32 2, i32 1, i32 3
  %11 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.1, align 4
  %add10.1 = add i32 %12, %10
  %conv11.1 = zext i32 %add10.1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv11.1)
  %cmp12.not.1 = icmp ugt i64 %add, %conv11.1
  br i1 %cmp12.not.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.if.then14_crit_edge

land.lhs.true.1.if.then14_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %add.ptr, %if.then14 ], [ null, %land.lhs.true.1.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wkup_m3_rpm_suspend(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wkup_m3_rpm_resume(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_wkup_m3_rproc__233_263_wkup_m3_rproc_driver_init6, !1, !"__initcall__kmod_wkup_m3_rproc__233_263_wkup_m3_rproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 263, i32 1}
!2 = !{ptr @__exitcall_wkup_m3_rproc_driver_exit, !1, !"__exitcall_wkup_m3_rproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file234, !4, !"__UNIQUE_ID_file234", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 265, i32 1}
!5 = !{ptr @__UNIQUE_ID_license235, !4, !"__UNIQUE_ID_license235", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description236, !7, !"__UNIQUE_ID_description236", i1 false, i1 false}
!7 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 266, i32 1}
!8 = !{ptr @__UNIQUE_ID_author237, !9, !"__UNIQUE_ID_author237", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 267, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 257, i32 11}
!12 = !{ptr @wkup_m3_rproc_driver, !13, !"wkup_m3_rproc_driver", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 253, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 133, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 133, i32 52}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 144, i32 46}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 147, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wkup_m3_rproc_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @wkup_m3_rproc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 154, i32 3}
!30 = !{ptr @wkup_m3_rproc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @wkup_m3_rproc_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 158, i32 27}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 171, i32 61}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 177, i32 4}
!38 = !{ptr @wkup_m3_rproc_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @wkup_m3_rproc_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 188, i32 4}
!42 = !{ptr @wkup_m3_rproc_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wkup_m3_rproc_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 211, i32 3}
!46 = !{ptr @wkup_m3_rproc_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wkup_m3_rproc_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @wkup_m3_rproc_ops, !49, !"wkup_m3_rproc_ops", i1 false, i1 false}
!49 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 115, i32 31}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 67, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @wkup_m3_rproc_start._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @wkup_m3_rproc_start._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 85, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @wkup_m3_rproc_stop._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @wkup_m3_rproc_stop._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @wkup_m3_rproc_of_match, !61, !"wkup_m3_rproc_of_match", i1 false, i1 false}
!61 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 121, i32 34}
!62 = !{ptr @wkup_m3_rproc_pm_ops, !63, !"wkup_m3_rproc_pm_ops", i1 false, i1 false}
!63 = !{!"../drivers/remoteproc/wkup_m3_rproc.c", i32 249, i32 32}
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
!74 = !{i64 2148239496}
!75 = !{i64 724319, i64 724344, i64 724366, i64 724382, i64 724394, i64 724414, i64 724438, i64 724454, i64 724466}
!76 = !{i64 2148239684}
