; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-img-spfi.c_pt.bc'
source_filename = "../drivers/spi/spi-img-spfi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.img_spfi = type { ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, i8 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_img_spfi__241_766_img_spfi_driver_init6 = internal global ptr @img_spfi_driver_init, section ".initcall6.init", align 4
@img_spfi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @img_spfi_probe, ptr @img_spfi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @img_spfi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_spfi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_img_spfi_driver_exit = internal global ptr @img_spfi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [52 x i8] c"spi_img_spfi.description=IMG SPFI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [62 x i8] c"spi_img_spfi.author=Andrew Bresticker <abrestic@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [43 x i8] c"spi_img_spfi.file=drivers/spi/spi-img-spfi\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [28 x i8] c"spi_img_spfi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"img-spfi\00", [23 x i8] zeroinitializer }, align 32
@img_spfi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,spfi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@img_spfi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @img_spfi_suspend, ptr @img_spfi_resume, ptr @img_spfi_suspend, ptr @img_spfi_resume, ptr @img_spfi_suspend, ptr @img_spfi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_spfi_runtime_suspend, ptr @img_spfi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@img_spfi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&spfi->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spfi\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"img,supports-quad-mode\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spfi-max-frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@img_spfi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 638, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to get DMA channels, falling back to PIO mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"img_spfi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-img-spfi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@img_spfi_probe._entry_ptr = internal global ptr @img_spfi_probe._entry, section ".printk_index", align 4
@img_spfi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.10, i32 518, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Illegal access interrupt\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"img_spfi_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@img_spfi_irq._entry_ptr = internal global ptr @img_spfi_irq._entry, section ".printk_index", align 4
@img_spfi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.10, i32 489, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Transfer length (%d) is greater than the max supported (%d)\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"img_spfi_transfer_one\00", [42 x i8] zeroinitializer }, align 32
@img_spfi_transfer_one._entry_ptr = internal global ptr @img_spfi_transfer_one._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@spfi_wait_all_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.10, i32 144, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Timed out waiting for transaction to complete\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spfi_wait_all_done\00", [45 x i8] zeroinitializer }, align 32
@spfi_wait_all_done._entry_ptr = internal global ptr @spfi_wait_all_done._entry, section ".printk_index", align 4
@img_spfi_start_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.10, i32 267, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PIO transfer timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"img_spfi_start_pio\00", [45 x i8] zeroinitializer }, align 32
@img_spfi_start_pio._entry_ptr = internal global ptr @img_spfi_start_pio._entry, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"img_spfi_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 757, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 759, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"img_spfi_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 751, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"img_spfi_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 745, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 541, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 561, i32 42 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 566, i32 43 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 589, i32 48 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 603, i32 48 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 615, i32 44 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 623, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 638, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 518, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 487, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 144, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [30 x i8] c"../drivers/spi/spi-img-spfi.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 267, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_img_spfi_driver_exit, ptr @__initcall__kmod_spi_img_spfi__241_766_img_spfi_driver_init6, ptr @img_spfi_driver_exit, ptr @img_spfi_irq._entry, ptr @img_spfi_irq._entry_ptr, ptr @img_spfi_probe._entry, ptr @img_spfi_probe._entry_ptr, ptr @img_spfi_start_pio._entry, ptr @img_spfi_start_pio._entry_ptr, ptr @img_spfi_transfer_one._entry, ptr @img_spfi_transfer_one._entry_ptr, ptr @spfi_wait_all_done._entry, ptr @spfi_wait_all_done._entry_ptr, ptr @img_spfi_driver, ptr @.str, ptr @img_spfi_of_match, ptr @img_spfi_pm_ops, ptr @img_spfi_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spfi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spfi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spfi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spfi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spfi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spfi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spfi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spfi_wait_all_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_spfi_start_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @img_spfi_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @img_spfi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @img_spfi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %max_speed_hz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_speed_hz) #9
  %0 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max_speed_hz, align 4, !annotation !71
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 84, i1 noundef zeroext false) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i260 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i260 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i260, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %3, align 4
  %master4 = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %master4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %master4, align 4
  %lock = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @img_spfi_probe.__key, i16 noundef signext 3) #9
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %7, ptr noundef %call6) #9
  %regs = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call8 to i32
  br label %spi_controller_put.exit

if.end14:                                         ; preds = %if.end
  %10 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call6, align 4
  %phys = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %phys, align 4
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call15, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.spi_controller_put.exit_crit_edge, label %if.end19

