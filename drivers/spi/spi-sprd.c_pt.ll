; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-sprd.c_pt.bc'
source_filename = "../drivers/spi/spi-sprd.c"
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
%struct.sprd_spi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sprd_spi_dma, %struct.completion, ptr, ptr, ptr, ptr }
%struct.sprd_spi_dma = type { i8, [2 x ptr], i32, i32, i32 }
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

@__initcall__kmod_spi_sprd__245_1083_sprd_spi_driver_init6 = internal global ptr @sprd_spi_driver_init, section ".initcall6.init", align 4
@sprd_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_spi_probe, ptr @sprd_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_spi_driver_exit = internal global ptr @sprd_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description246 = internal constant [54 x i8] c"spi_sprd.description=Spreadtrum SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [57 x i8] c"spi_sprd.author=Lanqing Liu <lanqing.liu@spreadtrum.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [35 x i8] c"spi_sprd.file=drivers/spi/spi-sprd\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [24 x i8] c"spi_sprd.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sprd-spi\00", [23 x i8] zeroinitializer }, align 32
@sprd_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_spi_runtime_suspend, ptr @sprd_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@sprd_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 979, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to resume SPI controller\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_spi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/spi/spi-sprd.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_spi_probe._entry_ptr = internal global ptr @sprd_spi_probe._entry, section ".printk_index", align 4
@sprd_spi_dma_txrx_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 613, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to write, ret = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sprd_spi_dma_txrx_bufs\00", [41 x i8] zeroinitializer }, align 32
@sprd_spi_dma_txrx_bufs._entry_ptr = internal global ptr @sprd_spi_dma_txrx_bufs._entry, section ".printk_index", align 4
@sprd_spi_dma_txrx_bufs._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to configure rx DMA, ret = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@sprd_spi_dma_txrx_bufs._entry_ptr.11 = internal global ptr @sprd_spi_dma_txrx_bufs._entry.9, section ".printk_index", align 4
@sprd_spi_wait_for_tx_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 203, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SPI error, spi send timeout!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sprd_spi_wait_for_tx_end\00", [39 x i8] zeroinitializer }, align 32
@sprd_spi_wait_for_tx_end._entry_ptr = internal global ptr @sprd_spi_wait_for_tx_end._entry, section ".printk_index", align 4
@sprd_spi_wait_for_tx_end._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SPI error, spi busy timeout!\0A\00", [34 x i8] zeroinitializer }, align 32
@sprd_spi_wait_for_tx_end._entry_ptr.16 = internal global ptr @sprd_spi_wait_for_tx_end._entry.14, section ".printk_index", align 4
@sprd_spi_wait_for_rx_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SPI error, spi rx timeout!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sprd_spi_wait_for_rx_end\00", [39 x i8] zeroinitializer }, align 32
@sprd_spi_wait_for_rx_end._entry_ptr = internal global ptr @sprd_spi_wait_for_rx_end._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sprd_spi_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 866, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't get the spi clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sprd_spi_clk_init\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sprd_spi_clk_init._entry_ptr = internal global ptr @sprd_spi_clk_init._entry, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@sprd_spi_clk_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.4, i32 872, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't get the source clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sprd_spi_clk_init._entry_ptr.26 = internal global ptr @sprd_spi_clk_init._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@sprd_spi_clk_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.4, i32 878, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't get the enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sprd_spi_clk_init._entry_ptr.30 = internal global ptr @sprd_spi_clk_init._entry.28, section ".printk_index", align 4
@sprd_spi_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 855, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request spi irq %d, ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sprd_spi_irq_init\00", [46 x i8] zeroinitializer }, align 32
@sprd_spi_irq_init._entry_ptr = internal global ptr @sprd_spi_irq_init._entry, section ".printk_index", align 4
@sprd_spi_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 909, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to request dma, enter no dma mode, ret = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sprd_spi_dma_init\00", [46 x i8] zeroinitializer }, align 32
@sprd_spi_dma_init._entry_ptr = internal global ptr @sprd_spi_dma_init._entry, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_chn\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"request RX DMA channel failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_chn\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"request TX DMA channel failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@sprd_spi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.39, ptr @.str.4, i32 1014, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sprd_spi_remove\00", [16 x i8] zeroinitializer }, align 32
@sprd_spi_remove._entry_ptr = internal global ptr @sprd_spi_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 8, i64 7, i64 15, i64 31]
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"sprd_spi_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1073, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1075, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"sprd_spi_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1067, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"sprd_spi_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1062, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 926, i32 48 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 979, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 613, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 630, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 203, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 210, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 228, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 87, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 866, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 870, i32 40 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 872, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 876, i32 37 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 878, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 854, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 907, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 555, i32 60 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 558, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 560, i32 61 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 564, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [26 x i8] c"../drivers/spi/spi-sprd.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1014, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_sprd_spi_driver_exit, ptr @__initcall__kmod_spi_sprd__245_1083_sprd_spi_driver_init6, ptr @sprd_spi_clk_init._entry, ptr @sprd_spi_clk_init._entry.24, ptr @sprd_spi_clk_init._entry.28, ptr @sprd_spi_clk_init._entry_ptr, ptr @sprd_spi_clk_init._entry_ptr.26, ptr @sprd_spi_clk_init._entry_ptr.30, ptr @sprd_spi_dma_init._entry, ptr @sprd_spi_dma_init._entry_ptr, ptr @sprd_spi_dma_txrx_bufs._entry, ptr @sprd_spi_dma_txrx_bufs._entry.9, ptr @sprd_spi_dma_txrx_bufs._entry_ptr, ptr @sprd_spi_dma_txrx_bufs._entry_ptr.11, ptr @sprd_spi_driver_exit, ptr @sprd_spi_irq_init._entry, ptr @sprd_spi_irq_init._entry_ptr, ptr @sprd_spi_probe._entry, ptr @sprd_spi_probe._entry_ptr, ptr @sprd_spi_remove._entry, ptr @sprd_spi_remove._entry_ptr, ptr @sprd_spi_wait_for_rx_end._entry, ptr @sprd_spi_wait_for_rx_end._entry_ptr, ptr @sprd_spi_wait_for_tx_end._entry, ptr @sprd_spi_wait_for_tx_end._entry.14, ptr @sprd_spi_wait_for_tx_end._entry_ptr, ptr @sprd_spi_wait_for_tx_end._entry_ptr.16, ptr @sprd_spi_driver, ptr @.str, ptr @sprd_spi_of_match, ptr @sprd_spi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_dma_txrx_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_dma_txrx_bufs._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_wait_for_tx_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_wait_for_tx_end._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_wait_for_rx_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_clk_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_clk_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_spi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_spi_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_spi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.1) #9
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %id, align 4
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 148, i1 noundef zeroext false) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call4) #9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %4, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call6 to i32
  br label %spi_controller_put.exit

if.end12:                                         ; preds = %if.end
  %7 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call4, align 4
  %phy_base = getelementptr inbounds %struct.sprd_spi, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %phy_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %phy_base, align 4
  %dev14 = getelementptr inbounds %struct.sprd_spi, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev14, align 4
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %of_node18 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %13 = ptrtoint ptr %of_node18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %of_node18, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 275, ptr %mode_bits, align 8
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %conv = trunc i32 %16 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %bus_num, align 8
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %18 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sprd_spi_chipselect, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %19 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sprd_spi_transfer_one, ptr %transfer_one, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %20 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sprd_spi_can_dma, ptr %can_dma, align 4
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %21 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %auto_runtime_pm, align 4
  %src_clk = getelementptr inbounds %struct.sprd_spi, ptr %4, i32 0, i32 5
  %22 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000000, i32 %23)
  %cmp = icmp ult i32 %23, 96000000
  %shr = lshr i32 %23, 1
  %cond = select i1 %cmp, i32 %shr, i32 48000000
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond, ptr %max_speed_hz, align 8
  %xfer_completion = getelementptr inbounds %struct.sprd_spi, ptr %4, i32 0, i32 14
  %25 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %xfer_completion, align 4
  %wait.i = getelementptr inbounds %struct.sprd_spi, ptr %4, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #9
  %driver_data.i.i123 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i123 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i123, align 4
  %call.i124 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %cmp.i.i = icmp ugt ptr %call.i124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end12.if.end.i_crit_edge

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end12.if.end.i_crit_edge
  %clk_spi.0.i = phi ptr [ null, %do.end.i ], [ %call.i124, %if.end12.if.end.i_crit_edge ]
  %call4.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  %cmp.i42.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.i, label %do.end9.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end9.i, %if.end.i.if.end11.i_crit_edge
  %clk_parent.0.i = phi ptr [ null, %do.end9.i ], [ %call4.i, %if.end.i.if.end11.i_crit_edge ]
  %call13.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  %clk.i = getelementptr inbounds %struct.sprd_spi, ptr %4, i32 0, i32 3
  %27 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call13.i, ptr %clk.i, align 4
  %cmp.i43.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43.i, label %sprd_spi_clk_init.exit, label %if.end23.i

if.end23.i:                                       ; preds = %if.end11.i
  %call24.i = tail call i32 @clk_set_parent(ptr noundef %clk_spi.0.i, ptr noundef %clk_parent.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool.not.i, label %if.then25.i, label %if.end23.i.if.end24.sink.split_crit_edge

if.end23.i.if.end24.sink.split_crit_edge:         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i = tail call i32 @clk_get_rate(ptr noundef %clk_spi.0.i) #9
  br label %if.end24.sink.split

sprd_spi_clk_init.exit:                           ; preds = %if.end11.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  %28 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %tobool22.not = icmp eq ptr %29, null
  br i1 %tobool22.not, label %sprd_spi_clk_init.exit.if.end24_crit_edge, label %sprd_spi_clk_init.exit.spi_controller_put.exit_crit_edge

sprd_spi_clk_init.exit.spi_controller_put.exit_crit_edge: ; preds = %sprd_spi_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

sprd_spi_clk_init.exit.if.end24_crit_edge:        ; preds = %sprd_spi_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24.sink.split:                              ; preds = %if.then25.i, %if.end23.i.if.end24.sink.split_crit_edge
  %call26.i.sink = phi i32 [ %call26.i, %if.then25.i ], [ 26000000, %if.end23.i.if.end24.sink.split_crit_edge ]
  %31 = ptrtoint ptr %src_clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call26.i.sink, ptr %src_clk, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %sprd_spi_clk_init.exit.if.end24_crit_edge
  %call.i125 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq.i = getelementptr inbounds %struct.sprd_spi, ptr %4, i32 0, i32 4
  %32 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i125, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %cmp.i126 = icmp slt i32 %call.i125, 0
  br i1 %cmp.i126, label %if.end24.spi_controller_put.exit_crit_edge, label %if.end.i129

if.end24.spi_controller_put.exit_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.end.i129:                                      ; preds = %if.end24
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i125, ptr noundef nonnull @sprd_spi_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef %34, ptr noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i128 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i128, label %if.end28, label %do.end.i130

do.end.i130:                                      ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %36, i32 noundef %call.i.i) #12
  br label %spi_controller_put.exit

