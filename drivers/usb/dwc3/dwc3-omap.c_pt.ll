; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/dwc3-omap.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-omap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dwc3_omap = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.notifier_block, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_dwc3_omap__295_622_dwc3_omap_driver_init6 = internal global ptr @dwc3_omap_driver_init, section ".initcall6.init", align 4
@dwc3_omap_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwc3_omap_probe, ptr @dwc3_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_dwc3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_omap_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dwc3_omap_driver_exit = internal global ptr @dwc3_omap_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias296 = internal constant [35 x i8] c"dwc3_omap.alias=platform:omap-dwc3\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [45 x i8] c"dwc3_omap.author=Felipe Balbi <balbi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [42 x i8] c"dwc3_omap.file=drivers/usb/dwc3/dwc3-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [25 x i8] c"dwc3_omap.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [54 x i8] c"dwc3_omap.description=DesignWare USB3 OMAP Glue Layer\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap-dwc3\00", [22 x i8] zeroinitializer }, align 32
@of_dwc3_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am437x-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dwc3_omap_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr @dwc3_omap_complete, ptr @dwc3_omap_suspend, ptr @dwc3_omap_resume, ptr @dwc3_omap_suspend, ptr @dwc3_omap_resume, ptr @dwc3_omap_suspend, ptr @dwc3_omap_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dwc3_omap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device node not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwc3_omap_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/dwc3/dwc3-omap.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc3_omap_probe._entry_ptr = internal global ptr @dwc3_omap_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vbus-supply\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@dwc3_omap_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vbus init failed\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc3_omap_probe._entry_ptr.10 = internal global ptr @dwc3_omap_probe._entry.8, section ".printk_index", align 4
@dwc3_omap_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"get_sync failed with err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dwc3_omap_probe._entry_ptr.13 = internal global ptr @dwc3_omap_probe._entry.11, section ".printk_index", align 4
@dwc3_omap_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to create dwc3 core\0A\00", [36 x i8] zeroinitializer }, align 32
@dwc3_omap_probe._entry_ptr.16 = internal global ptr @dwc3_omap_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dwc3-omap\00", [22 x i8] zeroinitializer }, align 32
@dwc3_omap_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request IRQ #%d --> %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dwc3_omap_probe._entry_ptr.20 = internal global ptr @dwc3_omap_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,am437x-dwc3\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"utmi-mode\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s %s: UNKNOWN utmi mode %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extcon\00", [25 x i8] zeroinitializer }, align 32
@dwc3_omap_set_mailbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"regulator enable failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dwc3_omap_set_mailbox\00", [42 x i8] zeroinitializer }, align 32
@dwc3_omap_set_mailbox._entry_ptr = internal global ptr @dwc3_omap_set_mailbox._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"dwc3_omap_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 612, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 616, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"of_dwc3_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 550, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"dwc3_omap_dev_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 601, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 468, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 486, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 487, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 489, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 502, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 515, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 521, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 523, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 380, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 397, i32 29 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 407, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 419, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [32 x i8] c"../drivers/usb/dwc3/dwc3-omap.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 226, i32 5 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_dwc3_omap_driver_exit, ptr @__initcall__kmod_dwc3_omap__295_622_dwc3_omap_driver_init6, ptr @dwc3_omap_driver_exit, ptr @dwc3_omap_probe._entry, ptr @dwc3_omap_probe._entry.11, ptr @dwc3_omap_probe._entry.14, ptr @dwc3_omap_probe._entry.18, ptr @dwc3_omap_probe._entry.8, ptr @dwc3_omap_probe._entry_ptr, ptr @dwc3_omap_probe._entry_ptr.10, ptr @dwc3_omap_probe._entry_ptr.13, ptr @dwc3_omap_probe._entry_ptr.16, ptr @dwc3_omap_probe._entry_ptr.20, ptr @dwc3_omap_set_mailbox._entry, ptr @dwc3_omap_set_mailbox._entry_ptr, ptr @dwc3_omap_driver, ptr @.str, ptr @of_dwc3_match, ptr @dwc3_omap_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_omap_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dwc3_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_omap_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_omap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_omap_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_omap_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_omap_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_omap_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc3_omap_set_mailbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_omap_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_omap_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_omap_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_omap_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_omap_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %utmi_mode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call6 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call.i107 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i107, null
  br i1 %tobool.i.not, label %if.end13.if.end24_crit_edge, label %if.then15

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then15:                                        ; preds = %if.end13
  %call16 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %cmp.i108 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %do.end21, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  %4 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.then15.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %vbus_reg.0 = phi ptr [ %call16, %if.then15.if.end24_crit_edge ], [ null, %if.end13.if.end24_crit_edge ]
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %irq26 = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %irq26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call6, ptr %irq26, align 4
  %base27 = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %base27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %base27, align 4
  %vbus_reg28 = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 12
  %8 = ptrtoint ptr %vbus_reg28 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vbus_reg.0, ptr %vbus_reg28, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i109 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp30 = icmp slt i32 %call.i109, 0
  br i1 %cmp30, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i109) #9
  br label %err1