if.end14.spi_controller_put.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.end19:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %if.end19.dev_name.exit_crit_edge ]
  %call.i261 = tail call i32 @devm_request_threaded_irq(ptr noundef %15, i32 noundef %call15, ptr noundef nonnull @img_spfi_irq, ptr noundef null, i32 noundef 4, ptr noundef %retval.0.i, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %tobool25.not = icmp eq i32 %call.i261, 0
  br i1 %tobool25.not, label %if.end27, label %dev_name.exit.spi_controller_put.exit_crit_edge

dev_name.exit.spi_controller_put.exit_crit_edge:  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.end27:                                         ; preds = %dev_name.exit
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %call29 = tail call ptr @devm_clk_get(ptr noundef %21, ptr noundef nonnull @.str.2) #9
  %sys_clk = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call29, ptr %sys_clk, align 4
  %cmp.i262 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i262, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call29 to i32
  br label %spi_controller_put.exit

if.end35:                                         ; preds = %if.end27
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %call37 = tail call ptr @devm_clk_get(ptr noundef %25, ptr noundef nonnull @.str.3) #9
  %spfi_clk = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %spfi_clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call37, ptr %spfi_clk, align 4
  %cmp.i263 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i263, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call37 to i32
  br label %spi_controller_put.exit

if.end43:                                         ; preds = %if.end35
  %28 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sys_clk, align 4
  %call45 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.spi_controller_put.exit_crit_edge

if.end43.spi_controller_put.exit_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.end48:                                         ; preds = %if.end43
  %30 = ptrtoint ptr %spfi_clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spfi_clk, align 4
  %call50 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.disable_pclk_crit_edge

if.end48.disable_pclk_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_pclk

if.end53:                                         ; preds = %if.end48
  tail call fastcc void @spfi_reset(ptr noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1048576) #9, !srcloc !73
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %34 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %auto_runtime_pm, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  %conv = trunc i32 %36 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1283, ptr %mode_bits, align 8
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  %call.i264 = tail call ptr @of_find_property(ptr noundef %42, ptr noundef nonnull @.str.4, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i264, null
  br i1 %tobool.i.not, label %if.end53.if.end58_crit_edge, label %if.then56

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %mode_bits to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mode_bits, align 8
  %or = or i32 %44, 2560
  store i32 %or, ptr %mode_bits, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end53.if.end58_crit_edge
  %of_node60 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %45 = ptrtoint ptr %of_node60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node60, align 8
  %of_node62 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %47 = ptrtoint ptr %of_node62 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %of_node62, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -2147483520, ptr %bits_per_word_mask, align 8
  %49 = ptrtoint ptr %spfi_clk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spfi_clk, align 4
  %call64 = tail call i32 @clk_get_rate(ptr noundef %50) #9
  %div258 = lshr i32 %call64, 2
  %max_speed_hz65 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %51 = ptrtoint ptr %max_speed_hz65 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div258, ptr %max_speed_hz65, align 8
  %52 = ptrtoint ptr %spfi_clk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spfi_clk, align 4
  %call67 = tail call i32 @clk_get_rate(ptr noundef %53) #9
  %div68259 = lshr i32 %call67, 9
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %54 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div68259, ptr %min_speed_hz, align 4
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %of_node70 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 27
  %57 = ptrtoint ptr %of_node70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node70, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %58, ptr noundef nonnull @.str.5, ptr noundef nonnull %max_speed_hz, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool72.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool72.not, label %if.then73, label %if.end58.if.end80_crit_edge

if.end58.if.end80_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then73:                                        ; preds = %if.end58
  %59 = ptrtoint ptr %max_speed_hz65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_speed_hz65, align 8
  %61 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_speed_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp75 = icmp ugt i32 %60, %62
  br i1 %cmp75, label %if.then77, label %if.then73.if.end80_crit_edge

if.then73.if.end80_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %max_speed_hz65 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %max_speed_hz65, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.then73.if.end80_crit_edge, %if.end58.if.end80_crit_edge
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %64 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @img_spfi_transfer_one, ptr %transfer_one, align 4
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %65 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @img_spfi_prepare, ptr %prepare_message, align 4
  %unprepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 48
  %66 = ptrtoint ptr %unprepare_message to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @img_spfi_unprepare, ptr %unprepare_message, align 8
  %handle_err = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 52
  %67 = ptrtoint ptr %handle_err to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @img_spfi_handle_err, ptr %handle_err, align 8
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %68 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %3, align 4
  %call82 = call ptr @dma_request_chan(ptr noundef %70, ptr noundef nonnull @.str.6) #9
  %tx_ch = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 9
  %71 = ptrtoint ptr %tx_ch to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call82, ptr %tx_ch, align 4
  %cmp.i265 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i265, label %if.then85, label %if.end80.if.end93_crit_edge

if.end80.if.end93_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then85:                                        ; preds = %if.end80
  %72 = ptrtoint ptr %tx_ch to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %tx_ch, align 4
  %cmp89 = icmp eq ptr %call82, inttoptr (i32 -517 to ptr)
  br i1 %cmp89, label %if.then85.disable_pm_crit_edge, label %if.then85.if.end93_crit_edge

if.then85.if.end93_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then85.disable_pm_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_pm

if.end93:                                         ; preds = %if.then85.if.end93_crit_edge, %if.end80.if.end93_crit_edge
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 4
  %call95 = call ptr @dma_request_chan(ptr noundef %74, ptr noundef nonnull @.str.7) #9
  %rx_ch = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 8
  %75 = ptrtoint ptr %rx_ch to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call95, ptr %rx_ch, align 4
  %cmp.i266 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i266, label %if.then98, label %if.end93.if.end106_crit_edge

if.end93.if.end106_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then98:                                        ; preds = %if.end93
  %76 = ptrtoint ptr %rx_ch to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %rx_ch, align 4
  %cmp102 = icmp eq ptr %call95, inttoptr (i32 -517 to ptr)
  br i1 %cmp102, label %if.then98.disable_pm_crit_edge, label %if.then98.if.end106_crit_edge

if.then98.if.end106_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then98.disable_pm_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_pm

if.end106:                                        ; preds = %if.then98.if.end106_crit_edge, %if.end93.if.end106_crit_edge
  %77 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_ch, align 4
  %tobool108.not = icmp eq ptr %78, null
  br i1 %tobool108.not, label %if.end106.if.end116_crit_edge, label %lor.lhs.false

if.end106.if.end116_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

lor.lhs.false:                                    ; preds = %if.end106
  %79 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_ch, align 4
  %tobool110.not = icmp eq ptr %80, null
  br i1 %tobool110.not, label %if.then114, label %if.else

if.then114:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %78) #9
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end106.if.end116_crit_edge
  %81 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rx_ch, align 4
  %tobool118.not = icmp eq ptr %82, null
  br i1 %tobool118.not, label %if.end116.if.end121_crit_edge, label %if.then119

if.end116.if.end121_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %82) #9
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end116.if.end121_crit_edge
  %83 = ptrtoint ptr %tx_ch to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %tx_ch, align 4
  %84 = ptrtoint ptr %rx_ch to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %rx_ch, align 4
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.8) #12
  br label %if.end130

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 60
  %87 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %78, ptr %dma_tx, align 8
  %88 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rx_ch, align 4
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 61
  %90 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %dma_rx, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %91 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @img_spfi_can_dma, ptr %can_dma, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.else, %if.end121
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %3, align 4
  %call.i267 = call i32 @__pm_runtime_set_status(ptr noundef %93, i32 noundef 0) #9
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %3, align 4
  call void @pm_runtime_enable(ptr noundef %95) #9
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %3, align 4
  %call135 = call i32 @devm_spi_register_controller(ptr noundef %97, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end130.cleanup_crit_edge, label %if.end130.disable_pm_crit_edge

if.end130.disable_pm_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_pm

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

disable_pm:                                       ; preds = %if.end130.disable_pm_crit_edge, %if.then98.disable_pm_crit_edge, %if.then85.disable_pm_crit_edge
  %ret.0 = phi i32 [ -517, %if.then85.disable_pm_crit_edge ], [ -517, %if.then98.disable_pm_crit_edge ], [ %call135, %if.end130.disable_pm_crit_edge ]
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %3, align 4
  call void @__pm_runtime_disable(ptr noundef %99, i1 noundef zeroext true) #9
  %rx_ch140 = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 8
  %100 = ptrtoint ptr %rx_ch140 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rx_ch140, align 4
  %tobool141.not = icmp eq ptr %101, null
  br i1 %tobool141.not, label %disable_pm.if.end144_crit_edge, label %if.then142

disable_pm.if.end144_crit_edge:                   ; preds = %disable_pm
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

if.then142:                                       ; preds = %disable_pm
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %101) #9
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %disable_pm.if.end144_crit_edge
  %102 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx_ch, align 4
  %tobool146.not = icmp eq ptr %103, null
  br i1 %tobool146.not, label %if.end144.if.end149_crit_edge, label %if.then147

if.end144.if.end149_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then147:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %103) #9
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %if.end144.if.end149_crit_edge
  %104 = ptrtoint ptr %spfi_clk to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %spfi_clk, align 4
  call void @clk_disable(ptr noundef %105) #9
  call void @clk_unprepare(ptr noundef %105) #9
  br label %disable_pclk

