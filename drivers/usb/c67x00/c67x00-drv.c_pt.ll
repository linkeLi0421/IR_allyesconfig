; ModuleID = '/llk/IR_all_yes/drivers/usb/c67x00/c67x00-drv.c_pt.bc'
source_filename = "../drivers/usb/c67x00/c67x00-drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.c67x00_hpi = type { ptr, i32, %struct.spinlock, %struct.c67x00_lcp }
%struct.c67x00_lcp = type { %struct.mutex, %struct.completion, i16 }
%struct.c67x00_platform_data = type { i32, i32 }
%struct.c67x00_device = type { %struct.c67x00_hpi, [2 x %struct.c67x00_sie], ptr, ptr }
%struct.c67x00_sie = type { %struct.spinlock, ptr, ptr, ptr, i32, i32 }

@__initcall__kmod_c67x00__232_214_c67x00_driver_init6 = internal global ptr @c67x00_driver_init, section ".initcall6.init", align 4
@c67x00_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @c67x00_drv_probe, ptr @c67x00_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_c67x00_driver_exit = internal global ptr @c67x00_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [58 x i8] c"c67x00.author=Peter Korsgaard, Jan Veldeman, Grant Likely\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [56 x i8] c"c67x00.description=Cypress C67X00 USB Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [38 x i8] c"c67x00.file=drivers/usb/c67x00/c67x00\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [19 x i8] c"c67x00.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias237 = internal constant [29 x i8] c"c67x00.alias=platform:c67x00\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"c67x00\00", [25 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@c67x00_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Memory region busy\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c67x00_drv_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/c67x00/c67x00-drv.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c67x00_drv_probe._entry_ptr = internal global ptr @c67x00_drv_probe._entry, section ".printk_index", align 4
@c67x00_drv_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to map HPI registers\0A\00", [35 x i8] zeroinitializer }, align 32
@c67x00_drv_probe._entry_ptr.8 = internal global ptr @c67x00_drv_probe._entry.6, section ".printk_index", align 4
@c67x00_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&c67x00->hpi.lock\00", [46 x i8] zeroinitializer }, align 32
@c67x00_drv_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cannot claim IRQ\0A\00", [46 x i8] zeroinitializer }, align 32
@c67x00_drv_probe._entry_ptr.12 = internal global ptr @c67x00_drv_probe._entry.10, section ".printk_index", align 4
@c67x00_drv_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device reset failed\0A\00", [43 x i8] zeroinitializer }, align 32
@c67x00_drv_probe._entry_ptr.15 = internal global ptr @c67x00_drv_probe._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@c67x00_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 98, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Not all interrupts handled! status = 0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"c67x00_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@c67x00_irq._entry_ptr = internal global ptr @c67x00_irq._entry, section ".printk_index", align 4
@c67x00_probe_sie.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&sie->lock\00", [21 x i8] zeroinitializer }, align 32
@c67x00_probe_sie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 49, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Not using SIE %d as requested\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c67x00_probe_sie\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@c67x00_probe_sie._entry_ptr = internal global ptr @c67x00_probe_sie._entry, section ".printk_index", align 4
@c67x00_probe_sie._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 55, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unsupported configuration: 0x%x for SIE %d\0A\00", [52 x i8] zeroinitializer }, align 32
@c67x00_probe_sie._entry_ptr.25 = internal global ptr @c67x00_probe_sie._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"c67x00_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 206, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 210, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 130, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 136, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 141, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 151, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 157, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 97, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 37, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 48, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [35 x i8] c"../drivers/usb/c67x00/c67x00-drv.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 53, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_c67x00_driver_exit, ptr @__initcall__kmod_c67x00__232_214_c67x00_driver_init6, ptr @c67x00_driver_exit, ptr @c67x00_drv_probe._entry, ptr @c67x00_drv_probe._entry.10, ptr @c67x00_drv_probe._entry.13, ptr @c67x00_drv_probe._entry.6, ptr @c67x00_drv_probe._entry_ptr, ptr @c67x00_drv_probe._entry_ptr.12, ptr @c67x00_drv_probe._entry_ptr.15, ptr @c67x00_drv_probe._entry_ptr.8, ptr @c67x00_irq._entry, ptr @c67x00_irq._entry_ptr, ptr @c67x00_probe_sie._entry, ptr @c67x00_probe_sie._entry.23, ptr @c67x00_probe_sie._entry_ptr, ptr @c67x00_probe_sie._entry_ptr.25, ptr @c67x00_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @c67x00_drv_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @c67x00_probe_sie.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_drv_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_drv_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_drv_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_probe_sie.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_probe_sie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_probe_sie._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @c67x00_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @c67x00_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @c67x00_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @c67x00_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c67x00_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 340) #8
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %call14 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %4, i32 noundef %add.i, ptr noundef %8, i32 noundef 0) #5
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %request_mem_failed

