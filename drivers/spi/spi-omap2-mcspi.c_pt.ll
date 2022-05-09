; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-omap2-mcspi.c_pt.bc'
source_filename = "../drivers/spi/spi-omap2-mcspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.omap2_mcspi_platform_config = type { i16, i32, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.omap2_mcspi = type { %struct.completion, ptr, ptr, i32, ptr, ptr, %struct.omap2_mcspi_regs, i32, i8, i8, i32 }
%struct.omap2_mcspi_regs = type { i32, i32, %struct.list_head }
%struct.omap2_mcspi_dma = type { ptr, ptr, %struct.completion, %struct.completion, [14 x i8], [14 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.omap2_mcspi_cs = type { ptr, i32, i32, i16, %struct.list_head, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__UNIQUE_ID_alias242 = internal constant [43 x i8] c"spi_omap2_mcspi.alias=platform:omap2_mcspi\00", section ".modinfo", align 1
@__initcall__kmod_spi_omap2_mcspi__243_1617_omap2_mcspi_driver_init6 = internal global ptr @omap2_mcspi_driver_init, section ".initcall6.init", align 4
@omap2_mcspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap2_mcspi_probe, ptr @omap2_mcspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_mcspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_mcspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap2_mcspi_driver_exit = internal global ptr @omap2_mcspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file244 = internal constant [49 x i8] c"spi_omap2_mcspi.file=drivers/spi/spi-omap2-mcspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [28 x i8] c"spi_omap2_mcspi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"omap2_mcspi\00", [20 x i8] zeroinitializer }, align 32
@omap_mcspi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-mcspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-mcspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-mcspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_pdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@omap2_mcspi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @omap2_mcspi_suspend, ptr @omap2_mcspi_resume, ptr @omap2_mcspi_suspend, ptr @omap2_mcspi_resume, ptr @omap2_mcspi_suspend, ptr @omap2_mcspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_mcspi_runtime_suspend, ptr @omap_mcspi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi-slave\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,spi-num-cs\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,pindir-d0-out-d1-in\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rx%d\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tx%d\00", [27 x i8] zeroinitializer }, align 32
@omap2_mcspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1514, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no irq resource found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap2_mcspi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/spi/spi-omap2-mcspi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap2_mcspi_probe._entry_ptr = internal global ptr @omap2_mcspi_probe._entry, section ".printk_index", align 4
@omap2_mcspi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1522, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot request IRQ\00", [45 x i8] zeroinitializer }, align 32
@omap2_mcspi_probe._entry_ptr.13 = internal global ptr @omap2_mcspi_probe._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@omap2_mcspi_setup_transfer.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.8, ptr @.str.16, i8 0, i8 -12, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi_omap2_mcspi\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap2_mcspi_setup_transfer\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"setup: speed %d, sample %s edge, clk %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trailing\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"leading\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inverted\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.8, i32 658, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EOW timed out\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap2_mcspi_txrx_dma\00", [43 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_dma._entry_ptr = internal global ptr @omap2_mcspi_txrx_dma._entry, section ".printk_index", align 4
@omap2_mcspi_txrx_dma._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.8, i32 671, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TXFFE timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_dma._entry_ptr.25 = internal global ptr @omap2_mcspi_txrx_dma._entry.23, section ".printk_index", align 4
@omap2_mcspi_txrx_dma._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.8, i32 676, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TXS timed out\0A\00", [17 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_dma._entry_ptr.28 = internal global ptr @omap2_mcspi_txrx_dma._entry.26, section ".printk_index", align 4
@omap2_mcspi_txrx_dma._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.8, i32 681, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EOT timed out\0A\00", [17 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_dma._entry_ptr.31 = internal global ptr @omap2_mcspi_txrx_dma._entry.29, section ".printk_index", align 4
@omap2_mcspi_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.8, i32 499, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sg_split failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap2_mcspi_rx_dma\00", [45 x i8] zeroinitializer }, align 32
@omap2_mcspi_rx_dma._entry_ptr = internal global ptr @omap2_mcspi_rx_dma._entry, section ".printk_index", align 4
@omap2_mcspi_rx_dma._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.8, i32 554, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DMA RX penultimate word empty\0A\00", [33 x i8] zeroinitializer }, align 32
@omap2_mcspi_rx_dma._entry_ptr.36 = internal global ptr @omap2_mcspi_rx_dma._entry.34, section ".printk_index", align 4
@omap2_mcspi_rx_dma._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.8, i32 571, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA RX last word empty\0A\00", [40 x i8] zeroinitializer }, align 32
@omap2_mcspi_rx_dma._entry_ptr.39 = internal global ptr @omap2_mcspi_rx_dma._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@omap2_mcspi_txrx_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.41, ptr @.str.8, i32 726, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap2_mcspi_txrx_pio\00", [43 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr = internal global ptr @omap2_mcspi_txrx_pio._entry, section ".printk_index", align 4
@omap2_mcspi_txrx_pio._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.8, i32 736, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RXS timed out\0A\00", [17 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr.44 = internal global ptr @omap2_mcspi_txrx_pio._entry.42, section ".printk_index", align 4
@omap2_mcspi_txrx_pio._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.8, i32 749, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr.46 = internal global ptr @omap2_mcspi_txrx_pio._entry.45, section ".printk_index", align 4
@omap2_mcspi_txrx_pio._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.41, ptr @.str.8, i32 773, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr.48 = internal global ptr @omap2_mcspi_txrx_pio._entry.47, section ".printk_index", align 4
@omap2_mcspi_txrx_pio._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.8, i32 783, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr.50 = internal global ptr @omap2_mcspi_txrx_pio._entry.49, section ".printk_index", align 4
@omap2_mcspi_txrx_pio._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.8, i32 796, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr.52 = internal global ptr @omap2_mcspi_txrx_pio._entry.51, section ".printk_index", align 4
@omap2_mcspi_txrx_pio._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.41, ptr @.str.8, i32 820, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr.54 = internal global ptr @omap2_mcspi_txrx_pio._entry.53, section ".printk_index", align 4
@omap2_mcspi_txrx_pio._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.8, i32 830, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr.56 = internal global ptr @omap2_mcspi_txrx_pio._entry.55, section ".printk_index", align 4
@omap2_mcspi_txrx_pio._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.8, i32 843, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr.58 = internal global ptr @omap2_mcspi_txrx_pio._entry.57, section ".printk_index", align 4
@omap2_mcspi_txrx_pio._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.41, ptr @.str.8, i32 862, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr.60 = internal global ptr @omap2_mcspi_txrx_pio._entry.59, section ".printk_index", align 4
@omap2_mcspi_txrx_pio._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.41, ptr @.str.8, i32 865, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@omap2_mcspi_txrx_pio._entry_ptr.62 = internal global ptr @omap2_mcspi_txrx_pio._entry.61, section ".printk_index", align 4
@omap2_mcspi_set_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.8, i32 252, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get sync: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap2_mcspi_set_cs\00", [45 x i8] zeroinitializer }, align 32
@omap2_mcspi_set_cs._entry_ptr = internal global ptr @omap2_mcspi_set_cs._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@omap2_pdata = internal global { %struct.omap2_mcspi_platform_config, [16 x i8] } zeroinitializer, align 32
@omap4_pdata = internal global { %struct.omap2_mcspi_platform_config, [16 x i8] } { %struct.omap2_mcspi_platform_config { i16 0, i32 256, i8 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@am654_pdata = internal global { %struct.omap2_mcspi_platform_config, [16 x i8] } { %struct.omap2_mcspi_platform_config { i16 0, i32 256, i8 0, i32 4095 }, [16 x i8] zeroinitializer }, align 32
@omap2_mcspi_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.8, i32 1576, ptr @.str.68, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to set pins: %i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap2_mcspi_suspend\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap2_mcspi_suspend._entry_ptr = internal global ptr @omap2_mcspi_suspend._entry, section ".printk_index", align 4
@omap2_mcspi_suspend._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.67, ptr @.str.8, i32 1581, ptr @.str.68, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: master suspend failed: %i\0A\00", [33 x i8] zeroinitializer }, align 32
@omap2_mcspi_suspend._entry_ptr.71 = internal global ptr @omap2_mcspi_suspend._entry.69, section ".printk_index", align 4
@omap2_mcspi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.8, i32 1595, ptr @.str.68, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: master resume failed: %i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap2_mcspi_resume\00", [45 x i8] zeroinitializer }, align 32
@omap2_mcspi_resume._entry_ptr = internal global ptr @omap2_mcspi_resume._entry, section ".printk_index", align 4
@omap_mcspi_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.74, ptr @.str.8, i32 1343, ptr @.str.68, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_mcspi_runtime_suspend\00", [37 x i8] zeroinitializer }, align 32
@omap_mcspi_runtime_suspend._entry_ptr = internal global ptr @omap_mcspi_runtime_suspend._entry, section ".printk_index", align 4
@omap_mcspi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.75, ptr @.str.8, i32 1363, ptr @.str.68, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_mcspi_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@omap_mcspi_runtime_resume._entry_ptr = internal global ptr @omap_mcspi_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"omap2_mcspi_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1607, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1609, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"omap_mcspi_of_match\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1403, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"omap2_mcspi_pm_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1600, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1431, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1464, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1466, i32 29 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1501, i32 50 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1502, i32 50 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1514, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1522, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 974, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 658, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 671, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 676, i32 6 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 681, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 499, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 554, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 571, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 1169, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 726, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 736, i32 6 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 748, i32 7 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 773, i32 6 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 783, i32 6 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 795, i32 7 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 820, i32 6 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 830, i32 6 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 842, i32 7 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 862, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 865, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 252, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 87, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [12 x i8] c"omap2_pdata\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1390, i32 43 }
@___asan_gen_.256 = private unnamed_addr constant [12 x i8] c"omap4_pdata\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1394, i32 43 }
@___asan_gen_.259 = private unnamed_addr constant [12 x i8] c"am654_pdata\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1398, i32 43 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1575, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1580, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1594, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1343, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [33 x i8] c"../drivers/spi/spi-omap2-mcspi.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1363, i32 3 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_omap2_mcspi_driver_exit, ptr @__initcall__kmod_spi_omap2_mcspi__243_1617_omap2_mcspi_driver_init6, ptr @omap2_mcspi_driver_exit, ptr @omap2_mcspi_probe._entry, ptr @omap2_mcspi_probe._entry.11, ptr @omap2_mcspi_probe._entry_ptr, ptr @omap2_mcspi_probe._entry_ptr.13, ptr @omap2_mcspi_resume._entry, ptr @omap2_mcspi_resume._entry_ptr, ptr @omap2_mcspi_rx_dma._entry, ptr @omap2_mcspi_rx_dma._entry.34, ptr @omap2_mcspi_rx_dma._entry.37, ptr @omap2_mcspi_rx_dma._entry_ptr, ptr @omap2_mcspi_rx_dma._entry_ptr.36, ptr @omap2_mcspi_rx_dma._entry_ptr.39, ptr @omap2_mcspi_set_cs._entry, ptr @omap2_mcspi_set_cs._entry_ptr, ptr @omap2_mcspi_suspend._entry, ptr @omap2_mcspi_suspend._entry.69, ptr @omap2_mcspi_suspend._entry_ptr, ptr @omap2_mcspi_suspend._entry_ptr.71, ptr @omap2_mcspi_txrx_dma._entry, ptr @omap2_mcspi_txrx_dma._entry.23, ptr @omap2_mcspi_txrx_dma._entry.26, ptr @omap2_mcspi_txrx_dma._entry.29, ptr @omap2_mcspi_txrx_dma._entry_ptr, ptr @omap2_mcspi_txrx_dma._entry_ptr.25, ptr @omap2_mcspi_txrx_dma._entry_ptr.28, ptr @omap2_mcspi_txrx_dma._entry_ptr.31, ptr @omap2_mcspi_txrx_pio._entry, ptr @omap2_mcspi_txrx_pio._entry.42, ptr @omap2_mcspi_txrx_pio._entry.45, ptr @omap2_mcspi_txrx_pio._entry.47, ptr @omap2_mcspi_txrx_pio._entry.49, ptr @omap2_mcspi_txrx_pio._entry.51, ptr @omap2_mcspi_txrx_pio._entry.53, ptr @omap2_mcspi_txrx_pio._entry.55, ptr @omap2_mcspi_txrx_pio._entry.57, ptr @omap2_mcspi_txrx_pio._entry.59, ptr @omap2_mcspi_txrx_pio._entry.61, ptr @omap2_mcspi_txrx_pio._entry_ptr, ptr @omap2_mcspi_txrx_pio._entry_ptr.44, ptr @omap2_mcspi_txrx_pio._entry_ptr.46, ptr @omap2_mcspi_txrx_pio._entry_ptr.48, ptr @omap2_mcspi_txrx_pio._entry_ptr.50, ptr @omap2_mcspi_txrx_pio._entry_ptr.52, ptr @omap2_mcspi_txrx_pio._entry_ptr.54, ptr @omap2_mcspi_txrx_pio._entry_ptr.56, ptr @omap2_mcspi_txrx_pio._entry_ptr.58, ptr @omap2_mcspi_txrx_pio._entry_ptr.60, ptr @omap2_mcspi_txrx_pio._entry_ptr.62, ptr @omap_mcspi_runtime_resume._entry, ptr @omap_mcspi_runtime_resume._entry_ptr, ptr @omap_mcspi_runtime_suspend._entry, ptr @omap_mcspi_runtime_suspend._entry_ptr, ptr @omap2_mcspi_driver, ptr @.str, ptr @omap_mcspi_of_match, ptr @omap2_mcspi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.63, ptr @.str.64, ptr @init_completion.__key, ptr @.str.65, ptr @omap2_pdata, ptr @omap4_pdata, ptr @am654_pdata, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcspi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_dma._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_dma._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_dma._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_rx_dma._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_rx_dma._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_txrx_pio._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_set_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_suspend._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_mcspi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcspi_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcspi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap2_mcspi_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap2_mcspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap2_mcspi_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #11
  %tobool.i.not = icmp ne ptr %call.i, null
  %call.i211 = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 104, i1 noundef zeroext %tobool.i.not) #11
  %tobool.not = icmp eq ptr %call.i211, null
  br i1 %tobool.not, label %entry.cleanup112_crit_edge, label %if.end6

entry.cleanup112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

if.end6:                                          ; preds = %entry
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 5
  %2 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 7
  %3 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -8, ptr %bits_per_word_mask, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 20
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @omap2_mcspi_setup, ptr %setup, align 4
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 36
  %5 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %auto_runtime_pm, align 4
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 47
  %6 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @omap2_mcspi_prepare_message, ptr %prepare_message, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 24
  %7 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @omap2_mcspi_can_dma, ptr %can_dma, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 51
  %8 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @omap2_mcspi_transfer_one, ptr %transfer_one, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 50
  %9 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @omap2_mcspi_set_cs, ptr %set_cs, align 8
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 23
  %10 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @omap2_mcspi_cleanup, ptr %cleanup, align 8
  %slave_abort = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 49
  %11 = ptrtoint ptr %slave_abort to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @omap2_mcspi_slave_abort, ptr %slave_abort, align 4
  %of_node8 = getelementptr inbounds %struct.device, ptr %call.i211, i32 0, i32 27
  %12 = ptrtoint ptr %of_node8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %of_node8, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 9
  %13 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 48000000, ptr %max_speed_hz, align 8
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 8
  %14 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1464, ptr %min_speed_hz, align 4
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 56
  %15 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i211, ptr %driver_data.i.i, align 4
  %driver_data.i.i212 = getelementptr inbounds %struct.device, ptr %call.i211, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i212 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i212, align 4
  %master10 = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %master10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i211, ptr %master10, align 4
  %call12 = tail call ptr @of_match_device(ptr noundef nonnull @omap_mcspi_of_match, ptr noundef %dev) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else20, label %if.then14

if.then14:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #11
  %20 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %num_cs, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call12, i32 0, i32 3
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #11
  %23 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_cs, align 4
  %conv = trunc i32 %24 to i16
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 3
  %25 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %num_chipselect, align 2
  %call16 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #11
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then14.if.end19_crit_edge, label %if.then18

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %pin_dir = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 9
  %26 = ptrtoint ptr %pin_dir to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %pin_dir, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pin_dir, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then14.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #11
  br label %if.end31

if.else20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %27 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_data.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 4
  %num_chipselect24 = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 3
  %31 = ptrtoint ptr %num_chipselect24 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %num_chipselect24, align 2
  %pin_dir25 = getelementptr inbounds %struct.omap2_mcspi_platform_config, ptr %28, i32 0, i32 2
  %32 = ptrtoint ptr %pin_dir25 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load26 = load i8, ptr %pin_dir25, align 4
  %bf.lshr = and i8 %bf.load26, -128
  %pin_dir27 = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 9
  %33 = ptrtoint ptr %pin_dir27 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load28 = load i8, ptr %pin_dir27, align 1
  %bf.clear29 = and i8 %bf.load28, 127
  %bf.set30 = or i8 %bf.clear29, %bf.lshr
  store i8 %bf.set30, ptr %pin_dir27, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else20, %if.end19
  %pdata.0 = phi ptr [ %22, %if.end19 ], [ %28, %if.else20 ]
  %regs_offset32 = getelementptr inbounds %struct.omap2_mcspi_platform_config, ptr %pdata.0, i32 0, i32 1
  %34 = ptrtoint ptr %regs_offset32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %regs_offset32, align 4
  %max_xfer_len = getelementptr inbounds %struct.omap2_mcspi_platform_config, ptr %pdata.0, i32 0, i32 3
  %36 = ptrtoint ptr %max_xfer_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_xfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool33.not = icmp eq i32 %37, 0
  br i1 %tobool33.not, label %if.end31.if.end37_crit_edge, label %if.then34

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %max_xfer_len36 = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 10
  %38 = ptrtoint ptr %max_xfer_len36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_xfer_len36, align 4
  %max_transfer_size = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 13
  %39 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @omap2_mcspi_max_xfer_size, ptr %max_transfer_size, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31.if.end37_crit_edge
  %call38 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call40 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call38) #11
  %base = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 2
  %40 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call40, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %call40 to i32
  br label %free_master

if.end46:                                         ; preds = %if.end37
  %42 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call38, align 4
  %add = add i32 %43, %35
  %phys = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 3
  %44 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add, ptr %phys, align 4
  %add.ptr = getelementptr i8, ptr %call40, i32 %35
  %45 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr, ptr %base, align 4
  %dev49 = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 5
  %46 = ptrtoint ptr %dev49 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev, ptr %dev49, align 4
  %cs = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 6, i32 2
  %47 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %cs, ptr %cs, align 4
  %prev.i = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 6, i32 2, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cs, ptr %prev.i, align 4
  %num_chipselect51 = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 3
  %49 = ptrtoint ptr %num_chipselect51 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %num_chipselect51, align 2
  %conv52 = zext i16 %50 to i32
  %51 = mul nuw nsw i32 %conv52, 148
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %51, i32 noundef 3520) #11
  %dma_channels = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 4
  %52 = ptrtoint ptr %dma_channels to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5.i.i, ptr %dma_channels, align 4
  %cmp = icmp eq ptr %call5.i.i, null
  br i1 %cmp, label %if.end46.free_master_crit_edge, label %for.cond.preheader

if.end46.free_master_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_master

for.cond.preheader:                               ; preds = %if.end46
  %53 = ptrtoint ptr %num_chipselect51 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_chipselect51, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp60234.not = icmp eq i16 %54, 0
  br i1 %cmp60234.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %omap2_mcspi_request_dma.exit
  %inc = add nuw nsw i32 %i.0235, 1
  %55 = ptrtoint ptr %num_chipselect51 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %num_chipselect51, align 2
  %conv59 = zext i16 %56 to i32
  %cmp60 = icmp ult i32 %inc, %conv59
  br i1 %cmp60, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0235 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %57 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma_channels, align 4
  %dma_rx_ch_name = getelementptr %struct.omap2_mcspi_dma, ptr %58, i32 %i.0235, i32 4
  %call63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %dma_rx_ch_name, ptr noundef nonnull @.str.4, i32 noundef %i.0235)
  %59 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_channels, align 4
  %dma_tx_ch_name = getelementptr %struct.omap2_mcspi_dma, ptr %60, i32 %i.0235, i32 5
  %call67 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %dma_tx_ch_name, ptr noundef nonnull @.str.5, i32 noundef %i.0235)
  %61 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_channels, align 4
  %arrayidx69 = getelementptr %struct.omap2_mcspi_dma, ptr %62, i32 %i.0235
  %63 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev49, align 4
  %dma_rx_ch_name.i = getelementptr %struct.omap2_mcspi_dma, ptr %62, i32 %i.0235, i32 4
  %call.i213 = call ptr @dma_request_chan(ptr noundef %64, ptr noundef %dma_rx_ch_name.i) #11
  %dma_rx.i = getelementptr %struct.omap2_mcspi_dma, ptr %62, i32 %i.0235, i32 1
  %65 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i213, ptr %dma_rx.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i213, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %call.i213 to i32
  %67 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %dma_rx.i, align 4
  br label %omap2_mcspi_request_dma.exit

if.end.i:                                         ; preds = %for.body
  %68 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev49, align 4
  %dma_tx_ch_name.i = getelementptr %struct.omap2_mcspi_dma, ptr %62, i32 %i.0235, i32 5
  %call8.i = call ptr @dma_request_chan(ptr noundef %69, ptr noundef %dma_tx_ch_name.i) #11
  %70 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call8.i, ptr %arrayidx69, align 4
  %cmp.i32.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32.i, label %if.then11.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %call8.i to i32
  %72 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx69, align 4
  %73 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dma_rx.i, align 4
  call void @dma_release_channel(ptr noundef %74) #11
  %75 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %dma_rx.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i, %if.end.i.if.end17.i_crit_edge
  %ret.0.i = phi i32 [ %71, %if.then11.i ], [ 0, %if.end.i.if.end17.i_crit_edge ]
  %dma_rx_completion.i = getelementptr %struct.omap2_mcspi_dma, ptr %62, i32 %i.0235, i32 3
  %76 = ptrtoint ptr %dma_rx_completion.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %dma_rx_completion.i, align 4
  %wait.i.i = getelementptr %struct.omap2_mcspi_dma, ptr %62, i32 %i.0235, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @init_completion.__key) #11
  %dma_tx_completion.i = getelementptr %struct.omap2_mcspi_dma, ptr %62, i32 %i.0235, i32 2
  %77 = ptrtoint ptr %dma_tx_completion.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %dma_tx_completion.i, align 4
  %wait.i33.i = getelementptr %struct.omap2_mcspi_dma, ptr %62, i32 %i.0235, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i33.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @init_completion.__key) #11
  br label %omap2_mcspi_request_dma.exit

omap2_mcspi_request_dma.exit:                     ; preds = %if.end17.i, %if.then.i
  %ret.1.i = phi i32 [ %66, %if.then.i ], [ %ret.0.i, %if.end17.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %ret.1.i)
  %cmp71 = icmp eq i32 %ret.1.i, -517
  br i1 %cmp71, label %omap2_mcspi_request_dma.exit.free_master_crit_edge, label %for.cond

omap2_mcspi_request_dma.exit.free_master_crit_edge: ; preds = %omap2_mcspi_request_dma.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_master

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call75 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call75)
  %cmp76 = icmp eq i32 %call75, -517
  br i1 %cmp76, label %for.end.free_master_crit_edge, label %if.end79