disable_pclk:                                     ; preds = %if.end149, %if.end48.disable_pclk_crit_edge
  %ret.1 = phi i32 [ %call50, %if.end48.disable_pclk_crit_edge ], [ %ret.0, %if.end149 ]
  %106 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sys_clk, align 4
  call void @clk_disable(ptr noundef %107) #9
  call void @clk_unprepare(ptr noundef %107) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %disable_pclk, %if.end43.spi_controller_put.exit_crit_edge, %if.then40, %if.then32, %dev_name.exit.spi_controller_put.exit_crit_edge, %if.end14.spi_controller_put.exit_crit_edge, %if.then11
  %ret.2 = phi i32 [ %9, %if.then11 ], [ %call.i261, %dev_name.exit.spi_controller_put.exit_crit_edge ], [ %23, %if.then32 ], [ %27, %if.then40 ], [ %call45, %if.end43.spi_controller_put.exit_crit_edge ], [ %ret.1, %disable_pclk ], [ %call15, %if.end14.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end130.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end130.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_speed_hz) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i19 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i19, align 4
  %tx_ch = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ch, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_ch = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ch, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %7) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #9
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 18
  %12 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  br i1 %cmp.i, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %spfi_clk = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %spfi_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spfi_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  %sys_clk = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %17) #9
  tail call void @clk_unprepare(ptr noundef %17) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.img_spfi, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %3 = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 1048576) #9, !srcloc !73
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %clk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spfi_reset(ptr nocapture noundef readonly %spfi) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %regs.i = getelementptr inbounds %struct.img_spfi, ptr %spfi, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 524288) #9, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 0) #9, !srcloc !73
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_transfer_one(ptr noundef %master, ptr noundef %spi, ptr noundef %xfer) #2 align 64 {
entry:
  %rxconf.i = alloca %struct.dma_slave_config, align 4
  %txconf.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp = icmp ugt i32 %5, 65535
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef 65535) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %spfi_clk.i = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %spfi_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spfi_clk.i, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %9) #9
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %10 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed_hz.i, align 4
  %add.i = add i32 %call2.i, -1
  %sub.i = add i32 %add.i, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %11, %sub.i
  br i1 %cmp.i.i, label %if.end.img_spfi_config.exit_crit_edge, label %if.end.i.i

if.end.img_spfi_config.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %img_spfi_config.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div4.i = udiv i32 %sub.i, %11
  %dec.i.i = add i32 %div4.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 true) #9, !range !76
  %sub.i.i.i = sub nuw nsw i32 32, %12
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  br label %img_spfi_config.exit

img_spfi_config.exit:                             ; preds = %if.end.i.i, %if.end.img_spfi_config.exit_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i.i.i, %if.end.i.i ], [ -1, %if.end.img_spfi_config.exit_crit_edge ]
  %div61.i = lshr i32 512, %retval.0.i.i
  %13 = tail call i32 @llvm.umax.i32(i32 %div61.i, i32 1) #9
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 128) #9
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %15 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %16 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %regs.i.i = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %mul.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %20 = and i32 %19, -256
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %shl15.i = shl nuw i32 %14, 24
  %or.i = or i32 %21, %shl15.i
  %22 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chip_select.i, align 4
  %conv17.i = zext i8 %23 to i32
  %mul18.i = shl nuw nsw i32 %conv17.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %26, i32 %mul18.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %24) #9, !srcloc !73
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %30 = lshr i32 %29, 16
  %31 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %30) #9, !srcloc !73
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %34, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %36 = and i32 %35, -393217
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xfer, align 4
  %tobool.not.i = icmp eq ptr %39, null
  %or23.i = or i32 %37, 1024
  %val.0.i = select i1 %tobool.not.i, i32 %37, i32 %or23.i
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %40 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_buf.i, align 4
  %tobool24.not.i = icmp eq ptr %41, null
  %or26.i = or i32 %val.0.i, 512
  %val.1.i = select i1 %tobool24.not.i, i32 %val.0.i, i32 %or26.i
  %and28.i = and i32 %val.1.i, -225
  %tx_nbits.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %42 = ptrtoint ptr %tx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %tx_nbits.i, align 4
  %43 = and i8 %bf.load.i, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %43)
  %44 = icmp eq i8 %43, 18
  %or37.i = or i32 %and28.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %43)
  %45 = icmp eq i8 %43, 36
  %or53.i = or i32 %and28.i, 64
  %spec.select.i = select i1 %45, i32 %or53.i, i32 %and28.i
  %val.2.i = select i1 %44, i32 %or37.i, i32 %spec.select.i
  %or56.i = or i32 %val.2.i, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %or56.i) #9
  %47 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %48, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %46) #9, !srcloc !73
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 24
  %49 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %can_dma, align 4
  %tobool.not = icmp eq ptr %50, null
  br i1 %tobool.not, label %img_spfi_config.exit.if.else_crit_edge, label %land.lhs.true

img_spfi_config.exit.if.else_crit_edge:           ; preds = %img_spfi_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %img_spfi_config.exit
  %call4 = tail call zeroext i1 %50(ptr noundef %master, ptr noundef %spi, ptr noundef %xfer) #9
  br i1 %call4, label %if.then5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  %51 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %master1, align 4
  %driver_data.i.i.i26 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %driver_data.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i.i.i26, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rxconf.i) #9
  %55 = call ptr @memset(ptr %rxconf.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %txconf.i) #9
  %56 = call ptr @memset(ptr %txconf.i, i32 255, i32 48)
  %rx_dma_busy.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 11
  %57 = ptrtoint ptr %rx_dma_busy.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %rx_dma_busy.i, align 1
  %tx_dma_busy.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 10
  %58 = ptrtoint ptr %tx_dma_busy.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %tx_dma_busy.i, align 4
  %59 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i28 = icmp eq ptr %60, null
  br i1 %tobool.not.i28, label %if.then5.if.end15.i_crit_edge, label %if.then.i

if.then5.if.end15.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then.i:                                        ; preds = %if.then5
  %61 = ptrtoint ptr %rxconf.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %rxconf.i, align 4
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  %rem.i = and i32 %63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i = icmp eq i32 %rem.i, 0
  %phys.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 4
  %64 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %phys.i, align 4
  %..i = select i1 %cmp.i, i32 40, i32 44
  %.38.i = select i1 %cmp.i, i32 4, i32 1
  %add4.i = add i32 %..i, %65
  %66 = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add4.i, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 3
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.38.i, ptr %68, align 4
  %70 = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 5
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4, ptr %70, align 4
  %rx_ch.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 8
  %72 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_ch.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 44
  %76 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i, label %if.then.i.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i