if.end18:                                         ; preds = %if.end12
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 4
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %sub.i112 = sub i32 1, %10
  %add.i113 = add i32 %sub.i112, %12
  %call21 = tail call ptr @ioremap(i32 noundef %10, i32 noundef %add.i113) #5
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %call7.i.i, align 8
  %tobool24.not = icmp eq ptr %call21, null
  br i1 %tobool24.not, label %do.end28, label %do.body31

do.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %map_failed

do.body31:                                        ; preds = %if.end18
  %lock = getelementptr inbounds %struct.c67x00_hpi, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @c67x00_drv_probe.__key, i16 noundef signext 3) #5
  %hpi_regstep = getelementptr inbounds %struct.c67x00_platform_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %hpi_regstep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hpi_regstep, align 4
  %regstep = getelementptr inbounds %struct.c67x00_hpi, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %regstep to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %regstep, align 4
  %17 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data.i, align 8
  %pdata39 = getelementptr inbounds %struct.c67x00_device, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %pdata39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %pdata39, align 8
  %pdev40 = getelementptr inbounds %struct.c67x00_device, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %pdev40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdev, ptr %pdev40, align 4
  tail call void @c67x00_ll_init(ptr noundef nonnull %call7.i.i) #5
  tail call void @c67x00_ll_hpi_reg_init(ptr noundef nonnull %call7.i.i) #5
  %21 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call1, align 4
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %22, ptr noundef nonnull @c67x00_irq, ptr noundef null, i32 noundef 0, ptr noundef %24, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool44.not = icmp eq i32 %call.i, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %request_irq_failed

if.end50:                                         ; preds = %do.body31
  %call51 = tail call i32 @c67x00_ll_reset(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.body.preheader, label %do.end56

for.body.preheader:                               ; preds = %if.end50
  %arrayidx = getelementptr %struct.c67x00_device, ptr %call7.i.i, i32 0, i32 1, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.19, ptr noundef nonnull @c67x00_probe_sie.__key, i16 noundef signext 3) #5
  %dev1.i = getelementptr %struct.c67x00_device, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %dev1.i, align 8
  %sie_num2.i = getelementptr %struct.c67x00_device, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %sie_num2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %sie_num2.i, align 4
  %27 = ptrtoint ptr %pdata39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata39, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %and.i = and i32 %30, 3
  %mode.i = getelementptr %struct.c67x00_device, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 5
  %31 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %mode.i, align 8
  %32 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end12.i [
    i32 1, label %sw.bb.i
    i32 0, label %do.end7.i
  ]

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  %33 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call1, align 4
  %call60 = tail call ptr @free_irq(i32 noundef %34, ptr noundef nonnull %call7.i.i) #5
  br label %request_irq_failed

sw.bb.i:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 @c67x00_hcd_probe(ptr noundef %arrayidx) #5
  br label %c67x00_probe_sie.exit

do.end7.i:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev40, align 4
  %dev9.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  br label %c67x00_probe_sie.exit

do.end12.i:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev40, align 4
  %dev15.i = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i, ptr noundef nonnull @.str.24, i32 noundef %and.i, i32 noundef 0) #9
  br label %c67x00_probe_sie.exit

c67x00_probe_sie.exit:                            ; preds = %do.end12.i, %do.end7.i, %sw.bb.i
  %arrayidx.1 = getelementptr %struct.c67x00_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.1, ptr noundef nonnull @.str.19, ptr noundef nonnull @c67x00_probe_sie.__key, i16 noundef signext 3) #5
  %dev1.i.1 = getelementptr %struct.c67x00_device, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 3
  %39 = ptrtoint ptr %dev1.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %dev1.i.1, align 8
  %sie_num2.i.1 = getelementptr %struct.c67x00_device, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 4
  %40 = ptrtoint ptr %sie_num2.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %sie_num2.i.1, align 4
  %41 = ptrtoint ptr %pdata39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata39, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = lshr i32 %44, 4
  %and.i.1 = and i32 %45, 3
  %mode.i.1 = getelementptr %struct.c67x00_device, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 5
  %46 = ptrtoint ptr %mode.i.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i.1, ptr %mode.i.1, align 8
  %47 = zext i32 %and.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and.i.1, label %do.end12.i.1 [
    i32 1, label %sw.bb.i.1
    i32 0, label %do.end7.i.1
  ]

