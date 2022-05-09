; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-ep93xx.c_pt.bc'
source_filename = "../drivers/spi/spi-ep93xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.ep93xx_spi = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ep93xx_dma_data, %struct.ep93xx_dma_data, %struct.sg_table, %struct.sg_table, ptr }
%struct.ep93xx_dma_data = type { i32, i32, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.spi_delay = type { i16, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_spi_ep93xx__246_765_ep93xx_spi_driver_init6 = internal global ptr @ep93xx_spi_driver_init, section ".initcall6.init", align 4
@ep93xx_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ep93xx_spi_probe, ptr @ep93xx_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ep93xx_spi_driver_exit = internal global ptr @ep93xx_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description247 = internal constant [52 x i8] c"spi_ep93xx.description=EP93xx SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [59 x i8] c"spi_ep93xx.author=Mika Westerberg <mika.westerberg@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [39 x i8] c"spi_ep93xx.file=drivers/spi/spi-ep93xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [23 x i8] c"spi_ep93xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias251 = internal constant [37 x i8] c"spi_ep93xx.alias=platform:ep93xx-spi\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep93xx-spi\00", [21 x i8] zeroinitializer }, align 32
@ep93xx_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ep93xx_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/spi/spi-ep93xx.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ep93xx_spi_probe._entry_ptr = internal global ptr @ep93xx_spi_probe._entry, section ".printk_index", align 4
@ep93xx_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 668, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to get iomem resource\0A\00", [34 x i8] zeroinitializer }, align 32
@ep93xx_spi_probe._entry_ptr.8 = internal global ptr @ep93xx_spi_probe._entry.6, section ".printk_index", align 4
@ep93xx_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 696, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to get spi clock\0A\00", [39 x i8] zeroinitializer }, align 32
@ep93xx_spi_probe._entry_ptr.11 = internal global ptr @ep93xx_spi_probe._entry.9, section ".printk_index", align 4
@ep93xx_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 719, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@ep93xx_spi_probe._entry_ptr.14 = internal global ptr @ep93xx_spi_probe._entry.12, section ".printk_index", align 4
@ep93xx_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 724, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DMA setup failed. Falling back to PIO\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ep93xx_spi_probe._entry_ptr.18 = internal global ptr @ep93xx_spi_probe._entry.15, section ".printk_index", align 4
@ep93xx_spi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 731, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register SPI master\0A\00", [33 x i8] zeroinitializer }, align 32
@ep93xx_spi_probe._entry_ptr.21 = internal global ptr @ep93xx_spi_probe._entry.19, section ".printk_index", align 4
@ep93xx_spi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 736, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"EP93xx SPI Controller at 0x%08lx irq %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ep93xx_spi_probe._entry_ptr.25 = internal global ptr @ep93xx_spi_probe._entry.22, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ep93xx_spi_prepare_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 532, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timeout while flushing RX FIFO\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ep93xx_spi_prepare_message\00", [37 x i8] zeroinitializer }, align 32
@ep93xx_spi_prepare_message._entry_ptr = internal global ptr @ep93xx_spi_prepare_message._entry, section ".printk_index", align 4
@ep93xx_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup chip for transfer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ep93xx_spi_transfer_one\00", [40 x i8] zeroinitializer }, align 32
@ep93xx_spi_transfer_one._entry_ptr = internal global ptr @ep93xx_spi_transfer_one._entry, section ".printk_index", align 4
@ep93xx_spi_chip_setup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi_ep93xx\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ep93xx_spi_chip_setup\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"setup: mode %d, cpsr %d, scr %d, dss %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ep93xx_spi_chip_setup.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.3, ptr @.str.33, i8 0, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"setup: cr0 %#x\0A\00", [16 x i8] zeroinitializer }, align 32
@ep93xx_spi_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA RX failed: %ld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ep93xx_spi_dma_transfer\00", [40 x i8] zeroinitializer }, align 32
@ep93xx_spi_dma_transfer._entry_ptr = internal global ptr @ep93xx_spi_dma_transfer._entry, section ".printk_index", align 4
@ep93xx_spi_dma_transfer._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA TX failed: %ld\0A\00", [44 x i8] zeroinitializer }, align 32
@ep93xx_spi_dma_transfer._entry_ptr.38 = internal global ptr @ep93xx_spi_dma_transfer._entry.36, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ep93xx_spi_dma_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 351, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"len = %zu expected 0!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ep93xx_spi_dma_prepare\00", [41 x i8] zeroinitializer }, align 32
@ep93xx_spi_dma_prepare._entry_ptr = internal global ptr @ep93xx_spi_dma_prepare._entry, section ".printk_index", align 4
@ep93xx_spi_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 451, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"receive overrun, aborting the message\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ep93xx_spi_interrupt\00", [43 x i8] zeroinitializer }, align 32
@ep93xx_spi_interrupt._entry_ptr = internal global ptr @ep93xx_spi_interrupt._entry, section ".printk_index", align 4
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ep93xx-spi-rx\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ep93xx-spi-tx\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep93xx-dma-m2p\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"ep93xx_spi_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 758, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 760, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 658, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 668, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 696, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 719, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 724, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 731, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 735, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 531, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 492, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 169, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 171, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 411, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 418, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 351, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 450, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 601, i32 27 }
@___asan_gen_.179 = private constant [28 x i8] c"../drivers/spi/spi-ep93xx.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 612, i32 27 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [44 x i8] c"../include/linux/platform_data/dma-ep93xx.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 73, i32 46 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_ep93xx_spi_driver_exit, ptr @__initcall__kmod_spi_ep93xx__246_765_ep93xx_spi_driver_init6, ptr @ep93xx_spi_dma_prepare._entry, ptr @ep93xx_spi_dma_prepare._entry_ptr, ptr @ep93xx_spi_dma_transfer._entry, ptr @ep93xx_spi_dma_transfer._entry.36, ptr @ep93xx_spi_dma_transfer._entry_ptr, ptr @ep93xx_spi_dma_transfer._entry_ptr.38, ptr @ep93xx_spi_driver_exit, ptr @ep93xx_spi_interrupt._entry, ptr @ep93xx_spi_interrupt._entry_ptr, ptr @ep93xx_spi_prepare_message._entry, ptr @ep93xx_spi_prepare_message._entry_ptr, ptr @ep93xx_spi_probe._entry, ptr @ep93xx_spi_probe._entry.12, ptr @ep93xx_spi_probe._entry.15, ptr @ep93xx_spi_probe._entry.19, ptr @ep93xx_spi_probe._entry.22, ptr @ep93xx_spi_probe._entry.6, ptr @ep93xx_spi_probe._entry.9, ptr @ep93xx_spi_probe._entry_ptr, ptr @ep93xx_spi_probe._entry_ptr.11, ptr @ep93xx_spi_probe._entry_ptr.14, ptr @ep93xx_spi_probe._entry_ptr.18, ptr @ep93xx_spi_probe._entry_ptr.21, ptr @ep93xx_spi_probe._entry_ptr.25, ptr @ep93xx_spi_probe._entry_ptr.8, ptr @ep93xx_spi_transfer_one._entry, ptr @ep93xx_spi_transfer_one._entry_ptr, ptr @ep93xx_spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_prepare_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_dma_transfer._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_dma_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_spi_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ep93xx_spi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ep93xx_spi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 84, i1 noundef zeroext false) #8
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %2 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %prepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 44
  %3 = ptrtoint ptr %prepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ep93xx_spi_prepare_hardware, ptr %prepare_transfer_hardware, align 8
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 46
  %4 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ep93xx_spi_unprepare_hardware, ptr %unprepare_transfer_hardware, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %5 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ep93xx_spi_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %6 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ep93xx_spi_transfer_one, ptr %transfer_one, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %conv = trunc i32 %8 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65528, ptr %bits_per_word_mask, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %num_chipselect, align 2
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i138 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i138 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i138, align 4
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %15, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %15, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %spi_controller_put.exit

