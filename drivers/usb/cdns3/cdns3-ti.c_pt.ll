; ModuleID = '/llk/IR_all_yes/drivers/usb/cdns3/cdns3-ti.c_pt.bc'
source_filename = "../drivers/usb/cdns3/cdns3-ti.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.cdns_ti = type { ptr, ptr, i8, ptr, ptr }

@__initcall__kmod_cdns3_ti__235_231_cdns_ti_driver_init6 = internal global ptr @cdns_ti_driver_init, section ".initcall6.init", align 4
@cdns_ti_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_ti_probe, ptr @cdns_ti_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_ti_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_ti_driver_exit = internal global ptr @cdns_ti_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias236 = internal constant [33 x i8] c"cdns3_ti.alias=platform:cdns3-ti\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [46 x i8] c"cdns3_ti.author=Roger Quadros <rogerq@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [41 x i8] c"cdns3_ti.file=drivers/usb/cdns3/cdns3-ti\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [24 x i8] c"cdns3_ti.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [48 x i8] c"cdns3_ti.description=Cadence USB3 TI Glue Layer\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdns3-ti\00", [23 x i8] zeroinitializer }, align 32
@cdns_ti_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cdns_ti_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't map IOMEM resource\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns_ti_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/cdns3/cdns3-ti.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_ti_probe._entry_ptr = internal global ptr @cdns_ti_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@cdns_ti_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't get usb2_refclk\0A\00", [41 x i8] zeroinitializer }, align 32
@cdns_ti_probe._entry_ptr.9 = internal global ptr @cdns_ti_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lpm\00", [28 x i8] zeroinitializer }, align 32
@cdns_ti_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't get lpm_clk\0A\00", [45 x i8] zeroinitializer }, align 32
@cdns_ti_probe._entry_ptr.13 = internal global ptr @cdns_ti_probe._entry.11, section ".printk_index", align 4
@cdns_ti_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported usb2_refclk rate: %lu KHz\0A\00", [57 x i8] zeroinitializer }, align 32
@cdns_ti_probe._entry_ptr.16 = internal global ptr @cdns_ti_probe._entry.14, section ".printk_index", align 4
@cdns_ti_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cdns_ti_probe._entry_ptr.19 = internal global ptr @cdns_ti_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,vbus-divider\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,usb2-only\00", [19 x i8] zeroinitializer }, align 32
@cdns_ti_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to create children: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cdns_ti_probe._entry_ptr.24 = internal global ptr @cdns_ti_probe._entry.22, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"cdns_ti_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 222, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 226, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"cdns_ti_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 215, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 107, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 111, i32 40 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 113, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 117, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 119, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 131, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 140, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 155, i32 54 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 164, i32 51 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [32 x i8] c"../drivers/usb/cdns3/cdns3-ti.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 180, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_cdns_ti_driver_exit, ptr @__initcall__kmod_cdns3_ti__235_231_cdns_ti_driver_init6, ptr @cdns_ti_driver_exit, ptr @cdns_ti_probe._entry, ptr @cdns_ti_probe._entry.11, ptr @cdns_ti_probe._entry.14, ptr @cdns_ti_probe._entry.17, ptr @cdns_ti_probe._entry.22, ptr @cdns_ti_probe._entry.7, ptr @cdns_ti_probe._entry_ptr, ptr @cdns_ti_probe._entry_ptr.13, ptr @cdns_ti_probe._entry_ptr.16, ptr @cdns_ti_probe._entry_ptr.19, ptr @cdns_ti_probe._entry_ptr.24, ptr @cdns_ti_probe._entry_ptr.9, ptr @cdns_ti_driver, ptr @.str, ptr @cdns_ti_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ti_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ti_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ti_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ti_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ti_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ti_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ti_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_ti_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ti_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_ti_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_ti_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_ti_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ti_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %usbss = getelementptr inbounds %struct.cdns_ti, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %usbss to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %usbss, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %5 = ptrtoint ptr %usbss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usbss, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  %usb2_refclk = getelementptr inbounds %struct.cdns_ti, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %usb2_refclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %usb2_refclk, align 4
  %cmp.i166 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %9 = ptrtoint ptr %usb2_refclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb2_refclk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #5
  %lpm_clk = getelementptr inbounds %struct.cdns_ti, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %lpm_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21, ptr %lpm_clk, align 4
  %cmp.i167 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  %13 = ptrtoint ptr %lpm_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lpm_clk, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %16 = ptrtoint ptr %usb2_refclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb2_refclk, align 4
  %call32 = tail call i32 @clk_get_rate(ptr noundef %17) #5
  %div = udiv i32 %call32, 1000
  %call32.off = add i32 %call32, -9600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off)
  %18 = icmp ult i32 %call32.off, 1000
  br i1 %18, label %if.end30.if.end41_crit_edge, label %for.inc

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc:                                          ; preds = %if.end30
  %call32.off191 = add i32 %call32, -10000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off191)
  %19 = icmp ult i32 %call32.off191, 1000
  br i1 %19, label %for.inc.if.end41_crit_edge, label %for.inc.1