if.end35:                                         ; preds = %if.end24
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call.i110 = tail call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i, label %if.end35.dwc3_omap_map_offset.exit_crit_edge, label %if.then.i

if.end35.dwc3_omap_map_offset.exit_crit_edge:     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwc3_omap_map_offset.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %irq_eoi_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %irq_eoi_offset.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %irq_eoi_offset.i, align 4
  %irq0_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %irq0_offset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %irq0_offset.i, align 4
  %irqmisc_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %irqmisc_offset.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1020, ptr %irqmisc_offset.i, align 4
  %utmi_otg_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %utmi_otg_offset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1152, ptr %utmi_otg_offset.i, align 4
  %debug_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %debug_offset.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1536, ptr %debug_offset.i, align 4
  br label %dwc3_omap_map_offset.exit

dwc3_omap_map_offset.exit:                        ; preds = %if.then.i, %if.end35.dwc3_omap_map_offset.exit_crit_edge
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %of_node.i111 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node.i111 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i111, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmi_mode.i) #6
  %22 = ptrtoint ptr %utmi_mode.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %utmi_mode.i, align 4
  %23 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base27, align 4
  %utmi_otg_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i.i = add i32 %26, 132
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 %add.i.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !74
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.22, ptr noundef nonnull %utmi_mode.i, i32 noundef 1, i32 noundef 0) #6
  %29 = ptrtoint ptr %utmi_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %utmi_mode.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %dwc3_omap_map_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %28, -2147483648
  br label %dwc3_omap_set_utmi_mode.exit

sw.bb2.i:                                         ; preds = %dwc3_omap_map_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %28, 2147483647
  br label %dwc3_omap_set_utmi_mode.exit

do.end.i:                                         ; preds = %dwc3_omap_map_offset.exit
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %call7.i = call ptr @dev_driver_string(ptr noundef %33) #6
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i ], [ %37, %do.end.i.dev_name.exit.i_crit_edge ]
  %40 = ptrtoint ptr %utmi_mode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %utmi_mode.i, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 407, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call7.i, ptr noundef %retval.0.i.i, i32 noundef %41) #6
  br label %dwc3_omap_set_utmi_mode.exit