for.end.free_master_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_master

if.end79:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp80 = icmp slt i32 %call75, 0
  br i1 %cmp80, label %do.end, label %if.end84

do.end:                                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #14
  br label %free_master

if.end84:                                         ; preds = %if.end79
  %78 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %18, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %18, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @init_completion.__key) #11
  %79 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev, align 8
  %call.i214 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call75, ptr noundef nonnull @omap2_mcspi_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %80, ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool87.not = icmp eq i32 %call.i214, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  br label %free_master

if.end93:                                         ; preds = %if.end84
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #11
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #11
  call void @pm_runtime_enable(ptr noundef %dev) #11
  %81 = ptrtoint ptr %master10 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %master10, align 4
  %83 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev49, align 4
  %call.i.i216 = call i32 @__pm_runtime_resume(ptr noundef %84, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i216)
  %cmp.i217 = icmp slt i32 %call.i.i216, 0
  br i1 %cmp.i217, label %if.then.i218, label %if.end101

if.then.i218:                                     ; preds = %if.end93
  %85 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev49, align 4
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %86, i32 0, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %87 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !161
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i218.disable_pm_crit_edge, label %do.end11.i.i.i.i.i

if.then.i218.disable_pm_crit_edge:                ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_pm

do.end11.i.i.i.i.i:                               ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !162
  br label %disable_pm

if.end101:                                        ; preds = %if.end93
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 8
  %88 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.omap2_mcspi, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %91, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #11, !srcloc !163
  %wakeupenable.i = getelementptr inbounds %struct.omap2_mcspi, ptr %18, i32 0, i32 6, i32 1
  %92 = ptrtoint ptr %wakeupenable.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %wakeupenable.i, align 4
  %93 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.omap2_mcspi, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %96, i32 40
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !164
  %98 = call i32 @llvm.bswap.i32(i32 %97) #11
  %slave.i.i.i = getelementptr inbounds %struct.spi_controller, ptr %82, i32 0, i32 12
  %99 = ptrtoint ptr %slave.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %slave.i.i.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.i.not.i.i = icmp eq i8 %100, 0
  %and.i.i = and i32 %98, -13
  %or.i.i = or i32 %and.i.i, 4
  %and4.i.i = and i32 %98, -14
  %or5.i.i = or i32 %and4.i.i, 1
  %l.0.i.i = select i1 %tobool.i.not.i.i, i32 %or5.i.i, i32 %or.i.i
  %ctx1.i.i = getelementptr inbounds %struct.omap2_mcspi, ptr %94, i32 0, i32 6
  %101 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %103 = call i32 @llvm.bswap.i32(i32 %l.0.i.i) #11
  %base.i15.i.i = getelementptr inbounds %struct.omap2_mcspi, ptr %102, i32 0, i32 2
  %104 = ptrtoint ptr %base.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i15.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %105, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %103) #11, !srcloc !163
  %106 = ptrtoint ptr %ctx1.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %l.0.i.i, ptr %ctx1.i.i, align 4
  %107 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev49, align 4
  %call.i17.i = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 12, i32 22
  %109 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store volatile i64 %call.i17.i, ptr %last_busy.i.i, align 8
  %110 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev49, align 4
  %call.i18.i = call i32 @__pm_runtime_suspend(ptr noundef %111, i32 noundef 13) #11
  %call103 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i211) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end101.disable_pm_crit_edge, label %if.end101.cleanup112_crit_edge

if.end101.cleanup112_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112

if.end101.disable_pm_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_pm

disable_pm:                                       ; preds = %if.end101.disable_pm_crit_edge, %do.end11.i.i.i.i.i, %if.then.i218.disable_pm_crit_edge
  %status.0 = phi i32 [ %call103, %if.end101.disable_pm_crit_edge ], [ %call.i.i216, %if.then.i218.disable_pm_crit_edge ], [ %call.i.i216, %do.end11.i.i.i.i.i ]
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #11
  %call.i220 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #11
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %free_master

free_master:                                      ; preds = %disable_pm, %do.end91, %do.end, %for.end.free_master_crit_edge, %omap2_mcspi_request_dma.exit.free_master_crit_edge, %if.end46.free_master_crit_edge, %if.then43
  %status.1 = phi i32 [ %41, %if.then43 ], [ -517, %for.end.free_master_crit_edge ], [ %call75, %do.end ], [ %call.i214, %do.end91 ], [ %status.0, %disable_pm ], [ -12, %if.end46.free_master_crit_edge ], [ -517, %omap2_mcspi_request_dma.exit.free_master_crit_edge ]
  %num_chipselect.i = getelementptr inbounds %struct.spi_controller, ptr %call.i211, i32 0, i32 3
  %112 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %num_chipselect.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp19.not.i = icmp eq i16 %113, 0
  br i1 %cmp19.not.i, label %free_master.spi_controller_put.exit_crit_edge, label %for.body.lr.ph.i

free_master.spi_controller_put.exit_crit_edge:    ; preds = %free_master
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_controller_put.exit

for.body.lr.ph.i:                                 ; preds = %free_master
  %114 = ptrtoint ptr %driver_data.i.i212 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %driver_data.i.i212, align 4
  %dma_channels.i = getelementptr inbounds %struct.omap2_mcspi, ptr %115, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %116 = ptrtoint ptr %dma_channels.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dma_channels.i, align 4
  %arrayidx.i = getelementptr %struct.omap2_mcspi_dma, ptr %117, i32 %i.020.i
  %dma_rx.i221 = getelementptr %struct.omap2_mcspi_dma, ptr %117, i32 %i.020.i, i32 1
  %118 = ptrtoint ptr %dma_rx.i221 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dma_rx.i221, align 4
  %tobool.not.i = icmp eq ptr %119, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i223_crit_edge, label %if.then.i222

for.body.i.if.end.i223_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i223

if.then.i222:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dma_release_channel(ptr noundef nonnull %119) #11
  %120 = ptrtoint ptr %dma_rx.i221 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %dma_rx.i221, align 4
  br label %if.end.i223

if.end.i223:                                      ; preds = %if.then.i222, %for.body.i.if.end.i223_crit_edge
  %121 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %122, null
  br i1 %tobool4.not.i, label %if.end.i223.for.inc.i_crit_edge, label %if.then5.i

if.end.i223.for.inc.i_crit_edge:                  ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #13
  call void @dma_release_channel(ptr noundef nonnull %122) #11
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.end.i223.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %124 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %num_chipselect.i, align 2
  %conv.i = zext i16 %125 to i32
  %cmp.i224 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i224, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.spi_controller_put.exit_crit_edge

for.inc.i.spi_controller_put.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_controller_put.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

spi_controller_put.exit:                          ; preds = %for.inc.i.spi_controller_put.exit_crit_edge, %free_master.spi_controller_put.exit_crit_edge
  call void @put_device(ptr noundef nonnull %call.i211) #11
  br label %cleanup112

cleanup112:                                       ; preds = %spi_controller_put.exit, %if.end101.cleanup112_crit_edge, %entry.cleanup112_crit_edge
  %retval.0 = phi i32 [ %status.1, %spi_controller_put.exit ], [ -12, %entry.cleanup112_crit_edge ], [ %call103, %if.end101.cleanup112_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i8, align 4
  %num_chipselect.i = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_chipselect.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp19.not.i = icmp eq i16 %5, 0
  br i1 %cmp19.not.i, label %entry.omap2_mcspi_release_dma.exit_crit_edge, label %for.body.lr.ph.i

entry.omap2_mcspi_release_dma.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_mcspi_release_dma.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %dma_channels.i = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %dma_channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_channels.i, align 4
  %arrayidx.i = getelementptr %struct.omap2_mcspi_dma, ptr %7, i32 %i.020.i
  %dma_rx.i = getelementptr %struct.omap2_mcspi_dma, ptr %7, i32 %i.020.i, i32 1
  %8 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_rx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_release_channel(ptr noundef nonnull %9) #11
  %10 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dma_rx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then5.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_release_channel(ptr noundef nonnull %12) #11
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %14 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_chipselect.i, align 2
  %conv.i = zext i16 %15 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.omap2_mcspi_release_dma.exit_crit_edge

for.inc.i.omap2_mcspi_release_dma.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_mcspi_release_dma.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

omap2_mcspi_release_dma.exit:                     ; preds = %for.inc.i.omap2_mcspi_release_dma.exit_crit_edge, %entry.omap2_mcspi_release_dma.exit_crit_edge
  %dev = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %17, i1 noundef zeroext false) #11
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 4) #11
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev4, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %4 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_state, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 32) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %base = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %9 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %10 to i32
  %mul = mul nuw nsw i32 %conv, 20
  %add.ptr = getelementptr i8, ptr %8, i32 %mul
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %call7.i.i, align 8
  %phys = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys, align 4
  %add = add i32 %13, %mul
  %phys9 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %phys9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %phys9, align 4
  %mode = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %mode, align 4
  %chconf0 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %chconf0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %chconf0, align 8
  %chctrl0 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %chctrl0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %chctrl0, align 4
  %18 = ptrtoint ptr %controller_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %controller_state, align 8
  %node = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %call7.i.i, i32 0, i32 4
  %cs11 = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 6, i32 2
  %prev.i = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 6, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %20, ptr noundef %cs11) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node, ptr %prev.i, align 4
  %22 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cs11, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %call7.i.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node, ptr %20, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end.i.i, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %dev = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %26, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end12
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !161
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then15.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then15.pm_runtime_put_noidle.exit_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !162
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then15.pm_runtime_put_noidle.exit_crit_edge
  br i1 %tobool.not, label %if.then18, label %pm_runtime_put_noidle.exit.cleanup_crit_edge

pm_runtime_put_noidle.exit.cleanup_crit_edge:     ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %pm_runtime_put_noidle.exit
  %30 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %controller_state, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then18.cleanup_crit_edge, label %if.then.i

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then18
  %node.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %31, i32 0, i32 4
  %call.i.i.i59 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #11
  br i1 %call.i.i.i59, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %31, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %38 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %31, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %31) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @omap2_mcspi_setup_transfer(ptr noundef %spi, ptr noundef null)
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %call.i60 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 12, i32 22
  %42 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store volatile i64 %call.i60, ptr %last_busy.i, align 8
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %call.i61 = tail call i32 @__pm_runtime_suspend(ptr noundef %44, i32 noundef 13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %list_del.exit.i, %if.then18.cleanup_crit_edge, %pm_runtime_put_noidle.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -12, %if.then.cleanup_crit_edge ], [ %call.i, %pm_runtime_put_noidle.exit.cleanup_crit_edge ], [ %call.i, %if.then18.cleanup_crit_edge ], [ %call.i, %list_del.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cs2 = getelementptr inbounds %struct.omap2_mcspi, ptr %1, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %cs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn28 = load ptr, ptr %cs2, align 4
  %cmp.not30 = icmp eq ptr %.pn28, %cs2
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %spi = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn31 = phi ptr [ %.pn28, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %cs.032 = getelementptr i8, ptr %.pn31, i32 -16
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %controller_state, align 8
  %cmp4 = icmp eq ptr %6, %cs.032
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %chconf0 = getelementptr i8, ptr %.pn31, i32 8
  %7 = ptrtoint ptr %chconf0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chconf0, align 4
  %and = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and7 = and i32 %8, -1048577
  %9 = ptrtoint ptr %chconf0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and7, ptr %chconf0, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %and7)
  %11 = ptrtoint ptr %cs.032 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cs.032, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #11, !srcloc !163
  %13 = ptrtoint ptr %cs.032 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cs.032, align 4
  %add.ptr11 = getelementptr i8, ptr %14, i32 44
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #11, !srcloc !164
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp.not = icmp eq ptr %.pn, %cs2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @omap2_mcspi_can_dma(ptr nocapture noundef %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %xfer) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_channels = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_channels, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.omap2_mcspi_dma, ptr %5, i32 %idxprom
  %dma_rx = getelementptr %struct.omap2_mcspi_dma, ptr %5, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_rx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %slave.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 12
  %12 = ptrtoint ptr %slave.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %slave.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.not = icmp eq i8 %13, 0
  br i1 %tobool.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dma_rx7 = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 61
  %14 = ptrtoint ptr %dma_rx7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %dma_rx7, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %dma_tx9 = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 60
  %17 = ptrtoint ptr %dma_tx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dma_tx9, align 8
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %19)
  %cmp = icmp ugt i32 %19, 159
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end5 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_transfer_one(ptr noundef %master, ptr noundef %spi, ptr noundef %t) #2 align 64 {
entry:
  %cfg.i202.i = alloca %struct.dma_slave_config, align 4
  %sg_out.i.i = alloca [2 x ptr], align 4
  %out_mapped_nents.i.i = alloca [2 x i32], align 4
  %sizes.i.i = alloca [2 x i32], align 4
  %cfg.i.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma_channels = getelementptr inbounds %struct.omap2_mcspi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_channels, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr %struct.omap2_mcspi_dma, ptr %3, i32 %conv
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %6 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller_state, align 8
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %8 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller_data, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 8
  %mode1 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode1, align 4
  %conv2 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv2)
  %cmp.not = icmp eq i32 %11, %conv2
  %chctrl0.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %chctrl0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chctrl0.i, align 4
  %and.i = and i32 %15, -2
  store i32 %and.i, ptr %chctrl0.i, align 4
  %16 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller_state, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #11
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %17, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #11, !srcloc !163
  %21 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %controller_state, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %24, i32 52
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #11, !srcloc !164
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %26 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then4

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode, align 8
  %and = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6 = icmp ne i32 %and, 0
  tail call void @omap2_mcspi_set_cs(ptr noundef %spi, i1 noundef zeroext %tobool6)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %entry.if.end7_crit_edge
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.if.then17_crit_edge

if.end7.if.then17_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end7
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %30 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed_hz, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %32 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp9.not = icmp eq i32 %31, %33
  br i1 %cmp9.not, label %lor.lhs.false11, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %34 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bits_per_word, align 1
  %bits_per_word13 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %36 = ptrtoint ptr %bits_per_word13 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bits_per_word13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp15.not = icmp eq i8 %35, %37
  br i1 %cmp15.not, label %lor.lhs.false11.if.end35_crit_edge, label %lor.lhs.false11.if.then17_crit_edge

lor.lhs.false11.if.then17_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false11.if.end35_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then17:                                        ; preds = %lor.lhs.false11.if.then17_crit_edge, %lor.lhs.false.if.then17_crit_edge, %if.end7.if.then17_crit_edge
  tail call fastcc void @omap2_mcspi_setup_transfer(ptr noundef %spi, ptr noundef %t)
  %speed_hz23 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %38 = ptrtoint ptr %speed_hz23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed_hz23, align 4
  %max_speed_hz24 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %40 = ptrtoint ptr %max_speed_hz24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_speed_hz24, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp25 = icmp eq i32 %39, %41
  br i1 %cmp25, label %land.lhs.true, label %if.then17.if.end35_crit_edge

if.then17.if.end35_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %bits_per_word27 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %42 = ptrtoint ptr %bits_per_word27 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bits_per_word27, align 1
  %bits_per_word29 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %44 = ptrtoint ptr %bits_per_word29 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bits_per_word29, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp31 = icmp eq i8 %43, %45
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %if.then17.if.end35_crit_edge, %lor.lhs.false11.if.end35_crit_edge
  %tobool122.not = phi i1 [ false, %if.then17.if.end35_crit_edge ], [ true, %lor.lhs.false11.if.end35_crit_edge ], [ %cmp31, %land.lhs.true ]
  %tobool36.not = icmp eq ptr %9, null
  br i1 %tobool36.not, label %if.end35.if.end44_crit_edge, label %land.lhs.true37

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

land.lhs.true37:                                  ; preds = %if.end35
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %9, align 4
  %47 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool38.not = icmp eq i8 %47, 0
  br i1 %tobool38.not, label %land.lhs.true37.if.end44_crit_edge, label %if.then39

land.lhs.true37.if.end44_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  %ctx = getelementptr inbounds %struct.omap2_mcspi, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ctx, align 4
  %and40 = and i32 %49, -2
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %and40) #11
  %base.i = getelementptr inbounds %struct.omap2_mcspi, ptr %51, i32 0, i32 2
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %52) #11, !srcloc !163
  %55 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %controller_state, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %add.ptr.i250 = getelementptr i8, ptr %58, i32 40
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i250) #11, !srcloc !164
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #11
  %61 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %ctx, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %land.lhs.true37.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  %62 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %controller_state, align 8
  %chconf0.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %chconf0.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chconf0.i, align 4
  %and47 = and i32 %65, -536577
  %66 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %t, align 4
  %cmp48 = icmp eq ptr %67, null
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %and47, 4096
  br label %if.end56

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %68 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_buf, align 4
  %cmp51 = icmp eq ptr %69, null
  %or54 = or i32 %and47, 8192
  %spec.select246 = select i1 %cmp51, i32 %or54, i32 %and47
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then50
  %chconf.0 = phi i32 [ %or, %if.then50 ], [ %spec.select246, %if.else ]
  br i1 %tobool36.not, label %if.end56.if.end73_crit_edge, label %land.lhs.true58

if.end56.if.end73_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

land.lhs.true58:                                  ; preds = %if.end56
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load59 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load59)
  %tobool62.not = icmp sgt i8 %bf.load59, -1
  %cmp48.not = xor i1 %cmp48, true
  %brmerge = select i1 %tobool62.not, i1 true, i1 %cmp48.not
  br i1 %brmerge, label %land.lhs.true58.if.end73_crit_edge, label %if.then67

land.lhs.true58.if.end73_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then67:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %71 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len, align 4
  %word_len = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %7, i32 0, i32 2
  %73 = ptrtoint ptr %word_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %word_len, align 4
  %add = add i32 %74, 7
  %shr = ashr i32 %add, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %shr)
  %cmp68 = icmp ugt i32 %72, %shr
  %or71 = or i32 %chconf.0, 524288
  %spec.select247 = select i1 %cmp68, i32 %or71, i32 %chconf.0
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %land.lhs.true58.if.end73_crit_edge, %if.end56.if.end73_crit_edge
  %chconf.1 = phi i32 [ %chconf.0, %land.lhs.true58.if.end73_crit_edge ], [ %chconf.0, %if.end56.if.end73_crit_edge ], [ %spec.select247, %if.then67 ]
  %75 = ptrtoint ptr %chconf0.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %chconf.1, ptr %chconf0.i, align 4
  %76 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %controller_state, align 8
  %78 = tail call i32 @llvm.bswap.i32(i32 %chconf.1) #11
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %77, align 4
  %add.ptr.i.i254 = getelementptr i8, ptr %80, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i254, i32 %78) #11, !srcloc !163
  %81 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %controller_state, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %84, i32 44
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #11, !srcloc !164
  %len74 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %86 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool75.not = icmp eq i32 %87, 0
  br i1 %tobool75.not, label %if.end73.if.end117_crit_edge, label %if.then76

if.end73.if.end117_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then76:                                        ; preds = %if.end73
  %dma_rx = getelementptr %struct.omap2_mcspi_dma, ptr %3, i32 %conv, i32 1
  %88 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dma_rx, align 4
  %tobool77.not = icmp eq ptr %89, null
  br i1 %tobool77.not, label %if.then76.if.end87_crit_edge, label %land.lhs.true78

if.then76.if.end87_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

land.lhs.true78:                                  ; preds = %if.then76
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr, align 4
  %tobool79.not = icmp eq ptr %91, null
  br i1 %tobool79.not, label %land.lhs.true78.if.end87_crit_edge, label %land.lhs.true80

land.lhs.true78.if.end87_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

land.lhs.true80:                                  ; preds = %land.lhs.true78
  %cur_msg_mapped = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 38
  %92 = ptrtoint ptr %cur_msg_mapped to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %cur_msg_mapped, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool81.not = icmp eq i8 %93, 0
  br i1 %tobool81.not, label %land.lhs.true80.if.end87_crit_edge, label %land.lhs.true83

land.lhs.true80.if.end87_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

land.lhs.true83:                                  ; preds = %land.lhs.true80
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 24
  %94 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %can_dma, align 4
  %call84 = tail call zeroext i1 %95(ptr noundef %master, ptr noundef %spi, ptr noundef %t) #11
  br i1 %call84, label %if.then86, label %land.lhs.true83.if.end87_crit_edge

land.lhs.true83.if.end87_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then86:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @omap2_mcspi_set_fifo(ptr noundef %spi, ptr noundef %t, i32 noundef 1)
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %land.lhs.true83.if.end87_crit_edge, %land.lhs.true80.if.end87_crit_edge, %land.lhs.true78.if.end87_crit_edge, %if.then76.if.end87_crit_edge
  %96 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %controller_state, align 8
  %chctrl0.i256 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %chctrl0.i256 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %chctrl0.i256, align 4
  %l.0.i = or i32 %99, 1
  store i32 %l.0.i, ptr %chctrl0.i256, align 4
  %100 = load ptr, ptr %controller_state, align 8
  %101 = tail call i32 @llvm.bswap.i32(i32 %l.0.i) #11
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %100, align 4
  %add.ptr.i.i258 = getelementptr i8, ptr %103, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i258, i32 %101) #11, !srcloc !163
  %104 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %controller_state, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %add.ptr.i10.i259 = getelementptr i8, ptr %107, i32 52
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i259) #11, !srcloc !164
  %109 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %t, align 4
  %cmp89 = icmp eq ptr %110, null
  br i1 %cmp89, label %if.then91, label %if.end87.if.end93_crit_edge

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %7, align 4
  %add.ptr92 = getelementptr i8, ptr %112, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 0) #11, !srcloc !163
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end87.if.end93_crit_edge
  %113 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dma_rx, align 4
  %tobool95.not = icmp eq ptr %114, null
  br i1 %tobool95.not, label %if.end93.if.else109_crit_edge, label %land.lhs.true96

if.end93.if.else109_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else109

land.lhs.true96:                                  ; preds = %if.end93
  %115 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr, align 4
  %tobool98.not = icmp eq ptr %116, null
  br i1 %tobool98.not, label %land.lhs.true96.if.else109_crit_edge, label %land.lhs.true99

land.lhs.true96.if.else109_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else109

land.lhs.true99:                                  ; preds = %land.lhs.true96
  %cur_msg_mapped100 = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 38
  %117 = ptrtoint ptr %cur_msg_mapped100 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %cur_msg_mapped100, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool101.not = icmp eq i8 %118, 0
  br i1 %tobool101.not, label %land.lhs.true99.if.else109_crit_edge, label %land.lhs.true103

land.lhs.true99.if.else109_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else109

land.lhs.true103:                                 ; preds = %land.lhs.true99
  %can_dma104 = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 24
  %119 = ptrtoint ptr %can_dma104 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %can_dma104, align 4
  %call105 = tail call zeroext i1 %120(ptr noundef %master, ptr noundef %spi, ptr noundef %t) #11
  br i1 %call105, label %if.then107, label %land.lhs.true103.if.else109_crit_edge

land.lhs.true103.if.else109_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else109