for.inc.if.end41_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.1:                                        ; preds = %for.inc
  %call32.off192 = add i32 %call32, -12000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off192)
  %20 = icmp ult i32 %call32.off192, 1000
  br i1 %20, label %for.inc.1.if.end41_crit_edge, label %for.inc.2

for.inc.1.if.end41_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.2:                                        ; preds = %for.inc.1
  %call32.off193 = add i32 %call32, -19200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off193)
  %21 = icmp ult i32 %call32.off193, 1000
  br i1 %21, label %for.inc.2.if.end41_crit_edge, label %for.inc.3

for.inc.2.if.end41_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.3:                                        ; preds = %for.inc.2
  %call32.off194 = add i32 %call32, -20000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off194)
  %22 = icmp ult i32 %call32.off194, 1000
  br i1 %22, label %for.inc.3.if.end41_crit_edge, label %for.inc.4

for.inc.3.if.end41_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.4:                                        ; preds = %for.inc.3
  %call32.off195 = add i32 %call32, -24000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off195)
  %23 = icmp ult i32 %call32.off195, 1000
  br i1 %23, label %for.inc.4.if.end41_crit_edge, label %for.inc.5

for.inc.4.if.end41_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.5:                                        ; preds = %for.inc.4
  %call32.off196 = add i32 %call32, -25000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off196)
  %24 = icmp ult i32 %call32.off196, 1000
  br i1 %24, label %for.inc.5.if.end41_crit_edge, label %for.inc.6

for.inc.5.if.end41_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.6:                                        ; preds = %for.inc.5
  %call32.off197 = add i32 %call32, -26000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off197)
  %25 = icmp ult i32 %call32.off197, 1000
  br i1 %25, label %for.inc.6.if.end41_crit_edge, label %for.inc.7

for.inc.6.if.end41_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.7:                                        ; preds = %for.inc.6
  %call32.off198 = add i32 %call32, -38400000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off198)
  %26 = icmp ult i32 %call32.off198, 1000
  br i1 %26, label %for.inc.7.if.end41_crit_edge, label %for.inc.8

for.inc.7.if.end41_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.8:                                        ; preds = %for.inc.7
  %call32.off199 = add i32 %call32, -40000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off199)
  %27 = icmp ult i32 %call32.off199, 1000
  br i1 %27, label %for.inc.8.if.end41_crit_edge, label %for.inc.9

for.inc.8.if.end41_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.9:                                        ; preds = %for.inc.8
  %call32.off200 = add i32 %call32, -58000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off200)
  %28 = icmp ult i32 %call32.off200, 1000
  br i1 %28, label %for.inc.9.if.end41_crit_edge, label %for.inc.10

for.inc.9.if.end41_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.10:                                       ; preds = %for.inc.9
  %call32.off201 = add i32 %call32, -50000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off201)
  %29 = icmp ult i32 %call32.off201, 1000
  br i1 %29, label %for.inc.10.if.end41_crit_edge, label %for.inc.11

for.inc.10.if.end41_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.inc.11:                                       ; preds = %for.inc.10
  %call32.off202 = add i32 %call32, -52000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call32.off202)
  %30 = icmp ult i32 %call32.off202, 1000
  br i1 %30, label %for.inc.11.if.end41_crit_edge, label %do.end40

for.inc.11.if.end41_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

do.end40:                                         ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %div) #8
  br label %cleanup

if.end41:                                         ; preds = %for.inc.11.if.end41_crit_edge, %for.inc.10.if.end41_crit_edge, %for.inc.9.if.end41_crit_edge, %for.inc.8.if.end41_crit_edge, %for.inc.7.if.end41_crit_edge, %for.inc.6.if.end41_crit_edge, %for.inc.5.if.end41_crit_edge, %for.inc.4.if.end41_crit_edge, %for.inc.3.if.end41_crit_edge, %for.inc.2.if.end41_crit_edge, %for.inc.1.if.end41_crit_edge, %for.inc.if.end41_crit_edge, %if.end30.if.end41_crit_edge
  %i.0189.lcssa = phi i32 [ 0, %if.end30.if.end41_crit_edge ], [ 32, %for.inc.if.end41_crit_edge ], [ 64, %for.inc.1.if.end41_crit_edge ], [ 96, %for.inc.2.if.end41_crit_edge ], [ 128, %for.inc.3.if.end41_crit_edge ], [ 160, %for.inc.4.if.end41_crit_edge ], [ 192, %for.inc.5.if.end41_crit_edge ], [ 224, %for.inc.6.if.end41_crit_edge ], [ 256, %for.inc.7.if.end41_crit_edge ], [ 288, %for.inc.8.if.end41_crit_edge ], [ 320, %for.inc.9.if.end41_crit_edge ], [ 352, %for.inc.10.if.end41_crit_edge ], [ 384, %for.inc.11.if.end41_crit_edge ]
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i168 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %cmp43 = icmp slt i32 %call.i168, 0
  br i1 %cmp43, label %do.end47, label %if.end48

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call.i168) #8
  br label %err