dwc3_omap_set_utmi_mode.exit:                     ; preds = %dev_name.exit.i, %sw.bb2.i, %sw.bb.i
  %reg.0.i = phi i32 [ %28, %dev_name.exit.i ], [ %and.i, %sw.bb2.i ], [ %or.i, %sw.bb.i ]
  %42 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base27, align 4
  %44 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i30.i = add i32 %45, 132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @arm_heavy_mb() #6
  %46 = call i32 @llvm.bswap.i32(i32 %reg.0.i) #6
  %add.ptr.i.i31.i = getelementptr i8, ptr %43, i32 %add.i30.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31.i, i32 %46) #6, !srcloc !77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmi_mode.i) #6
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %of_node.i112 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %of_node.i112 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node.i112, align 8
  %call.i.i = call ptr @of_find_property(ptr noundef %50, ptr noundef nonnull @.str.24, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %dwc3_omap_set_utmi_mode.exit.if.end39_crit_edge, label %if.then.i113

dwc3_omap_set_utmi_mode.exit.if.end39_crit_edge:  ; preds = %dwc3_omap_set_utmi_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then.i113:                                     ; preds = %dwc3_omap_set_utmi_mode.exit
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %call2.i = call ptr @extcon_get_edev_by_phandle(ptr noundef %52, i32 noundef 0) #6
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i113.err1_crit_edge, label %if.end.i

if.then.i113.err1_crit_edge:                      ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end.i:                                         ; preds = %if.then.i113
  %vbus_nb.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 10
  %53 = ptrtoint ptr %vbus_nb.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @dwc3_omap_vbus_notifier, ptr %vbus_nb.i, align 4
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %call7.i114 = call i32 @devm_extcon_register_notifier(ptr noundef %55, ptr noundef %call2.i, i32 noundef 1, ptr noundef %vbus_nb.i) #6
  %id_nb.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 11
  %56 = ptrtoint ptr %id_nb.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @dwc3_omap_id_notifier, ptr %id_nb.i, align 4
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %call13.i = call i32 @devm_extcon_register_notifier(ptr noundef %58, ptr noundef %call2.i, i32 noundef 2, ptr noundef %id_nb.i) #6
  %call17.i = call i32 @extcon_get_state(ptr noundef %call2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i)
  %cmp18.i = icmp eq i32 %call17.i, 1
  %59 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base27, align 4
  %61 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i78.i.i = add i32 %62, 132
  %add.ptr.i.i79.i.i = getelementptr i8, ptr %60, i32 %add.i78.i.i
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79.i.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %64 = and i32 %63, -234881025
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = or i32 %64, 100663296
  %66 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base27, align 4
  %68 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i82.i.i = add i32 %69, 132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @arm_heavy_mb() #6
  %add.ptr.i.i83.i.i = getelementptr i8, ptr %67, i32 %add.i82.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83.i.i, i32 %65) #6, !srcloc !77
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = or i32 %64, 134217728
  %71 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base27, align 4
  %73 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i98.i.i = add i32 %74, 132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @arm_heavy_mb() #6
  %add.ptr.i.i99.i.i = getelementptr i8, ptr %72, i32 %add.i98.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i99.i.i, i32 %70) #6, !srcloc !77
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then19.i
  %call21.i = call i32 @extcon_get_state(ptr noundef %call2.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.i = icmp eq i32 %call21.i, 1
  %75 = ptrtoint ptr %vbus_reg28 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vbus_reg28, align 4
  %tobool.not.i.i115 = icmp eq ptr %76, null
  br i1 %cmp22.i, label %if.then23.i, label %if.else24.i

if.then23.i:                                      ; preds = %if.end20.i
  br i1 %tobool.not.i.i115, label %if.then23.i.if.end4.i.i_crit_edge, label %if.then.i.i

if.then23.i.if.end4.i.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.then23.i
  %call.i48.i = call i32 @regulator_enable(ptr noundef nonnull %76) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool2.not.i.i = icmp eq i32 %call.i48.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %do.end.i.i

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.25) #9
  br label %if.end25.i

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %if.then23.i.if.end4.i.i_crit_edge
  %79 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base27, align 4
  %81 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i.i.i = add i32 %82, 132
  %add.ptr.i.i.i.i = getelementptr i8, ptr %80, i32 %add.i.i.i
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %84 = and i32 %83, -268435457
  %85 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base27, align 4
  %87 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i74.i.i = add i32 %88, 132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @arm_heavy_mb() #6
  %add.ptr.i.i75.i.i = getelementptr i8, ptr %86, i32 %add.i74.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75.i.i, i32 %84) #6, !srcloc !77
  br label %if.end25.i

if.else24.i:                                      ; preds = %if.end20.i
  br i1 %tobool.not.i.i115, label %if.else24.i.dwc3_omap_set_mailbox.exit49.i_crit_edge, label %if.then12.i.i

if.else24.i.dwc3_omap_set_mailbox.exit49.i_crit_edge: ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwc3_omap_set_mailbox.exit49.i

if.then12.i.i:                                    ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i.i = call i32 @regulator_disable(ptr noundef nonnull %76) #6
  br label %dwc3_omap_set_mailbox.exit49.i

