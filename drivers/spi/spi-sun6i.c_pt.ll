; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-sun6i.c_pt.bc'
source_filename = "../drivers/spi/spi-sun6i.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sun6i_spi = type { ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.completion, ptr, ptr, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_sun6i__253_720_sun6i_spi_driver_init6 = internal global ptr @sun6i_spi_driver_init, section ".initcall6.init", align 4
@sun6i_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun6i_spi_probe, ptr @sun6i_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun6i_spi_driver_exit = internal global ptr @sun6i_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author254 = internal constant [52 x i8] c"spi_sun6i.author=Pan Nan <pannan@allwinnertech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [66 x i8] c"spi_sun6i.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [58 x i8] c"spi_sun6i.description=Allwinner A31 SPI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [37 x i8] c"spi_sun6i.file=drivers/spi/spi-sun6i\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [22 x i8] c"spi_sun6i.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun6i-spi\00", [22 x i8] zeroinitializer }, align 32
@sun6i_spi_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 128 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 64 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sun6i_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_spi_runtime_suspend, ptr @sun6i_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to allocate SPI Master\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun6i_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/spi/spi-sun6i.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry_ptr = internal global ptr @sun6i_spi_probe._entry, section ".printk_index", align 4
@sun6i_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot request IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry_ptr.8 = internal global ptr @sun6i_spi_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to acquire AHB clock\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry_ptr.12 = internal global ptr @sun6i_spi_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to acquire module clock\0A\00", [32 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry_ptr.16 = internal global ptr @sun6i_spi_probe._entry.14, section ".printk_index", align 4
@sun6i_spi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't get reset controller\0A\00", [33 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry_ptr.19 = internal global ptr @sun6i_spi_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 629, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request TX DMA channel\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry_ptr.24 = internal global ptr @sun6i_spi_probe._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 639, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request RX DMA channel\0A\00", [62 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry_ptr.28 = internal global ptr @sun6i_spi_probe._entry.26, section ".printk_index", align 4
@sun6i_spi_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 655, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't resume the device\0A\00", [36 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry_ptr.31 = internal global ptr @sun6i_spi_probe._entry.29, section ".printk_index", align 4
@sun6i_spi_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 666, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot register SPI master\0A\00", [36 x i8] zeroinitializer }, align 32
@sun6i_spi_probe._entry_ptr.34 = internal global ptr @sun6i_spi_probe._entry.32, section ".printk_index", align 4
@sun6i_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 404, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: prepare DMA failed, ret=%d\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun6i_spi_transfer_one\00", [41 x i8] zeroinitializer }, align 32
@sun6i_spi_transfer_one._entry_ptr = internal global ptr @sun6i_spi_transfer_one._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sun6i_spi_transfer_one._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 434, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: timeout transferring %u bytes@%iHz for %i(%i)ms\00", [44 x i8] zeroinitializer }, align 32
@sun6i_spi_transfer_one._entry_ptr.39 = internal global ptr @sun6i_spi_transfer_one._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sun6i_spi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't enable AHB clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun6i_spi_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@sun6i_spi_runtime_resume._entry_ptr = internal global ptr @sun6i_spi_runtime_resume._entry, section ".printk_index", align 4
@sun6i_spi_runtime_resume._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 500, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't enable module clock\0A\00", [34 x i8] zeroinitializer }, align 32
@sun6i_spi_runtime_resume._entry_ptr.46 = internal global ptr @sun6i_spi_runtime_resume._entry.44, section ".printk_index", align 4
@sun6i_spi_runtime_resume._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.3, i32 506, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Couldn't deassert the device from reset\0A\00", [55 x i8] zeroinitializer }, align 32
@sun6i_spi_runtime_resume._entry_ptr.49 = internal global ptr @sun6i_spi_runtime_resume._entry.47, section ".printk_index", align 4
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"sun6i_spi_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 711, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 715, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"sun6i_spi_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 699, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"sun6i_spi_pm_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 706, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 558, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 580, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 599, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 601, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 606, i32 40 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 608, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 617, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 622, i32 48 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 629, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 633, i32 48 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 639, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 655, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 666, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 402, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 431, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1169, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 87, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 494, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 500, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [27 x i8] c"../drivers/spi/spi-sun6i.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 506, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__exitcall_sun6i_spi_driver_exit, ptr @__initcall__kmod_spi_sun6i__253_720_sun6i_spi_driver_init6, ptr @sun6i_spi_driver_exit, ptr @sun6i_spi_probe._entry, ptr @sun6i_spi_probe._entry.10, ptr @sun6i_spi_probe._entry.14, ptr @sun6i_spi_probe._entry.17, ptr @sun6i_spi_probe._entry.21, ptr @sun6i_spi_probe._entry.26, ptr @sun6i_spi_probe._entry.29, ptr @sun6i_spi_probe._entry.32, ptr @sun6i_spi_probe._entry.6, ptr @sun6i_spi_probe._entry_ptr, ptr @sun6i_spi_probe._entry_ptr.12, ptr @sun6i_spi_probe._entry_ptr.16, ptr @sun6i_spi_probe._entry_ptr.19, ptr @sun6i_spi_probe._entry_ptr.24, ptr @sun6i_spi_probe._entry_ptr.28, ptr @sun6i_spi_probe._entry_ptr.31, ptr @sun6i_spi_probe._entry_ptr.34, ptr @sun6i_spi_probe._entry_ptr.8, ptr @sun6i_spi_runtime_resume._entry, ptr @sun6i_spi_runtime_resume._entry.44, ptr @sun6i_spi_runtime_resume._entry.47, ptr @sun6i_spi_runtime_resume._entry_ptr, ptr @sun6i_spi_runtime_resume._entry_ptr.46, ptr @sun6i_spi_runtime_resume._entry_ptr.49, ptr @sun6i_spi_transfer_one._entry, ptr @sun6i_spi_transfer_one._entry.37, ptr @sun6i_spi_transfer_one._entry_ptr, ptr @sun6i_spi_transfer_one._entry_ptr.39, ptr @sun6i_spi_driver, ptr @.str, ptr @sun6i_spi_match, ptr @sun6i_spi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @init_completion.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_transfer_one._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_runtime_resume._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_spi_runtime_resume._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_spi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun6i_spi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mem = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem) #8
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !105
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 100, i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i225 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i225 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i225, align 4
  %call3 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %mem) #8
  %base_addr = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %base_addr, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call3 to i32
  br label %spi_controller_put.exit

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.spi_controller_put.exit_crit_edge, label %if.end12

if.end9.spi_controller_put.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.end12:                                         ; preds = %if.end9
  %call.i226 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call10, ptr noundef nonnull @sun6i_spi_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool15.not = icmp eq i32 %call.i226, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %spi_controller_put.exit