if.end28:                                         ; preds = %if.end.i129
  %call.i132 = tail call fastcc i32 @sprd_spi_dma_request(ptr noundef %4) #9
  %37 = zext i32 %call.i132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i132, label %do.end.i134 [
    i32 0, label %if.end2.i
    i32 -517, label %if.end28.spi_controller_put.exit_crit_edge
  ]

if.end28.spi_controller_put.exit_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

do.end.i134:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call.i132) #12
  br label %if.end32

if.end2.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %dma.i = getelementptr inbounds %struct.sprd_spi, ptr %4, i32 0, i32 13
  %38 = ptrtoint ptr %dma.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %dma.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end2.i, %do.end.i134
  %39 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk.i, align 4
  %call33 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.release_dma_crit_edge

if.end32.release_dma_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_dma

if.end36:                                         ; preds = %if.end32
  %call.i136 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp39 = icmp slt i32 %call.i136, 0
  br i1 %cmp39, label %if.end36.disable_clk_crit_edge, label %if.end42

if.end36.disable_clk_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_clk

if.end42:                                         ; preds = %if.end36
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 100) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %call.i137 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %cmp48 = icmp slt i32 %call.i137, 0
  br i1 %cmp48, label %do.end, label %if.end52

do.end:                                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %err_rpm_put

if.end52:                                         ; preds = %if.end42
  %call54 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.err_rpm_put_crit_edge

if.end52.err_rpm_put_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rpm_put

if.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %call.i138 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %41 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store volatile i64 %call.i138, ptr %last_busy.i, align 8
  %call.i139 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #9
  br label %cleanup

err_rpm_put:                                      ; preds = %if.end52.err_rpm_put_crit_edge, %do.end
  %ret.0 = phi i32 [ %call.i137, %do.end ], [ %call54, %if.end52.err_rpm_put_crit_edge ]
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %disable_clk

disable_clk:                                      ; preds = %err_rpm_put, %if.end36.disable_clk_crit_edge
  %ret.1 = phi i32 [ %call.i136, %if.end36.disable_clk_crit_edge ], [ %ret.0, %err_rpm_put ]
  %42 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %43) #9
  tail call void @clk_unprepare(ptr noundef %43) #9
  br label %release_dma

release_dma:                                      ; preds = %disable_clk, %if.end32.release_dma_crit_edge
  %ret.2 = phi i32 [ %call33, %if.end32.release_dma_crit_edge ], [ %ret.1, %disable_clk ]
  tail call fastcc void @sprd_spi_dma_release(ptr noundef %4)
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %release_dma, %if.end28.spi_controller_put.exit_crit_edge, %do.end.i130, %if.end24.spi_controller_put.exit_crit_edge, %sprd_spi_clk_init.exit.spi_controller_put.exit_crit_edge, %if.then9
  %ret.3 = phi i32 [ %6, %if.then9 ], [ %30, %sprd_spi_clk_init.exit.spi_controller_put.exit_crit_edge ], [ %ret.2, %release_dma ], [ %call.i132, %if.end28.spi_controller_put.exit_crit_edge ], [ %call.i.i, %do.end.i130 ], [ %call.i125, %if.end24.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end57, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %spi_controller_put.exit ], [ 0, %if.end57 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i21 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i21, align 4
  %dev = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !104
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !105
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @spi_controller_suspend(ptr noundef %1) #9
  %dma = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dma, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %dma_chan.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then6.if.end.i_crit_edge, label %if.then.i

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %14) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then6.if.end.i_crit_edge
  %arrayidx6.i = getelementptr %struct.sprd_spi, ptr %3, i32 0, i32 13, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %16, null
  br i1 %tobool7.not.i, label %if.end.i.if.end7_crit_edge, label %if.then8.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %16) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then8.i, %if.end.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %clk = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %18) #9
  tail call void @clk_unprepare(ptr noundef %18) #9
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %usage_count.i22 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i22, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @llvm.prefetch.p0(ptr %usage_count.i22, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i22, ptr %usage_count.i22, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i22) #9, !srcloc !104
  %asmresult.i.i.i.i24 = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i24)
  %cmp.not.i.i.i.i25 = icmp eq i32 %asmresult.i.i.i.i24, 0
  br i1 %cmp.not.i.i.i.i25, label %if.end7.pm_runtime_put_noidle.exit27_crit_edge, label %do.end11.i.i.i.i26

if.end7.pm_runtime_put_noidle.exit27_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit27

do.end11.i.i.i.i26:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !105
  br label %pm_runtime_put_noidle.exit27

pm_runtime_put_noidle.exit27:                     ; preds = %do.end11.i.i.i.i26, %if.end7.pm_runtime_put_noidle.exit27_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev8, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit27, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ 0, %pm_runtime_put_noidle.exit27 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_spi_chipselect(ptr nocapture noundef readonly %sdev, i1 noundef zeroext %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !107
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  br i1 %cs, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %7, -257
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %8) #9, !srcloc !108
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %7, 3840
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr5 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %11) #9, !srcloc !108
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_transfer_one(ptr noundef %sctlr, ptr noundef %sdev, ptr noundef %t) #2 align 64 {
entry:
  %config.i104.i = alloca %struct.dma_slave_config, align 4
  %config.i.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.spi_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %bits_per_word1.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %4 = ptrtoint ptr %bits_per_word1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits_per_word1.i, align 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %len2.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %len2.i, align 4
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t, align 4
  %tx_buf3.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %tx_buf3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %tx_buf3.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %12 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buf.i, align 4
  %rx_buf4.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %rx_buf4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %rx_buf4.i, align 4
  %mode5.i = getelementptr inbounds %struct.spi_device, ptr %sdev, i32 0, i32 7
  %15 = ptrtoint ptr %mode5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode5.i, align 8
  %hw_mode.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hw_mode.i, align 4
  %unit.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %unit.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp.not.i.i = icmp eq i8 %19, 2
  br i1 %cmp.not.i.i, label %if.end.i, label %entry.setup_err_crit_edge

entry.setup_err_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_err

if.end.i:                                         ; preds = %entry
  %word_delay.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 11
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !107
  %23 = and i32 %22, -52428801
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %25 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_mode.i, align 4
  %and3.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %and5.i.i = shl i32 %26, 12
  %27 = and i32 %and5.i.i, 8192
  %or.i.i = or i32 %27, %24
  %or8.i.i = or i32 %or.i.i, %cond.i.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #9
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %28) #9, !srcloc !108
  %31 = ptrtoint ptr %word_delay.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %word_delay.i.i, align 2
  %33 = tail call i16 @llvm.umax.i16(i16 %32, i16 14) #9
  %34 = tail call i16 @llvm.umin.i16(i16 %33, i16 130) #9
  %narrow.i.i = add nuw nsw i16 %34, 249
  %35 = lshr i16 %narrow.i.i, 2
  %36 = and i16 %35, 63
  %37 = zext i16 %36 to i32
  %mul.i.i = shl nuw nsw i32 %37, 2
  %add36.i.i = add nuw nsw i32 %mul.i.i, 10
  %word_delay37.i.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 9
  %38 = ptrtoint ptr %word_delay37.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add36.i.i, ptr %word_delay37.i.i, align 4
  %39 = shl nuw nsw i32 %37, 24
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %41, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i.i, i32 %39) #9, !srcloc !108
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %add.ptr42.i.i = getelementptr i8, ptr %43, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i.i, i32 16777216) #9, !srcloc !108
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %add.ptr44.i.i = getelementptr i8, ptr %45, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i.i, i32 0) #9, !srcloc !108
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %add.ptr47.i.i = getelementptr i8, ptr %47, i32 76
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i.i) #9, !srcloc !107
  %49 = and i32 %48, -939524097
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %51 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hw_mode.i, align 4
  %and52.i.i = shl i32 %52, 1
  %53 = and i32 %and52.i.i, 32
  %54 = or i32 %53, %50
  %and59.i.i = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool60.not.i.i = icmp eq i32 %and59.i.i, 0
  %or62.i.i = or i32 %54, 32768
  %and64.i.i = and i32 %54, -32793
  %val.1.i.i = select i1 %tobool60.not.i.i, i32 %and64.i.i, i32 %or62.i.i
  %55 = tail call i32 @llvm.bswap.i32(i32 %val.1.i.i) #9
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %add.ptr67.i.i = getelementptr i8, ptr %57, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i.i, i32 %55) #9, !srcloc !108
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %58 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %speed_hz.i, align 4
  %src_clk.i.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 5
  %60 = ptrtoint ptr %src_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %src_clk.i.i, align 4
  %shl.i.i = shl i32 %59, 1
  %add.i.i = add i32 %shl.i.i, -1
  %sub.i.i = add i32 %add.i.i, %61
  %div.i.i = udiv i32 %sub.i.i, %shl.i.i
  %sub2.i.i = add i32 %div.i.i, -1
  %shr.i.i = lshr i32 %61, 1
  %div5.i.i = udiv i32 %shr.i.i, %div.i.i
  %hw_speed_hz.i.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 10
  %62 = ptrtoint ptr %hw_speed_hz.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div5.i.i, ptr %hw_speed_hz.i.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %sub2.i.i) #9
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 %63) #9, !srcloc !108
  %conv.i = zext i8 %5 to i32
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %67, i32 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111.i) #9, !srcloc !107
  %69 = and i32 %68, -2080374785
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  %shl.i112.i = shl nuw nsw i32 %conv.i, 2
  %or.i113.i = or i32 %70, %shl.i112.i
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i113.i) #9
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %73, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %71) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %5)
  %cmp.i = icmp ugt i8 %5, 16
  %sub.i = add i8 %5, -1
  %bits_per_word.0.in.v.i = select i1 %cmp.i, i8 15, i8 7
  %bits_per_word.0.in.i = or i8 %bits_per_word.0.in.v.i, %sub.i
  %74 = zext i8 %bits_per_word.0.in.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %bits_per_word.0.in.i, label %if.end.i.setup_err_crit_edge [
    i8 7, label %sw.bb.i
    i8 15, label %sw.bb21.i
    i8 31, label %sw.bb30.i
  ]