if.then.i.dmaengine_slave_config.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_slave_config.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 %77(ptr noundef %73, ptr noundef nonnull %rxconf.i) #9
  %78 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr.i = load ptr, ptr %rx_ch.i, align 4
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i, %if.then.i.dmaengine_slave_config.exit.i_crit_edge
  %79 = phi ptr [ %73, %if.then.i.dmaengine_slave_config.exit.i_crit_edge ], [ %.pr.i, %if.then.i.i ]
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %80 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx_sg.i, align 4
  %nents.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6, i32 1
  %82 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nents.i, align 4
  %tobool.not.i1.i = icmp eq ptr %79, null
  br i1 %tobool.not.i1.i, label %dmaengine_slave_config.exit.i.stop_dma.i_crit_edge, label %lor.lhs.false.i.i

dmaengine_slave_config.exit.i.stop_dma.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_dma.i

lor.lhs.false.i.i:                                ; preds = %dmaengine_slave_config.exit.i
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %79, align 4
  %tobool1.not.i.i = icmp eq ptr %85, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.stop_dma.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.stop_dma.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_dma.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 39
  %86 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %87, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.stop_dma.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.stop_dma.i_crit_edge:          ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_dma.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i2.i = call ptr %87(ptr noundef nonnull %79, ptr noundef %81, i32 noundef %83, i32 noundef 2, i32 noundef 1, ptr noundef null) #9
  %tobool12.not.i = icmp eq ptr %call.i2.i, null
  br i1 %tobool12.not.i, label %dmaengine_prep_slave_sg.exit.i.stop_dma.i_crit_edge, label %if.end14.i

dmaengine_prep_slave_sg.exit.i.stop_dma.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_dma.i

if.end14.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i2.i, i32 0, i32 6
  %88 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @img_spfi_dma_rx_cb, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i2.i, i32 0, i32 8
  %89 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %54, ptr %callback_param.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end14.i, %if.then5.if.end15.i_crit_edge
  %rxdesc.0.i = phi ptr [ %call.i2.i, %if.end14.i ], [ null, %if.then5.if.end15.i_crit_edge ]
  %90 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %xfer, align 4
  %tobool16.not.i = icmp eq ptr %91, null
  br i1 %tobool16.not.i, label %if.end15.i.if.end43.i_crit_edge, label %if.then17.i

if.end15.i.if.end43.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then17.i:                                      ; preds = %if.end15.i
  %92 = ptrtoint ptr %txconf.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %txconf.i, align 4
  %93 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len, align 4
  %rem20.i = and i32 %94, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem20.i)
  %cmp21.i = icmp eq i32 %rem20.i, 0
  %phys23.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 4
  %95 = ptrtoint ptr %phys23.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %phys23.i, align 4
  %.39.i = select i1 %cmp21.i, i32 32, i32 36
  %.40.i = select i1 %cmp21.i, i32 4, i32 1
  %add27.i = add i32 %.39.i, %96
  %97 = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 2
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add27.i, ptr %97, align 4
  %99 = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %.40.i, ptr %99, align 4
  %101 = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 6
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 4, ptr %101, align 4
  %tx_ch.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 9
  %103 = ptrtoint ptr %tx_ch.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tx_ch.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %device_config.i3.i = getelementptr inbounds %struct.dma_device, ptr %106, i32 0, i32 44
  %107 = ptrtoint ptr %device_config.i3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device_config.i3.i, align 4
  %tobool.not.i4.i = icmp eq ptr %108, null
  br i1 %tobool.not.i4.i, label %if.then17.i.dmaengine_slave_config.exit7.i_crit_edge, label %if.then.i6.i

if.then17.i.dmaengine_slave_config.exit7.i_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_slave_config.exit7.i

if.then.i6.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i5.i = call i32 %108(ptr noundef %104, ptr noundef nonnull %txconf.i) #9
  %109 = ptrtoint ptr %tx_ch.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pr32.i = load ptr, ptr %tx_ch.i, align 4
  br label %dmaengine_slave_config.exit7.i

dmaengine_slave_config.exit7.i:                   ; preds = %if.then.i6.i, %if.then17.i.dmaengine_slave_config.exit7.i_crit_edge
  %110 = phi ptr [ %104, %if.then17.i.dmaengine_slave_config.exit7.i_crit_edge ], [ %.pr32.i, %if.then.i6.i ]
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %111 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tx_sg.i, align 4
  %nents36.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5, i32 1
  %113 = ptrtoint ptr %nents36.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nents36.i, align 4
  %tobool.not.i8.i = icmp eq ptr %110, null
  br i1 %tobool.not.i8.i, label %dmaengine_slave_config.exit7.i.stop_dma.i_crit_edge, label %lor.lhs.false.i10.i

dmaengine_slave_config.exit7.i.stop_dma.i_crit_edge: ; preds = %dmaengine_slave_config.exit7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_dma.i

lor.lhs.false.i10.i:                              ; preds = %dmaengine_slave_config.exit7.i
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %110, align 4
  %tobool1.not.i9.i = icmp eq ptr %116, null
  br i1 %tobool1.not.i9.i, label %lor.lhs.false.i10.i.stop_dma.i_crit_edge, label %lor.lhs.false2.i13.i

lor.lhs.false.i10.i.stop_dma.i_crit_edge:         ; preds = %lor.lhs.false.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_dma.i

lor.lhs.false2.i13.i:                             ; preds = %lor.lhs.false.i10.i
  %device_prep_slave_sg.i11.i = getelementptr inbounds %struct.dma_device, ptr %116, i32 0, i32 39
  %117 = ptrtoint ptr %device_prep_slave_sg.i11.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device_prep_slave_sg.i11.i, align 4
  %tobool4.not.i12.i = icmp eq ptr %118, null
  br i1 %tobool4.not.i12.i, label %lor.lhs.false2.i13.i.stop_dma.i_crit_edge, label %dmaengine_prep_slave_sg.exit17.i

lor.lhs.false2.i13.i.stop_dma.i_crit_edge:        ; preds = %lor.lhs.false2.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_dma.i

dmaengine_prep_slave_sg.exit17.i:                 ; preds = %lor.lhs.false2.i13.i
  %call.i14.i = call ptr %118(ptr noundef nonnull %110, ptr noundef %112, i32 noundef %114, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %tobool38.not.i = icmp eq ptr %call.i14.i, null
  br i1 %tobool38.not.i, label %dmaengine_prep_slave_sg.exit17.i.stop_dma.i_crit_edge, label %if.end40.i

dmaengine_prep_slave_sg.exit17.i.stop_dma.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stop_dma.i

if.end40.i:                                       ; preds = %dmaengine_prep_slave_sg.exit17.i
  call void @__sanitizer_cov_trace_pc() #11
  %callback41.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i14.i, i32 0, i32 6
  %119 = ptrtoint ptr %callback41.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @img_spfi_dma_tx_cb, ptr %callback41.i, align 4
  %callback_param42.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i14.i, i32 0, i32 8
  %120 = ptrtoint ptr %callback_param42.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %54, ptr %callback_param42.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end40.i, %if.end15.i.if.end43.i_crit_edge
  %txdesc.0.i = phi ptr [ %call.i14.i, %if.end40.i ], [ null, %if.end15.i.if.end43.i_crit_edge ]
  %121 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rx_buf.i, align 4
  %tobool45.not.i = icmp eq ptr %122, null
  br i1 %tobool45.not.i, label %if.end43.i.if.end50.i_crit_edge, label %if.then46.i

if.end43.i.if.end50.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %rx_dma_busy.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %rx_dma_busy.i, align 1
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %rxdesc.0.i, i32 0, i32 4
  %124 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i18.i = call i32 %125(ptr noundef %rxdesc.0.i) #9
  %rx_ch49.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 8
  %126 = ptrtoint ptr %rx_ch49.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx_ch49.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %129, i32 0, i32 50
  %130 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %131(ptr noundef %127) #9
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end50.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 3
  %132 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %133, i32 20
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %135 = or i32 %134, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @arm_heavy_mb() #9
  %136 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %137, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %135) #9, !srcloc !73
  %138 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %xfer, align 4
  %tobool52.not.i = icmp eq ptr %139, null
  br i1 %tobool52.not.i, label %if.end50.i.img_spfi_start_dma.exit_crit_edge, label %if.then53.i