if.end21:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %3, align 4
  %call24 = call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %7 = ptrtoint ptr %call24 to i32
  %fifo_depth = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fifo_depth, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100000000, ptr %max_speed_hz, align 8
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3000, ptr %min_speed_hz, align 4
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %11 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %12 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sun6i_spi_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %13 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sun6i_spi_transfer_one, ptr %transfer_one, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %num_chipselect, align 2
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 15, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 128, ptr %bits_per_word_mask, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %of_node27 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %19 = ptrtoint ptr %of_node27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %of_node27, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %20 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %auto_runtime_pm, align 4
  %max_transfer_size = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 13
  %21 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sun6i_spi_max_transfer_size, ptr %max_transfer_size, align 8
  %call29 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  %hclk = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call29, ptr %hclk, align 4
  %cmp.i227 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  %23 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hclk, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %spi_controller_put.exit

if.end39:                                         ; preds = %if.end21
  %call41 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  %mclk = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call41, ptr %mclk, align 4
  %cmp.i228 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %do.end47, label %if.end51

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  %27 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mclk, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %spi_controller_put.exit

if.end51:                                         ; preds = %if.end39
  %done = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 7
  %30 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_completion.__key) #8
  %call.i229 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rstc = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 6
  %31 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i229, ptr %rstc, align 4
  %cmp.i230 = icmp ugt ptr %call.i229, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %do.end59, label %if.end63

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  %32 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rstc, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %spi_controller_put.exit

if.end63:                                         ; preds = %if.end51
  %call65 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 60
  %35 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call65, ptr %dma_tx, align 8
  %cmp.i231 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %if.then68, label %if.end63.if.end79_crit_edge

if.end63.if.end79_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then68:                                        ; preds = %if.end63
  %cmp71 = icmp eq ptr %call65, inttoptr (i32 -517 to ptr)
  br i1 %cmp71, label %if.then68.spi_controller_put.exit_crit_edge, label %do.end76

if.then68.spi_controller_put.exit_crit_edge:      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

do.end76:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  %36 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %dma_tx, align 8
  br label %if.end79

if.end79:                                         ; preds = %do.end76, %if.end63.if.end79_crit_edge
  %call81 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 61
  %37 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call81, ptr %dma_rx, align 4
  %cmp.i232 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i232, label %if.then84, label %if.end79.if.end95_crit_edge

if.end79.if.end95_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then84:                                        ; preds = %if.end79
  %cmp87 = icmp eq ptr %call81, inttoptr (i32 -517 to ptr)
  br i1 %cmp87, label %if.then84.err_free_dma_tx_crit_edge, label %do.end92

if.then84.err_free_dma_tx_crit_edge:              ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dma_tx

do.end92:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  %38 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %dma_rx, align 4
  br label %if.end95

if.end95:                                         ; preds = %do.end92, %if.end79.if.end95_crit_edge
  %39 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_tx, align 8
  %tobool97.not = icmp eq ptr %40, null
  br i1 %tobool97.not, label %if.end95.if.end103_crit_edge, label %land.lhs.true

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

land.lhs.true:                                    ; preds = %if.end95
  %41 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_rx, align 4
  %tobool99.not = icmp eq ptr %42, null
  br i1 %tobool99.not, label %land.lhs.true.if.end103_crit_edge, label %if.then100

land.lhs.true.if.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then100:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mem, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add = add i32 %46, 512
  %dma_addr_tx = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 3
  %47 = ptrtoint ptr %dma_addr_tx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add, ptr %dma_addr_tx, align 4
  %48 = load i32, ptr %44, align 4
  %add102 = add i32 %48, 768
  %dma_addr_rx = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 2
  %49 = ptrtoint ptr %dma_addr_rx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add102, ptr %dma_addr_rx, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %50 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @sun6i_spi_can_dma, ptr %can_dma, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %land.lhs.true.if.end103_crit_edge, %if.end95.if.end103_crit_edge
  %call105 = call i32 @sun6i_spi_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end112, label %do.end110

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %err_free_dma_rx

if.end112:                                        ; preds = %if.end103
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i233 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %call119 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end112.cleanup_crit_edge, label %do.end124

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end124:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #11
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call129 = call i32 @sun6i_spi_runtime_suspend(ptr noundef %dev)
  br label %err_free_dma_rx

err_free_dma_rx:                                  ; preds = %do.end124, %do.end110
  %ret.0 = phi i32 [ %call105, %do.end110 ], [ %call119, %do.end124 ]
  %51 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_rx, align 4
  %tobool131.not = icmp eq ptr %52, null
  br i1 %tobool131.not, label %err_free_dma_rx.err_free_dma_tx_crit_edge, label %if.then132

err_free_dma_rx.err_free_dma_tx_crit_edge:        ; preds = %err_free_dma_rx
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dma_tx

if.then132:                                       ; preds = %err_free_dma_rx
  call void @__sanitizer_cov_trace_pc() #10
  call void @dma_release_channel(ptr noundef nonnull %52) #8
  br label %err_free_dma_tx

err_free_dma_tx:                                  ; preds = %if.then132, %err_free_dma_rx.err_free_dma_tx_crit_edge, %if.then84.err_free_dma_tx_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then132 ], [ %ret.0, %err_free_dma_rx.err_free_dma_tx_crit_edge ], [ -517, %if.then84.err_free_dma_tx_crit_edge ]
  %53 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_tx, align 8
  %tobool136.not = icmp eq ptr %54, null
  br i1 %tobool136.not, label %err_free_dma_tx.spi_controller_put.exit_crit_edge, label %if.then137

err_free_dma_tx.spi_controller_put.exit_crit_edge: ; preds = %err_free_dma_tx
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_controller_put.exit

if.then137:                                       ; preds = %err_free_dma_tx
  call void @__sanitizer_cov_trace_pc() #10
  call void @dma_release_channel(ptr noundef nonnull %54) #8
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.then137, %err_free_dma_tx.spi_controller_put.exit_crit_edge, %if.then68.spi_controller_put.exit_crit_edge, %do.end59, %do.end47, %do.end35, %do.end19, %if.end9.spi_controller_put.exit_crit_edge, %if.then6
  %ret.2 = phi i32 [ %5, %if.then6 ], [ %call.i226, %do.end19 ], [ %25, %do.end35 ], [ %29, %do.end47 ], [ %34, %do.end59 ], [ %ret.1, %if.then137 ], [ %ret.1, %err_free_dma_tx.spi_controller_put.exit_crit_edge ], [ -6, %if.end9.spi_controller_put.exit_crit_edge ], [ -517, %if.then68.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end112.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ -12, %do.end ], [ 0, %if.end112.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_rx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %5) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_spi_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr.i = getelementptr inbounds %struct.sun6i_spi, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 1048576) #8, !srcloc !109
  %6 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %tobool.not9.i = icmp ult i32 %8, 16777216
  br i1 %tobool.not9.i, label %if.then.sun6i_spi_drain_fifo.exit_crit_edge, label %while.body.lr.ph.i

if.then.sun6i_spi_drain_fifo.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun6i_spi_drain_fifo.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %9 = lshr i32 %8, 24
  %rx_buf.i = getelementptr inbounds %struct.sun6i_spi, ptr %dev_id, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec10.in.i = phi i32 [ %9, %while.body.lr.ph.i ], [ %dec10.i, %if.end.i.while.body.i_crit_edge ]
  %dec10.i = add nsw i32 %dec10.in.i, -1
  %10 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %11, i32 768
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i26) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %13 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_buf.i, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr i8, ptr %14, i32 1
  %15 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %incdec.ptr.i, ptr %rx_buf.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %12, ptr %14, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %tobool.not.i = icmp eq i32 %dec10.i, 0
  br i1 %tobool.not.i, label %if.end.i.sun6i_spi_drain_fifo.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i.sun6i_spi_drain_fifo.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun6i_spi_drain_fifo.exit