if.end30:                                         ; preds = %if.end17
  %call32 = tail call i32 @clk_get_rate(ptr noundef %call20) #8
  %div137 = lshr i32 %call32, 1
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div137, ptr %max_speed_hz, align 8
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %15, align 4
  %call34 = tail call i32 @clk_get_rate(ptr noundef %22) #8
  %div35 = udiv i32 %call34, 65024
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div35, ptr %min_speed_hz, align 4
  %24 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call5, align 4
  %add = add i32 %25, 8
  %sspdr_phys = getelementptr inbounds %struct.ep93xx_spi, ptr %15, i32 0, i32 2
  %26 = ptrtoint ptr %sspdr_phys to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %sspdr_phys, align 4
  %call37 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call5) #8
  %mmio = getelementptr inbounds %struct.ep93xx_spi, ptr %15, i32 0, i32 1
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call37, ptr %mmio, align 4
  %cmp.i139 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call37 to i32
  br label %spi_controller_put.exit

if.end43:                                         ; preds = %if.end30
  %call.i140 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call2, ptr noundef nonnull @ep93xx_spi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool46.not = icmp eq i32 %call.i140, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %spi_controller_put.exit

if.end52:                                         ; preds = %if.end43
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool53.not = icmp eq i8 %30, 0
  br i1 %tobool53.not, label %if.end52.do.body63_crit_edge, label %land.lhs.true

if.end52.do.body63_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body63

land.lhs.true:                                    ; preds = %if.end52
  %call55 = tail call fastcc i32 @ep93xx_spi_setup_dma(ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true.do.body63_crit_edge, label %do.end60

land.lhs.true.do.body63_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body63

do.end60:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %do.body63

do.body63:                                        ; preds = %do.end60, %land.lhs.true.do.body63_crit_edge, %if.end52.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !104
  %call68 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.end78, label %do.end73

do.end73:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #11
  tail call fastcc void @ep93xx_spi_release_dma(ptr noundef %15)
  br label %spi_controller_put.exit

do.end78:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %34, i32 noundef %call2) #11
  br label %cleanup

spi_controller_put.exit:                          ; preds = %do.end73, %do.end50, %if.then40, %do.end26
  %error.0 = phi i32 [ %19, %do.end26 ], [ %28, %if.then40 ], [ %call.i140, %do.end50 ], [ %call68, %do.end73 ]
  tail call void @put_device(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %do.end78, %if.end12.cleanup_crit_edge, %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %error.0, %spi_controller_put.exit ], [ 0, %do.end78 ], [ -19, %do.end10 ], [ -22, %do.end ], [ -16, %if.end.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i2 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i2, align 4
  %dma_rx.i = getelementptr inbounds %struct.ep93xx_spi, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %5) #8
  %rx_sgt.i = getelementptr inbounds %struct.ep93xx_spi, ptr %3, i32 0, i32 10
  tail call void @sg_free_table(ptr noundef %rx_sgt.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %dma_tx.i = getelementptr inbounds %struct.ep93xx_spi, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_tx.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %7) #8
  %tx_sgt.i = getelementptr inbounds %struct.ep93xx_spi, ptr %3, i32 0, i32 11
  tail call void @sg_free_table(ptr noundef %tx_sgt.i) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %zeropage.i = getelementptr inbounds %struct.ep93xx_spi, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %zeropage.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zeropage.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %if.end5.i.ep93xx_spi_release_dma.exit_crit_edge, label %if.then7.i

if.end5.i.ep93xx_spi_release_dma.exit_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ep93xx_spi_release_dma.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %9 to i32
  tail call void @free_pages(i32 noundef %10, i32 noundef 0) #8
  br label %ep93xx_spi_release_dma.exit