if.end.i.setup_err_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_err

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len.i, align 4
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len.i, align 4
  %shr.i = lshr i32 %78, 1
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len.i, align 4
  %shr32.i = lshr i32 %80, 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb30.i, %sw.bb21.i, %sw.bb.i
  %shr32.sink.i = phi i32 [ %shr32.i, %sw.bb30.i ], [ %shr.i, %sw.bb21.i ], [ %76, %sw.bb.i ]
  %sprd_spi_read_bufs_u32.sink.i = phi ptr [ @sprd_spi_read_bufs_u32, %sw.bb30.i ], [ @sprd_spi_read_bufs_u16, %sw.bb21.i ], [ @sprd_spi_read_bufs_u8, %sw.bb.i ]
  %sprd_spi_write_bufs_u32.sink.i = phi ptr [ @sprd_spi_write_bufs_u32, %sw.bb30.i ], [ @sprd_spi_write_bufs_u16, %sw.bb21.i ], [ @sprd_spi_write_bufs_u8, %sw.bb.i ]
  %.sink116.i = phi i32 [ 4, %sw.bb30.i ], [ 2, %sw.bb21.i ], [ 1, %sw.bb.i ]
  %.sink.i = phi i32 [ 32, %sw.bb30.i ], [ 16, %sw.bb21.i ], [ 8, %sw.bb.i ]
  %trans_len33.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 7
  %81 = ptrtoint ptr %trans_len33.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %shr32.sink.i, ptr %trans_len33.i, align 4
  %read_bufs34.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 17
  %82 = ptrtoint ptr %read_bufs34.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %sprd_spi_read_bufs_u32.sink.i, ptr %read_bufs34.i, align 4
  %write_bufs35.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 18
  %83 = ptrtoint ptr %write_bufs35.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %sprd_spi_write_bufs_u32.sink.i, ptr %write_bufs35.i, align 4
  %width37.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 13, i32 2
  %84 = ptrtoint ptr %width37.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink116.i, ptr %width37.i, align 4
  %fragmens_len39.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 13, i32 3
  %85 = ptrtoint ptr %fragmens_len39.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.sink.i, ptr %fragmens_len39.i, align 4
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %87, i32 12
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !107
  %89 = and i32 %88, -3145729
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #9
  %91 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %t, align 4
  %tobool42.not.i = icmp eq ptr %92, null
  %spec.select.i = select i1 %tobool42.not.i, i32 0, i32 8192
  %93 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rx_buf.i, align 4
  %tobool47.not.i = icmp eq ptr %94, null
  %or49.i = or i32 %spec.select.i, 4096
  %mode.1.i = select i1 %tobool47.not.i, i32 %spec.select.i, i32 %or49.i
  %or51.i = or i32 %mode.1.i, %90
  %95 = tail call i32 @llvm.bswap.i32(i32 %or51.i) #9
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %3, align 4
  %add.ptr53.i = getelementptr i8, ptr %97, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %95) #9, !srcloc !108
  %trans_mode.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 8
  %98 = ptrtoint ptr %trans_mode.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %mode.1.i, ptr %trans_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mode.1.i)
  %cmp55.i = icmp eq i32 %mode.1.i, 4096
  br i1 %cmp55.i, label %if.then57.i, label %sw.epilog.i.if.end_crit_edge

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then57.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %write_bufs35.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @sprd_spi_write_only_receive, ptr %write_bufs35.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then57.i, %sw.epilog.i.if.end_crit_edge
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %sctlr, i32 0, i32 24
  %100 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %can_dma, align 4
  %call1 = tail call zeroext i1 %101(ptr noundef %sctlr, ptr noundef %sdev, ptr noundef %t) #9
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %master.i = getelementptr inbounds %struct.spi_device, ptr %sdev, i32 0, i32 2
  %102 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i24 = getelementptr inbounds %struct.device, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %driver_data.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %driver_data.i.i.i24, align 4
  %trans_len1.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %trans_len1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %trans_len1.i, align 4
  %xfer_completion.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 14
  %108 = ptrtoint ptr %xfer_completion.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %xfer_completion.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %105, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %110, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25, i32 196608) #9, !srcloc !108
  %111 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %105, align 4
  %add.ptr2.i.i26 = getelementptr i8, ptr %112, i32 32
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i26) #9, !srcloc !107
  %114 = or i32 %113, 196608
  %115 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %105, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %116, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %114) #9, !srcloc !108
  %trans_mode.i27 = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 8
  %117 = ptrtoint ptr %trans_mode.i27 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %trans_mode.i27, align 4
  %and.i = and i32 %118, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  %arrayidx.i.i = getelementptr %struct.sprd_spi, ptr %105, i32 0, i32 13, i32 1, i32 1
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config.i.i) #9
  %121 = getelementptr inbounds i8, ptr %config.i.i, i32 36
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %121, align 4, !annotation !109
  %123 = ptrtoint ptr %config.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %config.i.i, align 4
  %src_addr.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i.i, i32 0, i32 1
  %124 = ptrtoint ptr %src_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %src_addr.i.i, align 4
  %dst_addr.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i.i, i32 0, i32 2
  %phy_base.i.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 1
  %125 = ptrtoint ptr %phy_base.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %phy_base.i.i, align 4
  %127 = ptrtoint ptr %dst_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %dst_addr.i.i, align 4
  %src_addr_width.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i.i, i32 0, i32 3
  %width.i.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 13, i32 2
  %128 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %width.i.i, align 4
  %130 = ptrtoint ptr %src_addr_width.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %src_addr_width.i.i, align 4
  %dst_addr_width.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i.i, i32 0, i32 4
  %131 = ptrtoint ptr %dst_addr_width.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %129, ptr %dst_addr_width.i.i, align 4
  %src_maxburst.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i.i, i32 0, i32 5
  %fragmens_len.i.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 13, i32 3
  %132 = ptrtoint ptr %fragmens_len.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fragmens_len.i.i, align 4
  %134 = ptrtoint ptr %src_maxburst.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %src_maxburst.i.i, align 4
  %dst_maxburst.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i.i, i32 0, i32 6
  %peripheral_config.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i.i, i32 0, i32 10
  %135 = ptrtoint ptr %peripheral_config.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %peripheral_config.i.i, align 4
  %peripheral_size.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i.i, i32 0, i32 11
  %136 = ptrtoint ptr %peripheral_size.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %peripheral_size.i.i, align 4
  %tx_sg.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 5
  %137 = call ptr @memset(ptr %dst_maxburst.i.i, i32 0, i32 13)
  %138 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %120, align 4
  %device_config.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %139, i32 0, i32 44
  %140 = ptrtoint ptr %device_config.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %device_config.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %141, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.sprd_spi_dma_tx_config.exit.i_crit_edge, label %dmaengine_slave_config.exit.i.i.i

if.then.i.sprd_spi_dma_tx_config.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_tx_config.exit.i