do.end7.i.1:                                      ; preds = %c67x00_probe_sie.exit
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev40, align 4
  %dev9.i.1 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i.1, ptr noundef nonnull @.str.20, i32 noundef 1) #9
  br label %c67x00_probe_sie.exit.1

sw.bb.i.1:                                        ; preds = %c67x00_probe_sie.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.1 = tail call i32 @c67x00_hcd_probe(ptr noundef %arrayidx.1) #5
  br label %c67x00_probe_sie.exit.1

do.end12.i.1:                                     ; preds = %c67x00_probe_sie.exit
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev40, align 4
  %dev15.i.1 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i.1, ptr noundef nonnull @.str.24, i32 noundef %and.i.1, i32 noundef 1) #9
  br label %c67x00_probe_sie.exit.1

c67x00_probe_sie.exit.1:                          ; preds = %do.end12.i.1, %sw.bb.i.1, %do.end7.i.1
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

request_irq_failed:                               ; preds = %do.end56, %do.end48
  %ret.0 = phi i32 [ %call.i, %do.end48 ], [ %call51, %do.end56 ]
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call7.i.i, align 8
  tail call void @iounmap(ptr noundef %54) #5
  br label %map_failed

map_failed:                                       ; preds = %request_irq_failed, %do.end28
  %ret.1 = phi i32 [ %ret.0, %request_irq_failed ], [ -5, %do.end28 ]
  %55 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call, align 4
  %57 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %end.i, align 4
  %sub.i116 = sub i32 1, %56
  %add.i117 = add i32 %sub.i116, %58
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %56, i32 noundef %add.i117) #5
  br label %request_mem_failed

request_mem_failed:                               ; preds = %map_failed, %do.end
  %ret.2 = phi i32 [ %ret.1, %map_failed ], [ -16, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %request_mem_failed, %c67x00_probe_sie.exit.1, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %request_mem_failed ], [ 0, %c67x00_probe_sie.exit.1 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c67x00_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode.i = getelementptr %struct.c67x00_device, ptr %1, i32 0, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond.i = icmp eq i32 %3, 1
  br i1 %cond.i, label %sw.bb.i, label %entry.c67x00_remove_sie.exit_crit_edge

entry.c67x00_remove_sie.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_remove_sie.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.c67x00_device, ptr %1, i32 0, i32 1, i32 0
  tail call void @c67x00_hcd_remove(ptr noundef %arrayidx) #5
  br label %c67x00_remove_sie.exit

c67x00_remove_sie.exit:                           ; preds = %sw.bb.i, %entry.c67x00_remove_sie.exit_crit_edge
  %mode.i.1 = getelementptr %struct.c67x00_device, ptr %1, i32 0, i32 1, i32 1, i32 5
  %4 = ptrtoint ptr %mode.i.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cond.i.1 = icmp eq i32 %5, 1
  br i1 %cond.i.1, label %sw.bb.i.1, label %c67x00_remove_sie.exit.c67x00_remove_sie.exit.1_crit_edge

c67x00_remove_sie.exit.c67x00_remove_sie.exit.1_crit_edge: ; preds = %c67x00_remove_sie.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_remove_sie.exit.1

sw.bb.i.1:                                        ; preds = %c67x00_remove_sie.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.1 = getelementptr %struct.c67x00_device, ptr %1, i32 0, i32 1, i32 1
  tail call void @c67x00_hcd_remove(ptr noundef %arrayidx.1) #5
  br label %c67x00_remove_sie.exit.1

c67x00_remove_sie.exit.1:                         ; preds = %sw.bb.i.1, %c67x00_remove_sie.exit.c67x00_remove_sie.exit.1_crit_edge
  tail call void @c67x00_ll_release(ptr noundef %1) #5
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %c67x00_remove_sie.exit.1.if.end_crit_edge, label %if.then

c67x00_remove_sie.exit.1.if.end_crit_edge:        ; preds = %c67x00_remove_sie.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %c67x00_remove_sie.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call1, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %c67x00_remove_sie.exit.1.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %9) #5
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %11
  %add.i = add i32 %sub.i, %13
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %add.i) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_hpi_reg_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c67x00_irq(i32 noundef %irq, ptr noundef %__dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @c67x00_ll_hpi_status(ptr noundef %__dev) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %arrayidx = getelementptr %struct.c67x00_device, ptr %__dev, i32 0, i32 1, i32 0
  %irq12 = getelementptr %struct.c67x00_device, ptr %__dev, i32 0, i32 1, i32 0, i32 2
  %arrayidx.1 = getelementptr %struct.c67x00_device, ptr %__dev, i32 0, i32 1, i32 1
  %irq12.1 = getelementptr %struct.c67x00_device, ptr %__dev, i32 0, i32 1, i32 1, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.1.land.rhs_crit_edge, %while.cond.preheader
  %count.049 = phi i32 [ 8, %while.cond.preheader ], [ %dec, %for.inc.1.land.rhs_crit_edge ]
  %int_status.048 = phi i16 [ %call, %while.cond.preheader ], [ %call17, %for.inc.1.land.rhs_crit_edge ]
  %conv50 = zext i16 %int_status.048 to i32
  %dec = add nsw i32 %count.049, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %count.049)
  %cmp2 = icmp sgt i32 %count.049, -1
  br i1 %cmp2, label %while.body, label %do.end