ep93xx_spi_release_dma.exit:                      ; preds = %if.then7.i, %if.end5.i.ep93xx_spi_release_dma.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_spi_prepare_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mmio = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %7 = or i32 %6, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #8, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_spi_unprepare_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mmio = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %5 = and i32 %4, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #8, !srcloc !104
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_spi_prepare_message(ptr noundef %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 1
  %mmio = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not16 = icmp eq i32 %6, 0
  br i1 %tobool.not16, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %master, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %14 = and i32 %13, 67108864
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %fifo_level = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %fifo_level to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %fifo_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_spi_transfer_one(ptr noundef %master, ptr nocapture noundef readonly %spi, ptr noundef %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @ep93xx_spi_chip_setup(ptr noundef %master, ptr noundef %spi, ptr noundef %xfer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %master, ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 31
  %2 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_msg, align 4
  %state = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %xfer, ptr %state, align 4
  %rx = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rx, align 4
  %tx = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx, align 4
  %dma_rx = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_rx, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp = icmp ugt i32 %10, 8
  br i1 %cmp, label %if.then3, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call fastcc ptr @ep93xx_spi_dma_prepare(ptr noundef %master, i32 noundef 2) #8
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call1.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %master, ptr noundef nonnull @.str.34, i32 noundef %13) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  %call5.i = tail call fastcc ptr @ep93xx_spi_dma_prepare(ptr noundef %master, i32 noundef 1) #8
  %cmp.i34.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34.i, label %if.then7.i, label %if.end14.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %dma_rx.i.i = getelementptr inbounds %struct.ep93xx_spi, ptr %15, i32 0, i32 6
  %rx_sgt.i.i = getelementptr inbounds %struct.ep93xx_spi, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %chan.0.i.i = load ptr, ptr %dma_rx.i.i, align 4
  %17 = ptrtoint ptr %chan.0.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan.0.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %21 = ptrtoint ptr %rx_sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_sgt.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.ep93xx_spi, ptr %15, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %20, ptr noundef %22, i32 noundef %24, i32 noundef 2, i32 noundef 0) #8
  %25 = ptrtoint ptr %call5.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %master, ptr noundef nonnull @.str.37, i32 noundef %25) #11
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1.i, i32 0, i32 6
  %26 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ep93xx_spi_dma_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1.i, i32 0, i32 8
  %27 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %master, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call1.i, i32 0, i32 4
  %28 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i.i = tail call i32 %29(ptr noundef %call1.i) #8
  %tx_submit.i35.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call5.i, i32 0, i32 4
  %30 = ptrtoint ptr %tx_submit.i35.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_submit.i35.i, align 4
  %call.i36.i = tail call i32 %31(ptr noundef %call5.i) #8
  %dma_rx.i = getelementptr inbounds %struct.ep93xx_spi, ptr %12, i32 0, i32 6
  %32 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_rx.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 50
  %36 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %37(ptr noundef %33) #8
  %dma_tx.i = getelementptr inbounds %struct.ep93xx_spi, ptr %12, i32 0, i32 7
  %38 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_tx.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %device_issue_pending.i37.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 50
  %42 = ptrtoint ptr %device_issue_pending.i37.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_issue_pending.i37.i, align 4
  tail call void %43(ptr noundef %39) #8
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = tail call fastcc i32 @ep93xx_spi_read_write(ptr noundef %master)
  %mmio = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  %47 = or i32 %46, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio, align 4
  %add.ptr13 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %47) #8, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end14.i, %if.then7.i, %do.end.i, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 1, %if.end5 ], [ %13, %do.end.i ], [ %25, %if.then7.i ], [ 1, %if.end14.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_spi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mmio = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #8, !srcloc !104
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.41) #11
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %dev_id, i32 0, i32 31
  %8 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_msg, align 4
  %status = getelementptr inbounds %struct.spi_message, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -5, ptr %status, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  %call8 = tail call fastcc i32 @ep93xx_spi_read_write(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else.if.end11_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %do.body
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %14 = and i32 %13, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr24 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %14) #8, !srcloc !104
  tail call void @spi_finalize_current_transfer(ptr noundef %dev_id) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep93xx_spi_setup_dma(ptr noundef %espi) unnamed_addr #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %call = tail call i32 @get_zeroed_page(i32 noundef 3264) #8
  %0 = inttoptr i32 %call to ptr
  %zeropage = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 12
  %1 = ptrtoint ptr %zeropage to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %zeropage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #8
  %dma_rx_data = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 8
  %3 = ptrtoint ptr %dma_rx_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %dma_rx_data, align 4
  %direction = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %direction, align 4
  %name = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 8, i32 2
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.43, ptr %name, align 4
  %call5 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @ep93xx_spi_dma_filter, ptr noundef %dma_rx_data, ptr noundef null) #8
  %dma_rx = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 6
  %6 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %dma_rx, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.fail_free_page_crit_edge, label %if.end9

if.end.fail_free_page_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_free_page

if.end9:                                          ; preds = %if.end
  %dma_tx_data = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 9
  %7 = ptrtoint ptr %dma_tx_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %dma_tx_data, align 4
  %direction12 = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %direction12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %direction12, align 4
  %name14 = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %name14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.44, ptr %name14, align 4
  %call16 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @ep93xx_spi_dma_filter, ptr noundef %dma_tx_data, ptr noundef null) #8
  %dma_tx = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 7
  %10 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %dma_tx, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.then19, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_rx, align 4
  call void @dma_release_channel(ptr noundef %12) #8
  %13 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dma_rx, align 4
  br label %fail_free_page

fail_free_page:                                   ; preds = %if.then19, %if.end.fail_free_page_crit_edge
  %14 = ptrtoint ptr %zeropage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %zeropage, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @free_pages(i32 noundef %16, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_free_page, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %fail_free_page ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep93xx_spi_release_dma(ptr noundef %espi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 6
  %0 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %1) #8
  %rx_sgt = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 10
  tail call void @sg_free_table(ptr noundef %rx_sgt) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_tx = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 7
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %3) #8
  %tx_sgt = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 11
  tail call void @sg_free_table(ptr noundef %tx_sgt) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %zeropage = getelementptr inbounds %struct.ep93xx_spi, ptr %espi, i32 0, i32 12
  %4 = ptrtoint ptr %zeropage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zeropage, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep93xx_spi_chip_setup(ptr noundef %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word, align 1
  %sub = add i8 %3, -1
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %7) #8
  %min_speed_hz.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 8
  %8 = ptrtoint ptr %min_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_speed_hz.i, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 %5) #8
  %max_speed_hz.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 9
  %11 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_speed_hz.i, align 8
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12) #8
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.inc14.i.for.cond9.preheader.i_crit_edge, %entry
  %cpsr.036.i = phi i32 [ 2, %entry ], [ %add15.i, %for.inc14.i.for.cond9.preheader.i_crit_edge ]
  br label %for.cond9.i