if.then107:                                       ; preds = %land.lhs.true103
  %121 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %controller_state, align 8
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %123 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i261 = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %driver_data.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %driver_data.i.i.i261, align 4
  %dma_channels.i = getelementptr inbounds %struct.omap2_mcspi, ptr %126, i32 0, i32 4
  %127 = ptrtoint ptr %dma_channels.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dma_channels.i, align 4
  %129 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %chip_select, align 4
  %idxprom.i = zext i8 %130 to i32
  %arrayidx.i = getelementptr %struct.omap2_mcspi_dma, ptr %128, i32 %idxprom.i
  %word_len.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %122, i32 0, i32 2
  %131 = ptrtoint ptr %word_len.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %word_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %132)
  %cmp.i = icmp slt i32 %132, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %132)
  %cmp2.i = icmp slt i32 %132, 17
  %..i = select i1 %cmp2.i, i32 2, i32 4
  %es.0.i = select i1 %cmp.i, i32 1, i32 %..i
  %133 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len74, align 4
  %phys.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %122, i32 0, i32 1
  %135 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %phys.i, align 4
  %add.i = add i32 %136, 60
  %add7.i = add i32 %136, 56
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %137 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rx_buf.i, align 4
  %139 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %t, align 4
  %slave_aborted.i = getelementptr inbounds %struct.omap2_mcspi, ptr %126, i32 0, i32 8
  %141 = ptrtoint ptr %slave_aborted.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %slave_aborted.i, align 4
  %dma_tx_completion.i = getelementptr %struct.omap2_mcspi_dma, ptr %128, i32 %idxprom.i, i32 2
  %142 = ptrtoint ptr %dma_tx_completion.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %dma_tx_completion.i, align 4
  %dma_rx_completion.i = getelementptr %struct.omap2_mcspi_dma, ptr %128, i32 %idxprom.i, i32 3
  %143 = ptrtoint ptr %dma_rx_completion.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %dma_rx_completion.i, align 4
  %144 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %126, align 4
  %tobool.not.i = icmp eq ptr %140, null
  br i1 %tobool.not.i, label %if.then107.if.end14.i_crit_edge, label %if.then8.i

if.then107.if.end14.i_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.then107
  %145 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %master.i, align 4
  %slave.i.i = getelementptr inbounds %struct.spi_controller, ptr %146, i32 0, i32 12
  %147 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %slave.i.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.i.not.i = icmp eq i8 %148, 0
  br i1 %tobool.i.not.i, label %if.then8.i.if.end13.i_crit_edge, label %if.then11.i

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %146, i32 0, i32 8
  %149 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.omap2_mcspi, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i262 = getelementptr i8, ptr %152, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i262, i32 512) #11, !srcloc !163
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.then8.i.if.end13.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i.i) #11
  %153 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %cfg.i.i, align 4
  %cfg.coerce.fca.1.gep.i.i = getelementptr inbounds [12 x i32], ptr %cfg.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %cfg.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add.i, ptr %cfg.coerce.fca.1.gep.i.i, align 4
  %cfg.coerce.fca.2.gep.i.i = getelementptr inbounds [12 x i32], ptr %cfg.i.i, i32 0, i32 2
  %155 = ptrtoint ptr %cfg.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %add7.i, ptr %cfg.coerce.fca.2.gep.i.i, align 4
  %cfg.coerce.fca.3.gep.i.i = getelementptr inbounds [12 x i32], ptr %cfg.i.i, i32 0, i32 3
  %156 = ptrtoint ptr %cfg.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %es.0.i, ptr %cfg.coerce.fca.3.gep.i.i, align 4
  %cfg.coerce.fca.4.gep.i.i = getelementptr inbounds [12 x i32], ptr %cfg.i.i, i32 0, i32 4
  %157 = ptrtoint ptr %cfg.coerce.fca.4.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %es.0.i, ptr %cfg.coerce.fca.4.gep.i.i, align 4
  %cfg.coerce.fca.5.gep.i.i = getelementptr inbounds [12 x i32], ptr %cfg.i.i, i32 0, i32 5
  %158 = ptrtoint ptr %cfg.coerce.fca.5.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %cfg.coerce.fca.5.gep.i.i, align 4
  %cfg.coerce.fca.6.gep.i.i = getelementptr inbounds [12 x i32], ptr %cfg.i.i, i32 0, i32 6
  %159 = ptrtoint ptr %cfg.coerce.fca.6.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1, ptr %cfg.coerce.fca.6.gep.i.i, align 4
  %cfg.coerce.fca.7.gep.i.i = getelementptr inbounds [12 x i32], ptr %cfg.i.i, i32 0, i32 7
  %160 = call ptr @memset(ptr %cfg.coerce.fca.7.gep.i.i, i32 0, i32 20)
  %161 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i201.i = getelementptr inbounds %struct.device, ptr %162, i32 0, i32 8
  %163 = ptrtoint ptr %driver_data.i.i.i201.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %driver_data.i.i.i201.i, align 4
  %dma_channels.i.i = getelementptr inbounds %struct.omap2_mcspi, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %dma_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dma_channels.i.i, align 4
  %167 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %chip_select, align 4
  %idxprom.i.i = zext i8 %168 to i32
  %arrayidx.i.i = getelementptr %struct.omap2_mcspi_dma, ptr %166, i32 %idxprom.i.i
  %169 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx.i.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %device_config.i.i.i = getelementptr inbounds %struct.dma_device, ptr %172, i32 0, i32 44
  %173 = ptrtoint ptr %device_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %device_config.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %174, null
  br i1 %tobool.not.i.i.i, label %if.end13.i.dmaengine_slave_config.exit.i.i_crit_edge, label %if.then.i.i.i

if.end13.i.dmaengine_slave_config.exit.i.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_slave_config.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call i32 %174(ptr noundef %170, ptr noundef nonnull %cfg.i.i) #11
  %175 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %.pr.i.i = load ptr, ptr %arrayidx.i.i, align 4
  br label %dmaengine_slave_config.exit.i.i

dmaengine_slave_config.exit.i.i:                  ; preds = %if.then.i.i.i, %if.end13.i.dmaengine_slave_config.exit.i.i_crit_edge
  %176 = phi ptr [ %170, %if.end13.i.dmaengine_slave_config.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then.i.i.i ]
  %tx_sg.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 5
  %177 = ptrtoint ptr %tx_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tx_sg.i.i, align 4
  %nents.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 5, i32 1
  %179 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %nents.i.i, align 4
  %tobool.not.i16.i.i = icmp eq ptr %176, null
  br i1 %tobool.not.i16.i.i, label %dmaengine_slave_config.exit.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge, label %lor.lhs.false.i.i.i

dmaengine_slave_config.exit.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_mcspi_tx_dma.exit.i

lor.lhs.false.i.i.i:                              ; preds = %dmaengine_slave_config.exit.i.i
  %181 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %176, align 4
  %tobool1.not.i.i.i = icmp eq ptr %182, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_mcspi_tx_dma.exit.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %device_prep_slave_sg.i.i.i = getelementptr inbounds %struct.dma_device, ptr %182, i32 0, i32 39
  %183 = ptrtoint ptr %device_prep_slave_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %device_prep_slave_sg.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %184, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i.i

lor.lhs.false2.i.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_mcspi_tx_dma.exit.i

dmaengine_prep_slave_sg.exit.i.i:                 ; preds = %lor.lhs.false2.i.i.i
  %call.i17.i.i = call ptr %184(ptr noundef nonnull %176, ptr noundef %178, i32 noundef %180, i32 noundef 1, i32 noundef 3, ptr noundef null) #11
  %tobool.not.i.i = icmp eq ptr %call.i17.i.i, null
  br i1 %tobool.not.i.i, label %dmaengine_prep_slave_sg.exit.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge, label %if.then.i.i

dmaengine_prep_slave_sg.exit.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_mcspi_tx_dma.exit.i

if.then.i.i:                                      ; preds = %dmaengine_prep_slave_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i17.i.i, i32 0, i32 6
  %185 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @omap2_mcspi_tx_callback, ptr %callback.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i17.i.i, i32 0, i32 8
  %186 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %spi, ptr %callback_param.i.i, align 4
  %tx_submit.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i17.i.i, i32 0, i32 4
  %187 = ptrtoint ptr %tx_submit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tx_submit.i.i.i, align 4
  %call.i18.i.i = call i32 %188(ptr noundef nonnull %call.i17.i.i) #11
  br label %omap2_mcspi_tx_dma.exit.i

omap2_mcspi_tx_dma.exit.i:                        ; preds = %if.then.i.i, %dmaengine_prep_slave_sg.exit.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge, %lor.lhs.false2.i.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge, %lor.lhs.false.i.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge, %dmaengine_slave_config.exit.i.i.omap2_mcspi_tx_dma.exit.i_crit_edge
  %189 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx.i.i, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %device_issue_pending.i.i.i = getelementptr inbounds %struct.dma_device, ptr %192, i32 0, i32 50
  %193 = ptrtoint ptr %device_issue_pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %device_issue_pending.i.i.i, align 4
  call void %194(ptr noundef %190) #11
  %195 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %controller_state, align 8
  %chconf0.i.i.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %196, i32 0, i32 5
  %197 = ptrtoint ptr %chconf0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %chconf0.i.i.i.i, align 4
  %or.i.i.i = or i32 %198, 16384
  store i32 %or.i.i.i, ptr %chconf0.i.i.i.i, align 4
  %199 = load ptr, ptr %controller_state, align 8
  %200 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #11
  %201 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %199, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %202, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %200) #11, !srcloc !163
  %203 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %controller_state, align 8
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %204, align 4
  %add.ptr.i5.i.i.i.i = getelementptr i8, ptr %206, i32 44
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i.i) #11, !srcloc !164
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i.i) #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %omap2_mcspi_tx_dma.exit.i, %if.then107.if.end14.i_crit_edge
  %cmp15.not.i = icmp eq ptr %138, null
  br i1 %cmp15.not.i, label %if.end14.i.if.end18.i_crit_edge, label %if.then16.i

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i202.i) #11
  %208 = ptrtoint ptr %cfg.i202.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %cfg.i202.i, align 4
  %cfg.coerce.fca.1.gep.i204.i = getelementptr inbounds [12 x i32], ptr %cfg.i202.i, i32 0, i32 1
  %209 = ptrtoint ptr %cfg.coerce.fca.1.gep.i204.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %add.i, ptr %cfg.coerce.fca.1.gep.i204.i, align 4
  %cfg.coerce.fca.2.gep.i205.i = getelementptr inbounds [12 x i32], ptr %cfg.i202.i, i32 0, i32 2
  %210 = ptrtoint ptr %cfg.coerce.fca.2.gep.i205.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %add7.i, ptr %cfg.coerce.fca.2.gep.i205.i, align 4
  %cfg.coerce.fca.3.gep.i206.i = getelementptr inbounds [12 x i32], ptr %cfg.i202.i, i32 0, i32 3
  %211 = ptrtoint ptr %cfg.coerce.fca.3.gep.i206.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %es.0.i, ptr %cfg.coerce.fca.3.gep.i206.i, align 4
  %cfg.coerce.fca.4.gep.i207.i = getelementptr inbounds [12 x i32], ptr %cfg.i202.i, i32 0, i32 4
  %212 = ptrtoint ptr %cfg.coerce.fca.4.gep.i207.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %es.0.i, ptr %cfg.coerce.fca.4.gep.i207.i, align 4
  %cfg.coerce.fca.5.gep.i208.i = getelementptr inbounds [12 x i32], ptr %cfg.i202.i, i32 0, i32 5
  %213 = ptrtoint ptr %cfg.coerce.fca.5.gep.i208.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 1, ptr %cfg.coerce.fca.5.gep.i208.i, align 4
  %cfg.coerce.fca.6.gep.i209.i = getelementptr inbounds [12 x i32], ptr %cfg.i202.i, i32 0, i32 6
  %214 = ptrtoint ptr %cfg.coerce.fca.6.gep.i209.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %cfg.coerce.fca.6.gep.i209.i, align 4
  %cfg.coerce.fca.7.gep.i210.i = getelementptr inbounds [12 x i32], ptr %cfg.i202.i, i32 0, i32 7
  %215 = call ptr @memset(ptr %cfg.coerce.fca.7.gep.i210.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sg_out.i.i) #11
  %216 = ptrtoint ptr %sg_out.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr inttoptr (i32 -1 to ptr), ptr %sg_out.i.i, align 4, !annotation !166
  %217 = getelementptr inbounds [2 x ptr], ptr %sg_out.i.i, i32 0, i32 1
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr inttoptr (i32 -1 to ptr), ptr %217, align 4, !annotation !166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_mapped_nents.i.i) #11
  %219 = ptrtoint ptr %out_mapped_nents.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 -1, ptr %out_mapped_nents.i.i, align 4, !annotation !166
  %220 = getelementptr inbounds [2 x i32], ptr %out_mapped_nents.i.i, i32 0, i32 1
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %220, align 4, !annotation !166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sizes.i.i) #11
  %222 = ptrtoint ptr %sizes.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 -1, ptr %sizes.i.i, align 4, !annotation !166
  %223 = getelementptr inbounds [2 x i32], ptr %sizes.i.i, i32 0, i32 1
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -1, ptr %223, align 4, !annotation !166
  %225 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %controller_state, align 8
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %add.ptr.i215.i = getelementptr i8, ptr %228, i32 48
  %229 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i217.i = getelementptr inbounds %struct.device, ptr %230, i32 0, i32 8
  %231 = ptrtoint ptr %driver_data.i.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %driver_data.i.i.i217.i, align 4
  %dma_channels.i218.i = getelementptr inbounds %struct.omap2_mcspi, ptr %232, i32 0, i32 4
  %233 = ptrtoint ptr %dma_channels.i218.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dma_channels.i218.i, align 4
  %235 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %chip_select, align 4
  %idxprom.i220.i = zext i8 %236 to i32
  %237 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %len74, align 4
  %fifo_depth.i.i = getelementptr inbounds %struct.omap2_mcspi, ptr %232, i32 0, i32 7
  %239 = ptrtoint ptr %fifo_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %fifo_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp.i.i = icmp eq i32 %240, 0
  %spec.select.i.i = select i1 %cmp.i.i, i32 %es.0.i, i32 0
  %word_len1.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %226, i32 0, i32 2
  %241 = ptrtoint ptr %word_len1.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %word_len1.i.i, align 4
  %chconf0.i.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %226, i32 0, i32 5
  %243 = ptrtoint ptr %chconf0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %chconf0.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %242)
  %cmp3.i.i = icmp slt i32 %242, 9
  br i1 %cmp3.i.i, label %if.then16.i.if.end10.i.i_crit_edge, label %if.else.i.i

if.then16.i.if.end10.i.i_crit_edge:               ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %242)
  %cmp5.i.i = icmp ult i32 %242, 17
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else7.i.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i.i = lshr i32 %238, 1
  br label %if.end10.i.i

if.else7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr8.i.i = lshr i32 %238, 2
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else7.i.i, %if.then6.i.i, %if.then16.i.if.end10.i.i_crit_edge
  %element_count.0.i.i = phi i32 [ %shr.i.i, %if.then6.i.i ], [ %shr8.i.i, %if.else7.i.i ], [ %238, %if.then16.i.if.end10.i.i_crit_edge ]
  %dma_rx.i.i = getelementptr %struct.omap2_mcspi_dma, ptr %234, i32 %idxprom.i220.i, i32 1
  %245 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dma_rx.i.i, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %246, align 4
  %device_config.i.i221.i = getelementptr inbounds %struct.dma_device, ptr %248, i32 0, i32 44
  %249 = ptrtoint ptr %device_config.i.i221.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %device_config.i.i221.i, align 4
  %tobool.not.i.i222.i = icmp eq ptr %250, null
  br i1 %tobool.not.i.i222.i, label %if.end10.i.i.dmaengine_slave_config.exit.i226.i_crit_edge, label %if.then.i.i224.i

if.end10.i.i.dmaengine_slave_config.exit.i226.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_slave_config.exit.i226.i

if.then.i.i224.i:                                 ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i223.i = call i32 %250(ptr noundef %246, ptr noundef nonnull %cfg.i202.i) #11
  br label %dmaengine_slave_config.exit.i226.i

dmaengine_slave_config.exit.i226.i:               ; preds = %if.then.i.i224.i, %if.end10.i.i.dmaengine_slave_config.exit.i226.i_crit_edge
  %and.i.i = and i32 %244, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i225.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i225.i, label %dmaengine_slave_config.exit.i226.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

dmaengine_slave_config.exit.i226.i.if.end15.i.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i226.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %dmaengine_slave_config.exit.i226.i
  call void @__sanitizer_cov_trace_pc() #13
  %251 = ptrtoint ptr %fifo_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %fifo_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp13.i.i = icmp eq i32 %252, 0
  %add.i.i = select i1 %cmp13.i.i, i32 %es.0.i, i32 0
  %spec.select206.i.i = add nuw nsw i32 %add.i.i, %spec.select.i.i
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %land.lhs.true.i.i, %dmaengine_slave_config.exit.i226.i.if.end15.i.i_crit_edge
  %transfer_reduction.1.i.i = phi i32 [ %spec.select.i.i, %dmaengine_slave_config.exit.i226.i.if.end15.i.i_crit_edge ], [ %spec.select206.i.i, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transfer_reduction.1.i.i)
  %tobool16.not.i.i = icmp eq i32 %transfer_reduction.1.i.i, 0
  br i1 %tobool16.not.i.i, label %if.else20.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %238, %transfer_reduction.1.i.i
  %253 = ptrtoint ptr %sizes.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %sub.i.i, ptr %sizes.i.i, align 4
  %254 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %transfer_reduction.1.i.i, ptr %223, align 4
  br label %if.end22.i.i

if.else20.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %255 = ptrtoint ptr %sizes.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %238, ptr %sizes.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.else20.i.i, %if.then17.i.i
  %nb_sizes.0.i.i = phi i32 [ 2, %if.then17.i.i ], [ 1, %if.else20.i.i ]
  %rx_sg.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 6
  %256 = ptrtoint ptr %rx_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %rx_sg.i.i, align 4
  %nents.i227.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 6, i32 1
  %258 = ptrtoint ptr %nents.i227.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %nents.i227.i, align 4
  %call26.i.i = call i32 @sg_split(ptr noundef %257, i32 noundef %259, i32 noundef 0, i32 noundef %nb_sizes.0.i.i, ptr noundef nonnull %sizes.i.i, ptr noundef nonnull %sg_out.i.i, ptr noundef nonnull %out_mapped_nents.i.i, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %cmp27.i.i = icmp slt i32 %call26.i.i, 0
  br i1 %cmp27.i.i, label %do.end.i.i, label %if.end29.i.i

do.end.i.i:                                       ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.32) #14
  br label %omap2_mcspi_rx_dma.exit.i

if.end29.i.i:                                     ; preds = %if.end22.i.i
  %260 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dma_rx.i.i, align 4
  %262 = ptrtoint ptr %sg_out.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %sg_out.i.i, align 4
  %264 = ptrtoint ptr %out_mapped_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %out_mapped_nents.i.i, align 4
  %tobool.not.i207.i.i = icmp eq ptr %261, null
  br i1 %tobool.not.i207.i.i, label %if.end29.i.i.if.end38.i.i_crit_edge, label %lor.lhs.false.i.i229.i

if.end29.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i.i

lor.lhs.false.i.i229.i:                           ; preds = %if.end29.i.i
  %266 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %261, align 4
  %tobool1.not.i.i228.i = icmp eq ptr %267, null
  br i1 %tobool1.not.i.i228.i, label %lor.lhs.false.i.i229.i.if.end38.i.i_crit_edge, label %lor.lhs.false2.i.i232.i

lor.lhs.false.i.i229.i.if.end38.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i229.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i.i

lor.lhs.false2.i.i232.i:                          ; preds = %lor.lhs.false.i.i229.i
  %device_prep_slave_sg.i.i230.i = getelementptr inbounds %struct.dma_device, ptr %267, i32 0, i32 39
  %268 = ptrtoint ptr %device_prep_slave_sg.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %device_prep_slave_sg.i.i230.i, align 4
  %tobool4.not.i.i231.i = icmp eq ptr %269, null
  br i1 %tobool4.not.i.i231.i, label %lor.lhs.false2.i.i232.i.if.end38.i.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i233.i

lor.lhs.false2.i.i232.i.if.end38.i.i_crit_edge:   ; preds = %lor.lhs.false2.i.i232.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i.i

dmaengine_prep_slave_sg.exit.i233.i:              ; preds = %lor.lhs.false2.i.i232.i
  %call.i208.i.i = call ptr %269(ptr noundef nonnull %261, ptr noundef %263, i32 noundef %265, i32 noundef 2, i32 noundef 3, ptr noundef null) #11
  %tobool34.not.i.i = icmp eq ptr %call.i208.i.i, null
  br i1 %tobool34.not.i.i, label %dmaengine_prep_slave_sg.exit.i233.i.if.end38.i.i_crit_edge, label %if.then35.i.i

dmaengine_prep_slave_sg.exit.i233.i.if.end38.i.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i233.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i.i

if.then35.i.i:                                    ; preds = %dmaengine_prep_slave_sg.exit.i233.i
  call void @__sanitizer_cov_trace_pc() #13
  %callback.i234.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i208.i.i, i32 0, i32 6
  %270 = ptrtoint ptr %callback.i234.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr @omap2_mcspi_rx_callback, ptr %callback.i234.i, align 4
  %callback_param.i235.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i208.i.i, i32 0, i32 8
  %271 = ptrtoint ptr %callback_param.i235.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %spi, ptr %callback_param.i235.i, align 4
  %tx_submit.i.i236.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i208.i.i, i32 0, i32 4
  %272 = ptrtoint ptr %tx_submit.i.i236.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %tx_submit.i.i236.i, align 4
  %call.i209.i.i = call i32 %273(ptr noundef nonnull %call.i208.i.i) #11
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then35.i.i, %dmaengine_prep_slave_sg.exit.i233.i.if.end38.i.i_crit_edge, %lor.lhs.false2.i.i232.i.if.end38.i.i_crit_edge, %lor.lhs.false.i.i229.i.if.end38.i.i_crit_edge, %if.end29.i.i.if.end38.i.i_crit_edge
  %274 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dma_rx.i.i, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %275, align 4
  %device_issue_pending.i.i237.i = getelementptr inbounds %struct.dma_device, ptr %277, i32 0, i32 50
  %278 = ptrtoint ptr %device_issue_pending.i.i237.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %device_issue_pending.i.i237.i, align 4
  call void %279(ptr noundef %275) #11
  %280 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %controller_state, align 8
  %chconf0.i.i.i238.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %281, i32 0, i32 5
  %282 = ptrtoint ptr %chconf0.i.i.i238.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %chconf0.i.i.i238.i, align 4
  %or.i.i239.i = or i32 %283, 32768
  store i32 %or.i.i239.i, ptr %chconf0.i.i.i238.i, align 4
  %284 = load ptr, ptr %controller_state, align 8
  %285 = call i32 @llvm.bswap.i32(i32 %or.i.i239.i) #11
  %286 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %284, align 4
  %add.ptr.i.i.i.i240.i = getelementptr i8, ptr %287, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i240.i, i32 %285) #11, !srcloc !163
  %288 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %controller_state, align 8
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %289, align 4
  %add.ptr.i5.i.i.i241.i = getelementptr i8, ptr %291, i32 44
  %292 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i241.i) #11, !srcloc !164
  %dma_rx_completion.i.i = getelementptr %struct.omap2_mcspi_dma, ptr %234, i32 %idxprom.i220.i, i32 3
  %master.i.i.i = getelementptr inbounds %struct.omap2_mcspi, ptr %232, i32 0, i32 1
  %293 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %master.i.i.i, align 4
  %slave.i.i.i.i = getelementptr inbounds %struct.spi_controller, ptr %294, i32 0, i32 12
  %295 = ptrtoint ptr %slave.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %slave.i.i.i.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %tobool.i.not.i.i.i = icmp eq i8 %296, 0
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i.i, label %if.then.i211.i.i