while.body:                                       ; preds = %land.rhs
  tail call void @c67x00_ll_irq(ptr noundef %__dev, i16 noundef zeroext %int_status.048) #5
  %and = and i32 %conv50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %while.body.if.end11_crit_edge, label %if.then9

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call zeroext i16 @c67x00_ll_fetch_siemsg(ptr noundef %__dev, i32 noundef 0) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %while.body.if.end11_crit_edge
  %msg.0 = phi i16 [ %call10, %if.then9 ], [ 0, %while.body.if.end11_crit_edge ]
  %0 = ptrtoint ptr %irq12 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq12, align 4
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %if.end11.for.inc_crit_edge, label %if.then14

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %arrayidx, i16 noundef zeroext %int_status.048, i16 noundef zeroext %msg.0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end11.for.inc_crit_edge
  %and.1 = and i32 %conv50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool8.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool8.not.1, label %for.inc.if.end11.1_crit_edge, label %if.then9.1

for.inc.if.end11.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call10.1 = tail call zeroext i16 @c67x00_ll_fetch_siemsg(ptr noundef %__dev, i32 noundef 1) #5
  br label %if.end11.1

if.end11.1:                                       ; preds = %if.then9.1, %for.inc.if.end11.1_crit_edge
  %msg.0.1 = phi i16 [ %call10.1, %if.then9.1 ], [ 0, %for.inc.if.end11.1_crit_edge ]
  %2 = ptrtoint ptr %irq12.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq12.1, align 4
  %tobool13.not.1 = icmp eq ptr %3, null
  br i1 %tobool13.not.1, label %if.end11.1.for.inc.1_crit_edge, label %if.then14.1

if.end11.1.for.inc.1_crit_edge:                   ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then14.1:                                      ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %arrayidx.1, i16 noundef zeroext %int_status.048, i16 noundef zeroext %msg.0.1) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then14.1, %if.end11.1.for.inc.1_crit_edge
  %call17 = tail call zeroext i16 @c67x00_ll_hpi_status(ptr noundef %__dev) #5
  %cond = icmp eq i16 %call17, 0
  br i1 %cond, label %for.inc.1.cleanup_crit_edge, label %for.inc.1.land.rhs_crit_edge

for.inc.1.land.rhs_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.c67x00_device, ptr %__dev, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %conv50) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end ], [ 1, %for.inc.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c67x00_ll_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @c67x00_ll_hpi_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_irq(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @c67x00_ll_fetch_siemsg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c67x00_hcd_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_hcd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !50, !51, !52, !53, !54, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_c67x00__232_214_c67x00_driver_init6, !1, !"__initcall__kmod_c67x00__232_214_c67x00_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 214, i32 1}
!2 = !{ptr @__exitcall_c67x00_driver_exit, !1, !"__exitcall_c67x00_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 216, i32 1}
!5 = !{ptr @__UNIQUE_ID_description234, !6, !"__UNIQUE_ID_description234", i1 false, i1 false}
!6 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 217, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 218, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias237, !11, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!11 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 219, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 210, i32 11}
!14 = !{ptr @c67x00_driver, !15, !"c67x00_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 206, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 130, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @c67x00_drv_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @c67x00_drv_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 136, i32 3}
!26 = !{ptr @c67x00_drv_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @c67x00_drv_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @c67x00_drv_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 141, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 151, i32 3}
!33 = !{ptr @c67x00_drv_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @c67x00_drv_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 157, i32 3}
!37 = !{ptr @c67x00_drv_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @c67x00_drv_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 97, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @c67x00_irq._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @c67x00_irq._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @c67x00_probe_sie.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 37, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 48, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @c67x00_probe_sie._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @c67x00_probe_sie._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/c67x00/c67x00-drv.c", i32 53, i32 3}
!56 = !{ptr @c67x00_probe_sie._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @c67x00_probe_sie._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