sun6i_spi_drain_fifo.exit:                        ; preds = %if.end.i.sun6i_spi_drain_fifo.exit_crit_edge, %if.then.sun6i_spi_drain_fifo.exit_crit_edge
  %done = getelementptr inbounds %struct.sun6i_spi, ptr %dev_id, i32 0, i32 7
  tail call void @complete(ptr noundef %done) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %17 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i.i28 = getelementptr i8, ptr %18, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i28) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %19)
  %tobool.not9.i29 = icmp ult i32 %19, 16777216
  br i1 %tobool.not9.i29, label %if.then3.sun6i_spi_drain_fifo.exit41_crit_edge, label %while.body.lr.ph.i31

if.then3.sun6i_spi_drain_fifo.exit41_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun6i_spi_drain_fifo.exit41

while.body.lr.ph.i31:                             ; preds = %if.then3
  %20 = lshr i32 %19, 24
  %rx_buf.i30 = getelementptr inbounds %struct.sun6i_spi, ptr %dev_id, i32 0, i32 9
  br label %while.body.i36

while.body.i36:                                   ; preds = %if.end.i40.while.body.i36_crit_edge, %while.body.lr.ph.i31
  %dec10.in.i32 = phi i32 [ %20, %while.body.lr.ph.i31 ], [ %dec10.i33, %if.end.i40.while.body.i36_crit_edge ]
  %dec10.i33 = add nsw i32 %dec10.in.i32, -1
  %21 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %22, i32 768
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i34) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %24 = ptrtoint ptr %rx_buf.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_buf.i30, align 4
  %tobool3.not.i35 = icmp eq ptr %25, null
  br i1 %tobool3.not.i35, label %while.body.i36.if.end.i40_crit_edge, label %if.then.i38

while.body.i36.if.end.i40_crit_edge:              ; preds = %while.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i40

if.then.i38:                                      ; preds = %while.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i37 = getelementptr i8, ptr %25, i32 1
  %26 = ptrtoint ptr %rx_buf.i30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %incdec.ptr.i37, ptr %rx_buf.i30, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %23, ptr %25, align 1
  br label %if.end.i40

if.end.i40:                                       ; preds = %if.then.i38, %while.body.i36.if.end.i40_crit_edge
  %tobool.not.i39 = icmp eq i32 %dec10.i33, 0
  br i1 %tobool.not.i39, label %if.end.i40.sun6i_spi_drain_fifo.exit41_crit_edge, label %if.end.i40.while.body.i36_crit_edge

if.end.i40.while.body.i36_crit_edge:              ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i36

if.end.i40.sun6i_spi_drain_fifo.exit41_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun6i_spi_drain_fifo.exit41

sun6i_spi_drain_fifo.exit41:                      ; preds = %if.end.i40.sun6i_spi_drain_fifo.exit41_crit_edge, %if.then3.sun6i_spi_drain_fifo.exit41_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 16777216) #8, !srcloc !109
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %fifo_depth.i = getelementptr inbounds %struct.sun6i_spi, ptr %dev_id, i32 0, i32 11
  %30 = ptrtoint ptr %fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fifo_depth.i, align 4
  %32 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i.i45 = getelementptr i8, ptr %33, i32 28
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i45) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %35 = lshr i32 %34, 8
  %shr.i.i = and i32 %35, 255
  %sub.i = sub i32 %31, %shr.i.i
  %len1.i = getelementptr inbounds %struct.sun6i_spi, ptr %dev_id, i32 0, i32 10
  %36 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len1.i, align 4
  %38 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not21.i = icmp eq i32 %38, 0
  br i1 %tobool.not21.i, label %if.then7.sun6i_spi_fill_fifo.exit_crit_edge, label %while.body.lr.ph.i46

if.then7.sun6i_spi_fill_fifo.exit_crit_edge:      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun6i_spi_fill_fifo.exit

while.body.lr.ph.i46:                             ; preds = %if.then7
  %tx_buf.i = getelementptr inbounds %struct.sun6i_spi, ptr %dev_id, i32 0, i32 8
  br label %while.body.i47

while.body.i47:                                   ; preds = %cond.end6.i.while.body.i47_crit_edge, %while.body.lr.ph.i46
  %dec22.in.i = phi i32 [ %38, %while.body.lr.ph.i46 ], [ %dec22.i, %cond.end6.i.while.body.i47_crit_edge ]
  %dec22.i = add i32 %dec22.in.i, -1
  %39 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_buf.i, align 4
  %tobool2.not.i = icmp eq ptr %40, null
  br i1 %tobool2.not.i, label %while.body.i47.cond.end6.i_crit_edge, label %cond.true3.i

while.body.i47.cond.end6.i_crit_edge:             ; preds = %while.body.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end6.i

cond.true3.i:                                     ; preds = %while.body.i47
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i48 = getelementptr i8, ptr %40, i32 1
  %41 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %incdec.ptr.i48, ptr %tx_buf.i, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %40, align 1
  br label %cond.end6.i

cond.end6.i:                                      ; preds = %cond.true3.i, %while.body.i47.cond.end6.i_crit_edge
  %cond7.i = phi i8 [ %43, %cond.true3.i ], [ 0, %while.body.i47.cond.end6.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %45, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i49, i8 %cond7.i) #8, !srcloc !113
  %46 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len1.i, align 4
  %dec10.i50 = add i32 %47, -1
  store i32 %dec10.i50, ptr %len1.i, align 4
  %tobool.not.i51 = icmp eq i32 %dec22.i, 0
  br i1 %tobool.not.i51, label %cond.end6.i.sun6i_spi_fill_fifo.exit_crit_edge, label %cond.end6.i.while.body.i47_crit_edge

cond.end6.i.while.body.i47_crit_edge:             ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i47

cond.end6.i.sun6i_spi_fill_fifo.exit_crit_edge:   ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun6i_spi_fill_fifo.exit

sun6i_spi_fill_fifo.exit:                         ; preds = %cond.end6.i.sun6i_spi_fill_fifo.exit_crit_edge, %if.then7.sun6i_spi_fill_fifo.exit_crit_edge
  %48 = phi i32 [ %37, %if.then7.sun6i_spi_fill_fifo.exit_crit_edge ], [ %dec10.i50, %cond.end6.i.sun6i_spi_fill_fifo.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool8.not = icmp eq i32 %48, 0
  br i1 %tobool8.not, label %if.then9, label %sun6i_spi_fill_fifo.exit.if.end10_crit_edge

sun6i_spi_fill_fifo.exit.if.end10_crit_edge:      ; preds = %sun6i_spi_fill_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %sun6i_spi_fill_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 16
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %52 = and i32 %51, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %54, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %52) #8, !srcloc !109
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sun6i_spi_fill_fifo.exit.if.end10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %56, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 268435456) #8, !srcloc !109
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %sun6i_spi_drain_fifo.exit41, %sun6i_spi_drain_fifo.exit
  %retval.0 = phi i32 [ 1, %sun6i_spi_drain_fifo.exit ], [ 1, %sun6i_spi_drain_fifo.exit41 ], [ 1, %if.end10 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %base_addr.i = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %7 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %and2 = and i32 %shl, 48
  %9 = and i32 %6, 1342177279
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %masksel = select i1 %enable, i32 128, i32 0
  %and4 = or i32 %10, %masksel
  %reg.0 = or i32 %and4, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #8
  %12 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %11) #8, !srcloc !109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_spi_transfer_one(ptr noundef %master, ptr noundef %spi, ptr noundef %tfr) #2 align 64 {