for.cond9.i:                                      ; preds = %for.body11.i.for.cond9.i_crit_edge, %for.cond9.preheader.i
  %scr.0.i = phi i32 [ %add.i, %for.body11.i.for.cond9.i_crit_edge ], [ 0, %for.cond9.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %scr.0.i)
  %exitcond.not.i = icmp eq i32 %scr.0.i, 256
  br i1 %exitcond.not.i, label %for.inc14.i, label %for.body11.i

for.body11.i:                                     ; preds = %for.cond9.i
  %add.i = add nuw nsw i32 %scr.0.i, 1
  %mul.i = mul nuw nsw i32 %add.i, %cpsr.036.i
  %div.i = udiv i32 %call1.i, %mul.i
  %cmp12.not.i = icmp ugt i32 %div.i, %13
  br i1 %cmp12.not.i, label %for.body11.i.for.cond9.i_crit_edge, label %if.end

for.body11.i.for.cond9.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.i

for.inc14.i:                                      ; preds = %for.cond9.i
  %add15.i = add nuw nsw i32 %cpsr.036.i, 2
  %cmp8.i = icmp ult i32 %cpsr.036.i, 253
  br i1 %cmp8.i, label %for.inc14.i.for.cond9.preheader.i_crit_edge, label %for.inc14.i.cleanup_crit_edge

for.inc14.i.cleanup_crit_edge:                    ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc14.i.for.cond9.preheader.i_crit_edge:      ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.preheader.i

if.end:                                           ; preds = %for.body11.i
  %14 = trunc i32 %scr.0.i to i16
  %conv3 = shl i16 %14, 8
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 8
  %17 = trunc i32 %16 to i16
  %18 = shl i16 %17, 5
  %19 = and i16 %18, 64
  %20 = or i16 %19, %conv3
  %21 = shl i16 %17, 7
  %22 = and i16 %21, 128
  %23 = or i16 %20, %22
  %24 = zext i8 %sub to i16
  %conv21 = or i16 %23, %24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep93xx_spi_chip_setup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep93xx_spi_chip_setup, %do.body33)) #8
          to label %if.then27 [label %do.body33], !srcloc !118

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv18 = zext i8 %sub to i32
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 8
  %conv29 = and i32 %cpsr.036.i, 254
  %conv30 = and i32 %scr.0.i, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep93xx_spi_chip_setup.__UNIQUE_ID_ddebug242, ptr noundef %master, ptr noundef nonnull @.str.32, i32 noundef %26, i32 noundef %conv29, i32 noundef %conv30, i32 noundef %conv18) #8
  br label %do.body33

do.body33:                                        ; preds = %if.then27, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ep93xx_spi_chip_setup.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ep93xx_spi_chip_setup, %do.body53)) #8
          to label %if.then47 [label %do.body53], !srcloc !118

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %conv49 = zext i16 %conv21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ep93xx_spi_chip_setup.__UNIQUE_ID_ddebug243, ptr noundef %master, ptr noundef nonnull @.str.33, i32 noundef %conv49) #8
  br label %do.body53

do.body53:                                        ; preds = %if.then47, %do.body33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %conv56 = shl i32 %cpsr.036.i, 24
  %mmio = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv56) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %conv60 = zext i16 %conv21 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv60)
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %for.inc14.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body53 ], [ -22, %for.inc14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep93xx_spi_read_write(ptr nocapture noundef readonly %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 31
  %2 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_msg, align 4
  %state = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %mmio = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr32 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %9 = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not33 = icmp eq i32 %9, 0
  br i1 %tobool.not33, label %entry.while.cond3.preheader_crit_edge, label %while.body.lr.ph

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond3.preheader

while.body.lr.ph:                                 ; preds = %entry
  %fifo_level = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 5
  br label %while.body

while.cond3.preheader:                            ; preds = %ep93xx_do_read.exit.while.cond3.preheader_crit_edge, %entry.while.cond3.preheader_crit_edge
  %tx = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 3
  %fifo_level4 = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %fifo_level4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo_level4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp34 = icmp ult i32 %11, 8
  br i1 %cmp34, label %land.rhs.lr.ph, label %while.cond3.preheader.while.end8_crit_edge

while.cond3.preheader.while.end8_crit_edge:       ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end8

land.rhs.lr.ph:                                   ; preds = %while.cond3.preheader
  %len = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  br label %land.rhs

while.body:                                       ; preds = %ep93xx_do_read.exit.while.body_crit_edge, %while.body.lr.ph
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_msg, align 4
  %state.i = getelementptr inbounds %struct.spi_message, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state.i, align 4
  %mmio.i = getelementptr inbounds %struct.ep93xx_spi, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !105
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %17, i32 0, i32 8
  %22 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bits_per_word.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %23)
  %cmp.i = icmp ugt i8 %23, 8
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %17, i32 0, i32 1
  %24 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body
  br i1 %tobool.not.i, label %if.then.i.ep93xx_do_read.exit_crit_edge, label %if.then4.i

if.then.i.ep93xx_do_read.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ep93xx_do_read.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = trunc i32 %21 to i16
  %rx.i = getelementptr inbounds %struct.ep93xx_spi, ptr %13, i32 0, i32 4
  %26 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx.i, align 4
  %arrayidx.i = getelementptr i16, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv5.i, ptr %arrayidx.i, align 2
  br label %ep93xx_do_read.exit

if.else.i:                                        ; preds = %while.body
  br i1 %tobool.not.i, label %if.else.i.ep93xx_do_read.exit_crit_edge, label %if.then10.i

if.else.i.ep93xx_do_read.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ep93xx_do_read.exit

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv11.i = trunc i32 %21 to i8
  %rx13.i = getelementptr inbounds %struct.ep93xx_spi, ptr %13, i32 0, i32 4
  %29 = ptrtoint ptr %rx13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx13.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %25, i32 %30
  %31 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv11.i, ptr %arrayidx14.i, align 1
  br label %ep93xx_do_read.exit

ep93xx_do_read.exit:                              ; preds = %if.then10.i, %if.else.i.ep93xx_do_read.exit_crit_edge, %if.then4.i, %if.then.i.ep93xx_do_read.exit_crit_edge
  %.sink30.i = phi i32 [ 2, %if.then4.i ], [ 2, %if.then.i.ep93xx_do_read.exit_crit_edge ], [ 1, %if.then10.i ], [ 1, %if.else.i.ep93xx_do_read.exit_crit_edge ]
  %rx16.i = getelementptr inbounds %struct.ep93xx_spi, ptr %13, i32 0, i32 4
  %32 = ptrtoint ptr %rx16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx16.i, align 4
  %add17.i = add i32 %33, %.sink30.i
  store i32 %add17.i, ptr %rx16.i, align 4
  %34 = ptrtoint ptr %fifo_level to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fifo_level, align 4
  %dec = add i32 %35, -1
  store i32 %dec, ptr %fifo_level, align 4
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 12
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %39 = and i32 %38, 67108864
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %ep93xx_do_read.exit.while.cond3.preheader_crit_edge, label %ep93xx_do_read.exit.while.body_crit_edge

ep93xx_do_read.exit.while.body_crit_edge:         ; preds = %ep93xx_do_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

ep93xx_do_read.exit.while.cond3.preheader_crit_edge: ; preds = %ep93xx_do_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond3.preheader

land.rhs:                                         ; preds = %ep93xx_do_write.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %40 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx, align 4
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp5 = icmp ult i32 %41, %43
  br i1 %cmp5, label %while.body6, label %land.rhs.while.end8_crit_edge

land.rhs.while.end8_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end8

while.body6:                                      ; preds = %land.rhs
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i, align 4
  %46 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_msg, align 4
  %state.i23 = getelementptr inbounds %struct.spi_message, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %state.i23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %state.i23, align 4
  %bits_per_word.i24 = getelementptr inbounds %struct.spi_transfer, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %bits_per_word.i24 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bits_per_word.i24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %51)
  %cmp.i25 = icmp ugt i8 %51, 8
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  %tobool.not.i26 = icmp eq ptr %53, null
  br i1 %cmp.i25, label %if.then.i27, label %if.else.i29