dwc3_omap_set_mailbox.exit49.i:                   ; preds = %if.then12.i.i, %if.else24.i.dwc3_omap_set_mailbox.exit49.i_crit_edge
  %89 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base27, align 4
  %91 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i86.i.i = add i32 %92, 132
  %add.ptr.i.i87.i.i = getelementptr i8, ptr %90, i32 %add.i86.i.i
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i87.i.i) #6, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %94 = or i32 %93, 268435456
  %95 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base27, align 4
  %97 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i90.i.i = add i32 %98, 132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @arm_heavy_mb() #6
  %add.ptr.i.i91.i.i = getelementptr i8, ptr %96, i32 %add.i90.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i91.i.i, i32 %94) #6, !srcloc !77
  br label %if.end25.i

if.end25.i:                                       ; preds = %dwc3_omap_set_mailbox.exit49.i, %if.end4.i.i, %do.end.i.i
  %edev26.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 9
  %99 = ptrtoint ptr %edev26.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call2.i, ptr %edev26.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end25.i, %dwc3_omap_set_utmi_mode.exit.if.end39_crit_edge
  %call40 = call i32 @of_platform_populate(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %err1

if.end47:                                         ; preds = %if.end39
  %100 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %irq26, align 4
  %call49 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %101, ptr noundef nonnull @dwc3_omap_interrupt, ptr noundef nonnull @dwc3_omap_interrupt_thread, i32 noundef 128, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %103, i32 noundef %call49) #9
  br label %err1

if.end56:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base27, align 4
  %irq0_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 8
  %106 = ptrtoint ptr %irq0_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq0_offset.i.i, align 4
  %sub.i.i = sub i32 44, %107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @arm_heavy_mb() #6
  %add.ptr.i.i.i117 = getelementptr i8, ptr %105, i32 %sub.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i117, i32 16777216) #6, !srcloc !77
  %108 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base27, align 4
  %irqmisc_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %call.i, i32 0, i32 5
  %110 = ptrtoint ptr %irqmisc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irqmisc_offset.i.i, align 4
  %add.i.i118 = add i32 %111, 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @arm_heavy_mb() #6
  %add.ptr.i.i4.i = getelementptr i8, ptr %109, i32 %add.i.i118
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 960037120) #6, !srcloc !77
  br label %cleanup