entry:
  %rxconf.i = alloca %struct.dma_slave_config, align 4
  %txconf.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %3)
  %cmp = icmp ugt i32 %3, 16777215
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %done = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %5 = ptrtoint ptr %tfr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tfr, align 4
  %tx_buf1 = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %tx_buf1, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 1
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buf, align 4
  %rx_buf2 = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %rx_buf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %rx_buf2, align 4
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %len4 = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %len4, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 24
  %14 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %can_dma, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call zeroext i1 %15(ptr noundef %master, ptr noundef %spi, ptr noundef %tfr) #8
  %conv = zext i1 %call6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool7.not = icmp eq i32 %cond, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %base_addr.i = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i332 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i332, i32 8388736) #8, !srcloc !109
  %fifo_depth = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifo_depth, align 4
  br i1 %tobool7.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %div10325 = lshr i32 %21, 2
  %mul = mul nuw i32 %div10325, 3
  br label %if.end22

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %div12328 = lshr i32 %21, 1
  %22 = ptrtoint ptr %tfr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tfr, align 4
  %tobool14.not = icmp eq ptr %23, null
  %spec.select = select i1 %tobool14.not, i32 0, i32 16777216
  %24 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_buf, align 4
  %tobool18.not = icmp eq ptr %25, null
  %or20 = or i32 %spec.select, 256
  %spec.select329 = select i1 %tobool18.not, i32 %spec.select, i32 %or20
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then9
  %trig_level.0 = phi i32 [ %mul, %if.then9 ], [ %div12328, %if.else ]
  %reg.1 = phi i32 [ 0, %if.then9 ], [ %spec.select329, %if.else ]
  %shl23 = shl i32 %trig_level.0, 16
  %or24 = or i32 %shl23, %trig_level.0
  %or25 = or i32 %or24, %reg.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %or25) #8
  %27 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i334 = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334, i32 %26) #8, !srcloc !109
  %29 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i336 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i336) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode, align 8
  %and = and i32 %33, 2
  %and34 = and i32 %33, 1
  %34 = and i32 %31, -51380225
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %and39.masked = or i32 %and, %35
  %and47 = or i32 %and39.masked, %and34
  %and42 = shl i32 %33, 9
  %36 = and i32 %and42, 4096
  %reg.4 = or i32 %and47, %36
  %37 = ptrtoint ptr %rx_buf2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_buf2, align 4
  %tobool50.not = icmp eq ptr %38, null
  br i1 %tobool50.not, label %if.else54, label %if.then51

if.then51:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %and52 = and i32 %reg.4, -257
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  br label %if.end56

if.else54:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %or55 = or i32 %reg.4, 256
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then51
  %rx_len.0 = phi i32 [ %40, %if.then51 ], [ 0, %if.else54 ]
  %reg.5 = phi i32 [ %and52, %if.then51 ], [ %or55, %if.else54 ]
  %or57 = or i32 %reg.5, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %or57) #8
  %42 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i338 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i338, i32 %41) #8, !srcloc !109
  %mclk = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mclk, align 4
  %call58 = tail call i32 @clk_get_rate(ptr noundef %45) #8
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 12
  %46 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %speed_hz, align 4
  %mul59 = shl i32 %47, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call58, i32 %mul59)
  %cmp60 = icmp ult i32 %call58, %mul59
  br i1 %cmp60, label %if.then62, label %if.end56.if.end69_crit_edge

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mclk, align 4
  %call66 = tail call i32 @clk_set_rate(ptr noundef %49, i32 noundef %mul59) #8
  %50 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mclk, align 4
  %call68 = tail call i32 @clk_get_rate(ptr noundef %51) #8
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.end56.if.end69_crit_edge
  %mclk_rate.0 = phi i32 [ %call68, %if.then62 ], [ %call58, %if.end56.if.end69_crit_edge ]
  %52 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %speed_hz, align 4
  %add = add i32 %mclk_rate.0, -1
  %sub = add i32 %add, %53
  %div72 = udiv i32 %sub, %53
  %sub74 = add i32 %div72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %sub74)
  %cmp76 = icmp ult i32 %sub74, 514
  br i1 %cmp76, label %if.then78, label %cond.end115.thread

if.then78:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %div75326 = lshr i32 %sub74, 1
  %sub79 = add nuw nsw i32 %div75326, 255
  %and80 = and i32 %sub79, 255
  %or82 = or i32 %and80, 4096
  %mul83 = and i32 %sub74, -2
  %div84 = udiv i32 %mclk_rate.0, %mul83
  br label %if.end128

cond.end115.thread:                               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i340 = add i32 %div72, -1
  %54 = tail call i32 @llvm.ctlz.i32(i32 %sub.i340, i1 false) #8, !range !114
  %sub.i.i341 = sub nsw i32 31, %54
  %55 = tail call i32 @llvm.smin.i32(i32 %sub.i.i341, i32 14)
  %56 = add nsw i32 %55, 1
  %and123 = shl i32 %56, 8
  %shl124 = and i32 %and123, 3840
  %div126327 = lshr i32 %mclk_rate.0, %56
  br label %if.end128

if.end128:                                        ; preds = %cond.end115.thread, %if.then78
  %div126327.sink = phi i32 [ %div126327, %cond.end115.thread ], [ %div84, %if.then78 ]
  %reg.6 = phi i32 [ %shl124, %cond.end115.thread ], [ %or82, %if.then78 ]
  %effective_speed_hz127 = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 13
  %57 = ptrtoint ptr %effective_speed_hz127 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div126327.sink, ptr %effective_speed_hz127, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %58 = tail call i32 @llvm.bswap.i32(i32 %reg.6) #8
  %59 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i343 = getelementptr i8, ptr %60, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i343, i32 %58) #8, !srcloc !109
  %61 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i345 = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i345) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %64 = or i32 %63, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i347 = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i347, i32 %64) #8, !srcloc !109
  %67 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_buf1, align 4
  %tobool132.not = icmp eq ptr %68, null
  br i1 %tobool132.not, label %if.end128.if.end135_crit_edge, label %if.then133

if.end128.if.end135_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then133:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end128.if.end135_crit_edge
  %tx_len.0 = phi i32 [ %70, %if.then133 ], [ 0, %if.end128.if.end135_crit_edge ]
  %71 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  %74 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i349 = getelementptr i8, ptr %75, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i349, i32 %73) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %76 = tail call i32 @llvm.bswap.i32(i32 %tx_len.0) #8
  %77 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i351 = getelementptr i8, ptr %78, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i351, i32 %76) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %79 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i353 = getelementptr i8, ptr %80, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i353, i32 %76) #8, !srcloc !109
  br i1 %tobool7.not, label %if.then138, label %if.else139