if.then.i27:                                      ; preds = %while.body6
  br i1 %tobool.not.i26, label %if.then.i27.ep93xx_do_write.exit_crit_edge, label %if.then2.i

if.then.i27.ep93xx_do_write.exit_crit_edge:       ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %ep93xx_do_write.exit

if.then2.i:                                       ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  %tx.i = getelementptr inbounds %struct.ep93xx_spi, ptr %45, i32 0, i32 3
  %54 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx.i, align 4
  %arrayidx.i28 = getelementptr i16, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i28, align 2
  %conv4.i = zext i16 %57 to i32
  br label %ep93xx_do_write.exit

if.else.i29:                                      ; preds = %while.body6
  br i1 %tobool.not.i26, label %if.else.i29.ep93xx_do_write.exit_crit_edge, label %if.then8.i

if.else.i29.ep93xx_do_write.exit_crit_edge:       ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %ep93xx_do_write.exit

if.then8.i:                                       ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #10
  %tx10.i = getelementptr inbounds %struct.ep93xx_spi, ptr %45, i32 0, i32 3
  %58 = ptrtoint ptr %tx10.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx10.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %53, i32 %59
  %60 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %61 to i32
  br label %ep93xx_do_write.exit

ep93xx_do_write.exit:                             ; preds = %if.then8.i, %if.else.i29.ep93xx_do_write.exit_crit_edge, %if.then2.i, %if.then.i27.ep93xx_do_write.exit_crit_edge
  %.sink27.i = phi i32 [ 2, %if.then2.i ], [ 2, %if.then.i27.ep93xx_do_write.exit_crit_edge ], [ 1, %if.then8.i ], [ 1, %if.else.i29.ep93xx_do_write.exit_crit_edge ]
  %val.2.i = phi i32 [ %conv4.i, %if.then2.i ], [ 0, %if.then.i27.ep93xx_do_write.exit_crit_edge ], [ %conv12.i, %if.then8.i ], [ 0, %if.else.i29.ep93xx_do_write.exit_crit_edge ]
  %tx5.i = getelementptr inbounds %struct.ep93xx_spi, ptr %45, i32 0, i32 3
  %62 = ptrtoint ptr %tx5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx5.i, align 4
  %add.i = add i32 %63, %.sink27.i
  store i32 %add.i, ptr %tx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %64 = tail call i32 @llvm.bswap.i32(i32 %val.2.i) #8
  %mmio.i30 = getelementptr inbounds %struct.ep93xx_spi, ptr %45, i32 0, i32 1
  %65 = ptrtoint ptr %mmio.i30 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %66, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %64) #8, !srcloc !104
  %67 = ptrtoint ptr %fifo_level4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fifo_level4, align 4
  %inc = add i32 %68, 1
  store i32 %inc, ptr %fifo_level4, align 4
  %cmp = icmp ult i32 %inc, 8
  br i1 %cmp, label %ep93xx_do_write.exit.land.rhs_crit_edge, label %ep93xx_do_write.exit.while.end8_crit_edge

ep93xx_do_write.exit.while.end8_crit_edge:        ; preds = %ep93xx_do_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end8