dmaengine_slave_config.exit.i.i.i:                ; preds = %if.then.i
  %call.i.i.i.i = call i32 %141(ptr noundef %120, ptr noundef nonnull %config.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %dmaengine_slave_config.exit.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, label %if.end.i.i.i

dmaengine_slave_config.exit.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_tx_config.exit.i

if.end.i.i.i:                                     ; preds = %dmaengine_slave_config.exit.i.i.i
  %142 = ptrtoint ptr %tx_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tx_sg.i.i, align 4
  %nents.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 5, i32 1
  %144 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nents.i.i.i, align 4
  %tobool.not.i19.i.i.i = icmp eq ptr %120, null
  br i1 %tobool.not.i19.i.i.i, label %if.end.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_tx_config.exit.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i
  %146 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %120, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %147, null
  br i1 %tobool1.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, label %lor.lhs.false2.i.i.i.i

lor.lhs.false.i.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_tx_config.exit.i

lor.lhs.false2.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i.i
  %device_prep_slave_sg.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %147, i32 0, i32 39
  %148 = ptrtoint ptr %device_prep_slave_sg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %device_prep_slave_sg.i.i.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %149, null
  br i1 %tobool4.not.i.i.i.i, label %lor.lhs.false2.i.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i.i.i

lor.lhs.false2.i.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_tx_config.exit.i

dmaengine_prep_slave_sg.exit.i.i.i:               ; preds = %lor.lhs.false2.i.i.i.i
  %call.i20.i.i.i = call ptr %149(ptr noundef nonnull %120, ptr noundef %143, i32 noundef %145, i32 noundef 1, i32 noundef 4, ptr noundef null) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i20.i.i.i, null
  br i1 %tobool.not.i.i.i, label %dmaengine_prep_slave_sg.exit.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, label %if.end3.i.i.i

dmaengine_prep_slave_sg.exit.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_tx_config.exit.i

if.end3.i.i.i:                                    ; preds = %dmaengine_prep_slave_sg.exit.i.i.i
  %tx_submit.i.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i20.i.i.i, i32 0, i32 4
  %150 = ptrtoint ptr %tx_submit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tx_submit.i.i.i.i, align 4
  %call.i22.i.i.i = call i32 %151(ptr noundef nonnull %call.i20.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i22.i.i.i)
  %tobool6.not.i.i.i = icmp sgt i32 %call.i22.i.i.i, -1
  br i1 %tobool6.not.i.i.i, label %sprd_spi_dma_submit.exit.thread16.i.i, label %if.end3.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge

if.end3.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_tx_config.exit.i

sprd_spi_dma_submit.exit.thread16.i.i:            ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %120, align 4
  %device_issue_pending.i.i.i.i = getelementptr inbounds %struct.dma_device, ptr %153, i32 0, i32 50
  %154 = ptrtoint ptr %device_issue_pending.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %device_issue_pending.i.i.i.i, align 4
  call void %155(ptr noundef nonnull %120) #9
  %156 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %len.i, align 4
  br label %sprd_spi_dma_tx_config.exit.i

sprd_spi_dma_tx_config.exit.i:                    ; preds = %sprd_spi_dma_submit.exit.thread16.i.i, %if.end3.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, %dmaengine_prep_slave_sg.exit.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, %lor.lhs.false2.i.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, %lor.lhs.false.i.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, %if.end.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, %dmaengine_slave_config.exit.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge, %if.then.i.sprd_spi_dma_tx_config.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %157, %sprd_spi_dma_submit.exit.thread16.i.i ], [ -19, %if.end.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge ], [ -19, %lor.lhs.false.i.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge ], [ -19, %lor.lhs.false2.i.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge ], [ -38, %if.then.i.sprd_spi_dma_tx_config.exit.i_crit_edge ], [ -19, %dmaengine_prep_slave_sg.exit.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge ], [ %call.i.i.i.i, %dmaengine_slave_config.exit.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge ], [ %call.i22.i.i.i, %if.end3.i.i.i.sprd_spi_dma_tx_config.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i.i) #9
  %158 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %105, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %159, i32 84
  %160 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i) #9, !srcloc !107
  %161 = and i32 %160, -251658241
  %162 = call i32 @llvm.bswap.i32(i32 %161) #9
  %and.i.i = lshr i32 %107, 16
  %shr.i.i28 = and i32 %and.i.i, 15
  %or.i.i29 = or i32 %162, %shr.i.i28
  %163 = call i32 @llvm.bswap.i32(i32 %or.i.i29) #9
  %164 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %105, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %165, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %163) #9, !srcloc !108
  %and4.i.i = and i32 %107, 65535
  %166 = call i32 @llvm.bswap.i32(i32 %and4.i.i) #9
  %167 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %105, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %168, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %166) #9, !srcloc !108
  %hw_mode.i30 = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 6
  %169 = ptrtoint ptr %hw_mode.i30 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %hw_mode.i30, align 4
  %171 = and i32 %170, 272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %sprd_spi_dma_tx_config.exit.i.if.end20.i_crit_edge, label %if.then8.i

sprd_spi_dma_tx_config.exit.i.if.end20.i_crit_edge: ; preds = %sprd_spi_dma_tx_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then8.i:                                       ; preds = %sprd_spi_dma_tx_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %105, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %174, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 33554432) #9, !srcloc !108
  br label %if.end20.i

if.else.i:                                        ; preds = %if.then2
  %175 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %105, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %176, i32 92
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96.i) #9, !srcloc !107
  %178 = and i32 %177, -251658241
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #9
  %and.i97.i = lshr i32 %107, 16
  %shr.i98.i = and i32 %and.i97.i, 15
  %or.i99.i = or i32 %179, %shr.i98.i
  %180 = tail call i32 @llvm.bswap.i32(i32 %or.i99.i) #9
  %181 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %105, align 4
  %add.ptr3.i100.i = getelementptr i8, ptr %182, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i100.i, i32 %180) #9, !srcloc !108
  %and4.i101.i = and i32 %107, 65535
  %183 = tail call i32 @llvm.bswap.i32(i32 %and4.i101.i) #9
  %184 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %105, align 4
  %add.ptr6.i102.i = getelementptr i8, ptr %185, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i102.i, i32 %183) #9, !srcloc !108
  %hw_mode9.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 6
  %186 = ptrtoint ptr %hw_mode9.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %hw_mode9.i, align 4
  %188 = and i32 %187, 272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %if.else17.i, label %if.end20.thread.i

if.end20.thread.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %105, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %191, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 16777216) #9, !srcloc !108
  br label %if.end22.i

if.else17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %write_bufs.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 18
  %192 = ptrtoint ptr %write_bufs.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write_bufs.i, align 4
  %call18.i = tail call i32 %193(ptr noundef %105, i32 noundef %107) #9
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else17.i, %if.then8.i, %sprd_spi_dma_tx_config.exit.i.if.end20.i_crit_edge
  %write_size.0.i = phi i32 [ %retval.0.i.i, %if.then8.i ], [ %call18.i, %if.else17.i ], [ %retval.0.i.i, %sprd_spi_dma_tx_config.exit.i.if.end20.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_size.0.i)
  %cmp.i31 = icmp slt i32 %write_size.0.i, 0
  br i1 %cmp.i31, label %if.then21.i, label %if.end20.i.if.end22.i_crit_edge

if.end20.i.if.end22.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 2
  %194 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.7, i32 noundef %write_size.0.i) #12
  br label %sprd_spi_dma_txrx_bufs.exit

if.end22.i:                                       ; preds = %if.end20.i.if.end22.i_crit_edge, %if.end20.thread.i
  %write_size.0147.i = phi i32 [ 0, %if.end20.thread.i ], [ %write_size.0.i, %if.end20.i.if.end22.i_crit_edge ]
  %196 = ptrtoint ptr %trans_mode.i27 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %trans_mode.i27, align 4
  %and24.i = and i32 %197, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end22.i.if.end42.i_crit_edge, label %if.then26.i

if.end22.i.if.end42.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then26.i:                                      ; preds = %if.end22.i
  %198 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %len.i, align 4
  %fragmens_len.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 13, i32 3
  %200 = ptrtoint ptr %fragmens_len.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %fragmens_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %201)
  %cmp27.i = icmp ugt i32 %199, %201
  br i1 %cmp27.i, label %cond.true.i, label %if.then26.i.cond.end.i_crit_edge

if.then26.i.cond.end.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i = urem i32 %199, %201
  %sub.i33 = sub i32 %199, %rem.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then26.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub.i33, %cond.true.i ], [ %199, %if.then26.i.cond.end.i_crit_edge ]
  %rx_len.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 13, i32 4
  %202 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %cond.i, ptr %rx_len.i, align 4
  %dma_chan1.i.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 13, i32 1
  %203 = ptrtoint ptr %dma_chan1.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dma_chan1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config.i104.i) #9
  %205 = getelementptr inbounds i8, ptr %config.i104.i, i32 36
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 16777215, ptr %205, align 4, !annotation !109
  %207 = ptrtoint ptr %config.i104.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %config.i104.i, align 4
  %src_addr.i105.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i104.i, i32 0, i32 1
  %phy_base.i106.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 1
  %208 = ptrtoint ptr %phy_base.i106.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %phy_base.i106.i, align 4
  %210 = ptrtoint ptr %src_addr.i105.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %src_addr.i105.i, align 4
  %dst_addr.i107.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i104.i, i32 0, i32 2
  %211 = ptrtoint ptr %dst_addr.i107.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %dst_addr.i107.i, align 4
  %src_addr_width.i108.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i104.i, i32 0, i32 3
  %width.i109.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 13, i32 2
  %212 = ptrtoint ptr %width.i109.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %width.i109.i, align 4
  %214 = ptrtoint ptr %src_addr_width.i108.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %src_addr_width.i108.i, align 4
  %dst_addr_width.i110.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i104.i, i32 0, i32 4
  %215 = ptrtoint ptr %dst_addr_width.i110.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %213, ptr %dst_addr_width.i110.i, align 4
  %src_maxburst.i111.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i104.i, i32 0, i32 5
  %216 = ptrtoint ptr %src_maxburst.i111.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %src_maxburst.i111.i, align 4
  %dst_maxburst.i112.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i104.i, i32 0, i32 6
  %217 = ptrtoint ptr %dst_maxburst.i112.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %201, ptr %dst_maxburst.i112.i, align 4
  %src_port_window_size.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i104.i, i32 0, i32 7
  %218 = ptrtoint ptr %src_port_window_size.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %src_port_window_size.i.i, align 4
  %dst_port_window_size.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i104.i, i32 0, i32 8
  %219 = ptrtoint ptr %dst_port_window_size.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %dst_port_window_size.i.i, align 4
  %peripheral_config.i114.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i104.i, i32 0, i32 10
  %220 = ptrtoint ptr %peripheral_config.i114.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %peripheral_config.i114.i, align 4
  %peripheral_size.i115.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i104.i, i32 0, i32 11
  %221 = ptrtoint ptr %peripheral_size.i115.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %peripheral_size.i115.i, align 4
  %rx_sg.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 6
  %222 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %204, align 4
  %device_config.i.i.i116.i = getelementptr inbounds %struct.dma_device, ptr %223, i32 0, i32 44
  %224 = ptrtoint ptr %device_config.i.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %device_config.i.i.i116.i, align 4
  %tobool.not.i.i.i117.i = icmp eq ptr %225, null
  br i1 %tobool.not.i.i.i117.i, label %cond.end.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, label %dmaengine_slave_config.exit.i.i120.i

cond.end.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_rx_config.exit.thread.i

dmaengine_slave_config.exit.i.i120.i:             ; preds = %cond.end.i
  %call.i.i.i118.i = call i32 %225(ptr noundef %204, ptr noundef nonnull %config.i104.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i118.i)
  %cmp.i.i119.i = icmp slt i32 %call.i.i.i118.i, 0
  br i1 %cmp.i.i119.i, label %dmaengine_slave_config.exit.i.i120.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, label %if.end.i.i123.i

dmaengine_slave_config.exit.i.i120.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_rx_config.exit.thread.i

