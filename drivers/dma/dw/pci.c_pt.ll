; ModuleID = '/llk/IR_all_yes/drivers/dma/dw/pci.c_pt.bc'
source_filename = "../drivers/dma/dw/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_dma_chip_pdata = type { ptr, ptr, ptr, ptr }
%struct.dw_dma_platform_data = type { i32, i32, i32, i32, i32, [4 x i32], [8 x i32], [8 x i32], i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.dw_dma_chip = type { ptr, i32, i32, ptr, ptr, ptr, ptr }

@__initcall__kmod_dw_dmac_pci__238_143_dw_pci_driver_init6 = internal global ptr @dw_pci_driver_init, section ".initcall6.init", align 4
@dw_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @dw_pci_id_table, ptr @dw_pci_probe, ptr @dw_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_pci_dev_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dw_pci_driver_exit = internal global ptr @dw_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [44 x i8] c"dw_dmac_pci.file=drivers/dma/dw/dw_dmac_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"dw_dmac_pci.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [70 x i8] c"dw_dmac_pci.description=Synopsys DesignWare DMA Controller PCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [71 x i8] c"dw_dmac_pci.author=Andy Shevchenko <andriy.shevchenko@linux.intel.com>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dw_dmac_pci\00", [20 x i8] zeroinitializer }, align 32
@dw_pci_id_table = internal constant { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2087, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_dma_chip_pdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 3846, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_dma_chip_pdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 3904, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_dma_chip_pdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 4514, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @idma32_chip_pdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 8838, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_dma_chip_pdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 8896, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_dma_chip_pdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19380, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @xbar_chip_pdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19381, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @xbar_chip_pdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19382, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @xbar_chip_pdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40032, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_dma_chip_pdata to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40160, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dw_dma_chip_pdata to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@dw_pci_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_pci_suspend_late, ptr @dw_pci_resume_early, ptr @dw_pci_suspend_late, ptr @dw_pci_resume_early, ptr @dw_pci_suspend_late, ptr @dw_pci_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw_dma_chip_pdata = internal constant { %struct.dw_dma_chip_pdata, [16 x i8] } { %struct.dw_dma_chip_pdata { ptr null, ptr @dw_dma_probe, ptr @dw_dma_remove, ptr null }, [16 x i8] zeroinitializer }, align 32
@idma32_chip_pdata = internal constant { %struct.dw_dma_chip_pdata, [16 x i8] } { %struct.dw_dma_chip_pdata { ptr @idma32_pdata, ptr @idma32_dma_probe, ptr @idma32_dma_remove, ptr null }, [16 x i8] zeroinitializer }, align 32
@xbar_chip_pdata = internal constant { %struct.dw_dma_chip_pdata, [16 x i8] } { %struct.dw_dma_chip_pdata { ptr @xbar_pdata, ptr @idma32_dma_probe, ptr @idma32_dma_remove, ptr null }, [16 x i8] zeroinitializer }, align 32
@idma32_pdata = internal constant { %struct.dw_dma_platform_data, [52 x i8] } { %struct.dw_dma_platform_data { i32 1, i32 8, i32 0, i32 0, i32 131071, [4 x i32] [i32 4, i32 0, i32 0, i32 0], [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] zeroinitializer, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@xbar_pdata = internal constant { %struct.dw_dma_platform_data, [52 x i8] } { %struct.dw_dma_platform_data { i32 1, i32 8, i32 0, i32 0, i32 131071, [4 x i32] [i32 4, i32 0, i32 0, i32 0], [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, i32 0, i32 1 }, [52 x i8] zeroinitializer }, align 32
@dw_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 28, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"I/O memory remapping failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw_pci_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/dma/dw/pci.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_pci_probe._entry_ptr = internal global ptr @dw_pci_probe._entry, section ".printk_index", align 4
@dw_pci_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 76, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't remove device properly: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw_pci_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dw_pci_remove._entry_ptr = internal global ptr @dw_pci_remove._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"dw_pci_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 133, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 143, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"dw_pci_id_table\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 103, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"dw_pci_dev_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 99, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"dw_dma_chip_pdata\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 56, i32 54 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"idma32_chip_pdata\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 71, i32 54 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"xbar_chip_pdata\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 87, i32 54 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"idma32_pdata\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 61, i32 42 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"xbar_pdata\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [29 x i8] c"../drivers/dma/dw/internal.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 77, i32 42 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 28, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [24 x i8] c"../drivers/dma/dw/pci.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 76, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_dw_pci_driver_exit, ptr @__initcall__kmod_dw_dmac_pci__238_143_dw_pci_driver_init6, ptr @dw_pci_driver_exit, ptr @dw_pci_probe._entry, ptr @dw_pci_probe._entry_ptr, ptr @dw_pci_remove._entry, ptr @dw_pci_remove._entry_ptr, ptr @dw_pci_driver, ptr @.str, ptr @dw_pci_id_table, ptr @dw_pci_dev_pm_ops, ptr @dw_dma_chip_pdata, ptr @idma32_chip_pdata, ptr @xbar_chip_pdata, ptr @idma32_pdata, ptr @xbar_pdata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pci_id_table to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pci_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_dma_chip_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma32_chip_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbar_chip_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma32_pdata to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbar_pdata to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pci_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @dw_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @dw_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %pid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pid, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef %retval.0.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end5:                                          ; preds = %pci_name.exit
  tail call void @pci_set_master(ptr noundef %pdev) #4
  %call6 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev7, i64 noundef 4294967295) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev7, i64 noundef 4294967295) #4
  %call13 = tail call ptr @devm_kmemdup(ptr noundef %dev7, ptr noundef %2, i32 noundef 16, i32 noundef 3264) #4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call.i67 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev7, i32 noundef 28, i32 noundef 3520) #4
  %tobool19.not = icmp eq ptr %call.i67, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %7 = ptrtoint ptr %call.i67 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev7, ptr %call.i67, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %8 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn, align 4
  %id = getelementptr inbounds %struct.dw_dma_chip, ptr %call.i67, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %id, align 4
  %call24 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #4
  %11 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call24, align 4
  %regs = getelementptr inbounds %struct.dw_dma_chip, ptr %call.i67, i32 0, i32 3
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %regs, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %irq25 = getelementptr inbounds %struct.dw_dma_chip, ptr %call.i67, i32 0, i32 2
  %16 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irq25, align 4
  %17 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call13, align 4
  %pdata26 = getelementptr inbounds %struct.dw_dma_chip, ptr %call.i67, i32 0, i32 6
  %19 = ptrtoint ptr %pdata26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %pdata26, align 4
  %chip27 = getelementptr inbounds %struct.dw_dma_chip_pdata, ptr %call13, i32 0, i32 3
  %20 = ptrtoint ptr %chip27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i67, ptr %chip27, align 4
  %probe = getelementptr inbounds %struct.dw_dma_chip_pdata, ptr %call13, i32 0, i32 1
  %21 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %probe, align 4
  %call28 = tail call i32 %22(ptr noundef nonnull %call.i67) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call13, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end31 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %call28, %if.end21.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.dw_dma_chip_pdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %remove = getelementptr inbounds %struct.dw_dma_chip_pdata, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove, align 4
  %call2 = tail call i32 %5(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call2) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_dma_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_dma_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idma32_dma_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idma32_dma_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pci_suspend_late(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chip1 = getelementptr inbounds %struct.dw_dma_chip_pdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %call2 = tail call i32 @do_dw_dma_disable(ptr noundef %3) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pci_resume_early(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chip1 = getelementptr inbounds %struct.dw_dma_chip_pdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %call2 = tail call i32 @do_dw_dma_enable(ptr noundef %3) #4
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_dw_dma_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_dw_dma_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_dw_dmac_pci__238_143_dw_pci_driver_init6, !1, !"__initcall__kmod_dw_dmac_pci__238_143_dw_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/dw/pci.c", i32 143, i32 1}
!2 = !{ptr @__exitcall_dw_pci_driver_exit, !1, !"__exitcall_dw_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file239, !4, !"__UNIQUE_ID_file239", i1 false, i1 false}
!4 = !{!"../drivers/dma/dw/pci.c", i32 145, i32 1}
!5 = !{ptr @__UNIQUE_ID_license240, !4, !"__UNIQUE_ID_license240", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description241, !7, !"__UNIQUE_ID_description241", i1 false, i1 false}
!7 = !{!"../drivers/dma/dw/pci.c", i32 146, i32 1}
!8 = !{ptr @__UNIQUE_ID_author242, !9, !"__UNIQUE_ID_author242", i1 false, i1 false}
!9 = !{!"../drivers/dma/dw/pci.c", i32 147, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dw_pci_driver, !12, !"dw_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/dma/dw/pci.c", i32 133, i32 26}
!13 = !{ptr @dw_pci_id_table, !14, !"dw_pci_id_table", i1 false, i1 false}
!14 = !{!"../drivers/dma/dw/pci.c", i32 103, i32 35}
!15 = !{ptr @dw_dma_chip_pdata, !16, !"dw_dma_chip_pdata", i1 false, i1 false}
!16 = !{!"../drivers/dma/dw/internal.h", i32 56, i32 54}
!17 = !{ptr @idma32_chip_pdata, !18, !"idma32_chip_pdata", i1 false, i1 false}
!18 = !{!"../drivers/dma/dw/internal.h", i32 71, i32 54}
!19 = !{ptr @idma32_pdata, !20, !"idma32_pdata", i1 false, i1 false}
!20 = !{!"../drivers/dma/dw/internal.h", i32 61, i32 42}
!21 = !{ptr @xbar_chip_pdata, !22, !"xbar_chip_pdata", i1 false, i1 false}
!22 = !{!"../drivers/dma/dw/internal.h", i32 87, i32 54}
!23 = !{ptr @xbar_pdata, !24, !"xbar_pdata", i1 false, i1 false}
!24 = !{!"../drivers/dma/dw/internal.h", i32 77, i32 42}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/dw/pci.c", i32 28, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dw_pci_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @dw_pci_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/dw/pci.c", i32 76, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dw_pci_remove._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @dw_pci_remove._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @dw_pci_dev_pm_ops, !40, !"dw_pci_dev_pm_ops", i1 false, i1 false}
!40 = !{!"../drivers/dma/dw/pci.c", i32 99, i32 32}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