ep93xx_do_write.exit.land.rhs_crit_edge:          ; preds = %ep93xx_do_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end8:                                       ; preds = %ep93xx_do_write.exit.while.end8_crit_edge, %land.rhs.while.end8_crit_edge, %while.cond3.preheader.while.end8_crit_edge
  %rx = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx, align 4
  %len9 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  %71 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp10 = icmp eq i32 %70, %72
  %. = select i1 %cmp10, i32 0, i32 -115
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ep93xx_spi_dma_prepare(ptr noundef %master, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  %conf = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 31
  %2 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_msg, align 4
  %state = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %conf) #8
  %len1 = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp = icmp ugt i8 %9, 8
  %. = select i1 %cmp, i32 2, i32 1
  %10 = getelementptr inbounds i8, ptr %conf, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %switch.selectcmp.i = icmp eq i32 %dir, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %switch.selectcmp2.i = icmp eq i32 %dir, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i
  %12 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %switch.select3.i, ptr %conf, align 4
  br i1 %switch.selectcmp.i, label %if.then6, label %if.else7

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma_rx = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_rx, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_buf, align 4
  %rx_sgt = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 10
  %sspdr_phys = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %sspdr_phys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sspdr_phys, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 1
  %19 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 3
  br label %if.end9

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma_tx = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_tx, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %tx_sgt = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 11
  %sspdr_phys8 = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %sspdr_phys8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sspdr_phys8, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 2
  %26 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 4
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then6
  %dst_addr_width.sink = phi ptr [ %dst_addr_width, %if.else7 ], [ %src_addr_width, %if.then6 ]
  %sgt.0 = phi ptr [ %tx_sgt, %if.else7 ], [ %rx_sgt, %if.then6 ]
  %chan.0 = phi ptr [ %21, %if.else7 ], [ %14, %if.then6 ]
  %buf.0 = phi ptr [ %23, %if.else7 ], [ %16, %if.then6 ]
  %27 = ptrtoint ptr %dst_addr_width.sink to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %., ptr %dst_addr_width.sink, align 4
  %28 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan.0, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end9.if.then11_crit_edge, label %dmaengine_slave_config.exit

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

dmaengine_slave_config.exit:                      ; preds = %if.end9
  %call.i = call i32 %31(ptr noundef %chan.0, ptr noundef nonnull %conf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end13, label %dmaengine_slave_config.exit.if.then11_crit_edge

dmaengine_slave_config.exit.if.then11_crit_edge:  ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %dmaengine_slave_config.exit.if.then11_crit_edge, %if.end9.if.then11_crit_edge
  %retval.0.i174 = phi i32 [ %call.i, %dmaengine_slave_config.exit.if.then11_crit_edge ], [ -38, %if.end9.if.then11_crit_edge ]
  %32 = inttoptr i32 %retval.0.i174 to ptr
  br label %cleanup

if.end13:                                         ; preds = %dmaengine_slave_config.exit
  %sub = add i32 %7, 4095
  %div156 = lshr i32 %sub, 12
  %nents14 = getelementptr inbounds %struct.sg_table, ptr %sgt.0, i32 0, i32 1
  %33 = ptrtoint ptr %nents14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nents14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div156, i32 %34)
  %cmp15.not = icmp eq i32 %div156, %34
  br i1 %cmp15.not, label %if.end13.if.end23_crit_edge, label %if.then17

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then17:                                        ; preds = %if.end13
  call void @sg_free_table(ptr noundef %sgt.0) #8
  %call18 = call i32 @sg_alloc_table(ptr noundef %sgt.0, i32 noundef %div156, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end23thread-pre-split, label %if.then20

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %35 = inttoptr i32 %call18 to ptr
  br label %cleanup

if.end23thread-pre-split:                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %nents14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %nents14, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23thread-pre-split, %if.end13.if.end23_crit_edge
  %37 = phi i32 [ %.pr, %if.end23thread-pre-split ], [ %34, %if.end13.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp25185.not = icmp eq i32 %37, 0
  br i1 %cmp25185.not, label %if.end23.for.end_crit_edge, label %for.body.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %38 = ptrtoint ptr %sgt.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sgt.0, align 4
  %tobool29.not = icmp eq ptr %buf.0, null
  %zeropage = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.body.lr.ph
  %i.0190 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end40.for.body_crit_edge ]
  %len.0189 = phi i32 [ %7, %for.body.lr.ph ], [ %sub42, %if.end40.for.body_crit_edge ]
  %pbuf.0188 = phi ptr [ %buf.0, %for.body.lr.ph ], [ %add.ptr41, %if.end40.for.body_crit_edge ]
  %sg.0186 = phi ptr [ %39, %for.body.lr.ph ], [ %call43, %if.end40.for.body_crit_edge ]
  %40 = call i32 @llvm.umin.i32(i32 %len.0189, i32 4096)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  br i1 %tobool29.not, label %if.else34, label %if.then30

if.then30:                                        ; preds = %for.body
  %42 = ptrtoint ptr %pbuf.0188 to i32
  %sub31 = add i32 %42, 1073741824
  %shr = lshr i32 %sub31, 12
  %add.ptr = getelementptr %struct.page, ptr %41, i32 %shr
  %43 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !124

do.body5.i.i:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !125
  unreachable

do.body11.i.i:                                    ; preds = %if.then30
  %44 = ptrtoint ptr %sg.0186 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sg.0186, align 4
  %and = and i32 %42, 4095
  %and.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.body11.i.i.if.end40_crit_edge, label %do.body19.i.i, !prof !124

do.body11.i.i.if.end40_crit_edge:                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

if.else34:                                        ; preds = %for.body
  %46 = ptrtoint ptr %zeropage to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %zeropage, align 4
  %48 = ptrtoint ptr %47 to i32
  %sub35 = add i32 %48, 1073741824
  %shr36 = lshr i32 %sub35, 12
  %add.ptr39 = getelementptr %struct.page, ptr %41, i32 %shr36
  %49 = ptrtoint ptr %add.ptr39 to i32
  %and2.i.i157 = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i157)
  %tobool.not.i.i158 = icmp eq i32 %and2.i.i157, 0
  br i1 %tobool.not.i.i158, label %do.body11.i.i162, label %do.body5.i.i159, !prof !124

do.body5.i.i159:                                  ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !125
  unreachable

do.body11.i.i162:                                 ; preds = %if.else34
  %50 = ptrtoint ptr %sg.0186 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sg.0186, align 4
  %and.i.i.i160 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i160)
  %tobool.i.not.i.i161 = icmp eq i32 %and.i.i.i160, 0
  br i1 %tobool.i.not.i.i161, label %do.body11.i.i162.if.end40_crit_edge, label %do.body19.i.i163, !prof !124