if.end50.i.img_spfi_start_dma.exit_crit_edge:     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %img_spfi_start_dma.exit

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %tx_dma_busy.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %tx_dma_busy.i, align 4
  %tx_submit.i19.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %txdesc.0.i, i32 0, i32 4
  %141 = ptrtoint ptr %tx_submit.i19.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tx_submit.i19.i, align 4
  %call.i20.i = call i32 %142(ptr noundef %txdesc.0.i) #9
  %tx_ch56.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 9
  %143 = ptrtoint ptr %tx_ch56.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tx_ch56.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %device_issue_pending.i21.i = getelementptr inbounds %struct.dma_device, ptr %146, i32 0, i32 50
  %147 = ptrtoint ptr %device_issue_pending.i21.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device_issue_pending.i21.i, align 4
  call void %148(ptr noundef %144) #9
  br label %img_spfi_start_dma.exit

stop_dma.i:                                       ; preds = %dmaengine_prep_slave_sg.exit17.i.stop_dma.i_crit_edge, %lor.lhs.false2.i13.i.stop_dma.i_crit_edge, %lor.lhs.false.i10.i.stop_dma.i_crit_edge, %dmaengine_slave_config.exit7.i.stop_dma.i_crit_edge, %dmaengine_prep_slave_sg.exit.i.stop_dma.i_crit_edge, %lor.lhs.false2.i.i.stop_dma.i_crit_edge, %lor.lhs.false.i.i.stop_dma.i_crit_edge, %dmaengine_slave_config.exit.i.stop_dma.i_crit_edge
  %rx_ch58.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 8
  %149 = ptrtoint ptr %rx_ch58.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rx_ch58.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %152, i32 0, i32 47
  %153 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i22.i = icmp eq ptr %154, null
  br i1 %tobool.not.i22.i, label %stop_dma.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i24.i

stop_dma.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %stop_dma.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit.i

if.then.i24.i:                                    ; preds = %stop_dma.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i23.i = call i32 %154(ptr noundef %150) #9
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i24.i, %stop_dma.i.dmaengine_terminate_all.exit.i_crit_edge
  %tx_ch60.i = getelementptr inbounds %struct.img_spfi, ptr %54, i32 0, i32 9
  %155 = ptrtoint ptr %tx_ch60.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %tx_ch60.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %device_terminate_all.i25.i = getelementptr inbounds %struct.dma_device, ptr %158, i32 0, i32 47
  %159 = ptrtoint ptr %device_terminate_all.i25.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %device_terminate_all.i25.i, align 4
  %tobool.not.i26.i = icmp eq ptr %160, null
  br i1 %tobool.not.i26.i, label %dmaengine_terminate_all.exit.i.img_spfi_start_dma.exit_crit_edge, label %if.then.i28.i

dmaengine_terminate_all.exit.i.img_spfi_start_dma.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %img_spfi_start_dma.exit

if.then.i28.i:                                    ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i27.i = call i32 %160(ptr noundef %156) #9
  br label %img_spfi_start_dma.exit

img_spfi_start_dma.exit:                          ; preds = %if.then.i28.i, %dmaengine_terminate_all.exit.i.img_spfi_start_dma.exit_crit_edge, %if.then53.i, %if.end50.i.img_spfi_start_dma.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then53.i ], [ 1, %if.end50.i.img_spfi_start_dma.exit_crit_edge ], [ -5, %dmaengine_terminate_all.exit.i.img_spfi_start_dma.exit_crit_edge ], [ -5, %if.then.i28.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rxconf.i) #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %img_spfi_config.exit.if.else_crit_edge
  %161 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %master1, align 4
  %driver_data.i.i.i31 = getelementptr inbounds %struct.device, ptr %162, i32 0, i32 8
  %163 = ptrtoint ptr %driver_data.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %driver_data.i.i.i31, align 4
  %165 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %xfer, align 4
  %167 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i32 = icmp eq ptr %166, null
  br i1 %tobool.not.i32, label %if.else.if.end.i_crit_edge, label %if.then.i34

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i34:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %len, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i34, %if.else.if.end.i_crit_edge
  %tx_bytes.0.i = phi i32 [ %170, %if.then.i34 ], [ 0, %if.else.if.end.i_crit_edge ]
  %tobool4.not.i = icmp eq ptr %168, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %171 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %len, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %rx_bytes.0.i = phi i32 [ %172, %if.then5.i ], [ 0, %if.end.i.if.end7.i_crit_edge ]
  %regs.i.i.i35 = getelementptr inbounds %struct.img_spfi, ptr %164, i32 0, i32 3
  %173 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i.i.i36 = getelementptr i8, ptr %174, i32 20
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i36) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %176 = or i32 %175, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %177 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i4.i.i37 = getelementptr i8, ptr %178, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i37, i32 %176) #9, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %179 = load volatile i32, ptr @jiffies, align 128
  %180 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %len, align 4
  %mul9.i = mul i32 %181, 8000
  %182 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %speed_hz.i, align 4
  %div.i = udiv i32 %mul9.i, %183
  %add.i39 = add i32 %div.i, 100
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add.i39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_bytes.0.i)
  %cmp.not41.i = icmp eq i32 %tx_bytes.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_bytes.0.i)
  %cmp12.not42.i = icmp eq i32 %rx_bytes.0.i, 0
  %or.cond43.i = select i1 %cmp.not41.i, i1 %cmp12.not42.i, i1 false
  br i1 %or.cond43.i, label %if.end7.i.while.end.i_crit_edge, label %land.rhs.lr.ph.i