if.then.i211.i.i:                                 ; preds = %if.end38.i.i
  %call1.i.i.i = call i32 @wait_for_completion_interruptible(ptr noundef %dma_rx_completion.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i210.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i210.i.i, label %lor.lhs.false.i212.i.i, label %if.then.i211.i.i.if.then43.i.i_crit_edge

if.then.i211.i.i.if.then43.i.i_crit_edge:         ; preds = %if.then.i211.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43.i.i

lor.lhs.false.i212.i.i:                           ; preds = %if.then.i211.i.i
  %slave_aborted.i.i.i = getelementptr inbounds %struct.omap2_mcspi, ptr %232, i32 0, i32 8
  %297 = ptrtoint ptr %slave_aborted.i.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %slave_aborted.i.i.i, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool2.not.i.i.i = icmp eq i8 %298, 0
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i212.i.i.lor.lhs.false.i.i_crit_edge, label %lor.lhs.false.i212.i.i.if.then43.i.i_crit_edge

lor.lhs.false.i212.i.i.if.then43.i.i_crit_edge:   ; preds = %lor.lhs.false.i212.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43.i.i

lor.lhs.false.i212.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %lor.lhs.false.i212.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

if.else.i.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef %dma_rx_completion.i.i) #11
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.else.i.i.i, %lor.lhs.false.i212.i.i.lor.lhs.false.i.i_crit_edge
  %slave_aborted.i.i = getelementptr inbounds %struct.omap2_mcspi, ptr %232, i32 0, i32 8
  %299 = ptrtoint ptr %slave_aborted.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %slave_aborted.i.i, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool42.not.i.i = icmp eq i8 %300, 0
  br i1 %tobool42.not.i.i, label %for.body.i.i, label %lor.lhs.false.i.i.if.then43.i.i_crit_edge

lor.lhs.false.i.i.if.then43.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43.i.i

if.then43.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then43.i.i_crit_edge, %lor.lhs.false.i212.i.i.if.then43.i.i_crit_edge, %if.then.i211.i.i.if.then43.i.i_crit_edge
  %301 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %dma_rx.i.i, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %302, align 4
  %device_terminate_all.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %304, i32 0, i32 47
  %305 = ptrtoint ptr %device_terminate_all.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %device_terminate_all.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %306, null
  br i1 %tobool.not.i.i.i.i, label %if.then43.i.i.dmaengine_terminate_sync.exit.i.i_crit_edge, label %dmaengine_terminate_async.exit.i.i.i

if.then43.i.i.dmaengine_terminate_sync.exit.i.i_crit_edge: ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit.i.i

dmaengine_terminate_async.exit.i.i.i:             ; preds = %if.then43.i.i
  %call.i.i.i.i = call i32 %306(ptr noundef %302) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i214.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i214.i.i, label %if.end.i215.i.i, label %dmaengine_terminate_async.exit.i.i.i.dmaengine_terminate_sync.exit.i.i_crit_edge

dmaengine_terminate_async.exit.i.i.i.dmaengine_terminate_sync.exit.i.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit.i.i

if.end.i215.i.i:                                  ; preds = %dmaengine_terminate_async.exit.i.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.40, i32 noundef 1169) #11
  %307 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %302, align 4
  %device_synchronize.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %308, i32 0, i32 48
  %309 = ptrtoint ptr %device_synchronize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %device_synchronize.i.i.i.i, align 4
  %tobool.not.i1.i.i.i = icmp eq ptr %310, null
  br i1 %tobool.not.i1.i.i.i, label %if.end.i215.i.i.dmaengine_terminate_sync.exit.i.i_crit_edge, label %if.then.i2.i.i.i

if.end.i215.i.i.dmaengine_terminate_sync.exit.i.i_crit_edge: ; preds = %if.end.i215.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit.i.i

if.then.i2.i.i.i:                                 ; preds = %if.end.i215.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %310(ptr noundef %302) #11
  br label %dmaengine_terminate_sync.exit.i.i

dmaengine_terminate_sync.exit.i.i:                ; preds = %if.then.i2.i.i.i, %if.end.i215.i.i.dmaengine_terminate_sync.exit.i.i_crit_edge, %dmaengine_terminate_async.exit.i.i.i.dmaengine_terminate_sync.exit.i.i_crit_edge, %if.then43.i.i.dmaengine_terminate_sync.exit.i.i_crit_edge
  %311 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %controller_state, align 8
  %chconf0.i.i217.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %312, i32 0, i32 5
  %313 = ptrtoint ptr %chconf0.i.i217.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %chconf0.i.i217.i.i, align 4
  %and.i219.i.i = and i32 %314, -32769
  store i32 %and.i219.i.i, ptr %chconf0.i.i217.i.i, align 4
  %315 = load ptr, ptr %controller_state, align 8
  %316 = call i32 @llvm.bswap.i32(i32 %and.i219.i.i) #11
  %317 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %315, align 4
  %add.ptr.i.i.i220.i.i = getelementptr i8, ptr %318, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i220.i.i, i32 %316) #11, !srcloc !163
  %319 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %controller_state, align 8
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %320, align 4
  %add.ptr.i5.i.i221.i.i = getelementptr i8, ptr %322, i32 44
  %323 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i221.i.i) #11, !srcloc !164
  br label %omap2_mcspi_rx_dma.exit.i

for.body.i.i:                                     ; preds = %lor.lhs.false.i.i
  %324 = ptrtoint ptr %sg_out.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %sg_out.i.i, align 4
  call void @kfree(ptr noundef %325) #11
  br i1 %tobool16.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.1

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48.i.i.1 = getelementptr inbounds [2 x ptr], ptr %sg_out.i.i, i32 0, i32 1
  %326 = ptrtoint ptr %arrayidx48.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %arrayidx48.i.i.1, align 4
  call void @kfree(ptr noundef %327) #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.1, %for.body.i.i.for.end.i.i_crit_edge
  %328 = ptrtoint ptr %fifo_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %fifo_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %cmp50.i.i = icmp sgt i32 %329, 0
  br i1 %cmp50.i.i, label %for.end.i.i.omap2_mcspi_rx_dma.exit.i_crit_edge, label %if.end52.i.i

for.end.i.i.omap2_mcspi_rx_dma.exit.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_mcspi_rx_dma.exit.i

if.end52.i.i:                                     ; preds = %for.end.i.i
  %330 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %controller_state, align 8
  %chctrl0.i.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %331, i32 0, i32 6
  %332 = ptrtoint ptr %chctrl0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %chctrl0.i.i.i, align 4
  %and.i223.i.i = and i32 %333, -2
  store i32 %and.i223.i.i, ptr %chctrl0.i.i.i, align 4
  %334 = load ptr, ptr %controller_state, align 8
  %335 = call i32 @llvm.bswap.i32(i32 %and.i223.i.i) #11
  %336 = ptrtoint ptr %334 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %334, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %337, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %335) #11, !srcloc !163
  %338 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %controller_state, align 8
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %339, align 4
  %add.ptr.i10.i.i.i = getelementptr i8, ptr %341, i32 52
  %342 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i.i) #11, !srcloc !164
  %sub53.i.i = add i32 %element_count.0.i.i, -1
  br i1 %tobool.not.i225.i, label %if.end52.i.i.if.end87.i.i_crit_edge, label %if.then56.i.i

if.end52.i.i.if.end87.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87.i.i

if.then56.i.i:                                    ; preds = %if.end52.i.i
  %dec.i.i = add i32 %element_count.0.i.i, -2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %343 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %343, 100
  %344 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215.i) #11, !srcloc !164
  %345 = and i32 %344, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool.not17.i.i.i = icmp eq i32 %345, 0
  br i1 %tobool.not17.i.i.i, label %if.then56.i.i.while.body.i.i.i_crit_edge, label %if.then56.i.i.if.then59.i.i_crit_edge

if.then56.i.i.if.then59.i.i_crit_edge:            ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59.i.i

if.then56.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.then56.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %do.end.i.i.i.while.body.i.i.i_crit_edge, %if.then56.i.i.while.body.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %346 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %346
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i224.i.i, label %do.end.i.i.i

if.then.i224.i.i:                                 ; preds = %while.body.i.i.i
  %347 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215.i) #11, !srcloc !164
  %348 = and i32 %347, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool6.not.i.i.i = icmp eq i32 %348, 0
  br i1 %tobool6.not.i.i.i, label %if.else79.i.i, label %if.then.i224.i.i.if.then59.i.i_crit_edge

if.then.i224.i.i.if.then59.i.i_crit_edge:         ; preds = %if.then.i224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59.i.i

do.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %349 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215.i) #11, !srcloc !164
  %350 = and i32 %349, 16777216
  %tobool.not.i226.i.i = icmp eq i32 %350, 0
  br i1 %tobool.not.i226.i.i, label %do.end.i.i.i.while.body.i.i.i_crit_edge, label %do.end.i.i.i.if.then59.i.i_crit_edge

do.end.i.i.i.if.then59.i.i_crit_edge:             ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59.i.i

do.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i.i

if.then59.i.i:                                    ; preds = %do.end.i.i.i.if.then59.i.i_crit_edge, %if.then.i224.i.i.if.then59.i.i_crit_edge, %if.then56.i.i.if.then59.i.i_crit_edge
  %351 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %controller_state, align 8
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %352, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %354, i32 60
  %355 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !164
  %356 = call i32 @llvm.bswap.i32(i32 %355) #11
  br i1 %cmp3.i.i, label %if.then62.i.i, label %if.else65.i.i

if.then62.i.i:                                    ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = trunc i32 %356 to i8
  %357 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %rx_buf.i, align 4
  %arrayidx64.i.i = getelementptr i8, ptr %358, i32 %dec.i.i
  %359 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %conv.i.i, ptr %arrayidx64.i.i, align 1
  br label %if.end87.i.i

if.else65.i.i:                                    ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %242)
  %cmp66.i.i = icmp ult i32 %242, 17
  br i1 %cmp66.i.i, label %if.then68.i.i, label %if.else73.i.i

if.then68.i.i:                                    ; preds = %if.else65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv69.i.i = trunc i32 %356 to i16
  %360 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %rx_buf.i, align 4
  %arrayidx72.i.i = getelementptr i16, ptr %361, i32 %dec.i.i
  %362 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 %conv69.i.i, ptr %arrayidx72.i.i, align 2
  br label %if.end87.i.i

if.else73.i.i:                                    ; preds = %if.else65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %363 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %rx_buf.i, align 4
  %arrayidx76.i.i = getelementptr i32, ptr %364, i32 %dec.i.i
  %365 = ptrtoint ptr %arrayidx76.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %356, ptr %arrayidx76.i.i, align 4
  br label %if.end87.i.i

if.else79.i.i:                                    ; preds = %if.then.i224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %242)
  %cmp1.i.i.i = icmp slt i32 %242, 17
  %..i230.neg.i.i = select i1 %cmp1.i.i.i, i32 -4, i32 -8
  %retval.0.i231.neg.i.i = select i1 %cmp3.i.i, i32 -2, i32 %..i230.neg.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.35) #14
  %sub85.i.i = add i32 %retval.0.i231.neg.i.i, %238
  %366 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %controller_state, align 8
  %chctrl0.i233.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %367, i32 0, i32 6
  %368 = ptrtoint ptr %chctrl0.i233.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %chctrl0.i233.i.i, align 4
  %l.0.i.i.i = or i32 %369, 1
  store i32 %l.0.i.i.i, ptr %chctrl0.i233.i.i, align 4
  %370 = load ptr, ptr %controller_state, align 8
  %371 = call i32 @llvm.bswap.i32(i32 %l.0.i.i.i) #11
  %372 = ptrtoint ptr %370 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %370, align 4
  %add.ptr.i.i235.i.i = getelementptr i8, ptr %373, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i235.i.i, i32 %371) #11, !srcloc !163
  %374 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %controller_state, align 8
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %375, align 4
  %add.ptr.i10.i236.i.i = getelementptr i8, ptr %377, i32 52
  %378 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i236.i.i) #11, !srcloc !164
  br label %omap2_mcspi_rx_dma.exit.i

if.end87.i.i:                                     ; preds = %if.else73.i.i, %if.then68.i.i, %if.then62.i.i, %if.end52.i.i.if.end87.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %379 = load volatile i32, ptr @jiffies, align 128
  %add.i237.i.i = add i32 %379, 100
  %380 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215.i) #11, !srcloc !164
  %381 = and i32 %380, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %tobool.not17.i239.i.i = icmp eq i32 %381, 0
  br i1 %tobool.not17.i239.i.i, label %if.end87.i.i.while.body.i242.i.i_crit_edge, label %if.end87.i.i.if.then90.i.i_crit_edge

if.end87.i.i.if.then90.i.i_crit_edge:             ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then90.i.i

if.end87.i.i.while.body.i242.i.i_crit_edge:       ; preds = %if.end87.i.i
  br label %while.body.i242.i.i

while.body.i242.i.i:                              ; preds = %do.end.i249.i.i.while.body.i242.i.i_crit_edge, %if.end87.i.i.while.body.i242.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %382 = load volatile i32, ptr @jiffies, align 128
  %sub.i240.i.i = sub i32 %add.i237.i.i, %382
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i240.i.i)
  %cmp.i241.i.i = icmp slt i32 %sub.i240.i.i, 0
  br i1 %cmp.i241.i.i, label %if.then.i246.i.i, label %do.end.i249.i.i

if.then.i246.i.i:                                 ; preds = %while.body.i242.i.i
  %383 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215.i) #11, !srcloc !164
  %384 = and i32 %383, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %384)
  %tobool6.not.i244.i.i = icmp eq i32 %384, 0
  br i1 %tobool6.not.i244.i.i, label %do.end114.i.i, label %if.then.i246.i.i.if.then90.i.i_crit_edge

if.then.i246.i.i.if.then90.i.i_crit_edge:         ; preds = %if.then.i246.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then90.i.i

do.end.i249.i.i:                                  ; preds = %while.body.i242.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %385 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215.i) #11, !srcloc !164
  %386 = and i32 %385, 16777216
  %tobool.not.i248.i.i = icmp eq i32 %386, 0
  br i1 %tobool.not.i248.i.i, label %do.end.i249.i.i.while.body.i242.i.i_crit_edge, label %do.end.i249.i.i.if.then90.i.i_crit_edge

do.end.i249.i.i.if.then90.i.i_crit_edge:          ; preds = %do.end.i249.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then90.i.i

do.end.i249.i.i.while.body.i242.i.i_crit_edge:    ; preds = %do.end.i249.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i242.i.i

if.then90.i.i:                                    ; preds = %do.end.i249.i.i.if.then90.i.i_crit_edge, %if.then.i246.i.i.if.then90.i.i_crit_edge, %if.end87.i.i.if.then90.i.i_crit_edge
  %387 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %controller_state, align 8
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %388, align 4
  %add.ptr.i253.i.i = getelementptr i8, ptr %390, i32 60
  %391 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i253.i.i) #11, !srcloc !164
  %392 = call i32 @llvm.bswap.i32(i32 %391) #11
  br i1 %cmp3.i.i, label %if.then95.i.i, label %if.else99.i.i

if.then95.i.i:                                    ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv96.i.i = trunc i32 %392 to i8
  %393 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %rx_buf.i, align 4
  %arrayidx98.i.i = getelementptr i8, ptr %394, i32 %sub53.i.i
  %395 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %conv96.i.i, ptr %arrayidx98.i.i, align 1
  br label %if.end118.i.i

if.else99.i.i:                                    ; preds = %if.then90.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %242)
  %cmp100.i.i = icmp ult i32 %242, 17
  br i1 %cmp100.i.i, label %if.then102.i.i, label %if.else106.i.i

if.then102.i.i:                                   ; preds = %if.else99.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv103.i.i = trunc i32 %392 to i16
  %396 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %rx_buf.i, align 4
  %arrayidx105.i.i = getelementptr i16, ptr %397, i32 %sub53.i.i
  %398 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_store2_noabort(i32 %398)
  store i16 %conv103.i.i, ptr %arrayidx105.i.i, align 2
  br label %if.end118.i.i

if.else106.i.i:                                   ; preds = %if.else99.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %399 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %rx_buf.i, align 4
  %arrayidx108.i.i = getelementptr i32, ptr %400, i32 %sub53.i.i
  %401 = ptrtoint ptr %arrayidx108.i.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %392, ptr %arrayidx108.i.i, align 4
  br label %if.end118.i.i

do.end114.i.i:                                    ; preds = %if.then.i246.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %242)
  %cmp1.i255.i.i = icmp slt i32 %242, 17
  %..i256.neg.i.i = select i1 %cmp1.i255.i.i, i32 -2, i32 -4
  %retval.0.i257.neg.i.i = select i1 %cmp3.i.i, i32 -1, i32 %..i256.neg.i.i
  %sub117.i.i = add i32 %retval.0.i257.neg.i.i, %238
  br label %if.end118.i.i

if.end118.i.i:                                    ; preds = %do.end114.i.i, %if.else106.i.i, %if.then102.i.i, %if.then95.i.i
  %count.0.i.i = phi i32 [ %sub117.i.i, %do.end114.i.i ], [ %238, %if.then102.i.i ], [ %238, %if.else106.i.i ], [ %238, %if.then95.i.i ]
  %402 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %controller_state, align 8
  %chctrl0.i259.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %403, i32 0, i32 6
  %404 = ptrtoint ptr %chctrl0.i259.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %chctrl0.i259.i.i, align 4
  %l.0.i261.i.i = or i32 %405, 1
  store i32 %l.0.i261.i.i, ptr %chctrl0.i259.i.i, align 4
  %406 = load ptr, ptr %controller_state, align 8
  %407 = call i32 @llvm.bswap.i32(i32 %l.0.i261.i.i) #11
  %408 = ptrtoint ptr %406 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %406, align 4
  %add.ptr.i.i262.i.i = getelementptr i8, ptr %409, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i262.i.i, i32 %407) #11, !srcloc !163
  %410 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %controller_state, align 8
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %411, align 4
  %add.ptr.i10.i263.i.i = getelementptr i8, ptr %413, i32 52
  %414 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i263.i.i) #11, !srcloc !164
  br label %omap2_mcspi_rx_dma.exit.i

omap2_mcspi_rx_dma.exit.i:                        ; preds = %if.end118.i.i, %if.else79.i.i, %for.end.i.i.omap2_mcspi_rx_dma.exit.i_crit_edge, %dmaengine_terminate_sync.exit.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ 0, %dmaengine_terminate_sync.exit.i.i ], [ %sub85.i.i, %if.else79.i.i ], [ %count.0.i.i, %if.end118.i.i ], [ %238, %for.end.i.i.omap2_mcspi_rx_dma.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sizes.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_mapped_nents.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sg_out.i.i) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i202.i) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %omap2_mcspi_rx_dma.exit.i, %if.end14.i.if.end18.i_crit_edge
  %count.0.i = phi i32 [ %retval.0.i.i, %omap2_mcspi_rx_dma.exit.i ], [ %134, %if.end14.i.if.end18.i_crit_edge ]
  br i1 %tobool.not.i, label %if.end18.i.if.end111_crit_edge, label %if.then20.i

if.end18.i.if.end111_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then20.i:                                      ; preds = %if.end18.i
  %master.i242.i = getelementptr inbounds %struct.omap2_mcspi, ptr %126, i32 0, i32 1
  %415 = ptrtoint ptr %master.i242.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %master.i242.i, align 4
  %slave.i.i.i = getelementptr inbounds %struct.spi_controller, ptr %416, i32 0, i32 12
  %417 = ptrtoint ptr %slave.i.i.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %slave.i.i.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %418)
  %tobool.i.not.i.i = icmp eq i8 %418, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false.i, label %if.then.i244.i

if.then.i244.i:                                   ; preds = %if.then20.i
  %call1.i.i = call i32 @wait_for_completion_interruptible(ptr noundef %dma_tx_completion.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i243.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i243.i, label %lor.lhs.false.i246.i, label %if.then.i244.i.if.then26.i_crit_edge

if.then.i244.i.if.then26.i_crit_edge:             ; preds = %if.then.i244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26.i

lor.lhs.false.i246.i:                             ; preds = %if.then.i244.i
  %419 = ptrtoint ptr %slave_aborted.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %slave_aborted.i, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %tobool2.not.i.i = icmp eq i8 %420, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i246.i.if.end28.i_crit_edge, label %lor.lhs.false.i246.i.if.then26.i_crit_edge

lor.lhs.false.i246.i.if.then26.i_crit_edge:       ; preds = %lor.lhs.false.i246.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26.i

lor.lhs.false.i246.i.if.end28.i_crit_edge:        ; preds = %lor.lhs.false.i246.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

lor.lhs.false.i:                                  ; preds = %if.then20.i
  call void @wait_for_completion(ptr noundef %dma_tx_completion.i) #11
  %421 = ptrtoint ptr %slave_aborted.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %.pr.i = load i8, ptr %slave_aborted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool25.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool25.not.i, label %lor.lhs.false.i.if.end28.i_crit_edge, label %lor.lhs.false.i.if.then26.i_crit_edge

lor.lhs.false.i.if.then26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26.i

lor.lhs.false.i.if.end28.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then26.i:                                      ; preds = %lor.lhs.false.i.if.then26.i_crit_edge, %lor.lhs.false.i246.i.if.then26.i_crit_edge, %if.then.i244.i.if.then26.i_crit_edge
  %422 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %arrayidx.i, align 4
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %423, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %425, i32 0, i32 47
  %426 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i249.i = icmp eq ptr %427, null
  br i1 %tobool.not.i.i249.i, label %if.then26.i.dmaengine_terminate_sync.exit.i_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.then26.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_async.exit.i.i:               ; preds = %if.then26.i
  %call.i.i250.i = call i32 %427(ptr noundef %423) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i250.i)
  %tobool.not.i251.i = icmp eq i32 %call.i.i250.i, 0
  br i1 %tobool.not.i251.i, label %if.end.i.i, label %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge

dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit.i

if.end.i.i:                                       ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.40, i32 noundef 1169) #11
  %428 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %423, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %429, i32 0, i32 48
  %430 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %431, null
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge, label %if.then.i2.i.i

if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit.i

if.then.i2.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %431(ptr noundef %423) #11
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_sync.exit.i:                  ; preds = %if.then.i2.i.i, %if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %if.then26.i.dmaengine_terminate_sync.exit.i_crit_edge
  %432 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %controller_state, align 8
  %chconf0.i.i252.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %433, i32 0, i32 5
  %434 = ptrtoint ptr %chconf0.i.i252.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %chconf0.i.i252.i, align 4
  %and.i253.i = and i32 %435, -16385
  store i32 %and.i253.i, ptr %chconf0.i.i252.i, align 4
  %436 = load ptr, ptr %controller_state, align 8
  %437 = call i32 @llvm.bswap.i32(i32 %and.i253.i) #11
  %438 = ptrtoint ptr %436 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %436, align 4
  %add.ptr.i.i.i254.i = getelementptr i8, ptr %439, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i254.i, i32 %437) #11, !srcloc !163
  %440 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %controller_state, align 8
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %441, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %443, i32 44
  %444 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i) #11, !srcloc !164
  br label %if.end111