if.end.i.i123.i:                                  ; preds = %dmaengine_slave_config.exit.i.i120.i
  %226 = ptrtoint ptr %rx_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rx_sg.i.i, align 4
  %nents.i.i121.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 6, i32 1
  %228 = ptrtoint ptr %nents.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %nents.i.i121.i, align 4
  %tobool.not.i19.i.i122.i = icmp eq ptr %204, null
  br i1 %tobool.not.i19.i.i122.i, label %if.end.i.i123.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i125.i

if.end.i.i123.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge: ; preds = %if.end.i.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_rx_config.exit.thread.i

lor.lhs.false.i.i.i125.i:                         ; preds = %if.end.i.i123.i
  %230 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %204, align 4
  %tobool1.not.i.i.i124.i = icmp eq ptr %231, null
  br i1 %tobool1.not.i.i.i124.i, label %lor.lhs.false.i.i.i125.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i.i128.i

lor.lhs.false.i.i.i125.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_rx_config.exit.thread.i

lor.lhs.false2.i.i.i128.i:                        ; preds = %lor.lhs.false.i.i.i125.i
  %device_prep_slave_sg.i.i.i126.i = getelementptr inbounds %struct.dma_device, ptr %231, i32 0, i32 39
  %232 = ptrtoint ptr %device_prep_slave_sg.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %device_prep_slave_sg.i.i.i126.i, align 4
  %tobool4.not.i.i.i127.i = icmp eq ptr %233, null
  br i1 %tobool4.not.i.i.i127.i, label %lor.lhs.false2.i.i.i128.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i.i131.i

lor.lhs.false2.i.i.i128.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_rx_config.exit.thread.i

dmaengine_prep_slave_sg.exit.i.i131.i:            ; preds = %lor.lhs.false2.i.i.i128.i
  %call.i20.i.i129.i = call ptr %233(ptr noundef nonnull %204, ptr noundef %227, i32 noundef %229, i32 noundef 2, i32 noundef 4, ptr noundef null) #9
  %tobool.not.i.i130.i = icmp eq ptr %call.i20.i.i129.i, null
  br i1 %tobool.not.i.i130.i, label %dmaengine_prep_slave_sg.exit.i.i131.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, label %if.end3.i.i135.i

dmaengine_prep_slave_sg.exit.i.i131.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i.i131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_rx_config.exit.thread.i

if.end3.i.i135.i:                                 ; preds = %dmaengine_prep_slave_sg.exit.i.i131.i
  %tx_submit.i.i.i132.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i20.i.i129.i, i32 0, i32 4
  %234 = ptrtoint ptr %tx_submit.i.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %tx_submit.i.i.i132.i, align 4
  %call.i22.i.i133.i = call i32 %235(ptr noundef nonnull %call.i20.i.i129.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i22.i.i133.i)
  %tobool6.not.i.i134.i = icmp sgt i32 %call.i22.i.i133.i, -1
  br i1 %tobool6.not.i.i134.i, label %sprd_spi_dma_rx_config.exit.i, label %if.end3.i.i135.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge

if.end3.i.i135.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge: ; preds = %if.end3.i.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_rx_config.exit.thread.i

sprd_spi_dma_rx_config.exit.thread.i:             ; preds = %if.end3.i.i135.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, %dmaengine_prep_slave_sg.exit.i.i131.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, %lor.lhs.false2.i.i.i128.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i125.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, %if.end.i.i123.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, %dmaengine_slave_config.exit.i.i120.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge, %cond.end.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge
  %retval.0.i137.ph.i = phi i32 [ %call.i22.i.i133.i, %if.end3.i.i135.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge ], [ %call.i.i.i118.i, %dmaengine_slave_config.exit.i.i120.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge ], [ -19, %dmaengine_prep_slave_sg.exit.i.i131.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge ], [ -38, %cond.end.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge ], [ -19, %lor.lhs.false2.i.i.i128.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge ], [ -19, %lor.lhs.false.i.i.i125.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge ], [ -19, %if.end.i.i123.i.sprd_spi_dma_rx_config.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i104.i) #9
  br label %do.end39.i

sprd_spi_dma_rx_config.exit.i:                    ; preds = %if.end3.i.i135.i
  %236 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %204, align 4
  %device_issue_pending.i.i.i136.i = getelementptr inbounds %struct.dma_device, ptr %237, i32 0, i32 50
  %238 = ptrtoint ptr %device_issue_pending.i.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %device_issue_pending.i.i.i136.i, align 4
  call void %239(ptr noundef nonnull %204) #9
  %240 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %rx_len.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i104.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp35.i = icmp slt i32 %241, 0
  br i1 %cmp35.i, label %sprd_spi_dma_rx_config.exit.i.do.end39.i_crit_edge, label %sprd_spi_dma_rx_config.exit.i.if.end42.i_crit_edge

sprd_spi_dma_rx_config.exit.i.if.end42.i_crit_edge: ; preds = %sprd_spi_dma_rx_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

sprd_spi_dma_rx_config.exit.i.do.end39.i_crit_edge: ; preds = %sprd_spi_dma_rx_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39.i

do.end39.i:                                       ; preds = %sprd_spi_dma_rx_config.exit.i.do.end39.i_crit_edge, %sprd_spi_dma_rx_config.exit.thread.i
  %retval.0.i137150.i = phi i32 [ %retval.0.i137.ph.i, %sprd_spi_dma_rx_config.exit.thread.i ], [ %241, %sprd_spi_dma_rx_config.exit.i.do.end39.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i137150.i) #12
  br label %sprd_spi_dma_txrx_bufs.exit

if.end42.i:                                       ; preds = %sprd_spi_dma_rx_config.exit.i.if.end42.i_crit_edge, %if.end22.i.if.end42.i_crit_edge
  %242 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %105, align 4
  %add.ptr.i138.i = getelementptr i8, ptr %243, i32 16
  %244 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138.i) #9, !srcloc !107
  %245 = or i32 %244, 1073741824
  %246 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %105, align 4
  %add.ptr2.i139.i = getelementptr i8, ptr %247, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i139.i, i32 %245) #9, !srcloc !108
  call void @wait_for_completion(ptr noundef %xfer_completion.i) #9
  %248 = ptrtoint ptr %trans_mode.i27 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %trans_mode.i27, align 4
  %and45.i = and i32 %249, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.else48.i, label %if.end42.i.sprd_spi_dma_txrx_bufs.exit_crit_edge

if.end42.i.sprd_spi_dma_txrx_bufs.exit_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sprd_spi_dma_txrx_bufs.exit

if.else48.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_len50.i = getelementptr inbounds %struct.sprd_spi, ptr %105, i32 0, i32 13, i32 4
  %250 = ptrtoint ptr %rx_len50.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %rx_len50.i, align 4
  br label %sprd_spi_dma_txrx_bufs.exit

sprd_spi_dma_txrx_bufs.exit:                      ; preds = %if.else48.i, %if.end42.i.sprd_spi_dma_txrx_bufs.exit_crit_edge, %do.end39.i, %if.then21.i
  %ret.0.i = phi i32 [ %write_size.0.i, %if.then21.i ], [ %retval.0.i137150.i, %do.end39.i ], [ %251, %if.else48.i ], [ %write_size.0147.i, %if.end42.i.sprd_spi_dma_txrx_bufs.exit_crit_edge ]
  %252 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %105, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %253, i32 16
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140.i) #9, !srcloc !107
  %255 = and i32 %254, -1073741825
  %256 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %105, align 4
  %add.ptr2.i141.i = getelementptr i8, ptr %257, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i141.i, i32 %255) #9, !srcloc !108
  %258 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %105, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %259, i32 12
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142.i) #9, !srcloc !107
  %261 = and i32 %260, -3145729
  %262 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %105, align 4
  %add.ptr2.i143.i = getelementptr i8, ptr %263, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i143.i, i32 %261) #9, !srcloc !108
  %264 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %105, align 4
  %add.ptr.i144.i = getelementptr i8, ptr %265, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i, i32 0) #9, !srcloc !108
  br label %if.end5

if.else:                                          ; preds = %if.end
  %266 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %controller.i, align 8
  %driver_data.i.i.i35 = getelementptr inbounds %struct.device, ptr %267, i32 0, i32 8
  %268 = ptrtoint ptr %driver_data.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %driver_data.i.i.i35, align 4
  %trans_len1.i36 = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 7
  %270 = ptrtoint ptr %trans_len1.i36 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %trans_len1.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool.not136.i = icmp eq i32 %271, 0
  br i1 %tobool.not136.i, label %if.else.while.end.i_crit_edge, label %while.body.lr.ph.i

if.else.while.end.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.else
  %trans_mode.i37 = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 8
  %write_bufs.i38 = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 18
  %hw_mode.i39 = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 6
  %hw_speed_hz.i.i.i = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 10
  %word_delay.i.i.i = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 9
  %src_clk.i.i.i = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 5
  %read_bufs.i = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 17
  br label %while.body.i

while.body.i:                                     ; preds = %if.end35.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %read_size.0139.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %read_size.1.i, %if.end35.i.while.body.i_crit_edge ]
  %write_size.0138.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %write_size.2.i, %if.end35.i.while.body.i_crit_edge ]
  %trans_len.0137.i = phi i32 [ %271, %while.body.lr.ph.i ], [ %sub.i49, %if.end35.i.while.body.i_crit_edge ]
  %272 = tail call i32 @llvm.umin.i32(i32 %trans_len.0137.i, i32 32) #9
  %273 = ptrtoint ptr %trans_mode.i37 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %trans_mode.i37, align 4
  %and.i40 = and i32 %274, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool2.not.i = icmp eq i32 %and.i40, 0
  %275 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %269, align 4
  br i1 %tobool2.not.i, label %if.else.i48, label %if.then.i44