if.end7.i.while.end.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.end7.i
  %184 = add i32 %call2.i.i, %179
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end24.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %cmp12.not59.i = phi i1 [ %cmp12.not42.i, %land.rhs.lr.ph.i ], [ %cmp12.not.i, %if.end24.i.land.rhs.i_crit_edge ]
  %cmp.not58.i = phi i1 [ %cmp.not41.i, %land.rhs.lr.ph.i ], [ %cmp.not.i, %if.end24.i.land.rhs.i_crit_edge ]
  %rx_buf.054.i = phi ptr [ %168, %land.rhs.lr.ph.i ], [ %add.ptr25.i, %if.end24.i.land.rhs.i_crit_edge ]
  %tx_buf.050.i = phi ptr [ %166, %land.rhs.lr.ph.i ], [ %add.ptr.i, %if.end24.i.land.rhs.i_crit_edge ]
  %rx_bytes.147.i = phi i32 [ %rx_bytes.0.i, %land.rhs.lr.ph.i ], [ %sub27.i, %if.end24.i.land.rhs.i_crit_edge ]
  %tx_bytes.144.i = phi i32 [ %tx_bytes.0.i, %land.rhs.lr.ph.i ], [ %sub26.i, %if.end24.i.land.rhs.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %185 = load volatile i32, ptr @jiffies, align 128
  %sub.i45 = sub i32 %185, %184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i45)
  %cmp13.i = icmp slt i32 %sub.i45, 0
  br i1 %cmp13.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tx_bytes.144.i)
  %cmp14.i = icmp ugt i32 %tx_bytes.144.i, 3
  br i1 %cmp14.i, label %while.body.lr.ph.i.i, label %if.else.i

while.body.lr.ph.i.i:                             ; preds = %while.body.i
  %div6.i.i = lshr i32 %tx_bytes.144.i, 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i3.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %count.012.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i3.i.while.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %186 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %187, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 134217728) #9, !srcloc !73
  %188 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %189, i32 48
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %191 = and i32 %190, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i.i46 = icmp eq i32 %191, 0
  br i1 %tobool.not.i.i46, label %if.end.i3.i, label %while.body.i.i.spfi_pio_write32.exit.i_crit_edge

while.body.i.i.spfi_pio_write32.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spfi_pio_write32.exit.i

if.end.i3.i:                                      ; preds = %while.body.i.i
  %arrayidx.i.i = getelementptr i32, ptr %tx_buf.050.i, i32 %count.012.i.i
  %192 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #9
  %195 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %196, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %194) #9, !srcloc !73
  %inc.i.i = add nuw nsw i32 %count.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div6.i.i
  br i1 %exitcond.not.i.i, label %if.end.i3.i.spfi_pio_write32.exit.i_crit_edge, label %if.end.i3.i.while.body.i.i_crit_edge

if.end.i3.i.while.body.i.i_crit_edge:             ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end.i3.i.spfi_pio_write32.exit.i_crit_edge:    ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spfi_pio_write32.exit.i

spfi_pio_write32.exit.i:                          ; preds = %if.end.i3.i.spfi_pio_write32.exit.i_crit_edge, %while.body.i.i.spfi_pio_write32.exit.i_crit_edge
  %count.0.lcssa.i.i = phi i32 [ %count.012.i.i, %while.body.i.i.spfi_pio_write32.exit.i_crit_edge ], [ %div6.i.i, %if.end.i3.i.spfi_pio_write32.exit.i_crit_edge ]
  %mul.i.i = shl i32 %count.0.lcssa.i.i, 2
  br label %if.end18.i

if.else.i:                                        ; preds = %while.body.i
  br i1 %cmp.not58.i, label %if.else.i.if.end18.i_crit_edge, label %if.else.i.while.body.i8.i_crit_edge

if.else.i.while.body.i8.i_crit_edge:              ; preds = %if.else.i
  br label %while.body.i8.i

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

while.body.i8.i:                                  ; preds = %if.end.i12.i.while.body.i8.i_crit_edge, %if.else.i.while.body.i8.i_crit_edge
  %count.011.i.i = phi i32 [ %inc.i10.i, %if.end.i12.i.while.body.i8.i_crit_edge ], [ 0, %if.else.i.while.body.i8.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %197 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %198, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i, i32 134217728) #9, !srcloc !73
  %199 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %200, i32 48
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %202 = and i32 %201, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool.not.i7.i = icmp eq i32 %202, 0
  br i1 %tobool.not.i7.i, label %if.end.i12.i, label %while.body.i8.i.if.end18.i_crit_edge

while.body.i8.i.if.end18.i_crit_edge:             ; preds = %while.body.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.end.i12.i:                                     ; preds = %while.body.i8.i
  %arrayidx.i9.i = getelementptr i8, ptr %tx_buf.050.i, i32 %count.011.i.i
  %203 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.i9.i, align 1
  %conv.i.i = zext i8 %204 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %205 = shl nuw i32 %conv.i.i, 24
  %206 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %207, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %205) #9, !srcloc !73
  %inc.i10.i = add nuw i32 %count.011.i.i, 1
  %exitcond.not.i11.i = icmp eq i32 %inc.i10.i, %tx_bytes.144.i
  br i1 %exitcond.not.i11.i, label %if.end.i12.i.if.end18.i_crit_edge, label %if.end.i12.i.while.body.i8.i_crit_edge

if.end.i12.i.while.body.i8.i_crit_edge:           ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i8.i

if.end.i12.i.if.end18.i_crit_edge:                ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i12.i.if.end18.i_crit_edge, %while.body.i8.i.if.end18.i_crit_edge, %if.else.i.if.end18.i_crit_edge, %spfi_pio_write32.exit.i
  %tx_count.0.i = phi i32 [ %mul.i.i, %spfi_pio_write32.exit.i ], [ 0, %if.else.i.if.end18.i_crit_edge ], [ %count.011.i.i, %while.body.i8.i.if.end18.i_crit_edge ], [ %tx_bytes.144.i, %if.end.i12.i.if.end18.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rx_bytes.147.i)
  %cmp19.i = icmp ugt i32 %rx_bytes.147.i, 3
  br i1 %cmp19.i, label %while.body.lr.ph.i15.i, label %if.else22.i

while.body.lr.ph.i15.i:                           ; preds = %if.end18.i
  %div7.i.i = lshr i32 %rx_bytes.147.i, 2
  br label %while.body.i19.i

while.body.i19.i:                                 ; preds = %if.end.i23.i.while.body.i19.i_crit_edge, %while.body.lr.ph.i15.i
  %count.013.i.i = phi i32 [ 0, %while.body.lr.ph.i15.i ], [ %inc.i21.i, %if.end.i23.i.while.body.i19.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %208 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %209, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16.i, i32 1073741824) #9, !srcloc !73
  %210 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i9.i17.i = getelementptr i8, ptr %211, i32 48
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i17.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %213 = and i32 %212, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.not.i18.i = icmp eq i32 %213, 0
  br i1 %tobool.not.i18.i, label %while.body.i19.i.spfi_pio_read32.exit.i_crit_edge, label %if.end.i23.i

while.body.i19.i.spfi_pio_read32.exit.i_crit_edge: ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spfi_pio_read32.exit.i