if.end28.i:                                       ; preds = %lor.lhs.false.i.if.end28.i_crit_edge, %lor.lhs.false.i246.i.if.end28.i_crit_edge
  %445 = ptrtoint ptr %master.i242.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %master.i242.i, align 4
  %slave.i255.i = getelementptr inbounds %struct.spi_controller, ptr %446, i32 0, i32 12
  %447 = ptrtoint ptr %slave.i255.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %slave.i255.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %tobool.i256.not.i = icmp eq i8 %448, 0
  br i1 %tobool.i256.not.i, label %if.end28.i.if.end40.i_crit_edge, label %if.then.i262.i

if.end28.i.if.end40.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

if.then.i262.i:                                   ; preds = %if.end28.i
  %call1.i260.i = call i32 @wait_for_completion_interruptible(ptr noundef %126) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i260.i)
  %tobool.not.i261.i = icmp eq i32 %call1.i260.i, 0
  br i1 %tobool.not.i261.i, label %lor.lhs.false.i265.i, label %if.then.i262.i.if.end111_crit_edge

if.then.i262.i.if.end111_crit_edge:               ; preds = %if.then.i262.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

lor.lhs.false.i265.i:                             ; preds = %if.then.i262.i
  %449 = ptrtoint ptr %slave_aborted.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %slave_aborted.i, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %450)
  %tobool2.not.i264.i = icmp eq i8 %450, 0
  br i1 %tobool2.not.i264.i, label %lor.lhs.false.i265.i.if.end40.i_crit_edge, label %lor.lhs.false.i265.i.if.end111_crit_edge

lor.lhs.false.i265.i.if.end111_crit_edge:         ; preds = %lor.lhs.false.i265.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

lor.lhs.false.i265.i.if.end40.i_crit_edge:        ; preds = %lor.lhs.false.i265.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

if.end40.i:                                       ; preds = %lor.lhs.false.i265.i.if.end40.i_crit_edge, %if.end28.i.if.end40.i_crit_edge
  %fifo_depth.i = getelementptr inbounds %struct.omap2_mcspi, ptr %126, i32 0, i32 7
  %451 = ptrtoint ptr %fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %fifo_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %452)
  %cmp41.i = icmp sgt i32 %452, 0
  br i1 %cmp41.i, label %if.then42.i, label %if.end40.i.if.end48.i_crit_edge

if.end40.i.if.end48.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.then42.i:                                      ; preds = %if.end40.i
  %base.i263 = getelementptr inbounds %struct.omap2_mcspi, ptr %126, i32 0, i32 2
  %453 = ptrtoint ptr %base.i263 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %base.i263, align 4
  %add.ptr.i264 = getelementptr i8, ptr %454, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %455 = load volatile i32, ptr @jiffies, align 128
  %add.i270.i = add i32 %455, 100
  %456 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i264) #11, !srcloc !164
  %457 = and i32 %456, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %457)
  %tobool.not17.i.i = icmp eq i32 %457, 0
  br i1 %tobool.not17.i.i, label %if.then42.i.while.body.i.i_crit_edge, label %if.then42.i.if.end46.i_crit_edge

if.then42.i.if.end46.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then42.i.while.body.i.i_crit_edge:             ; preds = %if.then42.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %do.end.i276.i.while.body.i.i_crit_edge, %if.then42.i.while.body.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %458 = load volatile i32, ptr @jiffies, align 128
  %sub.i271.i = sub i32 %add.i270.i, %458
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i271.i)
  %cmp.i272.i = icmp slt i32 %sub.i271.i, 0
  br i1 %cmp.i272.i, label %if.then.i273.i, label %do.end.i276.i

if.then.i273.i:                                   ; preds = %while.body.i.i
  %459 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i264) #11, !srcloc !164
  %460 = and i32 %459, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %460)
  %tobool6.not.i.i = icmp eq i32 %460, 0
  br i1 %tobool6.not.i.i, label %do.end.i, label %if.then.i273.i.if.end46.i_crit_edge

if.then.i273.i.if.end46.i_crit_edge:              ; preds = %if.then.i273.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

do.end.i276.i:                                    ; preds = %while.body.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %461 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i264) #11, !srcloc !164
  %462 = and i32 %461, 512
  %tobool.not.i275.i = icmp eq i32 %462, 0
  br i1 %tobool.not.i275.i, label %do.end.i276.i.while.body.i.i_crit_edge, label %do.end.i276.i.if.end46.i_crit_edge

do.end.i276.i.if.end46.i_crit_edge:               ; preds = %do.end.i276.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

do.end.i276.i.while.body.i.i_crit_edge:           ; preds = %do.end.i276.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

do.end.i:                                         ; preds = %if.then.i273.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.21) #14
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end.i, %do.end.i276.i.if.end46.i_crit_edge, %if.then.i273.i.if.end46.i_crit_edge, %if.then42.i.if.end46.i_crit_edge
  %463 = ptrtoint ptr %master.i242.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %master.i242.i, align 4
  %driver_data.i.i.i278.i = getelementptr inbounds %struct.device, ptr %464, i32 0, i32 8
  %465 = ptrtoint ptr %driver_data.i.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %driver_data.i.i.i278.i, align 4
  %base.i279.i = getelementptr inbounds %struct.omap2_mcspi, ptr %466, i32 0, i32 2
  %467 = ptrtoint ptr %base.i279.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %base.i279.i, align 4
  %add.ptr.i280.i = getelementptr i8, ptr %468, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280.i, i32 512) #11, !srcloc !163
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end46.i, %if.end40.i.if.end48.i_crit_edge
  br i1 %cmp15.not.i, label %if.then50.i, label %if.end48.i.if.end111_crit_edge

if.end48.i.if.end111_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then50.i:                                      ; preds = %if.end48.i
  %469 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %122, align 4
  %add.ptr52.i = getelementptr i8, ptr %470, i32 48
  %471 = ptrtoint ptr %fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %fifo_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %472)
  %cmp54.i = icmp sgt i32 %472, 0
  br i1 %cmp54.i, label %if.then55.i, label %if.else64.i

if.then55.i:                                      ; preds = %if.then50.i
  %call56.i = call fastcc i32 @mcspi_wait_for_reg_bit(ptr noundef %add.ptr52.i, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %do.end61.i, label %if.then55.i.land.lhs.true.i_crit_edge

if.then55.i.land.lhs.true.i_crit_edge:            ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

do.end61.i:                                       ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.24) #14
  br label %if.end111

if.else64.i:                                      ; preds = %if.then50.i
  %call65.i = call fastcc i32 @mcspi_wait_for_reg_bit(ptr noundef %add.ptr52.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp66.i = icmp slt i32 %call65.i, 0
  br i1 %cmp66.i, label %do.end70.i, label %if.else64.i.land.lhs.true.i_crit_edge

if.else64.i.land.lhs.true.i_crit_edge:            ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

do.end70.i:                                       ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.27) #14
  br label %if.end111

land.lhs.true.i:                                  ; preds = %if.else64.i.land.lhs.true.i_crit_edge, %if.then55.i.land.lhs.true.i_crit_edge
  %call75.i = call fastcc i32 @mcspi_wait_for_reg_bit(ptr noundef %add.ptr52.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.i = icmp slt i32 %call75.i, 0
  br i1 %cmp76.i, label %do.end80.i, label %land.lhs.true.i.if.end111_crit_edge

land.lhs.true.i.if.end111_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

do.end80.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.30) #14
  br label %if.end111

if.else109:                                       ; preds = %land.lhs.true103.if.else109_crit_edge, %land.lhs.true99.if.else109_crit_edge, %land.lhs.true96.if.else109_crit_edge, %if.end93.if.else109_crit_edge
  %473 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %controller_state, align 8
  %475 = ptrtoint ptr %474 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %474, align 4
  %477 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %len74, align 4
  %word_len2.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %474, i32 0, i32 2
  %479 = ptrtoint ptr %word_len2.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %word_len2.i, align 4
  %chconf0.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %474, i32 0, i32 5
  %481 = ptrtoint ptr %chconf0.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %chconf0.i.i, align 4
  %add.ptr.i267 = getelementptr i8, ptr %476, i32 56
  %add.ptr3.i = getelementptr i8, ptr %476, i32 60
  %add.ptr4.i = getelementptr i8, ptr %476, i32 48
  %shr.i = ashr i32 %480, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %478, i32 %shr.i)
  %cmp.i268 = icmp ult i32 %478, %shr.i
  br i1 %cmp.i268, label %if.else109.if.end111_crit_edge, label %if.end.i

if.else109.if.end111_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.end.i:                                         ; preds = %if.else109
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %480)
  %cmp5.i = icmp slt i32 %480, 9
  br i1 %cmp5.i, label %if.then6.i, label %if.else63.i

if.then6.i:                                       ; preds = %if.end.i
  %rx_buf.i269 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %483 = ptrtoint ptr %rx_buf.i269 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %rx_buf.i269, align 4
  %485 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %t, align 4
  %and.i270 = and i32 %482, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i270)
  %tobool.not.i271 = icmp eq i32 %and.i270, 0
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond59.i.do.body.i_crit_edge, %if.then6.i
  %tx.0.i = phi ptr [ %486, %if.then6.i ], [ %tx.1.i, %do.cond59.i.do.body.i_crit_edge ]
  %rx.0.i = phi ptr [ %484, %if.then6.i ], [ %rx.2.i, %do.cond59.i.do.body.i_crit_edge ]
  %c.0.i = phi i32 [ %478, %if.then6.i ], [ %c.2.i, %do.cond59.i.do.body.i_crit_edge ]
  %sub.i = add i32 %c.0.i, -1
  %cmp7.not.i = icmp eq ptr %tx.0.i, null
  br i1 %cmp7.not.i, label %do.body.i.if.end14.i285_crit_edge, label %if.then8.i274

do.body.i.if.end14.i285_crit_edge:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i285

if.then8.i274:                                    ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %487 = load volatile i32, ptr @jiffies, align 128
  %add.i.i272 = add i32 %487, 100
  %488 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %489 = and i32 %488, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %489)
  %tobool.not17.i.i273 = icmp eq i32 %489, 0
  br i1 %tobool.not17.i.i273, label %if.then8.i274.while.body.i.i277_crit_edge, label %if.then8.i274.if.end13.i283_crit_edge

if.then8.i274.if.end13.i283_crit_edge:            ; preds = %if.then8.i274
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i283

if.then8.i274.while.body.i.i277_crit_edge:        ; preds = %if.then8.i274
  br label %while.body.i.i277

while.body.i.i277:                                ; preds = %do.end.i.i281.while.body.i.i277_crit_edge, %if.then8.i274.while.body.i.i277_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %490 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i275 = sub i32 %add.i.i272, %490
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i275)
  %cmp.i.i276 = icmp slt i32 %sub.i.i275, 0
  br i1 %cmp.i.i276, label %if.then.i.i279, label %do.end.i.i281

if.then.i.i279:                                   ; preds = %while.body.i.i277
  %491 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %492 = and i32 %491, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %492)
  %tobool6.not.i.i278 = icmp eq i32 %492, 0
  br i1 %tobool6.not.i.i278, label %do.end.i282, label %if.then.i.i279.if.end13.i283_crit_edge

if.then.i.i279.if.end13.i283_crit_edge:           ; preds = %if.then.i.i279
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i283

do.end.i.i281:                                    ; preds = %while.body.i.i277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %493 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %494 = and i32 %493, 33554432
  %tobool.not.i.i280 = icmp eq i32 %494, 0
  br i1 %tobool.not.i.i280, label %do.end.i.i281.while.body.i.i277_crit_edge, label %do.end.i.i281.if.end13.i283_crit_edge

do.end.i.i281.if.end13.i283_crit_edge:            ; preds = %do.end.i.i281
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i283

do.end.i.i281.while.body.i.i277_crit_edge:        ; preds = %do.end.i.i281
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i277

do.end.i282:                                      ; preds = %if.then.i.i279
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.27) #14
  br label %out.i

if.end13.i283:                                    ; preds = %do.end.i.i281.if.end13.i283_crit_edge, %if.then.i.i279.if.end13.i283_crit_edge, %if.then8.i274.if.end13.i283_crit_edge
  %incdec.ptr.i = getelementptr i8, ptr %tx.0.i, i32 1
  %495 = ptrtoint ptr %tx.0.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %tx.0.i, align 1
  %conv.i = zext i8 %496 to i32
  %497 = shl nuw i32 %conv.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 %497) #11, !srcloc !163
  br label %if.end14.i285

if.end14.i285:                                    ; preds = %if.end13.i283, %do.body.i.if.end14.i285_crit_edge
  %tx.1.i = phi ptr [ %incdec.ptr.i, %if.end13.i283 ], [ null, %do.body.i.if.end14.i285_crit_edge ]
  %cmp15.not.i284 = icmp eq ptr %rx.0.i, null
  br i1 %cmp15.not.i284, label %if.end14.i285.do.cond59.i_crit_edge, label %if.then17.i

if.end14.i285.do.cond59.i_crit_edge:              ; preds = %if.end14.i285
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond59.i

if.then17.i:                                      ; preds = %if.end14.i285
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %498 = load volatile i32, ptr @jiffies, align 128
  %add.i352.i = add i32 %498, 100
  %499 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %500 = and i32 %499, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %500)
  %tobool.not17.i354.i = icmp eq i32 %500, 0
  br i1 %tobool.not17.i354.i, label %if.then17.i.while.body.i357.i_crit_edge, label %if.then17.i.if.end26.i_crit_edge

if.then17.i.if.end26.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then17.i.while.body.i357.i_crit_edge:          ; preds = %if.then17.i
  br label %while.body.i357.i

while.body.i357.i:                                ; preds = %do.end.i364.i.while.body.i357.i_crit_edge, %if.then17.i.while.body.i357.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %501 = load volatile i32, ptr @jiffies, align 128
  %sub.i355.i = sub i32 %add.i352.i, %501
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i355.i)
  %cmp.i356.i = icmp slt i32 %sub.i355.i, 0
  br i1 %cmp.i356.i, label %if.then.i361.i, label %do.end.i364.i

if.then.i361.i:                                   ; preds = %while.body.i357.i
  %502 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %503 = and i32 %502, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %503)
  %tobool6.not.i359.i = icmp eq i32 %503, 0
  br i1 %tobool6.not.i359.i, label %do.end24.i, label %if.then.i361.i.if.end26.i_crit_edge

if.then.i361.i.if.end26.i_crit_edge:              ; preds = %if.then.i361.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

do.end.i364.i:                                    ; preds = %while.body.i357.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %504 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %505 = and i32 %504, 16777216
  %tobool.not.i363.i = icmp eq i32 %505, 0
  br i1 %tobool.not.i363.i, label %do.end.i364.i.while.body.i357.i_crit_edge, label %do.end.i364.i.if.end26.i_crit_edge

do.end.i364.i.if.end26.i_crit_edge:               ; preds = %do.end.i364.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

do.end.i364.i.while.body.i357.i_crit_edge:        ; preds = %do.end.i364.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i357.i

do.end24.i:                                       ; preds = %if.then.i361.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.43) #14
  br label %out.i

if.end26.i:                                       ; preds = %do.end.i364.i.if.end26.i_crit_edge, %if.then.i361.i.if.end26.i_crit_edge, %if.then17.i.if.end26.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp27.i = icmp eq i32 %sub.i, 1
  %cmp29.i = icmp eq ptr %tx.1.i, null
  %or.cond.i = select i1 %cmp27.i, i1 %cmp29.i, i1 false
  %or.cond.not.i = xor i1 %or.cond.i, true
  %or.cond347.i = select i1 %or.cond.not.i, i1 true, i1 %tobool.not.i271
  br i1 %or.cond347.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end26.i
  %506 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %controller_state, align 8
  %chctrl0.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %507, i32 0, i32 6
  %508 = ptrtoint ptr %chctrl0.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %chctrl0.i.i, align 4
  %and.i368.i = and i32 %509, -2
  store i32 %and.i368.i, ptr %chctrl0.i.i, align 4
  %510 = load ptr, ptr %controller_state, align 8
  %511 = tail call i32 @llvm.bswap.i32(i32 %and.i368.i) #11
  %512 = ptrtoint ptr %510 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %510, align 4
  %add.ptr.i.i.i286 = getelementptr i8, ptr %513, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i286, i32 %511) #11, !srcloc !163
  %514 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %controller_state, align 8
  %516 = ptrtoint ptr %515 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %515, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %517, i32 52
  %518 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #11, !srcloc !164
  %519 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !164
  %520 = lshr i32 %519, 24
  %conv34.i = trunc i32 %520 to i8
  %521 = ptrtoint ptr %rx.0.i to i32
  call void @__asan_store1_noabort(i32 %521)
  store i8 %conv34.i, ptr %rx.0.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %522 = load volatile i32, ptr @jiffies, align 128
  %add.i369.i = add i32 %522, 100
  %523 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %524 = and i32 %523, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %524)
  %tobool.not17.i371.i = icmp eq i32 %524, 0
  br i1 %tobool.not17.i371.i, label %if.then32.i.while.body.i374.i_crit_edge, label %if.then32.i.if.end44.i_crit_edge

if.then32.i.if.end44.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then32.i.while.body.i374.i_crit_edge:          ; preds = %if.then32.i
  br label %while.body.i374.i

while.body.i374.i:                                ; preds = %do.end.i381.i.while.body.i374.i_crit_edge, %if.then32.i.while.body.i374.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %525 = load volatile i32, ptr @jiffies, align 128
  %sub.i372.i = sub i32 %add.i369.i, %525
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i372.i)
  %cmp.i373.i = icmp slt i32 %sub.i372.i, 0
  br i1 %cmp.i373.i, label %if.then.i378.i, label %do.end.i381.i

if.then.i378.i:                                   ; preds = %while.body.i374.i
  %526 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %527 = and i32 %526, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %527)
  %tobool6.not.i376.i = icmp eq i32 %527, 0
  br i1 %tobool6.not.i376.i, label %do.end42.i, label %if.then.i378.i.if.end44.i_crit_edge

if.then.i378.i.if.end44.i_crit_edge:              ; preds = %if.then.i378.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

do.end.i381.i:                                    ; preds = %while.body.i374.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %528 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %529 = and i32 %528, 16777216
  %tobool.not.i380.i = icmp eq i32 %529, 0
  br i1 %tobool.not.i380.i, label %do.end.i381.i.while.body.i374.i_crit_edge, label %do.end.i381.i.if.end44.i_crit_edge

do.end.i381.i.if.end44.i_crit_edge:               ; preds = %do.end.i381.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

do.end.i381.i.while.body.i374.i_crit_edge:        ; preds = %do.end.i381.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i374.i

do.end42.i:                                       ; preds = %if.then.i378.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.43) #14
  br label %out.i

if.end44.i:                                       ; preds = %do.end.i381.i.if.end44.i_crit_edge, %if.then.i378.i.if.end44.i_crit_edge, %if.then32.i.if.end44.i_crit_edge
  %incdec.ptr35.i = getelementptr i8, ptr %rx.0.i, i32 1
  br label %if.end52.i

if.else.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp45.i = icmp ne i32 %sub.i, 0
  %cmp29.not.i = xor i1 %cmp29.i, true
  %brmerge.i = select i1 %cmp45.i, i1 true, i1 %cmp29.not.i
  br i1 %brmerge.i, label %if.else.i.if.end52.i_crit_edge, label %if.then50.i287

if.else.i.if.end52.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.then50.i287:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %530 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %controller_state, align 8
  %chctrl0.i385.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %531, i32 0, i32 6
  %532 = ptrtoint ptr %chctrl0.i385.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %chctrl0.i385.i, align 4
  %and.i386.i = and i32 %533, -2
  store i32 %and.i386.i, ptr %chctrl0.i385.i, align 4
  %534 = load ptr, ptr %controller_state, align 8
  %535 = tail call i32 @llvm.bswap.i32(i32 %and.i386.i) #11
  %536 = ptrtoint ptr %534 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %534, align 4
  %add.ptr.i.i387.i = getelementptr i8, ptr %537, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i387.i, i32 %535) #11, !srcloc !163
  %538 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %controller_state, align 8
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %539, align 4
  %add.ptr.i10.i388.i = getelementptr i8, ptr %541, i32 52
  %542 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i388.i) #11, !srcloc !164
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i287, %if.else.i.if.end52.i_crit_edge, %if.end44.i
  %rx.1.i = phi ptr [ %incdec.ptr35.i, %if.end44.i ], [ %rx.0.i, %if.then50.i287 ], [ %rx.0.i, %if.else.i.if.end52.i_crit_edge ]
  %c.1.i = phi i32 [ 0, %if.end44.i ], [ 0, %if.then50.i287 ], [ %sub.i, %if.else.i.if.end52.i_crit_edge ]
  %543 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !164
  %544 = lshr i32 %543, 24
  %conv56.i = trunc i32 %544 to i8
  %incdec.ptr57.i = getelementptr i8, ptr %rx.1.i, i32 1
  %545 = ptrtoint ptr %rx.1.i to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 %conv56.i, ptr %rx.1.i, align 1
  br label %do.cond59.i

do.cond59.i:                                      ; preds = %if.end52.i, %if.end14.i285.do.cond59.i_crit_edge
  %rx.2.i = phi ptr [ %incdec.ptr57.i, %if.end52.i ], [ null, %if.end14.i285.do.cond59.i_crit_edge ]
  %c.2.i = phi i32 [ %c.1.i, %if.end52.i ], [ %sub.i, %if.end14.i285.do.cond59.i_crit_edge ]
  %tobool60.not.i = icmp eq i32 %c.2.i, 0
  br i1 %tobool60.not.i, label %do.cond59.i.if.end228.i_crit_edge, label %do.cond59.i.do.body.i_crit_edge

do.cond59.i.do.body.i_crit_edge:                  ; preds = %do.cond59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.cond59.i.if.end228.i_crit_edge:                ; preds = %do.cond59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228.i

if.else63.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %480)
  %cmp64.i = icmp ult i32 %480, 17
  br i1 %cmp64.i, label %if.then66.i, label %if.else146.i

if.then66.i:                                      ; preds = %if.else63.i
  %rx_buf69.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %546 = ptrtoint ptr %rx_buf69.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %rx_buf69.i, align 4
  %548 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %t, align 4
  %and106.i = and i32 %482, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br label %do.body71.i

do.body71.i:                                      ; preds = %do.cond138.i.do.body71.i_crit_edge, %if.then66.i
  %rx67.0.i = phi ptr [ %547, %if.then66.i ], [ %rx67.2.i, %do.cond138.i.do.body71.i_crit_edge ]
  %tx68.0.i = phi ptr [ %549, %if.then66.i ], [ %tx68.1.i, %do.cond138.i.do.body71.i_crit_edge ]
  %c.4.i = phi i32 [ %478, %if.then66.i ], [ %c.6.i, %do.cond138.i.do.body71.i_crit_edge ]
  %sub72.i = add i32 %c.4.i, -2
  %cmp73.not.i = icmp eq ptr %tx68.0.i, null
  br i1 %cmp73.not.i, label %do.body71.i.if.end87.i_crit_edge, label %if.then75.i

do.body71.i.if.end87.i_crit_edge:                 ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87.i