if.then.i44:                                      ; preds = %while.body.i
  %add.ptr.i.i41 = getelementptr i8, ptr %276, i32 84
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #9, !srcloc !107
  %278 = and i32 %277, -251658241
  %279 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %269, align 4
  %add.ptr3.i.i42 = getelementptr i8, ptr %280, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i42, i32 %278) #9, !srcloc !108
  %281 = shl nuw nsw i32 %272, 24
  %282 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %269, align 4
  %add.ptr6.i.i43 = getelementptr i8, ptr %283, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i43, i32 %281) #9, !srcloc !108
  %284 = ptrtoint ptr %write_bufs.i38 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %write_bufs.i38, align 4
  %call3.i = tail call i32 %285(ptr noundef %269, i32 noundef %272) #9
  %add.i = add i32 %call3.i, %write_size.0138.i
  %286 = ptrtoint ptr %hw_mode.i39 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %hw_mode.i39, align 4
  %288 = and i32 %287, 272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %if.then.i44.if.end.i45_crit_edge, label %if.then9.i

if.then.i44.if.end.i45_crit_edge:                 ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i45

if.then9.i:                                       ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #11
  %290 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %269, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %291, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 33554432) #9, !srcloc !108
  br label %if.end.i45

if.end.i45:                                       ; preds = %if.then9.i, %if.then.i44.if.end.i45_crit_edge
  %292 = ptrtoint ptr %bits_per_word1.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %bits_per_word1.i, align 1
  %conv.i.i.i = zext i8 %293 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 5
  %294 = ptrtoint ptr %hw_speed_hz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %hw_speed_hz.i.i.i, align 4
  %sub.i.i.i = add i32 %295, 999999
  %div.i.i.i = udiv i32 %sub.i.i.i, %295
  %mul2.i.i.i = mul i32 %mul.i.i.i, %div.i.i.i
  %296 = ptrtoint ptr %word_delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %word_delay.i.i.i, align 4
  %mul4.i.i.i = mul i32 %297, 32000000
  %298 = ptrtoint ptr %src_clk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %src_clk.i.i.i, align 4
  %add5.i.i.i = add i32 %299, -1
  %sub6.i.i.i = add i32 %add5.i.i.i, %mul4.i.i.i
  %div8.i.i.i = udiv i32 %sub6.i.i.i, %299
  %add9.i.i.i = add i32 %div8.i.i.i, %mul2.i.i.i
  %conv.i.i = zext i32 %add9.i.i.i to i64
  %call1.i.i = tail call i64 @ktime_get() #9
  %mul.i122.i.i = mul nuw nsw i64 %conv.i.i, 1000
  %add.i.i.i = add i64 %mul.i122.i.i, %call1.i.i
  %300 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %269, align 4
  %add.ptr132.i.i = getelementptr i8, ptr %301, i32 40
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132.i.i) #9, !srcloc !107
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #9
  %and133.i.i = and i32 %303, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i.i)
  %tobool.not134.i.i = icmp eq i32 %and133.i.i, 0
  br i1 %tobool.not134.i.i, label %if.end12.lr.ph.i.i, label %if.end.i45.for.end.i.i_crit_edge

if.end.i45.for.end.i.i_crit_edge:                 ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end12.lr.ph.i.i:                               ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i.i.i)
  %tobool13.not.i.i = icmp eq i32 %add9.i.i.i, 0
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end27.i.i.if.end12.i.i_crit_edge, %if.end12.lr.ph.i.i
  br i1 %tobool13.not.i.i, label %if.end12.i.i.if.end27.i.i_crit_edge, label %land.lhs.true.i.i

if.end12.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i

land.lhs.true.i.i:                                ; preds = %if.end12.i.i
  %call14.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call14.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then18.i.i, label %land.lhs.true.i.i.if.end27.i.i_crit_edge

land.lhs.true.i.i.if.end27.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %304 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %269, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %305, i32 40
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i.i) #9, !srcloc !107
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #9
  br label %for.end.i.i

if.end27.i.i:                                     ; preds = %land.lhs.true.i.i.if.end27.i.i_crit_edge, %if.end12.i.i.if.end27.i.i_crit_edge
  %308 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %269, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %309, i32 40
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77.i) #9, !srcloc !107
  %311 = tail call i32 @llvm.bswap.i32(i32 %310) #9
  %and.i78.i = and i32 %311, 256
  %tobool.not.i.i46 = icmp eq i32 %and.i78.i, 0
  br i1 %tobool.not.i.i46, label %if.end27.i.i.if.end12.i.i_crit_edge, label %if.end27.i.i.for.end.i.i_crit_edge

if.end27.i.i.for.end.i.i_crit_edge:               ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end27.i.i.if.end12.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

for.end.i.i:                                      ; preds = %if.end27.i.i.for.end.i.i_crit_edge, %if.then18.i.i, %if.end.i45.for.end.i.i_crit_edge
  %val.0.i.i = phi i32 [ %307, %if.then18.i.i ], [ %303, %if.end.i45.for.end.i.i_crit_edge ], [ %311, %if.end27.i.i.for.end.i.i_crit_edge ]
  %and29.i.i = and i32 %val.0.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %do.end35.i.i, label %if.end36.i.i

do.end35.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 2
  %312 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %313, ptr noundef nonnull @.str.12) #12
  br label %sprd_spi_txrx_bufs.exit

if.end36.i.i:                                     ; preds = %for.end.i.i
  %call41.i.i = tail call i64 @ktime_get() #9
  %add.i124.i.i = add i64 %call41.i.i, %mul.i122.i.i
  %314 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %269, align 4
  %add.ptr59135.i.i = getelementptr i8, ptr %315, i32 52
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59135.i.i) #9, !srcloc !107
  %317 = tail call i32 @llvm.bswap.i32(i32 %316) #9
  %and62136.i.i = and i32 %317, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62136.i.i)
  %tobool63.not137.i.i = icmp eq i32 %and62136.i.i, 0
  br i1 %tobool63.not137.i.i, label %if.end36.i.i.for.end84.i.i_crit_edge, label %if.end65.lr.ph.i.i

if.end36.i.i.for.end84.i.i_crit_edge:             ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end84.i.i

if.end65.lr.ph.i.i:                               ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i.i.i)
  %tobool66.not.i.i = icmp eq i32 %add9.i.i.i, 0
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.end83.i.i.if.end65.i.i_crit_edge, %if.end65.lr.ph.i.i
  br i1 %tobool66.not.i.i, label %if.end65.i.i.if.end83.i.i_crit_edge, label %land.lhs.true67.i.i

if.end65.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i.i

land.lhs.true67.i.i:                              ; preds = %if.end65.i.i
  %call68.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call68.i.i, i64 %add.i124.i.i)
  %cmp3.i126.i.i = icmp sgt i64 %call68.i.i, %add.i124.i.i
  br i1 %cmp3.i126.i.i, label %if.then72.i.i, label %land.lhs.true67.i.i.if.end83.i.i_crit_edge

land.lhs.true67.i.i.if.end83.i.i_crit_edge:       ; preds = %land.lhs.true67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i.i

if.then72.i.i:                                    ; preds = %land.lhs.true67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %318 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %269, align 4
  %add.ptr75.i.i = getelementptr i8, ptr %319, i32 52
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75.i.i) #9, !srcloc !107
  %321 = tail call i32 @llvm.bswap.i32(i32 %320) #9
  br label %for.end84.i.i

if.end83.i.i:                                     ; preds = %land.lhs.true67.i.i.if.end83.i.i_crit_edge, %if.end65.i.i.if.end83.i.i_crit_edge
  %322 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %269, align 4
  %add.ptr59.i.i = getelementptr i8, ptr %323, i32 52
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i.i) #9, !srcloc !107
  %325 = tail call i32 @llvm.bswap.i32(i32 %324) #9
  %and62.i.i = and i32 %325, 256
  %tobool63.not.i.i = icmp eq i32 %and62.i.i, 0
  br i1 %tobool63.not.i.i, label %if.end83.i.i.for.end84.i.i_crit_edge, label %if.end83.i.i.if.end65.i.i_crit_edge

if.end83.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i.i

if.end83.i.i.for.end84.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end84.i.i

for.end84.i.i:                                    ; preds = %if.end83.i.i.for.end84.i.i_crit_edge, %if.then72.i.i, %if.end36.i.i.for.end84.i.i_crit_edge
  %val.1.i.i47 = phi i32 [ %321, %if.then72.i.i ], [ %317, %if.end36.i.i.for.end84.i.i_crit_edge ], [ %325, %if.end83.i.i.for.end84.i.i_crit_edge ]
  %and86.i.i = and i32 %val.1.i.i47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i.i)
  %tobool87.not.i.i = icmp eq i32 %and86.i.i, 0
  br i1 %tobool87.not.i.i, label %if.end95.i.i, label %do.end93.i.i

do.end93.i.i:                                     ; preds = %for.end84.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev94.i.i = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 2
  %326 = ptrtoint ptr %dev94.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %dev94.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %327, ptr noundef nonnull @.str.15) #12
  br label %sprd_spi_txrx_bufs.exit

if.end95.i.i:                                     ; preds = %for.end84.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %328 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %269, align 4
  %add.ptr97.i.i = getelementptr i8, ptr %329, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i.i, i32 65536) #9, !srcloc !108
  br label %if.end28.i

if.else.i48:                                      ; preds = %while.body.i
  %add.ptr.i79.i = getelementptr i8, ptr %276, i32 92
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.i) #9, !srcloc !107
  %331 = and i32 %330, -251658241
  %332 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %269, align 4
  %add.ptr3.i83.i = getelementptr i8, ptr %333, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i83.i, i32 %331) #9, !srcloc !108
  %334 = shl nuw nsw i32 %272, 24
  %335 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %269, align 4
  %add.ptr6.i85.i = getelementptr i8, ptr %336, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i85.i, i32 %334) #9, !srcloc !108
  %337 = ptrtoint ptr %hw_mode.i39 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %hw_mode.i39, align 4
  %339 = and i32 %338, 272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %if.else19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #11
  %341 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %269, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %342, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 16777216) #9, !srcloc !108
  br label %if.end23.i