if.then138:                                       ; preds = %if.end135
  %fifo_depth.i = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 11
  %81 = ptrtoint ptr %fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fifo_depth.i, align 4
  %83 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %84, i32 28
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %86 = lshr i32 %85, 8
  %shr.i.i = and i32 %86, 255
  %sub.i354 = sub i32 %82, %shr.i.i
  %87 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len4, align 4
  %89 = tail call i32 @llvm.smin.i32(i32 %sub.i354, i32 %88) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not21.i = icmp eq i32 %89, 0
  br i1 %tobool.not21.i, label %if.then138.sun6i_spi_fill_fifo.exit_crit_edge, label %if.then138.while.body.i_crit_edge

if.then138.while.body.i_crit_edge:                ; preds = %if.then138
  br label %while.body.i

if.then138.sun6i_spi_fill_fifo.exit_crit_edge:    ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun6i_spi_fill_fifo.exit

while.body.i:                                     ; preds = %cond.end6.i.while.body.i_crit_edge, %if.then138.while.body.i_crit_edge
  %dec22.in.i = phi i32 [ %dec22.i, %cond.end6.i.while.body.i_crit_edge ], [ %89, %if.then138.while.body.i_crit_edge ]
  %dec22.i = add i32 %dec22.in.i, -1
  %90 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx_buf1, align 4
  %tobool2.not.i = icmp eq ptr %91, null
  br i1 %tobool2.not.i, label %while.body.i.cond.end6.i_crit_edge, label %cond.true3.i

while.body.i.cond.end6.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end6.i

cond.true3.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr i8, ptr %91, i32 1
  %92 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %incdec.ptr.i, ptr %tx_buf1, align 4
  %93 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %91, align 1
  br label %cond.end6.i

cond.end6.i:                                      ; preds = %cond.true3.i, %while.body.i.cond.end6.i_crit_edge
  %cond7.i = phi i8 [ %94, %cond.true3.i ], [ 0, %while.body.i.cond.end6.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %95 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i355 = getelementptr i8, ptr %96, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i355, i8 %cond7.i) #8, !srcloc !113
  %97 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len4, align 4
  %dec10.i = add i32 %98, -1
  store i32 %dec10.i, ptr %len4, align 4
  %tobool.not.i = icmp eq i32 %dec22.i, 0
  br i1 %tobool.not.i, label %cond.end6.i.sun6i_spi_fill_fifo.exit_crit_edge, label %cond.end6.i.while.body.i_crit_edge

cond.end6.i.while.body.i_crit_edge:               ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cond.end6.i.sun6i_spi_fill_fifo.exit_crit_edge:   ; preds = %cond.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun6i_spi_fill_fifo.exit

sun6i_spi_fill_fifo.exit:                         ; preds = %cond.end6.i.sun6i_spi_fill_fifo.exit_crit_edge, %if.then138.sun6i_spi_fill_fifo.exit_crit_edge
  %99 = ptrtoint ptr %fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fifo_depth.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_len.0, i32 %100)
  %cmp150 = icmp ugt i32 %rx_len.0, %100
  %reg.7 = select i1 %cmp150, i32 4097, i32 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_len.0, i32 %100)
  %cmp156 = icmp ugt i32 %tx_len.0, %100
  %or159 = or i32 %reg.7, 16
  %spec.select330 = select i1 %cmp156, i32 %or159, i32 %reg.7
  br label %if.end161

if.else139:                                       ; preds = %if.end135
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %103 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_buf, align 4
  %tobool.not.i356 = icmp eq ptr %104, null
  br i1 %tobool.not.i356, label %if.else139.if.end7.i_crit_edge, label %if.then.i357

if.else139.if.end7.i_crit_edge:                   ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i357:                                     ; preds = %if.else139
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rxconf.i) #8
  %105 = getelementptr inbounds i8, ptr %rxconf.i, i32 36
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %105, align 4, !annotation !105
  %107 = ptrtoint ptr %rxconf.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 2, ptr %rxconf.i, align 4
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 1
  %dma_addr_rx.i = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 2
  %108 = ptrtoint ptr %dma_addr_rx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dma_addr_rx.i, align 4
  %110 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %src_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 2
  %111 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %dst_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 3
  %112 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 4, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 4
  %113 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %dst_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 5
  %114 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 8, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 6
  %peripheral_config.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 10
  %115 = ptrtoint ptr %peripheral_config.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %peripheral_config.i, align 4
  %peripheral_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %rxconf.i, i32 0, i32 11
  %116 = ptrtoint ptr %peripheral_size.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %peripheral_size.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.spi_controller, ptr %102, i32 0, i32 61
  %117 = call ptr @memset(ptr %dst_maxburst.i, i32 0, i32 13)
  %118 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dma_rx.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %121, i32 0, i32 44
  %122 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %123, null
  br i1 %tobool.not.i.i, label %if.then.i357.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i

if.then.i357.dmaengine_slave_config.exit.i_crit_edge: ; preds = %if.then.i357
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit.i

if.then.i.i:                                      ; preds = %if.then.i357
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 %123(ptr noundef %119, ptr noundef nonnull %rxconf.i) #8
  %124 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr.i = load ptr, ptr %dma_rx.i, align 4
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i, %if.then.i357.dmaengine_slave_config.exit.i_crit_edge
  %125 = phi ptr [ %119, %if.then.i357.dmaengine_slave_config.exit.i_crit_edge ], [ %.pr.i, %if.then.i.i ]
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 6
  %126 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx_sg.i, align 4
  %nents.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 6, i32 1
  %128 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nents.i, align 4
  %tobool.not.i76.i = icmp eq ptr %125, null
  br i1 %tobool.not.i76.i, label %dmaengine_slave_config.exit.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

dmaengine_slave_config.exit.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %dmaengine_slave_config.exit.i
  %130 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %125, align 4
  %tobool1.not.i.i = icmp eq ptr %131, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %131, i32 0, i32 39
  %132 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %133, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_sg.exit.thread.i

dmaengine_prep_slave_sg.exit.thread.i:            ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, %dmaengine_slave_config.exit.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rxconf.i) #8
  br label %do.end

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i77.i = call ptr %133(ptr noundef nonnull %125, ptr noundef %127, i32 noundef %129, i32 noundef 2, i32 noundef 1, ptr noundef null) #8
  %tobool5.not.i = icmp eq ptr %call.i77.i, null
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rxconf.i) #8
  br i1 %tobool5.not.i, label %dmaengine_prep_slave_sg.exit.i.do.end_crit_edge, label %dmaengine_prep_slave_sg.exit.i.if.end7.i_crit_edge

dmaengine_prep_slave_sg.exit.i.if.end7.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

dmaengine_prep_slave_sg.exit.i.do.end_crit_edge:  ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.i:                                        ; preds = %dmaengine_prep_slave_sg.exit.i.if.end7.i_crit_edge, %if.else139.if.end7.i_crit_edge
  %rxdesc.0.i = phi ptr [ %call.i77.i, %dmaengine_prep_slave_sg.exit.i.if.end7.i_crit_edge ], [ null, %if.else139.if.end7.i_crit_edge ]
  %134 = ptrtoint ptr %tfr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tfr, align 4
  %tobool8.not.i = icmp eq ptr %135, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end39.i_crit_edge, label %if.then9.i