if.then75.i:                                      ; preds = %do.body71.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %550 = load volatile i32, ptr @jiffies, align 128
  %add.i389.i = add i32 %550, 100
  %551 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %552 = and i32 %551, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %552)
  %tobool.not17.i391.i = icmp eq i32 %552, 0
  br i1 %tobool.not17.i391.i, label %if.then75.i.while.body.i394.i_crit_edge, label %if.then75.i.if.end84.i_crit_edge

if.then75.i.if.end84.i_crit_edge:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84.i

if.then75.i.while.body.i394.i_crit_edge:          ; preds = %if.then75.i
  br label %while.body.i394.i

while.body.i394.i:                                ; preds = %do.end.i401.i.while.body.i394.i_crit_edge, %if.then75.i.while.body.i394.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %553 = load volatile i32, ptr @jiffies, align 128
  %sub.i392.i = sub i32 %add.i389.i, %553
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i392.i)
  %cmp.i393.i = icmp slt i32 %sub.i392.i, 0
  br i1 %cmp.i393.i, label %if.then.i398.i, label %do.end.i401.i

if.then.i398.i:                                   ; preds = %while.body.i394.i
  %554 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %555 = and i32 %554, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %555)
  %tobool6.not.i396.i = icmp eq i32 %555, 0
  br i1 %tobool6.not.i396.i, label %do.end82.i, label %if.then.i398.i.if.end84.i_crit_edge

if.then.i398.i.if.end84.i_crit_edge:              ; preds = %if.then.i398.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84.i

do.end.i401.i:                                    ; preds = %while.body.i394.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %556 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %557 = and i32 %556, 33554432
  %tobool.not.i400.i = icmp eq i32 %557, 0
  br i1 %tobool.not.i400.i, label %do.end.i401.i.while.body.i394.i_crit_edge, label %do.end.i401.i.if.end84.i_crit_edge

do.end.i401.i.if.end84.i_crit_edge:               ; preds = %do.end.i401.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84.i

do.end.i401.i.while.body.i394.i_crit_edge:        ; preds = %do.end.i401.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i394.i

do.end82.i:                                       ; preds = %if.then.i398.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.27) #14
  br label %out.i

if.end84.i:                                       ; preds = %do.end.i401.i.if.end84.i_crit_edge, %if.then.i398.i.if.end84.i_crit_edge, %if.then75.i.if.end84.i_crit_edge
  %incdec.ptr85.i = getelementptr i16, ptr %tx68.0.i, i32 1
  %558 = ptrtoint ptr %tx68.0.i to i32
  call void @__asan_load2_noabort(i32 %558)
  %559 = load i16, ptr %tx68.0.i, align 2
  %conv86.i = zext i16 %559 to i32
  %560 = tail call i32 @llvm.bswap.i32(i32 %conv86.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 %560) #11, !srcloc !163
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.end84.i, %do.body71.i.if.end87.i_crit_edge
  %tx68.1.i = phi ptr [ %incdec.ptr85.i, %if.end84.i ], [ null, %do.body71.i.if.end87.i_crit_edge ]
  %cmp88.not.i = icmp eq ptr %rx67.0.i, null
  br i1 %cmp88.not.i, label %if.end87.i.do.cond138.i_crit_edge, label %if.then90.i

if.end87.i.do.cond138.i_crit_edge:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond138.i

if.then90.i:                                      ; preds = %if.end87.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %561 = load volatile i32, ptr @jiffies, align 128
  %add.i404.i = add i32 %561, 100
  %562 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %563 = and i32 %562, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %563)
  %tobool.not17.i406.i = icmp eq i32 %563, 0
  br i1 %tobool.not17.i406.i, label %if.then90.i.while.body.i409.i_crit_edge, label %if.then90.i.if.end99.i_crit_edge

if.then90.i.if.end99.i_crit_edge:                 ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

if.then90.i.while.body.i409.i_crit_edge:          ; preds = %if.then90.i
  br label %while.body.i409.i

while.body.i409.i:                                ; preds = %do.end.i416.i.while.body.i409.i_crit_edge, %if.then90.i.while.body.i409.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %564 = load volatile i32, ptr @jiffies, align 128
  %sub.i407.i = sub i32 %add.i404.i, %564
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i407.i)
  %cmp.i408.i = icmp slt i32 %sub.i407.i, 0
  br i1 %cmp.i408.i, label %if.then.i413.i, label %do.end.i416.i

if.then.i413.i:                                   ; preds = %while.body.i409.i
  %565 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %566 = and i32 %565, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %566)
  %tobool6.not.i411.i = icmp eq i32 %566, 0
  br i1 %tobool6.not.i411.i, label %do.end97.i, label %if.then.i413.i.if.end99.i_crit_edge

if.then.i413.i.if.end99.i_crit_edge:              ; preds = %if.then.i413.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

do.end.i416.i:                                    ; preds = %while.body.i409.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %567 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %568 = and i32 %567, 16777216
  %tobool.not.i415.i = icmp eq i32 %568, 0
  br i1 %tobool.not.i415.i, label %do.end.i416.i.while.body.i409.i_crit_edge, label %do.end.i416.i.if.end99.i_crit_edge

do.end.i416.i.if.end99.i_crit_edge:               ; preds = %do.end.i416.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99.i

do.end.i416.i.while.body.i409.i_crit_edge:        ; preds = %do.end.i416.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i409.i

do.end97.i:                                       ; preds = %if.then.i413.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.43) #14
  br label %out.i

if.end99.i:                                       ; preds = %do.end.i416.i.if.end99.i_crit_edge, %if.then.i413.i.if.end99.i_crit_edge, %if.then90.i.if.end99.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub72.i)
  %cmp100.i = icmp eq i32 %sub72.i, 2
  %cmp103.i = icmp eq ptr %tx68.1.i, null
  %or.cond348.i = select i1 %cmp100.i, i1 %cmp103.i, i1 false
  %or.cond348.not.i = xor i1 %or.cond348.i, true
  %or.cond349.i = select i1 %or.cond348.not.i, i1 true, i1 %tobool107.not.i
  br i1 %or.cond349.i, label %if.else123.i, label %if.then108.i

if.then108.i:                                     ; preds = %if.end99.i
  %569 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %controller_state, align 8
  %chctrl0.i420.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %570, i32 0, i32 6
  %571 = ptrtoint ptr %chctrl0.i420.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %chctrl0.i420.i, align 4
  %and.i421.i = and i32 %572, -2
  store i32 %and.i421.i, ptr %chctrl0.i420.i, align 4
  %573 = load ptr, ptr %controller_state, align 8
  %574 = tail call i32 @llvm.bswap.i32(i32 %and.i421.i) #11
  %575 = ptrtoint ptr %573 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %573, align 4
  %add.ptr.i.i422.i = getelementptr i8, ptr %576, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i422.i, i32 %574) #11, !srcloc !163
  %577 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %controller_state, align 8
  %579 = ptrtoint ptr %578 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %578, align 4
  %add.ptr.i10.i423.i = getelementptr i8, ptr %580, i32 52
  %581 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i423.i) #11, !srcloc !164
  %582 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !164
  %583 = tail call i32 @llvm.bswap.i32(i32 %582) #11
  %conv112.i = trunc i32 %583 to i16
  %584 = ptrtoint ptr %rx67.0.i to i32
  call void @__asan_store2_noabort(i32 %584)
  store i16 %conv112.i, ptr %rx67.0.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %585 = load volatile i32, ptr @jiffies, align 128
  %add.i424.i = add i32 %585, 100
  %586 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %587 = and i32 %586, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %587)
  %tobool.not17.i426.i = icmp eq i32 %587, 0
  br i1 %tobool.not17.i426.i, label %if.then108.i.while.body.i429.i_crit_edge, label %if.then108.i.if.end122.i_crit_edge

if.then108.i.if.end122.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122.i

if.then108.i.while.body.i429.i_crit_edge:         ; preds = %if.then108.i
  br label %while.body.i429.i

while.body.i429.i:                                ; preds = %do.end.i436.i.while.body.i429.i_crit_edge, %if.then108.i.while.body.i429.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %588 = load volatile i32, ptr @jiffies, align 128
  %sub.i427.i = sub i32 %add.i424.i, %588
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i427.i)
  %cmp.i428.i = icmp slt i32 %sub.i427.i, 0
  br i1 %cmp.i428.i, label %if.then.i433.i, label %do.end.i436.i

if.then.i433.i:                                   ; preds = %while.body.i429.i
  %589 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %590 = and i32 %589, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %590)
  %tobool6.not.i431.i = icmp eq i32 %590, 0
  br i1 %tobool6.not.i431.i, label %do.end120.i, label %if.then.i433.i.if.end122.i_crit_edge

if.then.i433.i.if.end122.i_crit_edge:             ; preds = %if.then.i433.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122.i

do.end.i436.i:                                    ; preds = %while.body.i429.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %591 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %592 = and i32 %591, 16777216
  %tobool.not.i435.i = icmp eq i32 %592, 0
  br i1 %tobool.not.i435.i, label %do.end.i436.i.while.body.i429.i_crit_edge, label %do.end.i436.i.if.end122.i_crit_edge

do.end.i436.i.if.end122.i_crit_edge:              ; preds = %do.end.i436.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122.i

do.end.i436.i.while.body.i429.i_crit_edge:        ; preds = %do.end.i436.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i429.i

do.end120.i:                                      ; preds = %if.then.i433.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.43) #14
  br label %out.i

if.end122.i:                                      ; preds = %do.end.i436.i.if.end122.i_crit_edge, %if.then.i433.i.if.end122.i_crit_edge, %if.then108.i.if.end122.i_crit_edge
  %incdec.ptr113.i = getelementptr i16, ptr %rx67.0.i, i32 1
  br label %if.end131.i

if.else123.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub72.i)
  %cmp124.i = icmp ne i32 %sub72.i, 0
  %cmp103.not.i = xor i1 %cmp103.i, true
  %brmerge577.i = select i1 %cmp124.i, i1 true, i1 %cmp103.not.i
  br i1 %brmerge577.i, label %if.else123.i.if.end131.i_crit_edge, label %if.then129.i

if.else123.i.if.end131.i_crit_edge:               ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

if.then129.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #13
  %593 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %controller_state, align 8
  %chctrl0.i440.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %594, i32 0, i32 6
  %595 = ptrtoint ptr %chctrl0.i440.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %chctrl0.i440.i, align 4
  %and.i441.i = and i32 %596, -2
  store i32 %and.i441.i, ptr %chctrl0.i440.i, align 4
  %597 = load ptr, ptr %controller_state, align 8
  %598 = tail call i32 @llvm.bswap.i32(i32 %and.i441.i) #11
  %599 = ptrtoint ptr %597 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %597, align 4
  %add.ptr.i.i442.i = getelementptr i8, ptr %600, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i442.i, i32 %598) #11, !srcloc !163
  %601 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %controller_state, align 8
  %603 = ptrtoint ptr %602 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %602, align 4
  %add.ptr.i10.i443.i = getelementptr i8, ptr %604, i32 52
  %605 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i443.i) #11, !srcloc !164
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then129.i, %if.else123.i.if.end131.i_crit_edge, %if.end122.i
  %rx67.1.i = phi ptr [ %incdec.ptr113.i, %if.end122.i ], [ %rx67.0.i, %if.then129.i ], [ %rx67.0.i, %if.else123.i.if.end131.i_crit_edge ]
  %c.5.i = phi i32 [ 0, %if.end122.i ], [ 0, %if.then129.i ], [ %sub72.i, %if.else123.i.if.end131.i_crit_edge ]
  %606 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !164
  %607 = tail call i32 @llvm.bswap.i32(i32 %606) #11
  %conv135.i = trunc i32 %607 to i16
  %incdec.ptr136.i = getelementptr i16, ptr %rx67.1.i, i32 1
  %608 = ptrtoint ptr %rx67.1.i to i32
  call void @__asan_store2_noabort(i32 %608)
  store i16 %conv135.i, ptr %rx67.1.i, align 2
  br label %do.cond138.i

do.cond138.i:                                     ; preds = %if.end131.i, %if.end87.i.do.cond138.i_crit_edge
  %rx67.2.i = phi ptr [ %incdec.ptr136.i, %if.end131.i ], [ null, %if.end87.i.do.cond138.i_crit_edge ]
  %c.6.i = phi i32 [ %c.5.i, %if.end131.i ], [ %sub72.i, %if.end87.i.do.cond138.i_crit_edge ]
  %cmp139.i = icmp ugt i32 %c.6.i, 1
  br i1 %cmp139.i, label %do.cond138.i.do.body71.i_crit_edge, label %do.cond138.i.if.end228.i_crit_edge

do.cond138.i.if.end228.i_crit_edge:               ; preds = %do.cond138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228.i

do.cond138.i.do.body71.i_crit_edge:               ; preds = %do.cond138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body71.i

if.else146.i:                                     ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %480)
  %cmp147.i = icmp ult i32 %480, 33
  br i1 %cmp147.i, label %if.then149.i, label %if.else146.i.if.end228.i_crit_edge

if.else146.i.if.end228.i_crit_edge:               ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228.i

if.then149.i:                                     ; preds = %if.else146.i
  %rx_buf152.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %609 = ptrtoint ptr %rx_buf152.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %rx_buf152.i, align 4
  %611 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %t, align 4
  %and188.i = and i32 %482, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188.i)
  %tobool189.not.i = icmp eq i32 %and188.i, 0
  br label %do.body154.i

do.body154.i:                                     ; preds = %do.cond218.i.do.body154.i_crit_edge, %if.then149.i
  %rx150.0.i = phi ptr [ %610, %if.then149.i ], [ %rx150.2.i, %do.cond218.i.do.body154.i_crit_edge ]
  %tx151.0.i = phi ptr [ %612, %if.then149.i ], [ %tx151.1.i, %do.cond218.i.do.body154.i_crit_edge ]
  %c.8.i = phi i32 [ %478, %if.then149.i ], [ %c.10.i, %do.cond218.i.do.body154.i_crit_edge ]
  %sub155.i = add i32 %c.8.i, -4
  %cmp156.not.i = icmp eq ptr %tx151.0.i, null
  br i1 %cmp156.not.i, label %do.body154.i.if.end169.i_crit_edge, label %if.then158.i

do.body154.i.if.end169.i_crit_edge:               ; preds = %do.body154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169.i

if.then158.i:                                     ; preds = %do.body154.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %613 = load volatile i32, ptr @jiffies, align 128
  %add.i444.i = add i32 %613, 100
  %614 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %615 = and i32 %614, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %615)
  %tobool.not17.i446.i = icmp eq i32 %615, 0
  br i1 %tobool.not17.i446.i, label %if.then158.i.while.body.i449.i_crit_edge, label %if.then158.i.if.end167.i_crit_edge

if.then158.i.if.end167.i_crit_edge:               ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167.i

if.then158.i.while.body.i449.i_crit_edge:         ; preds = %if.then158.i
  br label %while.body.i449.i

while.body.i449.i:                                ; preds = %do.end.i456.i.while.body.i449.i_crit_edge, %if.then158.i.while.body.i449.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %616 = load volatile i32, ptr @jiffies, align 128
  %sub.i447.i = sub i32 %add.i444.i, %616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i447.i)
  %cmp.i448.i = icmp slt i32 %sub.i447.i, 0
  br i1 %cmp.i448.i, label %if.then.i453.i, label %do.end.i456.i

if.then.i453.i:                                   ; preds = %while.body.i449.i
  %617 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %618 = and i32 %617, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %618)
  %tobool6.not.i451.i = icmp eq i32 %618, 0
  br i1 %tobool6.not.i451.i, label %do.end165.i, label %if.then.i453.i.if.end167.i_crit_edge

if.then.i453.i.if.end167.i_crit_edge:             ; preds = %if.then.i453.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167.i

do.end.i456.i:                                    ; preds = %while.body.i449.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %619 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %620 = and i32 %619, 33554432
  %tobool.not.i455.i = icmp eq i32 %620, 0
  br i1 %tobool.not.i455.i, label %do.end.i456.i.while.body.i449.i_crit_edge, label %do.end.i456.i.if.end167.i_crit_edge

do.end.i456.i.if.end167.i_crit_edge:              ; preds = %do.end.i456.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167.i

do.end.i456.i.while.body.i449.i_crit_edge:        ; preds = %do.end.i456.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i449.i

do.end165.i:                                      ; preds = %if.then.i453.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.27) #14
  br label %out.i

if.end167.i:                                      ; preds = %do.end.i456.i.if.end167.i_crit_edge, %if.then.i453.i.if.end167.i_crit_edge, %if.then158.i.if.end167.i_crit_edge
  %incdec.ptr168.i = getelementptr i32, ptr %tx151.0.i, i32 1
  %621 = ptrtoint ptr %tx151.0.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %tx151.0.i, align 4
  %623 = tail call i32 @llvm.bswap.i32(i32 %622) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 %623) #11, !srcloc !163
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.end167.i, %do.body154.i.if.end169.i_crit_edge
  %tx151.1.i = phi ptr [ %incdec.ptr168.i, %if.end167.i ], [ null, %do.body154.i.if.end169.i_crit_edge ]
  %cmp170.not.i = icmp eq ptr %rx150.0.i, null
  br i1 %cmp170.not.i, label %if.end169.i.do.cond218.i_crit_edge, label %if.then172.i

if.end169.i.do.cond218.i_crit_edge:               ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond218.i

if.then172.i:                                     ; preds = %if.end169.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %624 = load volatile i32, ptr @jiffies, align 128
  %add.i459.i = add i32 %624, 100
  %625 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %626 = and i32 %625, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %626)
  %tobool.not17.i461.i = icmp eq i32 %626, 0
  br i1 %tobool.not17.i461.i, label %if.then172.i.while.body.i464.i_crit_edge, label %if.then172.i.if.end181.i_crit_edge

if.then172.i.if.end181.i_crit_edge:               ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181.i

if.then172.i.while.body.i464.i_crit_edge:         ; preds = %if.then172.i
  br label %while.body.i464.i

while.body.i464.i:                                ; preds = %do.end.i471.i.while.body.i464.i_crit_edge, %if.then172.i.while.body.i464.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %627 = load volatile i32, ptr @jiffies, align 128
  %sub.i462.i = sub i32 %add.i459.i, %627
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i462.i)
  %cmp.i463.i = icmp slt i32 %sub.i462.i, 0
  br i1 %cmp.i463.i, label %if.then.i468.i, label %do.end.i471.i

if.then.i468.i:                                   ; preds = %while.body.i464.i
  %628 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %629 = and i32 %628, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %629)
  %tobool6.not.i466.i = icmp eq i32 %629, 0
  br i1 %tobool6.not.i466.i, label %do.end179.i, label %if.then.i468.i.if.end181.i_crit_edge

if.then.i468.i.if.end181.i_crit_edge:             ; preds = %if.then.i468.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181.i

do.end.i471.i:                                    ; preds = %while.body.i464.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %630 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %631 = and i32 %630, 16777216
  %tobool.not.i470.i = icmp eq i32 %631, 0
  br i1 %tobool.not.i470.i, label %do.end.i471.i.while.body.i464.i_crit_edge, label %do.end.i471.i.if.end181.i_crit_edge

do.end.i471.i.if.end181.i_crit_edge:              ; preds = %do.end.i471.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181.i

do.end.i471.i.while.body.i464.i_crit_edge:        ; preds = %do.end.i471.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i464.i

do.end179.i:                                      ; preds = %if.then.i468.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.43) #14
  br label %out.i

if.end181.i:                                      ; preds = %do.end.i471.i.if.end181.i_crit_edge, %if.then.i468.i.if.end181.i_crit_edge, %if.then172.i.if.end181.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub155.i)
  %cmp182.i = icmp eq i32 %sub155.i, 4
  %cmp185.i = icmp eq ptr %tx151.1.i, null
  %or.cond350.i = select i1 %cmp182.i, i1 %cmp185.i, i1 false
  %or.cond350.not.i = xor i1 %or.cond350.i, true
  %or.cond351.i = select i1 %or.cond350.not.i, i1 true, i1 %tobool189.not.i
  br i1 %or.cond351.i, label %if.else204.i, label %if.then190.i

if.then190.i:                                     ; preds = %if.end181.i
  %632 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %controller_state, align 8
  %chctrl0.i475.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %633, i32 0, i32 6
  %634 = ptrtoint ptr %chctrl0.i475.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %chctrl0.i475.i, align 4
  %and.i476.i = and i32 %635, -2
  store i32 %and.i476.i, ptr %chctrl0.i475.i, align 4
  %636 = load ptr, ptr %controller_state, align 8
  %637 = tail call i32 @llvm.bswap.i32(i32 %and.i476.i) #11
  %638 = ptrtoint ptr %636 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %636, align 4
  %add.ptr.i.i477.i = getelementptr i8, ptr %639, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i477.i, i32 %637) #11, !srcloc !163
  %640 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %controller_state, align 8
  %642 = ptrtoint ptr %641 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %641, align 4
  %add.ptr.i10.i478.i = getelementptr i8, ptr %643, i32 52
  %644 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i478.i) #11, !srcloc !164
  %645 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !164
  %646 = tail call i32 @llvm.bswap.i32(i32 %645) #11
  %647 = ptrtoint ptr %rx150.0.i to i32
  call void @__asan_store4_noabort(i32 %647)
  store i32 %646, ptr %rx150.0.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %648 = load volatile i32, ptr @jiffies, align 128
  %add.i479.i = add i32 %648, 100
  %649 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %650 = and i32 %649, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %650)
  %tobool.not17.i481.i = icmp eq i32 %650, 0
  br i1 %tobool.not17.i481.i, label %if.then190.i.while.body.i484.i_crit_edge, label %if.then190.i.if.end203.i_crit_edge

if.then190.i.if.end203.i_crit_edge:               ; preds = %if.then190.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203.i

if.then190.i.while.body.i484.i_crit_edge:         ; preds = %if.then190.i
  br label %while.body.i484.i

while.body.i484.i:                                ; preds = %do.end.i491.i.while.body.i484.i_crit_edge, %if.then190.i.while.body.i484.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %651 = load volatile i32, ptr @jiffies, align 128
  %sub.i482.i = sub i32 %add.i479.i, %651
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i482.i)
  %cmp.i483.i = icmp slt i32 %sub.i482.i, 0
  br i1 %cmp.i483.i, label %if.then.i488.i, label %do.end.i491.i

if.then.i488.i:                                   ; preds = %while.body.i484.i
  %652 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %653 = and i32 %652, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %653)
  %tobool6.not.i486.i = icmp eq i32 %653, 0
  br i1 %tobool6.not.i486.i, label %do.end201.i, label %if.then.i488.i.if.end203.i_crit_edge

if.then.i488.i.if.end203.i_crit_edge:             ; preds = %if.then.i488.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203.i

do.end.i491.i:                                    ; preds = %while.body.i484.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %654 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %655 = and i32 %654, 16777216
  %tobool.not.i490.i = icmp eq i32 %655, 0
  br i1 %tobool.not.i490.i, label %do.end.i491.i.while.body.i484.i_crit_edge, label %do.end.i491.i.if.end203.i_crit_edge

do.end.i491.i.if.end203.i_crit_edge:              ; preds = %do.end.i491.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203.i

do.end.i491.i.while.body.i484.i_crit_edge:        ; preds = %do.end.i491.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i484.i

do.end201.i:                                      ; preds = %if.then.i488.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.43) #14
  br label %out.i