if.else19.i:                                      ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #11
  %343 = ptrtoint ptr %write_bufs.i38 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %write_bufs.i38, align 4
  %call21.i = tail call i32 %344(ptr noundef %269, i32 noundef %272) #9
  %add22.i = add i32 %call21.i, %write_size.0138.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else19.i, %if.then18.i
  %write_size.1.i = phi i32 [ %write_size.0138.i, %if.then18.i ], [ %add22.i, %if.else19.i ]
  %345 = ptrtoint ptr %bits_per_word1.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %bits_per_word1.i, align 1
  %conv.i.i88.i = zext i8 %346 to i32
  %mul.i.i89.i = shl nuw nsw i32 %conv.i.i88.i, 5
  %347 = ptrtoint ptr %hw_speed_hz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %hw_speed_hz.i.i.i, align 4
  %sub.i.i91.i = add i32 %348, 999999
  %div.i.i92.i = udiv i32 %sub.i.i91.i, %348
  %mul2.i.i93.i = mul i32 %mul.i.i89.i, %div.i.i92.i
  %349 = ptrtoint ptr %word_delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %word_delay.i.i.i, align 4
  %mul4.i.i95.i = mul i32 %350, 32000000
  %351 = ptrtoint ptr %src_clk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %src_clk.i.i.i, align 4
  %add5.i.i97.i = add i32 %352, -1
  %sub6.i.i98.i = add i32 %add5.i.i97.i, %mul4.i.i95.i
  %div8.i.i99.i = udiv i32 %sub6.i.i98.i, %352
  %add9.i.i100.i = add i32 %div8.i.i99.i, %mul2.i.i93.i
  %conv.i101.i = zext i32 %add9.i.i100.i to i64
  %call1.i102.i = tail call i64 @ktime_get() #9
  %mul.i51.i.i = mul nuw nsw i64 %conv.i101.i, 1000
  %add.i.i103.i = add i64 %mul.i51.i.i, %call1.i102.i
  %353 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %269, align 4
  %add.ptr53.i.i = getelementptr i8, ptr %354, i32 40
  %355 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i.i) #9, !srcloc !107
  %356 = tail call i32 @llvm.bswap.i32(i32 %355) #9
  %and54.i.i = and i32 %356, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i)
  %tobool.not55.i.i = icmp eq i32 %and54.i.i, 0
  br i1 %tobool.not55.i.i, label %if.end12.lr.ph.i105.i, label %if.end23.i.for.end.i119.i_crit_edge

if.end23.i.for.end.i119.i_crit_edge:              ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i119.i

if.end12.lr.ph.i105.i:                            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i.i100.i)
  %tobool13.not.i104.i = icmp eq i32 %add9.i.i100.i, 0
  br label %if.end12.i106.i

if.end12.i106.i:                                  ; preds = %if.end27.i115.i.if.end12.i106.i_crit_edge, %if.end12.lr.ph.i105.i
  br i1 %tobool13.not.i104.i, label %if.end12.i106.i.if.end27.i115.i_crit_edge, label %land.lhs.true.i109.i

if.end12.i106.i.if.end27.i115.i_crit_edge:        ; preds = %if.end12.i106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i115.i

land.lhs.true.i109.i:                             ; preds = %if.end12.i106.i
  %call14.i107.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i107.i, i64 %add.i.i103.i)
  %cmp3.i.i108.i = icmp sgt i64 %call14.i107.i, %add.i.i103.i
  br i1 %cmp3.i.i108.i, label %if.then18.i111.i, label %land.lhs.true.i109.i.if.end27.i115.i_crit_edge

land.lhs.true.i109.i.if.end27.i115.i_crit_edge:   ; preds = %land.lhs.true.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i115.i

if.then18.i111.i:                                 ; preds = %land.lhs.true.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  %357 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %269, align 4
  %add.ptr21.i110.i = getelementptr i8, ptr %358, i32 40
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i110.i) #9, !srcloc !107
  %360 = tail call i32 @llvm.bswap.i32(i32 %359) #9
  br label %for.end.i119.i

if.end27.i115.i:                                  ; preds = %land.lhs.true.i109.i.if.end27.i115.i_crit_edge, %if.end12.i106.i.if.end27.i115.i_crit_edge
  %361 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %269, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %362, i32 40
  %363 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112.i) #9, !srcloc !107
  %364 = tail call i32 @llvm.bswap.i32(i32 %363) #9
  %and.i113.i = and i32 %364, 512
  %tobool.not.i114.i = icmp eq i32 %and.i113.i, 0
  br i1 %tobool.not.i114.i, label %if.end27.i115.i.if.end12.i106.i_crit_edge, label %if.end27.i115.i.for.end.i119.i_crit_edge

if.end27.i115.i.for.end.i119.i_crit_edge:         ; preds = %if.end27.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i119.i

if.end27.i115.i.if.end12.i106.i_crit_edge:        ; preds = %if.end27.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i106.i

for.end.i119.i:                                   ; preds = %if.end27.i115.i.for.end.i119.i_crit_edge, %if.then18.i111.i, %if.end23.i.for.end.i119.i_crit_edge
  %val.0.i116.i = phi i32 [ %360, %if.then18.i111.i ], [ %356, %if.end23.i.for.end.i119.i_crit_edge ], [ %364, %if.end27.i115.i.for.end.i119.i_crit_edge ]
  %and29.i117.i = and i32 %val.0.i116.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i117.i)
  %tobool30.not.i118.i = icmp eq i32 %and29.i117.i, 0
  br i1 %tobool30.not.i118.i, label %do.end35.i121.i, label %if.end36.i122.i

do.end35.i121.i:                                  ; preds = %for.end.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i120.i = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 2
  %365 = ptrtoint ptr %dev.i120.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %dev.i120.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %366, ptr noundef nonnull @.str.17) #12
  br label %sprd_spi_txrx_bufs.exit

if.end36.i122.i:                                  ; preds = %for.end.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  %367 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %269, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %368, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i, i32 131072) #9, !srcloc !108
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end36.i122.i, %if.end95.i.i
  %write_size.2.i = phi i32 [ %add.i, %if.end95.i.i ], [ %write_size.1.i, %if.end36.i122.i ]
  %369 = ptrtoint ptr %trans_mode.i37 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %trans_mode.i37, align 4
  %and30.i = and i32 %370, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end28.i.if.end35.i_crit_edge, label %if.then32.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %371 = ptrtoint ptr %read_bufs.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %read_bufs.i, align 4
  %call33.i = tail call i32 %372(ptr noundef %269, i32 noundef %272) #9
  %add34.i = add i32 %call33.i, %read_size.0139.i
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end28.i.if.end35.i_crit_edge
  %read_size.1.i = phi i32 [ %add34.i, %if.then32.i ], [ %read_size.0139.i, %if.end28.i.if.end35.i_crit_edge ]
  %sub.i49 = sub i32 %trans_len.0137.i, %272
  %tobool.not.i50 = icmp eq i32 %sub.i49, 0
  br i1 %tobool.not.i50, label %if.end35.i.while.end.i_crit_edge, label %if.end35.i.while.body.i_crit_edge

if.end35.i.while.body.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end35.i.while.end.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end35.i.while.end.i_crit_edge, %if.else.while.end.i_crit_edge
  %write_size.0.lcssa.i = phi i32 [ 0, %if.else.while.end.i_crit_edge ], [ %write_size.2.i, %if.end35.i.while.end.i_crit_edge ]
  %read_size.0.lcssa.i = phi i32 [ 0, %if.else.while.end.i_crit_edge ], [ %read_size.1.i, %if.end35.i.while.end.i_crit_edge ]
  %trans_mode36.i = getelementptr inbounds %struct.sprd_spi, ptr %269, i32 0, i32 8
  %373 = ptrtoint ptr %trans_mode36.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %trans_mode36.i, align 4
  %and37.i = and i32 %374, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  %read_size.0.write_size.0.i = select i1 %tobool38.not.i, i32 %read_size.0.lcssa.i, i32 %write_size.0.lcssa.i
  br label %sprd_spi_txrx_bufs.exit

sprd_spi_txrx_bufs.exit:                          ; preds = %while.end.i, %do.end35.i121.i, %do.end93.i.i, %do.end35.i.i
  %ret.1.i = phi i32 [ %read_size.0.write_size.0.i, %while.end.i ], [ -110, %do.end35.i.i ], [ -110, %do.end93.i.i ], [ -110, %do.end35.i121.i ]
  %375 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %269, align 4
  %add.ptr.i124.i = getelementptr i8, ptr %376, i32 12
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124.i) #9, !srcloc !107
  %378 = and i32 %377, -3145729
  %379 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %269, align 4
  %add.ptr2.i.i51 = getelementptr i8, ptr %380, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i51, i32 %378) #9, !srcloc !108
  br label %if.end5

if.end5:                                          ; preds = %sprd_spi_txrx_bufs.exit, %sprd_spi_dma_txrx_bufs.exit
  %ret.0 = phi i32 [ %ret.0.i, %sprd_spi_dma_txrx_bufs.exit ], [ %ret.1.i, %sprd_spi_txrx_bufs.exit ]
  %381 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %382)
  %cmp = icmp eq i32 %ret.0, %382
  br i1 %cmp, label %if.end5.setup_err_crit_edge, label %if.else7

if.end5.setup_err_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %setup_err

if.else7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp8 = icmp sgt i32 %ret.0, -1
  %spec.store.select = select i1 %cmp8, i32 -121, i32 %ret.0
  br label %setup_err