err1:                                             ; preds = %do.end54, %do.end45, %if.then.i113.err1_crit_edge, %do.end34
  %ret.0 = phi i32 [ %call.i109, %do.end34 ], [ %call40, %do.end45 ], [ %call49, %do.end54 ], [ -517, %if.then.i113.err1_crit_edge ]
  %call.i119 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end56, %do.end21, %if.then11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %3, %if.then11 ], [ %4, %do.end21 ], [ %ret.0, %err1 ], [ 0, %if.end56 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_omap_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %irq0_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq0_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq0_offset.i.i, align 4
  %sub.i.i = sub i32 48, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %sub.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #6, !srcloc !77
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %irqmisc_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %irqmisc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqmisc_offset.i.i, align 4
  %add.i.i = add i32 %9, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i4.i = getelementptr i8, ptr %7, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 960037120) #6, !srcloc !77
  %irq = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %11) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @of_platform_depopulate(ptr noundef %13) #6
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_omap_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %_omap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.dwc3_omap, ptr %_omap, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %irqmisc_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %_omap, i32 0, i32 5
  %2 = ptrtoint ptr %irqmisc_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqmisc_offset.i, align 4
  %add.i = add i32 %3, 52
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %irq0_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %_omap, i32 0, i32 8
  %7 = ptrtoint ptr %irq0_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq0_offset.i, align 4
  %sub.i = sub i32 36, %8
  %add.ptr.i.i6 = getelementptr i8, ptr %6, i32 %sub.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %irq0_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %_omap, i32 0, i32 8
  %12 = ptrtoint ptr %irq0_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq0_offset.i.i, align 4
  %sub.i.i = sub i32 48, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %sub.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #6, !srcloc !77
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = ptrtoint ptr %irqmisc_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irqmisc_offset.i, align 4
  %add.i.i = add i32 %17, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i4.i = getelementptr i8, ptr %15, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 960037120) #6, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_omap_interrupt_thread(i32 noundef %irq, ptr nocapture noundef readonly %_omap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.dwc3_omap, ptr %_omap, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %irqmisc_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %_omap, i32 0, i32 5
  %2 = ptrtoint ptr %irqmisc_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqmisc_offset.i, align 4
  %add.i = add i32 %3, 52
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %7 = ptrtoint ptr %irqmisc_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irqmisc_offset.i, align 4
  %add.i9 = add i32 %8, 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i10 = getelementptr i8, ptr %6, i32 %add.i9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10, i32 %4) #6, !srcloc !77
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %irq0_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %_omap, i32 0, i32 8
  %11 = ptrtoint ptr %irq0_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq0_offset.i, align 4
  %sub.i = sub i32 36, %12
  %add.ptr.i.i12 = getelementptr i8, ptr %10, i32 %sub.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = ptrtoint ptr %irq0_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq0_offset.i, align 4
  %sub.i15 = sub i32 40, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i16 = getelementptr i8, ptr %15, i32 %sub.i15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 %13) #6, !srcloc !77
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %20 = ptrtoint ptr %irq0_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq0_offset.i, align 4
  %sub.i.i = sub i32 44, %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %sub.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #6, !srcloc !77
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %24 = ptrtoint ptr %irqmisc_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irqmisc_offset.i, align 4
  %add.i.i = add i32 %25, 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i4.i = getelementptr i8, ptr %23, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 960037120) #6, !srcloc !77
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_omap_vbus_notifier(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool.not = icmp eq i32 %event, 0
  %base.i92.i = getelementptr i8, ptr %nb, i32 -32
  %0 = ptrtoint ptr %base.i92.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i92.i, align 4
  %utmi_otg_offset.i93.i = getelementptr i8, ptr %nb, i32 -24
  %2 = ptrtoint ptr %utmi_otg_offset.i93.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %utmi_otg_offset.i93.i, align 4
  %add.i94.i = add i32 %3, 132
  %add.ptr.i.i95.i = getelementptr i8, ptr %1, i32 %add.i94.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %5 = and i32 %4, -234881025
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = or i32 %5, 100663296
  %7 = ptrtoint ptr %base.i92.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i92.i, align 4
  %9 = ptrtoint ptr %utmi_otg_offset.i93.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %utmi_otg_offset.i93.i, align 4
  %add.i82.i = add i32 %10, 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i83.i = getelementptr i8, ptr %8, i32 %add.i82.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83.i, i32 %6) #6, !srcloc !77
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i32 %5, 134217728
  %12 = ptrtoint ptr %base.i92.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i92.i, align 4
  %14 = ptrtoint ptr %utmi_otg_offset.i93.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %utmi_otg_offset.i93.i, align 4
  %add.i98.i = add i32 %15, 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i99.i = getelementptr i8, ptr %13, i32 %add.i98.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i99.i, i32 %11) #6, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_omap_id_notifier(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool.not = icmp eq i32 %event, 0
  %vbus_reg10.i = getelementptr i8, ptr %nb, i32 12
  %0 = ptrtoint ptr %vbus_reg10.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbus_reg10.i, align 4
  %tobool11.not.i = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool11.not.i, label %if.then.if.end4.i_crit_edge, label %if.then.i

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @regulator_enable(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %do.end.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25) #9
  br label %if.end

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.then.if.end4.i_crit_edge
  %base.i.i = getelementptr i8, ptr %nb, i32 -44
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %utmi_otg_offset.i.i = getelementptr i8, ptr %nb, i32 -36
  %6 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i.i = add i32 %7, 132
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %add.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %9 = and i32 %8, -268435457
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %12 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i74.i = add i32 %13, 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i75.i = getelementptr i8, ptr %11, i32 %add.i74.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75.i, i32 %9) #6, !srcloc !77
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool11.not.i, label %if.else.dwc3_omap_set_mailbox.exit2_crit_edge, label %if.then12.i