if.end203.i:                                      ; preds = %do.end.i491.i.if.end203.i_crit_edge, %if.then.i488.i.if.end203.i_crit_edge, %if.then190.i.if.end203.i_crit_edge
  %incdec.ptr194.i = getelementptr i32, ptr %rx150.0.i, i32 1
  br label %if.end212.i

if.else204.i:                                     ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub155.i)
  %cmp205.i = icmp ne i32 %sub155.i, 0
  %cmp185.not.i = xor i1 %cmp185.i, true
  %brmerge578.i = select i1 %cmp205.i, i1 true, i1 %cmp185.not.i
  br i1 %brmerge578.i, label %if.else204.i.if.end212.i_crit_edge, label %if.then210.i

if.else204.i.if.end212.i_crit_edge:               ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end212.i

if.then210.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #13
  %656 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %controller_state, align 8
  %chctrl0.i495.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %657, i32 0, i32 6
  %658 = ptrtoint ptr %chctrl0.i495.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %chctrl0.i495.i, align 4
  %and.i496.i = and i32 %659, -2
  store i32 %and.i496.i, ptr %chctrl0.i495.i, align 4
  %660 = load ptr, ptr %controller_state, align 8
  %661 = tail call i32 @llvm.bswap.i32(i32 %and.i496.i) #11
  %662 = ptrtoint ptr %660 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %660, align 4
  %add.ptr.i.i497.i = getelementptr i8, ptr %663, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i497.i, i32 %661) #11, !srcloc !163
  %664 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %controller_state, align 8
  %666 = ptrtoint ptr %665 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %665, align 4
  %add.ptr.i10.i498.i = getelementptr i8, ptr %667, i32 52
  %668 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i498.i) #11, !srcloc !164
  br label %if.end212.i

if.end212.i:                                      ; preds = %if.then210.i, %if.else204.i.if.end212.i_crit_edge, %if.end203.i
  %rx150.1.i = phi ptr [ %incdec.ptr194.i, %if.end203.i ], [ %rx150.0.i, %if.then210.i ], [ %rx150.0.i, %if.else204.i.if.end212.i_crit_edge ]
  %c.9.i = phi i32 [ 0, %if.end203.i ], [ 0, %if.then210.i ], [ %sub155.i, %if.else204.i.if.end212.i_crit_edge ]
  %669 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !164
  %670 = tail call i32 @llvm.bswap.i32(i32 %669) #11
  %incdec.ptr216.i = getelementptr i32, ptr %rx150.1.i, i32 1
  %671 = ptrtoint ptr %rx150.1.i to i32
  call void @__asan_store4_noabort(i32 %671)
  store i32 %670, ptr %rx150.1.i, align 4
  br label %do.cond218.i

do.cond218.i:                                     ; preds = %if.end212.i, %if.end169.i.do.cond218.i_crit_edge
  %rx150.2.i = phi ptr [ %incdec.ptr216.i, %if.end212.i ], [ null, %if.end169.i.do.cond218.i_crit_edge ]
  %c.10.i = phi i32 [ %c.9.i, %if.end212.i ], [ %sub155.i, %if.end169.i.do.cond218.i_crit_edge ]
  %cmp219.i = icmp ugt i32 %c.10.i, 3
  br i1 %cmp219.i, label %do.cond218.i.do.body154.i_crit_edge, label %do.cond218.i.if.end228.i_crit_edge

do.cond218.i.if.end228.i_crit_edge:               ; preds = %do.cond218.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228.i

do.cond218.i.do.body154.i_crit_edge:              ; preds = %do.cond218.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body154.i

if.end228.i:                                      ; preds = %do.cond218.i.if.end228.i_crit_edge, %if.else146.i.if.end228.i_crit_edge, %do.cond138.i.if.end228.i_crit_edge, %do.cond59.i.if.end228.i_crit_edge
  %c.12.i = phi i32 [ %478, %if.else146.i.if.end228.i_crit_edge ], [ 0, %do.cond59.i.if.end228.i_crit_edge ], [ %c.6.i, %do.cond138.i.if.end228.i_crit_edge ], [ %c.10.i, %do.cond218.i.if.end228.i_crit_edge ]
  %rx_buf229.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %672 = ptrtoint ptr %rx_buf229.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %rx_buf229.i, align 4
  %cmp230.i = icmp eq ptr %673, null
  br i1 %cmp230.i, label %if.then232.i, label %if.end228.i.out.i_crit_edge

if.end228.i.out.i_crit_edge:                      ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then232.i:                                     ; preds = %if.end228.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %674 = load volatile i32, ptr @jiffies, align 128
  %add.i499.i = add i32 %674, 100
  %675 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %676 = and i32 %675, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %676)
  %tobool.not17.i501.i = icmp eq i32 %676, 0
  br i1 %tobool.not17.i501.i, label %if.then232.i.while.body.i504.i_crit_edge, label %if.then232.i.if.else241.i_crit_edge

if.then232.i.if.else241.i_crit_edge:              ; preds = %if.then232.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else241.i

if.then232.i.while.body.i504.i_crit_edge:         ; preds = %if.then232.i
  br label %while.body.i504.i

while.body.i504.i:                                ; preds = %do.end.i511.i.while.body.i504.i_crit_edge, %if.then232.i.while.body.i504.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %677 = load volatile i32, ptr @jiffies, align 128
  %sub.i502.i = sub i32 %add.i499.i, %677
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i502.i)
  %cmp.i503.i = icmp slt i32 %sub.i502.i, 0
  br i1 %cmp.i503.i, label %if.then.i508.i, label %do.end.i511.i

if.then.i508.i:                                   ; preds = %while.body.i504.i
  %678 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %679 = and i32 %678, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %679)
  %tobool6.not.i506.i = icmp eq i32 %679, 0
  br i1 %tobool6.not.i506.i, label %if.then.i508.i.if.end251.sink.split.i_crit_edge, label %if.then.i508.i.if.else241.i_crit_edge

if.then.i508.i.if.else241.i_crit_edge:            ; preds = %if.then.i508.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else241.i

if.then.i508.i.if.end251.sink.split.i_crit_edge:  ; preds = %if.then.i508.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251.sink.split.i

do.end.i511.i:                                    ; preds = %while.body.i504.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %680 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %681 = and i32 %680, 33554432
  %tobool.not.i510.i = icmp eq i32 %681, 0
  br i1 %tobool.not.i510.i, label %do.end.i511.i.while.body.i504.i_crit_edge, label %do.end.i511.i.if.else241.i_crit_edge

do.end.i511.i.if.else241.i_crit_edge:             ; preds = %do.end.i511.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else241.i

do.end.i511.i.while.body.i504.i_crit_edge:        ; preds = %do.end.i511.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i504.i

if.else241.i:                                     ; preds = %do.end.i511.i.if.else241.i_crit_edge, %if.then.i508.i.if.else241.i_crit_edge, %if.then232.i.if.else241.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %682 = load volatile i32, ptr @jiffies, align 128
  %add.i514.i = add i32 %682, 100
  %683 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %684 = and i32 %683, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %684)
  %tobool.not17.i516.i = icmp eq i32 %684, 0
  br i1 %tobool.not17.i516.i, label %if.else241.i.while.body.i519.i_crit_edge, label %if.else241.i.if.end251.i_crit_edge

if.else241.i.if.end251.i_crit_edge:               ; preds = %if.else241.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251.i

if.else241.i.while.body.i519.i_crit_edge:         ; preds = %if.else241.i
  br label %while.body.i519.i

while.body.i519.i:                                ; preds = %do.end.i526.i.while.body.i519.i_crit_edge, %if.else241.i.while.body.i519.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %685 = load volatile i32, ptr @jiffies, align 128
  %sub.i517.i = sub i32 %add.i514.i, %685
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i517.i)
  %cmp.i518.i = icmp slt i32 %sub.i517.i, 0
  br i1 %cmp.i518.i, label %if.then.i523.i, label %do.end.i526.i

if.then.i523.i:                                   ; preds = %while.body.i519.i
  %686 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %687 = and i32 %686, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %687)
  %tobool6.not.i521.i = icmp eq i32 %687, 0
  br i1 %tobool6.not.i521.i, label %if.then.i523.i.if.end251.sink.split.i_crit_edge, label %if.then.i523.i.if.end251.i_crit_edge

if.then.i523.i.if.end251.i_crit_edge:             ; preds = %if.then.i523.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251.i

if.then.i523.i.if.end251.sink.split.i_crit_edge:  ; preds = %if.then.i523.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251.sink.split.i

do.end.i526.i:                                    ; preds = %while.body.i519.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %688 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !164
  %689 = and i32 %688, 67108864
  %tobool.not.i525.i = icmp eq i32 %689, 0
  br i1 %tobool.not.i525.i, label %do.end.i526.i.while.body.i519.i_crit_edge, label %do.end.i526.i.if.end251.i_crit_edge

do.end.i526.i.if.end251.i_crit_edge:              ; preds = %do.end.i526.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251.i

do.end.i526.i.while.body.i519.i_crit_edge:        ; preds = %do.end.i526.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i519.i

if.end251.sink.split.i:                           ; preds = %if.then.i523.i.if.end251.sink.split.i_crit_edge, %if.then.i508.i.if.end251.sink.split.i_crit_edge
  %.str.30.sink.i = phi ptr [ @.str.27, %if.then.i508.i.if.end251.sink.split.i_crit_edge ], [ @.str.30, %if.then.i523.i.if.end251.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull %.str.30.sink.i) #14
  br label %if.end251.i

if.end251.i:                                      ; preds = %if.end251.sink.split.i, %do.end.i526.i.if.end251.i_crit_edge, %if.then.i523.i.if.end251.i_crit_edge, %if.else241.i.if.end251.i_crit_edge
  %690 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %controller_state, align 8
  %chctrl0.i530.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %691, i32 0, i32 6
  %692 = ptrtoint ptr %chctrl0.i530.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %chctrl0.i530.i, align 4
  %and.i531.i = and i32 %693, -2
  store i32 %and.i531.i, ptr %chctrl0.i530.i, align 4
  %694 = load ptr, ptr %controller_state, align 8
  %695 = tail call i32 @llvm.bswap.i32(i32 %and.i531.i) #11
  %696 = ptrtoint ptr %694 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %694, align 4
  %add.ptr.i.i532.i = getelementptr i8, ptr %697, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i532.i, i32 %695) #11, !srcloc !163
  %698 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %controller_state, align 8
  %700 = ptrtoint ptr %699 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %699, align 4
  %add.ptr.i10.i533.i = getelementptr i8, ptr %701, i32 52
  %702 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i533.i) #11, !srcloc !164
  br label %out.i

out.i:                                            ; preds = %if.end251.i, %if.end228.i.out.i_crit_edge, %do.end201.i, %do.end179.i, %do.end165.i, %do.end120.i, %do.end97.i, %do.end82.i, %do.end42.i, %do.end24.i, %do.end.i282
  %c.13.i = phi i32 [ %c.12.i, %if.end251.i ], [ %c.12.i, %if.end228.i.out.i_crit_edge ], [ 1, %do.end42.i ], [ %sub.i, %do.end24.i ], [ %sub.i, %do.end.i282 ], [ 2, %do.end120.i ], [ %sub72.i, %do.end97.i ], [ %sub72.i, %do.end82.i ], [ 4, %do.end201.i ], [ %sub155.i, %do.end179.i ], [ %sub155.i, %do.end165.i ]
  %703 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %controller_state, align 8
  %chctrl0.i535.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %704, i32 0, i32 6
  %705 = ptrtoint ptr %chctrl0.i535.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %chctrl0.i535.i, align 4
  %l.0.i.i = or i32 %706, 1
  store i32 %l.0.i.i, ptr %chctrl0.i535.i, align 4
  %707 = load ptr, ptr %controller_state, align 8
  %708 = tail call i32 @llvm.bswap.i32(i32 %l.0.i.i) #11
  %709 = ptrtoint ptr %707 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %707, align 4
  %add.ptr.i.i537.i = getelementptr i8, ptr %710, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i537.i, i32 %708) #11, !srcloc !163
  %711 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %controller_state, align 8
  %713 = ptrtoint ptr %712 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %712, align 4
  %add.ptr.i10.i538.i = getelementptr i8, ptr %714, i32 52
  %715 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i538.i) #11, !srcloc !164
  %sub253.i = sub i32 %478, %c.13.i
  br label %if.end111

if.end111:                                        ; preds = %out.i, %if.else109.if.end111_crit_edge, %do.end80.i, %land.lhs.true.i.if.end111_crit_edge, %do.end70.i, %do.end61.i, %if.end48.i.if.end111_crit_edge, %lor.lhs.false.i265.i.if.end111_crit_edge, %if.then.i262.i.if.end111_crit_edge, %dmaengine_terminate_sync.exit.i, %if.end18.i.if.end111_crit_edge
  %count.0 = phi i32 [ 0, %dmaengine_terminate_sync.exit.i ], [ %count.0.i, %land.lhs.true.i.if.end111_crit_edge ], [ %count.0.i, %do.end80.i ], [ %count.0.i, %if.end48.i.if.end111_crit_edge ], [ %count.0.i, %if.end18.i.if.end111_crit_edge ], [ %count.0.i, %do.end70.i ], [ %count.0.i, %do.end61.i ], [ 0, %lor.lhs.false.i265.i.if.end111_crit_edge ], [ 0, %if.then.i262.i.if.end111_crit_edge ], [ %sub253.i, %out.i ], [ 0, %if.else109.if.end111_crit_edge ]
  %716 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %len74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0, i32 %717)
  %cmp113.not = icmp eq i32 %count.0, %717
  br i1 %cmp113.not, label %if.end111.if.end117_crit_edge, label %if.end111.out_crit_edge

if.end111.out_crit_edge:                          ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end111.if.end117_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.end117:                                        ; preds = %if.end111.if.end117_crit_edge, %if.end73.if.end117_crit_edge
  %718 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %controller_state, align 8
  %chctrl0.i289 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %719, i32 0, i32 6
  %720 = ptrtoint ptr %chctrl0.i289 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %chctrl0.i289, align 4
  %and.i290 = and i32 %721, -2
  store i32 %and.i290, ptr %chctrl0.i289, align 4
  %722 = load ptr, ptr %controller_state, align 8
  %723 = call i32 @llvm.bswap.i32(i32 %and.i290) #11
  %724 = ptrtoint ptr %722 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %722, align 4
  %add.ptr.i.i291 = getelementptr i8, ptr %725, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i291, i32 %723) #11, !srcloc !163
  %726 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %controller_state, align 8
  %728 = ptrtoint ptr %727 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %727, align 4
  %add.ptr.i10.i292 = getelementptr i8, ptr %729, i32 52
  %730 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i292) #11, !srcloc !164
  %fifo_depth = getelementptr inbounds %struct.omap2_mcspi, ptr %1, i32 0, i32 7
  %731 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load i32, ptr %fifo_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %732)
  %cmp118 = icmp sgt i32 %732, 0
  br i1 %cmp118, label %if.then120, label %if.end117.out_crit_edge

if.end117.out_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  %master1.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %733 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %master1.i, align 4
  %735 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %controller_state, align 8
  %driver_data.i.i.i294 = getelementptr inbounds %struct.device, ptr %734, i32 0, i32 8
  %737 = ptrtoint ptr %driver_data.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %driver_data.i.i.i294, align 4
  %chconf0.i.i295 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %736, i32 0, i32 5
  %739 = ptrtoint ptr %chconf0.i.i295 to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %chconf0.i.i295, align 4
  %rx_buf27.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %741 = ptrtoint ptr %rx_buf27.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %rx_buf27.i, align 4
  %cmp28.not.i = icmp eq ptr %742, null
  %and.i296 = and i32 %740, -268435457
  %spec.select.i = select i1 %cmp28.not.i, i32 %740, i32 %and.i296
  %743 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %t, align 4
  %cmp32.not.i = icmp eq ptr %744, null
  %and34.i = and i32 %spec.select.i, -134217729
  %chconf.3.i = select i1 %cmp32.not.i, i32 %spec.select.i, i32 %and34.i
  store i32 %chconf.3.i, ptr %chconf0.i.i295, align 4
  %745 = load ptr, ptr %controller_state, align 8
  %746 = call i32 @llvm.bswap.i32(i32 %chconf.3.i) #11
  %747 = ptrtoint ptr %745 to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %745, align 4
  %add.ptr.i.i72.i = getelementptr i8, ptr %748, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72.i, i32 %746) #11, !srcloc !163
  %749 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %controller_state, align 8
  %751 = ptrtoint ptr %750 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %750, align 4
  %add.ptr.i5.i73.i = getelementptr i8, ptr %752, i32 44
  %753 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i73.i) #11, !srcloc !164
  %fifo_depth36.i = getelementptr inbounds %struct.omap2_mcspi, ptr %738, i32 0, i32 7
  %754 = ptrtoint ptr %fifo_depth36.i to i32
  call void @__asan_store4_noabort(i32 %754)
  store i32 0, ptr %fifo_depth36.i, align 4
  br label %out

out:                                              ; preds = %if.then120, %if.end117.out_crit_edge, %if.end111.out_crit_edge
  %status.3 = phi i32 [ -5, %if.end111.out_crit_edge ], [ 0, %if.then120 ], [ 0, %if.end117.out_crit_edge ]
  br i1 %tobool122.not, label %out.if.end125_crit_edge, label %if.then123

out.if.end125_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then123:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @omap2_mcspi_setup_transfer(ptr noundef %spi, ptr noundef null)
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %out.if.end125_crit_edge
  %status.4 = phi i32 [ 0, %if.then123 ], [ %status.3, %out.if.end125_crit_edge ]
  br i1 %tobool36.not, label %if.end125.if.end140_crit_edge, label %land.lhs.true127

if.end125.if.end140_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

land.lhs.true127:                                 ; preds = %if.end125
  %755 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %755)
  %bf.load128 = load i8, ptr %9, align 4
  %756 = and i8 %bf.load128, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %756)
  %tobool132.not = icmp eq i8 %756, 0
  br i1 %tobool132.not, label %land.lhs.true127.if.end140_crit_edge, label %if.then133

land.lhs.true127.if.end140_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then133:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  %ctx134 = getelementptr inbounds %struct.omap2_mcspi, ptr %1, i32 0, i32 6
  %757 = ptrtoint ptr %ctx134 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %ctx134, align 4
  %or136 = or i32 %758, 1
  %759 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %driver_data.i.i, align 4
  %761 = call i32 @llvm.bswap.i32(i32 %or136) #11
  %base.i298 = getelementptr inbounds %struct.omap2_mcspi, ptr %760, i32 0, i32 2
  %762 = ptrtoint ptr %base.i298 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %base.i298, align 4
  %add.ptr.i299 = getelementptr i8, ptr %763, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 %761) #11, !srcloc !163
  %764 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %controller_state, align 8
  %766 = ptrtoint ptr %765 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %765, align 4
  %add.ptr.i301 = getelementptr i8, ptr %767, i32 40
  %768 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301) #11, !srcloc !164
  %769 = call i32 @llvm.bswap.i32(i32 %768) #11
  %770 = ptrtoint ptr %ctx134 to i32
  call void @__asan_store4_noabort(i32 %770)
  store i32 %769, ptr %ctx134, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then133, %land.lhs.true127.if.end140_crit_edge, %if.end125.if.end140_crit_edge
  %771 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %controller_state, align 8
  %chctrl0.i303 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %772, i32 0, i32 6
  %773 = ptrtoint ptr %chctrl0.i303 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %chctrl0.i303, align 4
  %and.i304 = and i32 %774, -2
  store i32 %and.i304, ptr %chctrl0.i303, align 4
  %775 = load ptr, ptr %controller_state, align 8
  %776 = call i32 @llvm.bswap.i32(i32 %and.i304) #11
  %777 = ptrtoint ptr %775 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %775, align 4
  %add.ptr.i.i305 = getelementptr i8, ptr %778, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i305, i32 %776) #11, !srcloc !163
  %779 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %controller_state, align 8
  %781 = ptrtoint ptr %780 to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %780, align 4
  %add.ptr.i10.i306 = getelementptr i8, ptr %782, i32 52
  %783 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i306) #11, !srcloc !164
  %784 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %cs_gpiod, align 8
  %tobool142.not = icmp eq ptr %785, null
  br i1 %tobool142.not, label %if.end140.if.end147_crit_edge, label %if.then143

if.end140.if.end147_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then143:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  %786 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load i32, ptr %mode, align 8
  %and145 = and i32 %787, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  call void @omap2_mcspi_set_cs(ptr noundef %spi, i1 noundef zeroext %tobool146.not)
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %if.end140.if.end147_crit_edge
  %fifo_depth148 = getelementptr inbounds %struct.omap2_mcspi, ptr %1, i32 0, i32 7
  %788 = ptrtoint ptr %fifo_depth148 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load i32, ptr %fifo_depth148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %789)
  %cmp149 = icmp slt i32 %789, 1
  %tobool152.not = icmp eq ptr %t, null
  %or.cond = or i1 %tobool152.not, %cmp149
  br i1 %or.cond, label %if.end147.cleanup155_crit_edge, label %if.then153

if.end147.cleanup155_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup155

if.then153:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  %master1.i307 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %790 = ptrtoint ptr %master1.i307 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %master1.i307, align 4
  %792 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %controller_state, align 8
  %driver_data.i.i.i309 = getelementptr inbounds %struct.device, ptr %791, i32 0, i32 8
  %794 = ptrtoint ptr %driver_data.i.i.i309 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %driver_data.i.i.i309, align 4
  %chconf0.i.i310 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %793, i32 0, i32 5
  %796 = ptrtoint ptr %chconf0.i.i310 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load i32, ptr %chconf0.i.i310, align 4
  %rx_buf27.i311 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %798 = ptrtoint ptr %rx_buf27.i311 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %rx_buf27.i311, align 4
  %cmp28.not.i312 = icmp eq ptr %799, null
  %and.i313 = and i32 %797, -268435457
  %spec.select.i314 = select i1 %cmp28.not.i312, i32 %797, i32 %and.i313
  %800 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %t, align 4
  %cmp32.not.i315 = icmp eq ptr %801, null
  %and34.i316 = and i32 %spec.select.i314, -134217729
  %chconf.3.i317 = select i1 %cmp32.not.i315, i32 %spec.select.i314, i32 %and34.i316
  store i32 %chconf.3.i317, ptr %chconf0.i.i310, align 4
  %802 = load ptr, ptr %controller_state, align 8
  %803 = call i32 @llvm.bswap.i32(i32 %chconf.3.i317) #11
  %804 = ptrtoint ptr %802 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %802, align 4
  %add.ptr.i.i72.i318 = getelementptr i8, ptr %805, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72.i318, i32 %803) #11, !srcloc !163
  %806 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %controller_state, align 8
  %808 = ptrtoint ptr %807 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %807, align 4
  %add.ptr.i5.i73.i319 = getelementptr i8, ptr %809, i32 44
  %810 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i73.i319) #11, !srcloc !164
  %fifo_depth36.i320 = getelementptr inbounds %struct.omap2_mcspi, ptr %795, i32 0, i32 7
  %811 = ptrtoint ptr %fifo_depth36.i320 to i32
  call void @__asan_store4_noabort(i32 %811)
  store i32 0, ptr %fifo_depth36.i320, align 4
  br label %cleanup155