setup_err:                                        ; preds = %if.else7, %if.end5.setup_err_crit_edge, %if.end.i.setup_err_crit_edge, %entry.setup_err_crit_edge
  %ret.1 = phi i32 [ %spec.store.select, %if.else7 ], [ 0, %if.end5.setup_err_crit_edge ], [ -22, %if.end.i.setup_err_crit_edge ], [ -22, %entry.setup_err_crit_edge ]
  call void @spi_finalize_current_transfer(ptr noundef %sctlr) #9
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sprd_spi_can_dma(ptr nocapture noundef readonly %sctlr, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %sctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma = getelementptr inbounds %struct.sprd_spi, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dma, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp = icmp ugt i32 %5, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !104
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !105
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sprd_spi_dma_release(ptr nocapture noundef readonly %ss) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan = getelementptr inbounds %struct.sprd_spi, ptr %ss, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx6 = getelementptr %struct.sprd_spi, ptr %ss, i32 0, i32 13, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %3) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_read_bufs_u8(ptr nocapture noundef %ss, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf = getelementptr inbounds %struct.sprd_spi, ptr %ss, i32 0, i32 16
  %0 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.not = icmp eq i32 %len, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ss, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #9, !srcloc !110
  %arrayidx = getelementptr i8, ptr %1, i32 %i.010
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 %len
  store ptr %add.ptr2, ptr %rx_buf, align 4
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_write_bufs_u8(ptr nocapture noundef %ss, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.sprd_spi, ptr %ss, i32 0, i32 15
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.not = icmp eq i32 %len, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %1, i32 %i.010
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ss, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %3) #9, !srcloc !111
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_buf, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 %len
  store ptr %add.ptr2, ptr %tx_buf, align 4
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_read_bufs_u16(ptr nocapture noundef %ss, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf = getelementptr inbounds %struct.sprd_spi, ptr %ss, i32 0, i32 16
  %0 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp10.not = icmp eq i32 %len, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ss, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #9, !srcloc !112
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %arrayidx = getelementptr i16, ptr %1, i32 %i.011
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %arrayidx, align 2
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = shl i32 %len, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %add.ptr2 = getelementptr i8, ptr %8, i32 %i.0.lcssa
  store ptr %add.ptr2, ptr %rx_buf, align 4
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_write_bufs_u16(ptr nocapture noundef %ss, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.sprd_spi, ptr %ss, i32 0, i32 15
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp10.not = icmp eq i32 %len, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %1, i32 %i.011
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ss, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %4) #9, !srcloc !113
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = shl i32 %len, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %7 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_buf, align 4
  %add.ptr2 = getelementptr i8, ptr %8, i32 %i.0.lcssa
  store ptr %add.ptr2, ptr %tx_buf, align 4
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_read_bufs_u32(ptr nocapture noundef %ss, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_buf = getelementptr inbounds %struct.sprd_spi, ptr %ss, i32 0, i32 16
  %0 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp10.not = icmp eq i32 %len, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ss, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !107
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %arrayidx = getelementptr i32, ptr %1, i32 %i.011
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = shl i32 %len, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %add.ptr2 = getelementptr i8, ptr %8, i32 %i.0.lcssa
  store ptr %add.ptr2, ptr %rx_buf, align 4
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_write_bufs_u32(ptr nocapture noundef %ss, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf = getelementptr inbounds %struct.sprd_spi, ptr %ss, i32 0, i32 15
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp10.not = icmp eq i32 %len, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %1, i32 %i.011
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ss, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #9, !srcloc !108
  %inc = add nuw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = shl i32 %len, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %7 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_buf, align 4
  %add.ptr2 = getelementptr i8, ptr %8, i32 %i.0.lcssa
  store ptr %add.ptr2, ptr %tx_buf, align 4
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_write_only_receive(ptr nocapture noundef readonly %ss, i32 noundef returned %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ss, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !107
  %3 = and i32 %2, 16580607
  %4 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ss, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #9, !srcloc !108
  %6 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ss, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !107
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and8 = and i32 %len, 511
  %or = or i32 %9, %and8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ss, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %10) #9, !srcloc !108
  %13 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ss, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !107
  %16 = or i32 %15, 131072
  %17 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ss, align 4
  %add.ptr18 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %16) #9, !srcloc !108
  ret i32 %len
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_handle_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !107
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 65536) #9, !srcloc !108
  %trans_mode = getelementptr inbounds %struct.sprd_spi, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %trans_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trans_mode, align 4
  %and3 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then.cleanup.sink.split_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end6:                                          ; preds = %entry
  %and7 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 131072) #9, !srcloc !108
  %rx_len = getelementptr inbounds %struct.sprd_spi, ptr %data, i32 0, i32 13, i32 4
  %10 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_len, align 4
  %len = getelementptr inbounds %struct.sprd_spi, ptr %data, i32 0, i32 11
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp = icmp ugt i32 %13, %11
  br i1 %cmp, label %if.then12, label %if.then9.cleanup.sink.split_crit_edge

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %rx_buf = getelementptr inbounds %struct.sprd_spi, ptr %data, i32 0, i32 16
  %14 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 %11
  store ptr %add.ptr15, ptr %rx_buf, align 4
  %read_bufs = getelementptr inbounds %struct.sprd_spi, ptr %data, i32 0, i32 17
  %16 = ptrtoint ptr %read_bufs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_bufs, align 4
  %sub = sub i32 %13, %11
  %call19 = tail call i32 %17(ptr noundef %data, i32 noundef %sub) #9
  %18 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_len, align 4
  %add = add i32 %19, %call19
  store i32 %add, ptr %rx_len, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12, %if.then9.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %xfer_completion = getelementptr inbounds %struct.sprd_spi, ptr %data, i32 0, i32 14
  tail call void @complete(ptr noundef %xfer_completion) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_spi_dma_request(ptr nocapture noundef %ss) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sprd_spi, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull @.str.35) #9
  %dma_chan = getelementptr inbounds %struct.sprd_spi, ptr %ss, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dma_chan, align 4
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br i1 %spec.select.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %5, ptr noundef nonnull @.str.36) #9
  br label %return

if.end:                                           ; preds = %entry
  %call12 = tail call ptr @dma_request_chan(ptr noundef %4, ptr noundef nonnull @.str.37) #9
  %arrayidx15 = getelementptr %struct.sprd_spi, ptr %ss, i32 0, i32 13, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %arrayidx15, align 4
  %tobool.not.i41 = icmp eq ptr %call12, null
  %cmp.i42 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %spec.select.i43 = or i1 %tobool.not.i41, %cmp.i42
  br i1 %spec.select.i43, label %if.then20, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %8) #9
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx15, align 4
  %13 = ptrtoint ptr %12 to i32
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %10, i32 noundef %13, ptr noundef nonnull @.str.38) #9
  br label %return

return:                                           ; preds = %if.then20, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call10, %if.then ], [ %call29, %if.then20 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %dma = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %dma_chan.i = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %7) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %arrayidx6.i = getelementptr %struct.sprd_spi, ptr %3, i32 0, i32 13, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %9, null
  br i1 %tobool7.not.i, label %if.end.i.if.end_crit_edge, label %if.then8.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %9) #9
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_spi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %clk = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
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
  %dma = getelementptr inbounds %struct.sprd_spi, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @sprd_spi_dma_request(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.then8 ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call6, %if.then8 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !52, !53, !54, !55, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !89, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_spi_sprd__245_1083_sprd_spi_driver_init6, !1, !"__initcall__kmod_spi_sprd__245_1083_sprd_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-sprd.c", i32 1083, i32 1}
!2 = !{ptr @__exitcall_sprd_spi_driver_exit, !1, !"__exitcall_sprd_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description246, !4, !"__UNIQUE_ID_description246", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-sprd.c", i32 1085, i32 1}
!5 = !{ptr @__UNIQUE_ID_author247, !6, !"__UNIQUE_ID_author247", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-sprd.c", i32 1086, i32 1}
!7 = !{ptr @__UNIQUE_ID_file248, !8, !"__UNIQUE_ID_file248", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-sprd.c", i32 1087, i32 1}
!9 = !{ptr @__UNIQUE_ID_license249, !8, !"__UNIQUE_ID_license249", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-sprd.c", i32 1075, i32 11}
!12 = !{ptr @sprd_spi_driver, !13, !"sprd_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-sprd.c", i32 1073, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-sprd.c", i32 926, i32 48}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-sprd.c", i32 979, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sprd_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sprd_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-sprd.c", i32 613, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sprd_spi_dma_txrx_bufs._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @sprd_spi_dma_txrx_bufs._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-sprd.c", i32 630, i32 4}
!31 = !{ptr @sprd_spi_dma_txrx_bufs._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sprd_spi_dma_txrx_bufs._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-sprd.c", i32 203, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sprd_spi_wait_for_tx_end._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @sprd_spi_wait_for_tx_end._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-sprd.c", i32 210, i32 3}
!40 = !{ptr @sprd_spi_wait_for_tx_end._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sprd_spi_wait_for_tx_end._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-sprd.c", i32 228, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sprd_spi_wait_for_rx_end._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @sprd_spi_wait_for_rx_end._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @init_completion.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/completion.h", i32 87, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-sprd.c", i32 866, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sprd_spi_clk_init._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @sprd_spi_clk_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-sprd.c", i32 870, i32 40}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-sprd.c", i32 872, i32 3}
!60 = !{ptr @sprd_spi_clk_init._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sprd_spi_clk_init._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-sprd.c", i32 876, i32 37}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-sprd.c", i32 878, i32 3}
!66 = !{ptr @sprd_spi_clk_init._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @sprd_spi_clk_init._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-sprd.c", i32 854, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sprd_spi_irq_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @sprd_spi_irq_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-sprd.c", i32 907, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @sprd_spi_dma_init._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @sprd_spi_dma_init._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-sprd.c", i32 555, i32 60}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-sprd.c", i32 558, i32 10}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-sprd.c", i32 560, i32 61}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/spi/spi-sprd.c", i32 564, i32 10}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-sprd.c", i32 1014, i32 3}
!88 = !{ptr @sprd_spi_remove._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sprd_spi_remove._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @sprd_spi_of_match, !91, !"sprd_spi_of_match", i1 false, i1 false}
!91 = !{!"../drivers/spi/spi-sprd.c", i32 1067, i32 34}
!92 = !{ptr @sprd_spi_pm_ops, !93, !"sprd_spi_pm_ops", i1 false, i1 false}
!93 = !{!"../drivers/spi/spi-sprd.c", i32 1062, i32 32}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2148265108}
!104 = !{i64 749931, i64 749956, i64 749978, i64 749994, i64 750006, i64 750026, i64 750050, i64 750066, i64 750078}
!105 = !{i64 2148265296}
!106 = !{i8 0, i8 2}
!107 = !{i64 6324764}
!108 = !{i64 6324346}
!109 = !{!"auto-init"}
!110 = !{i64 6324544}
!111 = !{i64 6324149}
!112 = !{i64 6323926}
!113 = !{i64 6323726}