do.body11.i.i162.if.end40_crit_edge:              ; preds = %do.body11.i.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.body19.i.i163:                                 ; preds = %do.body11.i.i162
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

if.end40:                                         ; preds = %do.body11.i.i162.if.end40_crit_edge, %do.body11.i.i.if.end40_crit_edge
  %.sink195 = phi i32 [ %45, %do.body11.i.i.if.end40_crit_edge ], [ %51, %do.body11.i.i162.if.end40_crit_edge ]
  %.sink194 = phi i32 [ %43, %do.body11.i.i.if.end40_crit_edge ], [ %49, %do.body11.i.i162.if.end40_crit_edge ]
  %.sink = phi i32 [ %and, %do.body11.i.i.if.end40_crit_edge ], [ 0, %do.body11.i.i162.if.end40_crit_edge ]
  %and.i.i164 = and i32 %.sink195, 3
  %or.i.i165 = or i32 %and.i.i164, %.sink194
  %52 = ptrtoint ptr %sg.0186 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i.i165, ptr %sg.0186, align 4
  %offset1.i166 = getelementptr inbounds %struct.scatterlist, ptr %sg.0186, i32 0, i32 1
  %53 = ptrtoint ptr %offset1.i166 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink, ptr %offset1.i166, align 4
  %length.i167 = getelementptr inbounds %struct.scatterlist, ptr %sg.0186, i32 0, i32 2
  %54 = ptrtoint ptr %length.i167 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %40, ptr %length.i167, align 4
  %add.ptr41 = getelementptr i8, ptr %pbuf.0188, i32 %40
  %sub42 = sub i32 %len.0189, %40
  %inc = add nuw i32 %i.0190, 1
  %call43 = call ptr @sg_next(ptr noundef %sg.0186) #8
  %55 = ptrtoint ptr %nents14 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nents14, align 4
  %cmp25 = icmp ult i32 %inc, %56
  br i1 %cmp25, label %if.end40.for.body_crit_edge, label %if.end40.for.end_crit_edge

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end40.for.end_crit_edge, %if.end23.for.end_crit_edge
  %len.0.lcssa = phi i32 [ %7, %if.end23.for.end_crit_edge ], [ %sub42, %if.end40.for.end_crit_edge ]
  %.lcssa = phi i32 [ 0, %if.end23.for.end_crit_edge ], [ %56, %if.end40.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.lcssa)
  %tobool44.not = icmp eq i32 %len.0.lcssa, 0
  br i1 %tobool44.not, label %if.end73, label %do.end, !prof !124

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 350, i32 noundef 9, ptr noundef null) #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %master, ptr noundef nonnull @.str.39, i32 noundef %len.0.lcssa) #11
  br label %cleanup

if.end73:                                         ; preds = %for.end
  %57 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chan.0, align 4
  %dev74 = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev74, align 4
  %61 = ptrtoint ptr %sgt.0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sgt.0, align 4
  %call77 = call i32 @dma_map_sg_attrs(ptr noundef %60, ptr noundef %62, i32 noundef %.lcssa, i32 noundef %dir, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end73.cleanup_crit_edge, label %if.end81

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end81:                                         ; preds = %if.end73
  %63 = ptrtoint ptr %sgt.0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sgt.0, align 4
  %65 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %conf, align 4
  %tobool.not.i169 = icmp eq ptr %chan.0, null
  br i1 %tobool.not.i169, label %if.end81.if.then86_crit_edge, label %lor.lhs.false.i

if.end81.if.then86_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

lor.lhs.false.i:                                  ; preds = %if.end81
  %67 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chan.0, align 4
  %tobool1.not.i = icmp eq ptr %68, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then86_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then86_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 39
  %69 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %70, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.if.then86_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.if.then86_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i170 = call ptr %70(ptr noundef nonnull %chan.0, ptr noundef %64, i32 noundef %call77, i32 noundef %66, i32 noundef 2, ptr noundef null) #8
  %tobool85.not = icmp eq ptr %call.i170, null
  br i1 %tobool85.not, label %dmaengine_prep_slave_sg.exit.if.then86_crit_edge, label %dmaengine_prep_slave_sg.exit.cleanup_crit_edge

dmaengine_prep_slave_sg.exit.cleanup_crit_edge:   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_prep_slave_sg.exit.if.then86_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

if.then86:                                        ; preds = %dmaengine_prep_slave_sg.exit.if.then86_crit_edge, %lor.lhs.false2.i.if.then86_crit_edge, %lor.lhs.false.i.if.then86_crit_edge, %if.end81.if.then86_crit_edge
  %71 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chan.0, align 4
  %dev88 = getelementptr inbounds %struct.dma_device, ptr %72, i32 0, i32 15
  %73 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev88, align 4
  %75 = ptrtoint ptr %sgt.0 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sgt.0, align 4
  %77 = ptrtoint ptr %nents14 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nents14, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %74, ptr noundef %76, i32 noundef %78, i32 noundef %dir, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %do.end, %if.then20, %if.then11
  %retval.0 = phi ptr [ %32, %if.then11 ], [ %35, %if.then20 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.then86 ], [ %call.i170, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end73.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %conf) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_spi_dma_callback(ptr noundef %callback_param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %callback_param, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dma_tx.i = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 7
  %tx_sgt.i = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %chan.0.i = load ptr, ptr %dma_tx.i, align 4
  %3 = ptrtoint ptr %chan.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan.0.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %tx_sgt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_sgt.i, align 4
  %nents.i = getelementptr inbounds %struct.ep93xx_spi, ptr %1, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 1, i32 noundef 0) #8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %dma_rx.i4 = getelementptr inbounds %struct.ep93xx_spi, ptr %12, i32 0, i32 6
  %rx_sgt.i5 = getelementptr inbounds %struct.ep93xx_spi, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %dma_rx.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %chan.0.i8 = load ptr, ptr %dma_rx.i4, align 4
  %14 = ptrtoint ptr %chan.0.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan.0.i8, align 4
  %dev.i9 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i9, align 4
  %18 = ptrtoint ptr %rx_sgt.i5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_sgt.i5, align 4
  %nents.i10 = getelementptr inbounds %struct.ep93xx_spi, ptr %12, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %nents.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nents.i10, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %17, ptr noundef %19, i32 noundef %21, i32 noundef 2, i32 noundef 0) #8
  tail call void @spi_finalize_current_transfer(ptr noundef %callback_param) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ep93xx_spi_dma_filter(ptr nocapture noundef %chan, ptr noundef %filter_param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.ep93xx_dma_chan_is_m2p.exit_crit_edge

entry.ep93xx_dma_chan_is_m2p.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ep93xx_dma_chan_is_m2p.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %ep93xx_dma_chan_is_m2p.exit

ep93xx_dma_chan_is_m2p.exit:                      ; preds = %if.end.i.i, %entry.ep93xx_dma_chan_is_m2p.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.ep93xx_dma_chan_is_m2p.exit_crit_edge ]
  %call1.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef nonnull dereferenceable(15) @.str.45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %ep93xx_dma_chan_is_m2p.exit.return_crit_edge, label %if.end