if.else.dwc3_omap_set_mailbox.exit2_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwc3_omap_set_mailbox.exit2

if.then12.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 @regulator_disable(ptr noundef nonnull %1) #6
  br label %dwc3_omap_set_mailbox.exit2

dwc3_omap_set_mailbox.exit2:                      ; preds = %if.then12.i, %if.else.dwc3_omap_set_mailbox.exit2_crit_edge
  %base.i84.i = getelementptr i8, ptr %nb, i32 -44
  %14 = ptrtoint ptr %base.i84.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i84.i, align 4
  %utmi_otg_offset.i85.i = getelementptr i8, ptr %nb, i32 -36
  %16 = ptrtoint ptr %utmi_otg_offset.i85.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %utmi_otg_offset.i85.i, align 4
  %add.i86.i = add i32 %17, 132
  %add.ptr.i.i87.i = getelementptr i8, ptr %15, i32 %add.i86.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i87.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %19 = or i32 %18, 268435456
  %20 = ptrtoint ptr %base.i84.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i84.i, align 4
  %22 = ptrtoint ptr %utmi_otg_offset.i85.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %utmi_otg_offset.i85.i, align 4
  %add.i90.i = add i32 %23, 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i91.i = getelementptr i8, ptr %21, i32 %add.i90.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i91.i, i32 %19) #6, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %dwc3_omap_set_mailbox.exit2, %if.end4.i, %do.end.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc3_omap_complete(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %edev = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edev, align 4
  %call1 = tail call i32 @extcon_get_state(ptr noundef %3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %base.i92.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base.i92.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i92.i, align 4
  %utmi_otg_offset.i93.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %utmi_otg_offset.i93.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %utmi_otg_offset.i93.i, align 4
  %add.i94.i = add i32 %7, 132
  %add.ptr.i.i95.i = getelementptr i8, ptr %5, i32 %add.i94.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %9 = and i32 %8, -234881025
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = or i32 %9, 100663296
  %11 = ptrtoint ptr %base.i92.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i92.i, align 4
  %13 = ptrtoint ptr %utmi_otg_offset.i93.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %utmi_otg_offset.i93.i, align 4
  %add.i82.i = add i32 %14, 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i83.i = getelementptr i8, ptr %12, i32 %add.i82.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83.i, i32 %10) #6, !srcloc !77
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = or i32 %9, 134217728
  %16 = ptrtoint ptr %base.i92.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i92.i, align 4
  %18 = ptrtoint ptr %utmi_otg_offset.i93.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %utmi_otg_offset.i93.i, align 4
  %add.i98.i = add i32 %19, 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i99.i = getelementptr i8, ptr %17, i32 %add.i98.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i99.i, i32 %15) #6, !srcloc !77
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edev, align 4
  %call3 = tail call i32 @extcon_get_state(ptr noundef %21, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %vbus_reg10.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %vbus_reg10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vbus_reg10.i, align 4
  %tobool11.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.end
  br i1 %tobool11.not.i, label %if.then5.if.end4.i_crit_edge, label %if.then.i

if.then5.if.end4.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then5
  %call.i = tail call i32 @regulator_enable(ptr noundef nonnull %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %do.end.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.25) #9
  br label %if.end7

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.then5.if.end4.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %utmi_otg_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i.i = add i32 %29, 132
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %add.i.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %31 = and i32 %30, -268435457
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %34 = ptrtoint ptr %utmi_otg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %utmi_otg_offset.i.i, align 4
  %add.i74.i = add i32 %35, 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i75.i = getelementptr i8, ptr %33, i32 %add.i74.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75.i, i32 %31) #6, !srcloc !77
  br label %if.end7

if.else6:                                         ; preds = %if.end
  br i1 %tobool11.not.i, label %if.else6.dwc3_omap_set_mailbox.exit13_crit_edge, label %if.then12.i

if.else6.dwc3_omap_set_mailbox.exit13_crit_edge:  ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwc3_omap_set_mailbox.exit13

if.then12.i:                                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 @regulator_disable(ptr noundef nonnull %23) #6
  br label %dwc3_omap_set_mailbox.exit13