if.end7.i.if.end39.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %txconf.i) #8
  %136 = getelementptr inbounds i8, ptr %txconf.i, i32 36
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 16777215, ptr %136, align 4, !annotation !105
  %138 = ptrtoint ptr %txconf.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %txconf.i, align 4
  %src_addr11.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 1
  %139 = ptrtoint ptr %src_addr11.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %src_addr11.i, align 4
  %dst_addr12.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 2
  %dma_addr_tx.i = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 3
  %140 = ptrtoint ptr %dma_addr_tx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dma_addr_tx.i, align 4
  %142 = ptrtoint ptr %dst_addr12.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %dst_addr12.i, align 4
  %src_addr_width13.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 3
  %143 = ptrtoint ptr %src_addr_width13.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %src_addr_width13.i, align 4
  %dst_addr_width14.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 4
  %144 = ptrtoint ptr %dst_addr_width14.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 4, ptr %dst_addr_width14.i, align 4
  %src_maxburst15.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 5
  %145 = ptrtoint ptr %src_maxburst15.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %src_maxburst15.i, align 4
  %dst_maxburst16.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 6
  %146 = ptrtoint ptr %dst_maxburst16.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 8, ptr %dst_maxburst16.i, align 4
  %src_port_window_size17.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 7
  %147 = ptrtoint ptr %src_port_window_size17.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %src_port_window_size17.i, align 4
  %dst_port_window_size18.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 8
  %148 = ptrtoint ptr %dst_port_window_size18.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %dst_port_window_size18.i, align 4
  %peripheral_config20.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 10
  %149 = ptrtoint ptr %peripheral_config20.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %peripheral_config20.i, align 4
  %peripheral_size21.i = getelementptr inbounds %struct.dma_slave_config, ptr %txconf.i, i32 0, i32 11
  %150 = ptrtoint ptr %peripheral_size21.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %peripheral_size21.i, align 4
  %dma_tx.i = getelementptr inbounds %struct.spi_controller, ptr %102, i32 0, i32 60
  %151 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dma_tx.i, align 8
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %device_config.i78.i = getelementptr inbounds %struct.dma_device, ptr %154, i32 0, i32 44
  %155 = ptrtoint ptr %device_config.i78.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device_config.i78.i, align 4
  %tobool.not.i79.i = icmp eq ptr %156, null
  br i1 %tobool.not.i79.i, label %if.then9.i.dmaengine_slave_config.exit82.i_crit_edge, label %if.then.i81.i

if.then9.i.dmaengine_slave_config.exit82.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit82.i

if.then.i81.i:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i80.i = call i32 %156(ptr noundef %152, ptr noundef nonnull %txconf.i) #8
  %157 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pr101.i = load ptr, ptr %dma_tx.i, align 8
  br label %dmaengine_slave_config.exit82.i

dmaengine_slave_config.exit82.i:                  ; preds = %if.then.i81.i, %if.then9.i.dmaengine_slave_config.exit82.i_crit_edge
  %158 = phi ptr [ %152, %if.then9.i.dmaengine_slave_config.exit82.i_crit_edge ], [ %.pr101.i, %if.then.i81.i ]
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 5
  %159 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tx_sg.i, align 4
  %nents26.i = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 5, i32 1
  %161 = ptrtoint ptr %nents26.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %nents26.i, align 4
  %tobool.not.i83.i = icmp eq ptr %158, null
  br i1 %tobool.not.i83.i, label %dmaengine_slave_config.exit82.i.if.then29.i_crit_edge, label %lor.lhs.false.i85.i

dmaengine_slave_config.exit82.i.if.then29.i_crit_edge: ; preds = %dmaengine_slave_config.exit82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

lor.lhs.false.i85.i:                              ; preds = %dmaengine_slave_config.exit82.i
  %163 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %158, align 4
  %tobool1.not.i84.i = icmp eq ptr %164, null
  br i1 %tobool1.not.i84.i, label %lor.lhs.false.i85.i.if.then29.i_crit_edge, label %lor.lhs.false2.i88.i

lor.lhs.false.i85.i.if.then29.i_crit_edge:        ; preds = %lor.lhs.false.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

lor.lhs.false2.i88.i:                             ; preds = %lor.lhs.false.i85.i
  %device_prep_slave_sg.i86.i = getelementptr inbounds %struct.dma_device, ptr %164, i32 0, i32 39
  %165 = ptrtoint ptr %device_prep_slave_sg.i86.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %device_prep_slave_sg.i86.i, align 4
  %tobool4.not.i87.i = icmp eq ptr %166, null
  br i1 %tobool4.not.i87.i, label %lor.lhs.false2.i88.i.if.then29.i_crit_edge, label %dmaengine_prep_slave_sg.exit92.i

lor.lhs.false2.i88.i.if.then29.i_crit_edge:       ; preds = %lor.lhs.false2.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

dmaengine_prep_slave_sg.exit92.i:                 ; preds = %lor.lhs.false2.i88.i
  %call.i89.i = call ptr %166(ptr noundef nonnull %158, ptr noundef %160, i32 noundef %162, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %tobool28.not.i = icmp eq ptr %call.i89.i, null
  br i1 %tobool28.not.i, label %dmaengine_prep_slave_sg.exit92.i.if.then29.i_crit_edge, label %if.end39.critedge.i

dmaengine_prep_slave_sg.exit92.i.if.then29.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.then29.i:                                      ; preds = %dmaengine_prep_slave_sg.exit92.i.if.then29.i_crit_edge, %lor.lhs.false2.i88.i.if.then29.i_crit_edge, %lor.lhs.false.i85.i.if.then29.i_crit_edge, %dmaengine_slave_config.exit82.i.if.then29.i_crit_edge
  %tobool30.not.i = icmp eq ptr %rxdesc.0.i, null
  br i1 %tobool30.not.i, label %cleanup52.critedge.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then29.i
  %dma_rx32.i = getelementptr inbounds %struct.spi_controller, ptr %102, i32 0, i32 61
  %167 = ptrtoint ptr %dma_rx32.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dma_rx32.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %170, i32 0, i32 47
  %171 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %172, null
  br i1 %tobool.not.i.i.i, label %if.then31.i.dmaengine_terminate_sync.exit.i_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.then31.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_async.exit.i.i:               ; preds = %if.then31.i
  %call.i.i.i = call i32 %172(ptr noundef %168) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i93.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i93.i, label %if.end.i94.i, label %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge

dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit.i

if.end.i94.i:                                     ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.40, i32 noundef 1169) #8
  %173 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %168, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %174, i32 0, i32 48
  %175 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %176, null
  br i1 %tobool.not.i1.i.i, label %if.end.i94.i.dmaengine_terminate_sync.exit.i_crit_edge, label %if.then.i2.i.i

if.end.i94.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit.i

if.then.i2.i.i:                                   ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %176(ptr noundef %168) #8
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_sync.exit.i:                  ; preds = %if.then.i2.i.i, %if.end.i94.i.dmaengine_terminate_sync.exit.i_crit_edge, %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %if.then31.i.dmaengine_terminate_sync.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #8
  br label %do.end