ep93xx_dma_chan_is_m2p.exit.return_crit_edge:     ; preds = %ep93xx_dma_chan_is_m2p.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %ep93xx_dma_chan_is_m2p.exit
  call void @__sanitizer_cov_trace_pc() #10
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %filter_param, ptr %private, align 4
  br label %return

return:                                           ; preds = %if.end, %ep93xx_dma_chan_is_m2p.exit.return_crit_edge
  %9 = xor i1 %tobool.not.i, true
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_spi_ep93xx__246_765_ep93xx_spi_driver_init6, !1, !"__initcall__kmod_spi_ep93xx__246_765_ep93xx_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-ep93xx.c", i32 765, i32 1}
!2 = !{ptr @__exitcall_ep93xx_spi_driver_exit, !1, !"__exitcall_ep93xx_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description247, !4, !"__UNIQUE_ID_description247", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-ep93xx.c", i32 767, i32 1}
!5 = !{ptr @__UNIQUE_ID_author248, !6, !"__UNIQUE_ID_author248", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-ep93xx.c", i32 768, i32 1}
!7 = !{ptr @__UNIQUE_ID_file249, !8, !"__UNIQUE_ID_file249", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-ep93xx.c", i32 769, i32 1}
!9 = !{ptr @__UNIQUE_ID_license250, !8, !"__UNIQUE_ID_license250", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias251, !11, !"__UNIQUE_ID_alias251", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-ep93xx.c", i32 770, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-ep93xx.c", i32 760, i32 11}
!14 = !{ptr @ep93xx_spi_driver, !15, !"ep93xx_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-ep93xx.c", i32 758, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-ep93xx.c", i32 658, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ep93xx_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ep93xx_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-ep93xx.c", i32 668, i32 3}
!26 = !{ptr @ep93xx_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ep93xx_spi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-ep93xx.c", i32 696, i32 3}
!30 = !{ptr @ep93xx_spi_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ep93xx_spi_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-ep93xx.c", i32 719, i32 3}
!34 = !{ptr @ep93xx_spi_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ep93xx_spi_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-ep93xx.c", i32 724, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ep93xx_spi_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ep93xx_spi_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-ep93xx.c", i32 731, i32 3}
!43 = !{ptr @ep93xx_spi_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ep93xx_spi_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-ep93xx.c", i32 735, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ep93xx_spi_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ep93xx_spi_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-ep93xx.c", i32 531, i32 4}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ep93xx_spi_prepare_message._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ep93xx_spi_prepare_message._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-ep93xx.c", i32 492, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ep93xx_spi_transfer_one._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ep93xx_spi_transfer_one._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-ep93xx.c", i32 169, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ep93xx_spi_chip_setup.__UNIQUE_ID_ddebug242, !61, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-ep93xx.c", i32 171, i32 2}
!67 = !{ptr @ep93xx_spi_chip_setup.__UNIQUE_ID_ddebug243, !66, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-ep93xx.c", i32 411, i32 3}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ep93xx_spi_dma_transfer._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ep93xx_spi_dma_transfer._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-ep93xx.c", i32 418, i32 3}
!75 = !{ptr @ep93xx_spi_dma_transfer._entry.36, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ep93xx_spi_dma_transfer._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-ep93xx.c", i32 351, i32 3}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ep93xx_spi_dma_prepare._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @ep93xx_spi_dma_prepare._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-ep93xx.c", i32 450, i32 3}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ep93xx_spi_interrupt._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ep93xx_spi_interrupt._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-ep93xx.c", i32 601, i32 27}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-ep93xx.c", i32 612, i32 27}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/platform_data/dma-ep93xx.h", i32 73, i32 46}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i8 0, i8 2}
!103 = !{i64 2154417074}
!104 = !{i64 702765}
!105 = !{i64 703183}
!106 = !{i64 2154405448}
!107 = !{i64 2154405753}
!108 = !{i64 2154406487}
!109 = !{i64 2154406792}
!110 = !{i64 2154402284}
!111 = !{i64 2154404891}
!112 = !{i64 2154401079}
!113 = !{i64 2154401548}
!114 = !{i64 2154395458}
!115 = !{i64 2154395768}
!116 = !{i64 2154398179}
!117 = !{i64 2154398648}
!118 = !{i64 2148169922, i64 2148169927, i64 2148169940, i64 2148169984, i64 2148170018, i64 2148170039}
!119 = !{i64 2154383650}
!120 = !{i64 2154384065}
!121 = !{i64 2154385812}
!122 = !{i64 2154385255}
!123 = !{i64 2154384521}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{i64 2153888793, i64 2153889285, i64 2153888830, i64 2153888886, i64 2153888920, i64 2153888944, i64 2153888985, i64 2153889006, i64 2153889034, i64 2153889068}
!126 = !{i64 2153890403, i64 2153890895, i64 2153890440, i64 2153890496, i64 2153890530, i64 2153890554, i64 2153890595, i64 2153890616, i64 2153890644, i64 2153890678}