if.end48:                                         ; preds = %if.end41
  %31 = ptrtoint ptr %usbss to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usbss, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %34 = and i32 %33, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %usbss to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usbss, align 4
  %add.ptr.i170 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %34) #5, !srcloc !68
  %37 = ptrtoint ptr %usbss to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usbss, align 4
  %add.ptr.i172 = getelementptr i8, ptr %38, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %40 = and i32 %39, 436142079
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %or = or i32 %41, %i.0189.lcssa
  %call.i173 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.20) #5
  %vbus_divider = getelementptr inbounds %struct.cdns_ti, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %vbus_divider to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %vbus_divider, align 4
  %bf.shl = select i1 %call.i173, i8 64, i8 0
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %vbus_divider, align 4
  %or59 = or i32 %or, 2
  %spec.select = select i1 %call.i173, i32 %or59, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #5
  %44 = ptrtoint ptr %usbss to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usbss, align 4
  %add.ptr.i175 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175, i32 %43) #5, !srcloc !68
  %46 = ptrtoint ptr %usbss to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usbss, align 4
  %add.ptr.i177 = getelementptr i8, ptr %47, i32 8
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %49 = ptrtoint ptr %usbss to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usbss, align 4
  %add.ptr.i179 = getelementptr i8, ptr %50, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #5, !srcloc !65
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %call.i180 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.21) #5
  %53 = ptrtoint ptr %vbus_divider to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load65 = load i8, ptr %vbus_divider, align 4
  %bf.shl67 = select i1 %call.i180, i8 -128, i8 0
  %bf.clear68 = and i8 %bf.load65, 127
  %bf.set69 = or i8 %bf.clear68, %bf.shl67
  store i8 %bf.set69, ptr %vbus_divider, align 4
  %or77 = or i32 %52, 524288
  %reg.1 = select i1 %call.i180, i32 %or77, i32 %52
  %or79 = and i32 %reg.1, -393729
  %and80 = or i32 %or79, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %54 = tail call i32 @llvm.bswap.i32(i32 %and80) #5
  %55 = ptrtoint ptr %usbss to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usbss, align 4
  %add.ptr.i182 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 %54) #5, !srcloc !68
  %or82 = or i32 %or79, 513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %or82) #5
  %58 = ptrtoint ptr %usbss to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usbss, align 4
  %add.ptr.i184 = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %57) #5, !srcloc !68
  %call83 = tail call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end48.cleanup_crit_edge, label %do.end88

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end88:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call83) #8
  br label %err

err:                                              ; preds = %do.end88, %do.end47
  %error.0 = phi i32 [ %call.i168, %do.end47 ], [ %call83, %do.end88 ]
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %call.i185 = tail call i32 @__pm_runtime_idle(ptr noundef %61, i32 noundef 4) #5
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %63, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end48.cleanup_crit_edge, %do.end40, %do.end27, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ %11, %do.end17 ], [ %15, %do.end27 ], [ -22, %do.end40 ], [ %error.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ti_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @device_for_each_child(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @cdns_ti_remove_core) #5
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_ti_remove_core(ptr noundef %dev, ptr nocapture noundef readnone %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_cdns3_ti__235_231_cdns_ti_driver_init6, !1, !"__initcall__kmod_cdns3_ti__235_231_cdns_ti_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 231, i32 1}
!2 = !{ptr @__exitcall_cdns_ti_driver_exit, !1, !"__exitcall_cdns_ti_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias236, !4, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!4 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 233, i32 1}
!5 = !{ptr @__UNIQUE_ID_author237, !6, !"__UNIQUE_ID_author237", i1 false, i1 false}
!6 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 234, i32 1}
!7 = !{ptr @__UNIQUE_ID_file238, !8, !"__UNIQUE_ID_file238", i1 false, i1 false}
!8 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 235, i32 1}
!9 = !{ptr @__UNIQUE_ID_license239, !8, !"__UNIQUE_ID_license239", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description240, !11, !"__UNIQUE_ID_description240", i1 false, i1 false}
!11 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 236, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 226, i32 11}
!14 = !{ptr @cdns_ti_driver, !15, !"cdns_ti_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 222, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 107, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cdns_ti_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cdns_ti_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 111, i32 40}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 113, i32 3}
!28 = !{ptr @cdns_ti_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cdns_ti_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 117, i32 36}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 119, i32 3}
!34 = !{ptr @cdns_ti_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cdns_ti_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 131, i32 3}
!38 = !{ptr @cdns_ti_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cdns_ti_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 140, i32 3}
!42 = !{ptr @cdns_ti_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cdns_ti_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 155, i32 54}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 164, i32 51}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 180, i32 3}
!50 = !{ptr @cdns_ti_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cdns_ti_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"cdns_ti_rate_table", i1 false, i1 false}
!53 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 61, i32 18}
!54 = !{ptr @cdns_ti_of_match, !55, !"cdns_ti_of_match", i1 false, i1 false}
!55 = !{!"../drivers/usb/cdns3/cdns3-ti.c", i32 215, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 4651614}
!66 = !{i64 2154305273}
!67 = !{i64 2154305661}
!68 = !{i64 4651196}