if.end39.critedge.i:                              ; preds = %dmaengine_prep_slave_sg.exit92.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end39.critedge.i, %if.end7.i.if.end39.i_crit_edge
  %txdesc.0.i = phi ptr [ null, %if.end7.i.if.end39.i_crit_edge ], [ %call.i89.i, %if.end39.critedge.i ]
  %177 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rx_buf, align 4
  %tobool41.not.i = icmp eq ptr %178, null
  br i1 %tobool41.not.i, label %if.end39.i.if.end45.i_crit_edge, label %if.then42.i

if.end39.i.if.end45.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %rxdesc.0.i, i32 0, i32 4
  %179 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i95.i = call i32 %180(ptr noundef %rxdesc.0.i) #8
  %dma_rx44.i = getelementptr inbounds %struct.spi_controller, ptr %102, i32 0, i32 61
  %181 = ptrtoint ptr %dma_rx44.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dma_rx44.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %184, i32 0, i32 50
  %185 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %186(ptr noundef %182) #8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then42.i, %if.end39.i.if.end45.i_crit_edge
  %187 = ptrtoint ptr %tfr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tfr, align 4
  %tobool47.not.i = icmp eq ptr %188, null
  br i1 %tobool47.not.i, label %if.end45.i.if.end161_crit_edge, label %if.then48.i

if.end45.i.if.end161_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_submit.i96.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %txdesc.0.i, i32 0, i32 4
  %189 = ptrtoint ptr %tx_submit.i96.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tx_submit.i96.i, align 4
  %call.i97.i = call i32 %190(ptr noundef %txdesc.0.i) #8
  %dma_tx50.i = getelementptr inbounds %struct.spi_controller, ptr %102, i32 0, i32 60
  %191 = ptrtoint ptr %dma_tx50.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dma_tx50.i, align 8
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  %device_issue_pending.i98.i = getelementptr inbounds %struct.dma_device, ptr %194, i32 0, i32 50
  %195 = ptrtoint ptr %device_issue_pending.i98.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %device_issue_pending.i98.i, align 4
  call void %196(ptr noundef %192) #8
  br label %if.end161

cleanup52.critedge.i:                             ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %txconf.i) #8
  br label %do.end

do.end:                                           ; preds = %cleanup52.critedge.i, %dmaengine_terminate_sync.exit.i, %dmaengine_prep_slave_sg.exit.i.do.end_crit_edge, %dmaengine_prep_slave_sg.exit.thread.i
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %197 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i358 = icmp eq ptr %198, null
  br i1 %tobool.not.i358, label %if.end.i359, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i359:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i359, %do.end.dev_name.exit_crit_edge
  %retval.0.i360 = phi ptr [ %200, %if.end.i359 ], [ %198, %do.end.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %master, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i360, i32 noundef -22) #11
  br label %cleanup

if.end161:                                        ; preds = %if.then48.i, %if.end45.i.if.end161_crit_edge, %sun6i_spi_fill_fifo.exit
  %reg.8 = phi i32 [ %spec.select330, %sun6i_spi_fill_fifo.exit ], [ 4096, %if.end45.i.if.end161_crit_edge ], [ 4096, %if.then48.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %201 = call i32 @llvm.bswap.i32(i32 %reg.8) #8
  %202 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i362 = getelementptr i8, ptr %203, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i362, i32 %201) #8, !srcloc !109
  %204 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i364 = getelementptr i8, ptr %205, i32 8
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i364) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %207 = or i32 %206, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %208 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i366 = getelementptr i8, ptr %209, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i366, i32 %207) #8, !srcloc !109
  %210 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %len, align 4
  %mul166 = shl i32 %211, 4
  %212 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %speed_hz, align 4
  %div168 = udiv i32 %213, 1000
  %div169 = udiv i32 %mul166, %div168
  %214 = call i32 @llvm.umax.i32(i32 %div169, i32 100)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %215 = load volatile i32, ptr @jiffies, align 128
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %214) #8
  %call179 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %call2.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %216 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %do.end184, label %if.end161.if.end192_crit_edge

if.end161.if.end192_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192

do.end184:                                        ; preds = %if.end161
  %init_name.i367 = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %217 = ptrtoint ptr %init_name.i367 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %init_name.i367, align 8
  %tobool.not.i368 = icmp eq ptr %218, null
  br i1 %tobool.not.i368, label %if.end.i369, label %do.end184.dev_name.exit371_crit_edge

do.end184.dev_name.exit371_crit_edge:             ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit371

if.end.i369:                                      ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #10
  %219 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %spi, align 4
  br label %dev_name.exit371

dev_name.exit371:                                 ; preds = %if.end.i369, %do.end184.dev_name.exit371_crit_edge
  %retval.0.i370 = phi ptr [ %220, %if.end.i369 ], [ %218, %do.end184.dev_name.exit371_crit_edge ]
  %221 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %len, align 4
  %223 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %speed_hz, align 4
  %sub190 = sub i32 %216, %215
  %call191 = call i32 @jiffies_to_msecs(i32 noundef %sub190) #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %master, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i370, i32 noundef %222, i32 noundef %224, i32 noundef %call191, i32 noundef %214) #11
  br label %if.end192

if.end192:                                        ; preds = %dev_name.exit371, %if.end161.if.end192_crit_edge
  %ret.1 = phi i32 [ 0, %if.end161.if.end192_crit_edge ], [ -110, %dev_name.exit371 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %225 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i373 = getelementptr i8, ptr %226, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i373, i32 0) #8, !srcloc !109
  %tobool180.not.not = xor i1 %tobool180.not, true
  %brmerge = select i1 %tobool180.not.not, i1 true, i1 %tobool7.not
  br i1 %brmerge, label %if.end192.cleanup_crit_edge, label %if.then196

if.end192.cleanup_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then196:                                       ; preds = %if.end192
  %dma_rx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %227 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dma_rx, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %230, i32 0, i32 47
  %231 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i374 = icmp eq ptr %232, null
  br i1 %tobool.not.i.i374, label %if.then196.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then196.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then196
  %call.i.i375 = call i32 %232(ptr noundef %228) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i375)
  %tobool.not.i376 = icmp eq i32 %call.i.i375, 0
  br i1 %tobool.not.i376, label %if.end.i377, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

if.end.i377:                                      ; preds = %dmaengine_terminate_async.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.40, i32 noundef 1169) #8
  %233 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %228, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %234, i32 0, i32 48
  %235 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %236, null
  br i1 %tobool.not.i1.i, label %if.end.i377.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i377.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #10
  call void %236(ptr noundef %228) #8
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i377.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then196.dmaengine_terminate_sync.exit_crit_edge
  %dma_tx = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %237 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dma_tx, align 8
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %238, align 4
  %device_terminate_all.i.i378 = getelementptr inbounds %struct.dma_device, ptr %240, i32 0, i32 47
  %241 = ptrtoint ptr %device_terminate_all.i.i378 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %device_terminate_all.i.i378, align 4
  %tobool.not.i.i379 = icmp eq ptr %242, null
  br i1 %tobool.not.i.i379, label %dmaengine_terminate_sync.exit.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i382