if.end.i23.i:                                     ; preds = %while.body.i19.i
  %214 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %215, i32 40
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i.i) #9, !srcloc !74
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %arrayidx.i20.i = getelementptr i32, ptr %rx_buf.054.i, i32 %count.013.i.i
  %218 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %arrayidx.i20.i, align 4
  %inc.i21.i = add nuw nsw i32 %count.013.i.i, 1
  %exitcond.not.i22.i = icmp eq i32 %inc.i21.i, %div7.i.i
  br i1 %exitcond.not.i22.i, label %if.end.i23.i.spfi_pio_read32.exit.i_crit_edge, label %if.end.i23.i.while.body.i19.i_crit_edge

if.end.i23.i.while.body.i19.i_crit_edge:          ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i19.i

if.end.i23.i.spfi_pio_read32.exit.i_crit_edge:    ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spfi_pio_read32.exit.i

spfi_pio_read32.exit.i:                           ; preds = %if.end.i23.i.spfi_pio_read32.exit.i_crit_edge, %while.body.i19.i.spfi_pio_read32.exit.i_crit_edge
  %count.0.lcssa.i24.i = phi i32 [ %count.013.i.i, %while.body.i19.i.spfi_pio_read32.exit.i_crit_edge ], [ %div7.i.i, %if.end.i23.i.spfi_pio_read32.exit.i_crit_edge ]
  %mul.i25.i = shl i32 %count.0.lcssa.i24.i, 2
  br label %if.end24.i

if.else22.i:                                      ; preds = %if.end18.i
  br i1 %cmp12.not59.i, label %if.else22.i.if.end24.i_crit_edge, label %if.else22.i.while.body.i33.i_crit_edge

if.else22.i.while.body.i33.i_crit_edge:           ; preds = %if.else22.i
  br label %while.body.i33.i

if.else22.i.if.end24.i_crit_edge:                 ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

while.body.i33.i:                                 ; preds = %if.end.i39.i.while.body.i33.i_crit_edge, %if.else22.i.while.body.i33.i_crit_edge
  %count.012.i29.i = phi i32 [ %inc.i37.i, %if.end.i39.i.while.body.i33.i_crit_edge ], [ 0, %if.else22.i.while.body.i33.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %219 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %220, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30.i, i32 524288) #9, !srcloc !73
  %221 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i8.i31.i = getelementptr i8, ptr %222, i32 48
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i31.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %224 = and i32 %223, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.not.i32.i = icmp eq i32 %224, 0
  br i1 %tobool.not.i32.i, label %while.body.i33.i.if.end24.i_crit_edge, label %if.end.i39.i

while.body.i33.i.if.end24.i_crit_edge:            ; preds = %while.body.i33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.end.i39.i:                                     ; preds = %while.body.i33.i
  %225 = ptrtoint ptr %regs.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs.i.i.i35, align 4
  %add.ptr.i10.i34.i = getelementptr i8, ptr %226, i32 44
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i34.i) #9, !srcloc !74
  %228 = lshr i32 %227, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %conv.i35.i = trunc i32 %228 to i8
  %arrayidx.i36.i = getelementptr i8, ptr %rx_buf.054.i, i32 %count.012.i29.i
  %229 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv.i35.i, ptr %arrayidx.i36.i, align 1
  %inc.i37.i = add nuw i32 %count.012.i29.i, 1
  %exitcond.not.i38.i = icmp eq i32 %inc.i37.i, %rx_bytes.147.i
  br i1 %exitcond.not.i38.i, label %if.end.i39.i.if.end24.i_crit_edge, label %if.end.i39.i.while.body.i33.i_crit_edge

if.end.i39.i.while.body.i33.i_crit_edge:          ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i33.i

if.end.i39.i.if.end24.i_crit_edge:                ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end.i39.i.if.end24.i_crit_edge, %while.body.i33.i.if.end24.i_crit_edge, %if.else22.i.if.end24.i_crit_edge, %spfi_pio_read32.exit.i
  %rx_count.0.i = phi i32 [ %mul.i25.i, %spfi_pio_read32.exit.i ], [ 0, %if.else22.i.if.end24.i_crit_edge ], [ %count.012.i29.i, %while.body.i33.i.if.end24.i_crit_edge ], [ %rx_bytes.147.i, %if.end.i39.i.if.end24.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %tx_buf.050.i, i32 %tx_count.0.i
  %add.ptr25.i = getelementptr i8, ptr %rx_buf.054.i, i32 %rx_count.0.i
  %sub26.i = sub i32 %tx_bytes.144.i, %tx_count.0.i
  %sub27.i = sub i32 %rx_bytes.147.i, %rx_count.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26.i)
  %cmp.not.i = icmp eq i32 %sub26.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub27.i)
  %cmp12.not.i = icmp eq i32 %sub27.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp12.not.i, i1 false
  br i1 %or.cond.i, label %if.end24.i.while.end.i_crit_edge, label %if.end24.i.land.rhs.i_crit_edge

if.end24.i.land.rhs.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.end24.i.while.end.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end24.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.end7.i.while.end.i_crit_edge
  %cmp.not.lcssa.i = phi i1 [ true, %if.end7.i.while.end.i_crit_edge ], [ %cmp.not58.i, %land.rhs.i.while.end.i_crit_edge ], [ true, %if.end24.i.while.end.i_crit_edge ]
  %cmp12.not.lcssa.i = phi i1 [ true, %if.end7.i.while.end.i_crit_edge ], [ %cmp12.not59.i, %land.rhs.i.while.end.i_crit_edge ], [ true, %if.end24.i.while.end.i_crit_edge ]
  %230 = select i1 %cmp12.not.lcssa.i, i1 %cmp.not.lcssa.i, i1 false
  br i1 %230, label %if.end41.i, label %do.end40.i