cleanup155:                                       ; preds = %if.then153, %if.end147.cleanup155_crit_edge
  ret i32 %status.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2_mcspi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %spec.select = xor i1 %tobool.not, %enable
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %2 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller_state, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %entry.cleanup19_crit_edge, label %if.then4

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup19

if.then4:                                         ; preds = %entry
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.omap2_mcspi, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !161
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then6.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then6.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !162
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then6.pm_runtime_put_noidle.exit_crit_edge
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.63, i32 noundef %call.i) #14
  br label %cleanup19

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %controller_state, align 8
  %chconf0.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %chconf0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chconf0.i, align 4
  %and13 = and i32 %18, -1048577
  %masksel = select i1 %spec.select, i32 0, i32 1048576
  %l.0 = or i32 %and13, %masksel
  store i32 %l.0, ptr %chconf0.i, align 4
  %19 = load ptr, ptr %controller_state, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %l.0) #11
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %19, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #11, !srcloc !163
  %23 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %controller_state, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %26, i32 44
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #11, !srcloc !164
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call.i37 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i37, ptr %last_busy.i, align 8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %call.i38 = tail call i32 @__pm_runtime_suspend(ptr noundef %32, i32 noundef 13) #11
  br label %cleanup19

cleanup19:                                        ; preds = %if.end9, %pm_runtime_put_noidle.exit, %entry.cleanup19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2_mcspi_cleanup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %node = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_slave_abort(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma_channels = getelementptr inbounds %struct.omap2_mcspi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_channels, align 4
  %slave_aborted = getelementptr inbounds %struct.omap2_mcspi, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %slave_aborted, align 4
  %dma_rx_completion = getelementptr inbounds %struct.omap2_mcspi_dma, ptr %3, i32 0, i32 3
  tail call void @complete(ptr noundef %dma_rx_completion) #11
  %dma_tx_completion = getelementptr inbounds %struct.omap2_mcspi_dma, ptr %3, i32 0, i32 2
  tail call void @complete(ptr noundef %dma_tx_completion) #11
  tail call void @complete(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap2_mcspi_max_xfer_size(ptr nocapture noundef readonly %spi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %max_xfer_len = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %max_xfer_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_xfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dma_channels = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_channels, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %8 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %9 to i32
  %dma_rx = getelementptr %struct.omap2_mcspi_dma, ptr %7, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_rx, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end ], [ %5, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.omap2_mcspi, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  %driver_data.i.i.i9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i9, align 4
  %base.i10 = getelementptr inbounds %struct.omap2_mcspi, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #11, !srcloc !163
  %13 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not = icmp eq i32 %13, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @complete(ptr noundef %data) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then3 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap2_mcspi_setup_transfer(ptr noundef %spi, ptr noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word, align 1
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.not = icmp eq ptr %t, null
  br i1 %cmp.not, label %if.end.thread, label %land.lhs.true6

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv37 = zext i8 %3 to i32
  %word_len48 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %word_len48 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv37, ptr %word_len48, align 4
  br label %if.end11

land.lhs.true6:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bits_per_word1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %11 = ptrtoint ptr %bits_per_word1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bits_per_word1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %spec.select = select i1 %tobool.not, i8 %3, i8 %12
  %conv3 = zext i8 %spec.select to i32
  %word_len4 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %word_len4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv3, ptr %word_len4, align 4
  %speed_hz7 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %14 = ptrtoint ptr %speed_hz7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed_hz7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  %spec.select1 = select i1 %tobool8.not, i32 %5, i32 %15
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true6, %if.end.thread
  %conv39 = phi i32 [ %conv3, %land.lhs.true6 ], [ %conv37, %if.end.thread ]
  %speed_hz.0 = phi i32 [ %spec.select1, %land.lhs.true6 ], [ %5, %if.end.thread ]
  %16 = tail call i32 @llvm.umin.i32(i32 %speed_hz.0, i32 48000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 11718, i32 %16)
  %cmp14 = icmp ult i32 %16, 11718
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000000, i32 %speed_hz.0)
  %cmp12 = icmp ult i32 %speed_hz.0, 48000000
  br i1 %cmp12, label %for.inc.12.i, label %if.then16.omap2_mcspi_calc_divisor.exit_crit_edge

if.then16.omap2_mcspi_calc_divisor.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_mcspi_calc_divisor.exit

for.inc.12.i:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5859, i32 %16)
  %cmp1.not.13.i = icmp ult i32 %16, 5859
  br i1 %cmp1.not.13.i, label %for.inc.13.i, label %for.inc.12.i.omap2_mcspi_calc_divisor.exit_crit_edge

for.inc.12.i.omap2_mcspi_calc_divisor.exit_crit_edge: ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_mcspi_calc_divisor.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2929, i32 %16)
  %cmp1.not.14.i = icmp ult i32 %16, 2929
  %spec.select.i = select i1 %cmp1.not.14.i, i32 15, i32 14
  br label %omap2_mcspi_calc_divisor.exit

omap2_mcspi_calc_divisor.exit:                    ; preds = %for.inc.13.i, %for.inc.12.i.omap2_mcspi_calc_divisor.exit_crit_edge, %if.then16.omap2_mcspi_calc_divisor.exit_crit_edge
  %retval.0.i2 = phi i32 [ 0, %if.then16.omap2_mcspi_calc_divisor.exit_crit_edge ], [ 13, %for.inc.12.i.omap2_mcspi_calc_divisor.exit_crit_edge ], [ %spec.select.i, %for.inc.13.i ]
  %shr = lshr i32 48000000, %retval.0.i2
  br label %if.end23

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add nuw nsw i32 %16, 47999999
  %div18 = udiv i32 %sub, %16
  %div19 = udiv i32 48000000, %div18
  %sub20 = add nsw i32 %div18, -1
  %and = and i32 %sub20, 15
  %17 = shl nuw nsw i32 %sub20, 4
  %phi.bo = and i32 %17, -256
  br label %if.end23

if.end23:                                         ; preds = %if.else, %omap2_mcspi_calc_divisor.exit
  %clkd.0 = phi i32 [ %retval.0.i2, %omap2_mcspi_calc_divisor.exit ], [ %and, %if.else ]
  %extclk.0 = phi i32 [ 0, %omap2_mcspi_calc_divisor.exit ], [ %phi.bo, %if.else ]
  %clkg.0 = phi i32 [ 0, %omap2_mcspi_calc_divisor.exit ], [ 536870912, %if.else ]
  %speed_hz.1 = phi i32 [ %shr, %omap2_mcspi_calc_divisor.exit ], [ %div19, %if.else ]
  %18 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %controller_state, align 8
  %chconf0.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %chconf0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chconf0.i, align 4
  %pin_dir = getelementptr inbounds %struct.omap2_mcspi, ptr %9, i32 0, i32 9
  %22 = ptrtoint ptr %pin_dir to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %pin_dir, align 1
  %and29 = and i32 %21, -537333760
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp2511 = icmp slt i8 %bf.load, 0
  %l.0.v = select i1 %cmp2511, i32 393216, i32 65536
  %sub37 = shl nuw nsw i32 %conv39, 7
  %shl = add nsw i32 %sub37, -128
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 8
  %and39 = shl i32 %24, 4
  %25 = and i32 %and39, 64
  %shl.masked = and i32 %shl, -536871040
  %l.0 = or i32 %and29, %shl.masked
  %or38.masked = or i32 %l.0, %l.0.v
  %l.1 = or i32 %or38.masked, %25
  %and46 = xor i32 %l.1, 64
  %shl47 = shl nuw nsw i32 %clkd.0, 2
  %shl47.masked = and i32 %shl47, -536870916
  br i1 %cmp14, label %if.end23.if.end58_crit_edge, label %if.then52

if.end23.if.end58_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then52:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %chctrl0 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %chctrl0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chctrl0, align 4
  %and53 = and i32 %27, -65281
  %or56 = or i32 %and53, %extclk.0
  store i32 %or56, ptr %chctrl0, align 4
  %28 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %controller_state, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or56) #11
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %29, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #11, !srcloc !163
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %if.end23.if.end58_crit_edge
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode, align 8
  %and60 = and i32 %34, 2
  %and68 = and i32 %34, 1
  %and49.masked.masked = or i32 %clkg.0, %shl47.masked
  %and65.masked = or i32 %and49.masked.masked, %and46
  %and73 = or i32 %and65.masked, %and60
  %l.3 = or i32 %and73, %and68
  %35 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %controller_state, align 8
  %chconf0.i5 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %chconf0.i5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %l.3, ptr %chconf0.i5, align 4
  %38 = load ptr, ptr %controller_state, align 8
  %39 = tail call i32 @llvm.bswap.i32(i32 %l.3) #11
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %38, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %39) #11, !srcloc !163
  %42 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %controller_state, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %45, i32 44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #11, !srcloc !164
  %47 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode, align 8
  %conv76 = trunc i32 %48 to i16
  %mode77 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %mode77 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv76, ptr %mode77, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2_mcspi_setup_transfer.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap2_mcspi_setup_transfer, %do.end)) #11
          to label %if.then84 [label %do.end], !srcloc !169

if.then84:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mode, align 8
  %and86 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %cond88 = select i1 %tobool87.not, ptr @.str.18, ptr @.str.17
  %and90 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %cond92 = select i1 %tobool91.not, ptr @.str.20, ptr @.str.19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap2_mcspi_setup_transfer.__UNIQUE_ID_ddebug241, ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %speed_hz.1, ptr noundef nonnull %cond88, ptr noundef nonnull %cond92) #11
  br label %do.end

do.end:                                           ; preds = %if.then84, %if.end58
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap2_mcspi_set_fifo(ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %t, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %2 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller_state, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %chconf0.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %chconf0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chconf0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %entry.disable_fifo_crit_edge, label %if.then

entry.disable_fifo_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_fifo

if.then:                                          ; preds = %entry
  %word_len = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %word_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %word_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp.i = icmp slt i32 %9, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp1.i = icmp slt i32 %9, 17
  %..i = select i1 %cmp1.i, i32 2, i32 4
  %retval.0.i = select i1 %cmp.i, i32 1, i32 %..i
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %12 = add nsw i32 %retval.0.i, -1
  %rem = and i32 %12, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end, label %if.then.disable_fifo_crit_edge

if.then.disable_fifo_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_fifo

if.end:                                           ; preds = %if.then
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %13 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_buf, align 4
  %cmp5.not = icmp eq ptr %14, null
  br i1 %cmp5.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %15 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t, align 4
  %cmp6.not = icmp eq ptr %16, null
  br i1 %cmp6.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end8

if.end8:                                          ; preds = %if.else, %land.lhs.true.if.end8_crit_edge
  %max_fifo_depth.0 = phi i32 [ 64, %if.else ], [ 32, %land.lhs.true.if.end8_crit_edge ]
  %17 = select i1 %cmp1.i, i32 1, i32 2
  %18 = select i1 %cmp.i, i32 0, i32 %17
  %div74 = lshr i32 %11, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div74)
  %cmp10 = icmp ugt i32 %div74, 65535
  br i1 %cmp10, label %if.end8.disable_fifo_crit_edge, label %if.end12

if.end8.disable_fifo_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_fifo

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw i32 %div74, 16
  %or = or i32 %7, 268435456
  %sub = shl nuw nsw i32 %retval.0.i, 8
  %shl16 = add nsw i32 %sub, -256
  %chconf.0 = select i1 %cmp5.not, i32 %7, i32 %or
  %or17 = select i1 %cmp5.not, i32 0, i32 %shl16
  %xferlevel.0 = or i32 %or17, %shl
  %19 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t, align 4
  %cmp20.not = icmp eq ptr %20, null
  %or22 = or i32 %chconf.0, 134217728
  %chconf.1 = select i1 %cmp20.not, i32 %chconf.0, i32 %or22
  %or24 = select i1 %cmp20.not, i32 0, i32 %12
  %xferlevel.1 = or i32 %xferlevel.0, %or24
  %21 = tail call i32 @llvm.bswap.i32(i32 %xferlevel.1) #11
  %base.i = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #11, !srcloc !163
  %24 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %controller_state, align 8
  %chconf0.i69 = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %chconf0.i69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %chconf.1, ptr %chconf0.i69, align 4
  %27 = load ptr, ptr %controller_state, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %chconf.1) #11
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %27, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %28) #11, !srcloc !163
  %31 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %controller_state, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %34, i32 44
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #11, !srcloc !164
  br label %cleanup

disable_fifo:                                     ; preds = %if.end8.disable_fifo_crit_edge, %if.then.disable_fifo_crit_edge, %entry.disable_fifo_crit_edge
  %rx_buf27 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %36 = ptrtoint ptr %rx_buf27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_buf27, align 4
  %cmp28.not = icmp eq ptr %37, null
  %and = and i32 %7, -268435457
  %spec.select = select i1 %cmp28.not, i32 %7, i32 %and
  %38 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %t, align 4
  %cmp32.not = icmp eq ptr %39, null
  %and34 = and i32 %spec.select, -134217729
  %chconf.3 = select i1 %cmp32.not, i32 %spec.select, i32 %and34
  %40 = ptrtoint ptr %chconf0.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %chconf.3, ptr %chconf0.i, align 4
  %41 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %controller_state, align 8
  %43 = tail call i32 @llvm.bswap.i32(i32 %chconf.3) #11
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %42, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %43) #11, !srcloc !163
  %46 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %controller_state, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %add.ptr.i5.i73 = getelementptr i8, ptr %49, i32 44
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i73) #11, !srcloc !164
  br label %cleanup

cleanup:                                          ; preds = %disable_fifo, %if.end12
  %.sink = phi i32 [ 0, %disable_fifo ], [ %max_fifo_depth.0, %if.end12 ]
  %fifo_depth36 = getelementptr inbounds %struct.omap2_mcspi, ptr %5, i32 0, i32 7
  %51 = ptrtoint ptr %fifo_depth36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %fifo_depth36, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcspi_wait_for_reg_bit(ptr noundef %reg, i32 noundef %bit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #11, !srcloc !164
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and16 = and i32 %2, %bit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not17 = icmp eq i32 %and16, 0
  br i1 %tobool.not17, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #11, !srcloc !164
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and5 = and i32 %5, %bit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %. = select i1 %tobool6.not, i32 -110, i32 0
  br label %cleanup

do.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !168
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #11, !srcloc !164
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %7, %bit
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.body_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2_mcspi_tx_callback(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_channels = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_channels, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %7 to i32
  %controller_state.i.i = getelementptr inbounds %struct.spi_device, ptr %data, i32 0, i32 9
  %8 = ptrtoint ptr %controller_state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller_state.i.i, align 8
  %chconf0.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %chconf0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chconf0.i.i, align 4
  %and.i = and i32 %11, -16385
  store i32 %and.i, ptr %chconf0.i.i, align 4
  %12 = load ptr, ptr %controller_state.i.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #11
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %13) #11, !srcloc !163
  %16 = ptrtoint ptr %controller_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller_state.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %19, i32 44
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #11, !srcloc !164
  %dma_tx_completion = getelementptr %struct.omap2_mcspi_dma, ptr %5, i32 %idxprom, i32 2
  tail call void @complete(ptr noundef %dma_tx_completion) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_split(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2_mcspi_rx_callback(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_channels = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_channels, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %7 to i32
  %controller_state.i.i = getelementptr inbounds %struct.spi_device, ptr %data, i32 0, i32 9
  %8 = ptrtoint ptr %controller_state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller_state.i.i, align 8
  %chconf0.i.i = getelementptr inbounds %struct.omap2_mcspi_cs, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %chconf0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chconf0.i.i, align 4
  %and.i = and i32 %11, -32769
  store i32 %and.i, ptr %chconf0.i.i, align 4
  %12 = load ptr, ptr %controller_state.i.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #11
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %13) #11, !srcloc !163
  %16 = ptrtoint ptr %controller_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller_state.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %19, i32 44
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #11, !srcloc !164
  %dma_rx_completion = getelementptr %struct.omap2_mcspi_dma, ptr %5, i32 %idxprom, i32 3
  tail call void @complete(ptr noundef %dma_rx_completion) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %call2) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call i32 @spi_controller_suspend(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %do.end9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev10 = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.67, i32 noundef %call4) #14
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #11
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_mcspi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @spi_controller_resume(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %call2) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #11
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcspi_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.74, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcspi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ctx2 = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 6
  %call3 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.75, i32 noundef %call3) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx2, align 4
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %base.i = getelementptr inbounds %struct.omap2_mcspi, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #11, !srcloc !163
  %wakeupenable = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %wakeupenable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wakeupenable, align 4
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  %base.i44 = getelementptr inbounds %struct.omap2_mcspi, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %15) #11, !srcloc !163
  %cs4 = getelementptr inbounds %struct.omap2_mcspi, ptr %3, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %cs4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn46 = load ptr, ptr %cs4, align 4
  %cmp.not48 = icmp eq ptr %.pn46, %cs4
  br i1 %cmp.not48, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn49 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn46, %if.end.for.body_crit_edge ]
  %cs.050 = getelementptr i8, ptr %.pn49, i32 -16
  %chconf0 = getelementptr i8, ptr %.pn49, i32 8
  %19 = ptrtoint ptr %chconf0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chconf0, align 4
  %and = and i32 %20, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %20, 1048576
  %21 = ptrtoint ptr %chconf0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %chconf0, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %23 = ptrtoint ptr %cs.050 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cs.050, align 4
  %add.ptr10 = getelementptr i8, ptr %24, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %22) #11, !srcloc !163
  %25 = ptrtoint ptr %chconf0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chconf0, align 4
  %and12 = and i32 %26, -1048577
  store i32 %and12, ptr %chconf0, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %and12)
  %28 = ptrtoint ptr %cs.050 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cs.050, align 4
  %add.ptr15 = getelementptr i8, ptr %29, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %27) #11, !srcloc !163
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %30 = tail call i32 @llvm.bswap.i32(i32 %20)
  %31 = ptrtoint ptr %cs.050 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cs.050, align 4
  %add.ptr18 = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %30) #11, !srcloc !163
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then7
  %33 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn49, align 4
  %cmp.not = icmp eq ptr %.pn, %cs4
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__UNIQUE_ID_alias242, !1, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1565, i32 1}
!2 = !{ptr @__initcall__kmod_spi_omap2_mcspi__243_1617_omap2_mcspi_driver_init6, !3, !"__initcall__kmod_spi_omap2_mcspi__243_1617_omap2_mcspi_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1617, i32 1}
!4 = !{ptr @__exitcall_omap2_mcspi_driver_exit, !3, !"__exitcall_omap2_mcspi_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_file244, !6, !"__UNIQUE_ID_file244", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1618, i32 1}
!7 = !{ptr @__UNIQUE_ID_license245, !6, !"__UNIQUE_ID_license245", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1609, i32 12}
!10 = !{ptr @omap2_mcspi_driver, !11, !"omap2_mcspi_driver", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1607, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1431, i32 34}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1464, i32 30}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1466, i32 29}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1501, i32 50}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1502, i32 50}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1514, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @omap2_mcspi_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @omap2_mcspi_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1522, i32 3}
!32 = !{ptr @omap2_mcspi_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap2_mcspi_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 974, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @omap2_mcspi_setup_transfer.__UNIQUE_ID_ddebug241, !35, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!39 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 658, i32 5}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @omap2_mcspi_txrx_dma._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @omap2_mcspi_txrx_dma._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 671, i32 6}
!50 = !{ptr @omap2_mcspi_txrx_dma._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @omap2_mcspi_txrx_dma._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 676, i32 6}
!54 = !{ptr @omap2_mcspi_txrx_dma._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @omap2_mcspi_txrx_dma._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 681, i32 5}
!58 = !{ptr @omap2_mcspi_txrx_dma._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @omap2_mcspi_txrx_dma._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 499, i32 3}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @omap2_mcspi_rx_dma._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @omap2_mcspi_rx_dma._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 554, i32 4}
!67 = !{ptr @omap2_mcspi_rx_dma._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @omap2_mcspi_rx_dma._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 571, i32 3}
!71 = !{ptr @omap2_mcspi_rx_dma._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @omap2_mcspi_rx_dma._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 726, i32 6}
!77 = !{ptr @omap2_mcspi_txrx_pio._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 736, i32 6}
!81 = !{ptr @omap2_mcspi_txrx_pio._entry.42, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr.44, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @omap2_mcspi_txrx_pio._entry.45, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 748, i32 7}
!85 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @omap2_mcspi_txrx_pio._entry.47, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 773, i32 6}
!88 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @omap2_mcspi_txrx_pio._entry.49, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 783, i32 6}
!91 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr.50, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @omap2_mcspi_txrx_pio._entry.51, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 795, i32 7}
!94 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr.52, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @omap2_mcspi_txrx_pio._entry.53, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 820, i32 6}
!97 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr.54, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @omap2_mcspi_txrx_pio._entry.55, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 830, i32 6}
!100 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @omap2_mcspi_txrx_pio._entry.57, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 842, i32 7}
!103 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr.58, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @omap2_mcspi_txrx_pio._entry.59, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 862, i32 4}
!106 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr.60, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @omap2_mcspi_txrx_pio._entry.61, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 865, i32 4}
!109 = !{ptr @omap2_mcspi_txrx_pio._entry_ptr.62, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 252, i32 4}
!112 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @omap2_mcspi_set_cs._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @omap2_mcspi_set_cs._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @init_completion.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../include/linux/completion.h", i32 87, i32 2}
!117 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @omap_mcspi_of_match, !119, !"omap_mcspi_of_match", i1 false, i1 false}
!119 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1403, i32 34}
!120 = !{ptr @omap2_pdata, !121, !"omap2_pdata", i1 false, i1 false}
!121 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1390, i32 43}
!122 = !{ptr @omap4_pdata, !123, !"omap4_pdata", i1 false, i1 false}
!123 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1394, i32 43}
!124 = !{ptr @am654_pdata, !125, !"am654_pdata", i1 false, i1 false}
!125 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1398, i32 43}
!126 = !{ptr @omap2_mcspi_pm_ops, !127, !"omap2_mcspi_pm_ops", i1 false, i1 false}
!127 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1600, i32 32}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1575, i32 3}
!130 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @omap2_mcspi_suspend._entry, !129, !"_entry", i1 false, i1 false}
!133 = !{ptr @omap2_mcspi_suspend._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1580, i32 3}
!136 = !{ptr @omap2_mcspi_suspend._entry.69, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @omap2_mcspi_suspend._entry_ptr.71, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1594, i32 3}
!140 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @omap2_mcspi_resume._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @omap2_mcspi_resume._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1343, i32 3}
!145 = !{ptr @omap_mcspi_runtime_suspend._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @omap_mcspi_runtime_suspend._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/spi/spi-omap2-mcspi.c", i32 1363, i32 3}
!149 = !{ptr @omap_mcspi_runtime_resume._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @omap_mcspi_runtime_resume._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 2148248847}
!161 = !{i64 733670, i64 733695, i64 733717, i64 733733, i64 733745, i64 733765, i64 733789, i64 733805, i64 733817}
!162 = !{i64 2148249035}
!163 = !{i64 4237737}
!164 = !{i64 4238155}
!165 = !{i8 0, i8 2}
!166 = !{!"auto-init"}
!167 = !{i64 2154574301}
!168 = !{i64 2154574143}
!169 = !{i64 2148731243, i64 2148731248, i64 2148731261, i64 2148731305, i64 2148731339, i64 2148731360}