dmaengine_terminate_sync.exit.cleanup_crit_edge:  ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_terminate_async.exit.i382:              ; preds = %dmaengine_terminate_sync.exit
  %call.i.i380 = call i32 %242(ptr noundef %238) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i380)
  %tobool.not.i381 = icmp eq i32 %call.i.i380, 0
  br i1 %tobool.not.i381, label %if.end.i385, label %dmaengine_terminate_async.exit.i382.cleanup_crit_edge

dmaengine_terminate_async.exit.i382.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i382
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i385:                                      ; preds = %dmaengine_terminate_async.exit.i382
  call void @__might_sleep(ptr noundef nonnull @.str.40, i32 noundef 1169) #8
  %243 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %238, align 4
  %device_synchronize.i.i383 = getelementptr inbounds %struct.dma_device, ptr %244, i32 0, i32 48
  %245 = ptrtoint ptr %device_synchronize.i.i383 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %device_synchronize.i.i383, align 4
  %tobool.not.i1.i384 = icmp eq ptr %246, null
  br i1 %tobool.not.i1.i384, label %if.end.i385.cleanup_crit_edge, label %if.then.i2.i386

if.end.i385.cleanup_crit_edge:                    ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i2.i386:                                  ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #10
  call void %246(ptr noundef %238) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i2.i386, %if.end.i385.cleanup_crit_edge, %dmaengine_terminate_async.exit.i382.cleanup_crit_edge, %dmaengine_terminate_sync.exit.cleanup_crit_edge, %if.end192.cleanup_crit_edge, %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %dev_name.exit ], [ -22, %entry.cleanup_crit_edge ], [ %ret.1, %if.end192.cleanup_crit_edge ], [ %ret.1, %dmaengine_terminate_sync.exit.cleanup_crit_edge ], [ %ret.1, %dmaengine_terminate_async.exit.i382.cleanup_crit_edge ], [ %ret.1, %if.end.i385.cleanup_crit_edge ], [ %ret.1, %if.then.i2.i386 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun6i_spi_max_transfer_size(ptr nocapture noundef readnone %spi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16777214
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sun6i_spi_can_dma(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %fifo_depth = getelementptr inbounds %struct.sun6i_spi, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_spi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hclk = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %mclk = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mclk, align 4
  %call.i32 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.end.i36, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.end.i36:                                       ; preds = %if.end
  %call1.i34 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool2.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool2.not.i35, label %if.end9, label %if.then3.i37

if.then3.i37:                                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i37, %if.end.do.end8_crit_edge
  %retval.0.i38.ph = phi i32 [ %call1.i34, %if.then3.i37 ], [ %call.i32, %if.end.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #11
  br label %err

if.end9:                                          ; preds = %if.end.i36
  %rstc = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rstc, align 4
  %call10 = tail call i32 @reset_control_deassert(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #11
  %10 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %err

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %base_addr.i = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2113929216) #8, !srcloc !109
  br label %cleanup

err:                                              ; preds = %do.end15, %do.end8
  %ret.0 = phi i32 [ %retval.0.i38.ph, %do.end8 ], [ %call10, %do.end15 ]
  %14 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end16, %do.end
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %retval.0.i.ph, %do.end ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %rstc = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #8
  %mclk = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %hclk = getelementptr inbounds %struct.sun6i_spi, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_spi_sun6i__253_720_sun6i_spi_driver_init6, !1, !"__initcall__kmod_spi_sun6i__253_720_sun6i_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-sun6i.c", i32 720, i32 1}
!2 = !{ptr @__exitcall_sun6i_spi_driver_exit, !1, !"__exitcall_sun6i_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author254, !4, !"__UNIQUE_ID_author254", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-sun6i.c", i32 722, i32 1}
!5 = !{ptr @__UNIQUE_ID_author255, !6, !"__UNIQUE_ID_author255", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-sun6i.c", i32 723, i32 1}
!7 = !{ptr @__UNIQUE_ID_description256, !8, !"__UNIQUE_ID_description256", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-sun6i.c", i32 724, i32 1}
!9 = !{ptr @__UNIQUE_ID_file257, !10, !"__UNIQUE_ID_file257", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-sun6i.c", i32 725, i32 1}
!11 = !{ptr @__UNIQUE_ID_license258, !10, !"__UNIQUE_ID_license258", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-sun6i.c", i32 715, i32 12}
!14 = !{ptr @sun6i_spi_driver, !15, !"sun6i_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-sun6i.c", i32 711, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-sun6i.c", i32 558, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sun6i_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sun6i_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-sun6i.c", i32 580, i32 3}
!26 = !{ptr @sun6i_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sun6i_spi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-sun6i.c", i32 599, i32 40}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-sun6i.c", i32 601, i32 3}
!32 = !{ptr @sun6i_spi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun6i_spi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-sun6i.c", i32 606, i32 40}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-sun6i.c", i32 608, i32 3}
!38 = !{ptr @sun6i_spi_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sun6i_spi_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-sun6i.c", i32 617, i32 3}
!42 = !{ptr @sun6i_spi_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sun6i_spi_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-sun6i.c", i32 622, i32 48}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-sun6i.c", i32 629, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sun6i_spi_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sun6i_spi_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-sun6i.c", i32 633, i32 48}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-sun6i.c", i32 639, i32 3}
!55 = !{ptr @sun6i_spi_probe._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sun6i_spi_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-sun6i.c", i32 655, i32 3}
!59 = !{ptr @sun6i_spi_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sun6i_spi_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-sun6i.c", i32 666, i32 3}
!63 = !{ptr @sun6i_spi_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sun6i_spi_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-sun6i.c", i32 402, i32 4}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sun6i_spi_transfer_one._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @sun6i_spi_transfer_one._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-sun6i.c", i32 431, i32 3}
!72 = !{ptr @sun6i_spi_transfer_one._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @sun6i_spi_transfer_one._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!76 = !{ptr @init_completion.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/completion.h", i32 87, i32 2}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-sun6i.c", i32 494, i32 3}
!81 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sun6i_spi_runtime_resume._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sun6i_spi_runtime_resume._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/spi/spi-sun6i.c", i32 500, i32 3}
!86 = !{ptr @sun6i_spi_runtime_resume._entry.44, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sun6i_spi_runtime_resume._entry_ptr.46, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/spi/spi-sun6i.c", i32 506, i32 3}
!90 = !{ptr @sun6i_spi_runtime_resume._entry.47, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sun6i_spi_runtime_resume._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @sun6i_spi_match, !93, !"sun6i_spi_match", i1 false, i1 false}
!93 = !{!"../drivers/spi/spi-sun6i.c", i32 699, i32 34}
!94 = !{ptr @sun6i_spi_pm_ops, !95, !"sun6i_spi_pm_ops", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-sun6i.c", i32 706, i32 32}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"auto-init"}
!106 = !{i64 4942474}
!107 = !{i64 2154554488}
!108 = !{i64 2154554877}
!109 = !{i64 4942056}
!110 = !{i64 4942254}
!111 = !{i64 2154635644}
!112 = !{i64 2154637437}
!113 = !{i64 4941859}
!114 = !{i32 0, i32 33}