do.end40.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %231 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %164, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.end41.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call42.i = tail call fastcc i32 @spfi_wait_all_done(ptr noundef %164) #9
  %233 = tail call i32 @llvm.smin.i32(i32 %call42.i, i32 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41.i, %do.end40.i, %img_spfi_start_dma.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i, %img_spfi_start_dma.exit ], [ -110, %do.end40.i ], [ %233, %if.end41.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_prepare(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.img_spfi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %5 = and i32 %4, -28673
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %spi = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 20
  %or = or i32 %shl, %6
  %mode = getelementptr inbounds %struct.spi_device, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 8
  %and3 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %sub12 = sub nsw i32 14, %conv
  %shl13 = shl nuw nsw i32 1, %sub12
  %or8 = or i32 %or, %shl13
  %neg = xor i32 %shl13, -1
  %and14 = and i32 %or, %neg
  %val.0 = select i1 %tobool.not, i32 %and14, i32 %or8
  %and17 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %sub30 = sub nsw i32 19, %conv
  %shl31 = shl nuw nsw i32 1, %sub30
  %or25 = or i32 %val.0, %shl31
  %neg32 = xor i32 %shl31, -1
  %and33 = and i32 %val.0, %neg32
  %val.1 = select i1 %tobool18.not, i32 %and33, i32 %or25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %val.1) #9
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %13) #9, !srcloc !73
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_unprepare(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %regs.i.i = getelementptr inbounds %struct.img_spfi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 524288) #9, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #9, !srcloc !73
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @img_spfi_handle_err(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.img_spfi, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tx_dma_busy = getelementptr inbounds %struct.img_spfi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %tx_dma_busy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_dma_busy, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rx_dma_busy = getelementptr inbounds %struct.img_spfi, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %rx_dma_busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_dma_busy, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = ptrtoint ptr %tx_dma_busy to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_dma_busy, align 4
  %rx_dma_busy10 = getelementptr inbounds %struct.img_spfi, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %rx_dma_busy10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rx_dma_busy10, align 1
  %tx_ch = getelementptr inbounds %struct.img_spfi, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ch, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then.dmaengine_terminate_all.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %13(ptr noundef %9) #9
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then.dmaengine_terminate_all.exit_crit_edge
  %rx_ch = getelementptr inbounds %struct.img_spfi, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %rx_ch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ch, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %device_terminate_all.i21 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %device_terminate_all.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_terminate_all.i21, align 4
  %tobool.not.i22 = icmp eq ptr %19, null
  br i1 %tobool.not.i22, label %dmaengine_terminate_all.exit.if.end_crit_edge, label %if.then.i24

dmaengine_terminate_all.exit.if.end_crit_edge:    ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i24:                                      ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i23 = tail call i32 %19(ptr noundef %15) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i24, %dmaengine_terminate_all.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @img_spfi_can_dma(ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp ugt i32 %1, 64
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @img_spfi_dma_rx_cb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @spfi_wait_all_done(ptr noundef %data)
  %lock = getelementptr inbounds %struct.img_spfi, ptr %data, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %rx_dma_busy = getelementptr inbounds %struct.img_spfi, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %rx_dma_busy to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %rx_dma_busy, align 1
  %tx_dma_busy = getelementptr inbounds %struct.img_spfi, ptr %data, i32 0, i32 10
  %1 = ptrtoint ptr %tx_dma_busy to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tx_dma_busy, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr inbounds %struct.img_spfi, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @img_spfi_dma_tx_cb(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @spfi_wait_all_done(ptr noundef %data)
  %lock = getelementptr inbounds %struct.img_spfi, ptr %data, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tx_dma_busy = getelementptr inbounds %struct.img_spfi, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %tx_dma_busy to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tx_dma_busy, align 4
  %rx_dma_busy = getelementptr inbounds %struct.img_spfi, ptr %data, i32 0, i32 11
  %1 = ptrtoint ptr %rx_dma_busy to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rx_dma_busy, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr inbounds %struct.img_spfi, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spfi_wait_all_done(ptr nocapture noundef readonly %spfi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -5, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub17 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17)
  %cmp18 = icmp slt i32 %sub17, 0
  br i1 %cmp18, label %while.body.lr.ph, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

while.body.lr.ph:                                 ; preds = %entry
  %regs.i = getelementptr inbounds %struct.img_spfi, ptr %spfi, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %7, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 131072) #9, !srcloc !73
  br label %cleanup11

do.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %8
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end.while.body_crit_edge, label %do.end.do.end10_crit_edge

do.end.do.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end10:                                         ; preds = %do.end.do.end10_crit_edge, %entry.do.end10_crit_edge
  %9 = ptrtoint ptr %spfi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spfi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %regs.i.i = getelementptr inbounds %struct.img_spfi, ptr %spfi, i32 0, i32 3
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 524288) #9, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #9, !srcloc !73
  br label %cleanup11

cleanup11:                                        ; preds = %do.end10, %if.then
  %retval.2 = phi i32 [ -110, %do.end10 ], [ 0, %if.then ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !83
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %regs.i.i = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 524288) #9, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #9, !srcloc !73
  %call.i12 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  %call4 = tail call i32 @spi_controller_resume(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %spfi_clk = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %spfi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spfi_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %sys_clk = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_spfi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sys_clk = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %spfi_clk = getelementptr inbounds %struct.img_spfi, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %spfi_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spfi_clk, align 4
  %call.i15 = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end.i19:                                       ; preds = %if.end
  %call1.i17 = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end.i19.cleanup_crit_edge, label %if.then3.i20

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %if.then5

if.then5:                                         ; preds = %if.then3.i20, %if.end.if.then5_crit_edge
  %retval.0.i21.ph = phi i32 [ %call1.i17, %if.then3.i20 ], [ %call.i15, %if.end.if.then5_crit_edge ]
  %8 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sys_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.then5 ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i21.ph, %if.then5 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i19.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_spi_img_spfi__241_766_img_spfi_driver_init6, !1, !"__initcall__kmod_spi_img_spfi__241_766_img_spfi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-img-spfi.c", i32 766, i32 1}
!2 = !{ptr @__exitcall_img_spfi_driver_exit, !1, !"__exitcall_img_spfi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-img-spfi.c", i32 768, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-img-spfi.c", i32 769, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-img-spfi.c", i32 770, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-img-spfi.c", i32 759, i32 11}
!12 = !{ptr @img_spfi_driver, !13, !"img_spfi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-img-spfi.c", i32 757, i32 31}
!14 = !{ptr @img_spfi_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-img-spfi.c", i32 541, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-img-spfi.c", i32 561, i32 42}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-img-spfi.c", i32 566, i32 43}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-img-spfi.c", i32 589, i32 48}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-img-spfi.c", i32 603, i32 48}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/spi/spi-img-spfi.c", i32 615, i32 44}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/spi/spi-img-spfi.c", i32 623, i32 44}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-img-spfi.c", i32 638, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @img_spfi_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @img_spfi_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-img-spfi.c", i32 518, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @img_spfi_irq._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @img_spfi_irq._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-img-spfi.c", i32 487, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @img_spfi_transfer_one._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @img_spfi_transfer_one._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-img-spfi.c", i32 144, i32 2}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @spfi_wait_all_done._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @spfi_wait_all_done._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-img-spfi.c", i32 267, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @img_spfi_start_pio._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @img_spfi_start_pio._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @img_spfi_of_match, !59, !"img_spfi_of_match", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-img-spfi.c", i32 751, i32 34}
!60 = !{ptr @img_spfi_pm_ops, !61, !"img_spfi_pm_ops", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-img-spfi.c", i32 745, i32 32}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{i64 2154438408}
!73 = !{i64 6324486}
!74 = !{i64 6324904}
!75 = !{i64 2154438026}
!76 = !{i32 0, i32 33}
!77 = !{i64 2154443170}
!78 = !{i64 2154443012}
!79 = !{i8 0, i8 2}
!80 = !{i64 2154439933}
!81 = !{i64 2154439775}
!82 = !{i64 2148257500}
!83 = !{i64 742323, i64 742348, i64 742370, i64 742386, i64 742398, i64 742418, i64 742442, i64 742458, i64 742470}
!84 = !{i64 2148257688}