dwc3_omap_set_mailbox.exit13:                     ; preds = %if.then12.i, %if.else6.dwc3_omap_set_mailbox.exit13_crit_edge
  %base.i84.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %base.i84.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i84.i, align 4
  %utmi_otg_offset.i85.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %utmi_otg_offset.i85.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %utmi_otg_offset.i85.i, align 4
  %add.i86.i = add i32 %39, 132
  %add.ptr.i.i87.i = getelementptr i8, ptr %37, i32 %add.i86.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i87.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %41 = or i32 %40, 268435456
  %42 = ptrtoint ptr %base.i84.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i84.i, align 4
  %44 = ptrtoint ptr %utmi_otg_offset.i85.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %utmi_otg_offset.i85.i, align 4
  %add.i90.i = add i32 %45, 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i91.i = getelementptr i8, ptr %43, i32 %add.i90.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i91.i, i32 %41) #6, !srcloc !77
  br label %if.end7

if.end7:                                          ; preds = %dwc3_omap_set_mailbox.exit13, %if.end4.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_omap_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %utmi_otg_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %utmi_otg_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %utmi_otg_offset.i, align 4
  %add.i = add i32 %5, 132
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !74
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %utmi_otg_ctrl = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %utmi_otg_ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %utmi_otg_ctrl, align 4
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %irq0_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %irq0_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq0_offset.i.i, align 4
  %sub.i.i = sub i32 48, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %sub.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #6, !srcloc !77
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %irqmisc_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %irqmisc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqmisc_offset.i.i, align 4
  %add.i.i = add i32 %16, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i4.i = getelementptr i8, ptr %14, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 960037120) #6, !srcloc !77
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc3_omap_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %utmi_otg_ctrl = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %utmi_otg_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %utmi_otg_ctrl, align 4
  %base.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %utmi_otg_offset.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %utmi_otg_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %utmi_otg_offset.i, align 4
  %add.i = add i32 %7, 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #6, !srcloc !77
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %irq0_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %irq0_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq0_offset.i.i, align 4
  %sub.i.i = sub i32 44, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %sub.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #6, !srcloc !77
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %irqmisc_offset.i.i = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %irqmisc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqmisc_offset.i.i, align 4
  %add.i.i = add i32 %16, 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i4.i = getelementptr i8, ptr %14, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 960037120) #6, !srcloc !77
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_dwc3_omap__295_622_dwc3_omap_driver_init6, !1, !"__initcall__kmod_dwc3_omap__295_622_dwc3_omap_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 622, i32 1}
!2 = !{ptr @__exitcall_dwc3_omap_driver_exit, !1, !"__exitcall_dwc3_omap_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias296, !4, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!4 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 624, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 625, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 626, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description300, !11, !"__UNIQUE_ID_description300", i1 false, i1 false}
!11 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 627, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 616, i32 11}
!14 = !{ptr @dwc3_omap_driver, !15, !"dwc3_omap_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 612, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 468, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dwc3_omap_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dwc3_omap_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 486, i32 34}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 487, i32 38}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 489, i32 4}
!30 = !{ptr @dwc3_omap_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dwc3_omap_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 502, i32 3}
!34 = !{ptr @dwc3_omap_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dwc3_omap_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 515, i32 3}
!38 = !{ptr @dwc3_omap_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dwc3_omap_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 521, i32 6}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 523, i32 3}
!44 = !{ptr @dwc3_omap_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dwc3_omap_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 380, i32 36}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 397, i32 29}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 407, i32 3}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 419, i32 34}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 226, i32 5}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @dwc3_omap_set_mailbox._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @dwc3_omap_set_mailbox._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 261, i32 3}
!61 = !{ptr @of_dwc3_match, !62, !"of_dwc3_match", i1 false, i1 false}
!62 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 550, i32 34}
!63 = !{ptr @dwc3_omap_dev_pm_ops, !64, !"dwc3_omap_dev_pm_ops", i1 false, i1 false}
!64 = !{!"../drivers/usb/dwc3/dwc3-omap.c", i32 601, i32 32}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 4991734}
!75 = !{i64 2155306660}
!76 = !{i64 2155307041}
!77 = !{i64 4991316}
