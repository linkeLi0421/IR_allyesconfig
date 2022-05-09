; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-tegra210-quad.c_pt.bc'
source_filename = "../drivers/spi/spi-tegra210-quad.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.tegra_qspi = type { ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.completion, %struct.completion, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, %struct.completion, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.tegra_qspi_client_data = type { i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_tegra210_quad__252_1396_tegra_qspi_driver_init6 = internal global ptr @tegra_qspi_driver_init, section ".initcall6.init", align 4
@tegra_qspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_qspi_probe, ptr @tegra_qspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_qspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_qspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_qspi_driver_exit = internal global ptr @tegra_qspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias253 = internal constant [44 x i8] c"spi_tegra210_quad.alias=platform:qspi-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [66 x i8] c"spi_tegra210_quad.description=NVIDIA Tegra QSPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [70 x i8] c"spi_tegra210_quad.author=Sowjanya Komatineni <skomatineni@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [53 x i8] c"spi_tegra210_quad.file=drivers/spi/spi-tegra210-quad\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [33 x i8] c"spi_tegra210_quad.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-qspi\00", [21 x i8] zeroinitializer }, align 32
@tegra_qspi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tegra_qspi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_qspi_suspend, ptr @tegra_qspi_resume, ptr @tegra_qspi_suspend, ptr @tegra_qspi_resume, ptr @tegra_qspi_suspend, ptr @tegra_qspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_qspi_runtime_suspend, ptr @tegra_qspi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@tegra_qspi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&tqspi->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qspi\00", [27 x i8] zeroinitializer }, align 32
@tegra_qspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1248, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_qspi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/spi/spi-tegra210-quad.c\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_qspi_probe._entry_ptr = internal global ptr @tegra_qspi_probe._entry, section ".printk_index", align 4
@tegra_qspi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1255, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get reset control: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_qspi_probe._entry_ptr.11 = internal global ptr @tegra_qspi_probe._entry.9, section ".printk_index", align 4
@tegra_qspi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1276, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get runtime PM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_qspi_probe._entry_ptr.14 = internal global ptr @tegra_qspi_probe._entry.12, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_qspi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 1296, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request IRQ#%u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_qspi_probe._entry_ptr.17 = internal global ptr @tegra_qspi_probe._entry.15, section ".printk_index", align 4
@tegra_qspi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1303, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register master: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_qspi_probe._entry_ptr.20 = internal global ptr @tegra_qspi_probe._entry.18, section ".printk_index", align 4
@tegra_qspi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.21, ptr @.str.6, i32 901, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_qspi_setup\00", [47 x i8] zeroinitializer }, align 32
@tegra_qspi_setup._entry_ptr = internal global ptr @tegra_qspi_setup._entry, section ".printk_index", align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia,tx-clk-tap-delay\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia,rx-clk-tap-delay\00", [40 x i8] zeroinitializer }, align 32
@tegra_qspi_transfer_one_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 1015, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to start transfer: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_qspi_transfer_one_message\00", [32 x i8] zeroinitializer }, align 32
@tegra_qspi_transfer_one_message._entry_ptr = internal global ptr @tegra_qspi_transfer_one_message._entry, section ".printk_index", align 4
@tegra_qspi_transfer_one_message._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 1023, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"transfer timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@tegra_qspi_transfer_one_message._entry_ptr.28 = internal global ptr @tegra_qspi_transfer_one_message._entry.26, section ".printk_index", align 4
@tegra_qspi_start_dma_based_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 611, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed DMA slave config: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tegra_qspi_start_dma_based_transfer\00", [60 x i8] zeroinitializer }, align 32
@tegra_qspi_start_dma_based_transfer._entry_ptr = internal global ptr @tegra_qspi_start_dma_based_transfer._entry, section ".printk_index", align 4
@tegra_qspi_start_dma_based_transfer._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.6, i32 618, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to starting TX DMA: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_qspi_start_dma_based_transfer._entry_ptr.33 = internal global ptr @tegra_qspi_start_dma_based_transfer._entry.31, section ".printk_index", align 4
@tegra_qspi_start_dma_based_transfer._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 629, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@tegra_qspi_start_dma_based_transfer._entry_ptr.35 = internal global ptr @tegra_qspi_start_dma_based_transfer._entry.34, section ".printk_index", align 4
@tegra_qspi_start_dma_based_transfer._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.30, ptr @.str.6, i32 639, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to start RX DMA: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_qspi_start_dma_based_transfer._entry_ptr.38 = internal global ptr @tegra_qspi_start_dma_based_transfer._entry.36, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@tegra_qspi_start_tx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 458, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to get TX descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_qspi_start_tx_dma\00", [40 x i8] zeroinitializer }, align 32
@tegra_qspi_start_tx_dma._entry_ptr = internal global ptr @tegra_qspi_start_tx_dma._entry, section ".printk_index", align 4
@tegra_qspi_start_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.6, i32 486, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to get RX descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_qspi_start_rx_dma\00", [40 x i8] zeroinitializer }, align 32
@tegra_qspi_start_rx_dma._entry_ptr = internal global ptr @tegra_qspi_start_rx_dma._entry, section ".printk_index", align 4
@tegra_qspi_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 948, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error in transfer, fifo status 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_qspi_handle_error\00", [40 x i8] zeroinitializer }, align 32
@tegra_qspi_handle_error._entry_ptr = internal global ptr @tegra_qspi_handle_error._entry, section ".printk_index", align 4
@tegra_qspi_dump_regs.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.6, ptr @.str.49, i8 0, i8 -24, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_tegra210_quad\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_qspi_dump_regs\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"============ QSPI REGISTER DUMP ============\0A\00", [50 x i8] zeroinitializer }, align 32
@tegra_qspi_dump_regs.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.6, ptr @.str.50, i8 0, i8 -23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Command1:    0x%08x | Command2:    0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_qspi_dump_regs.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.6, ptr @.str.51, i8 0, i8 -22, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DMA_CTL:     0x%08x | DMA_BLK:     0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_qspi_dump_regs.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.6, ptr @.str.52, i8 0, i8 -21, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"INTR_MASK:  0x%08x | MISC: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_qspi_dump_regs.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.48, ptr @.str.6, ptr @.str.53, i8 0, i8 -21, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TRANS_STAT:  0x%08x | FIFO_STATUS: 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@tegra_qspi_init_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.6, i32 752, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot use DMA: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_qspi_init_dma\00", [44 x i8] zeroinitializer }, align 32
@tegra_qspi_init_dma._entry_ptr = internal global ptr @tegra_qspi_init_dma._entry, section ".printk_index", align 4
@tegra_qspi_init_dma._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.6, i32 753, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"falling back to PIO\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_qspi_init_dma._entry_ptr.60 = internal global ptr @tegra_qspi_init_dma._entry.58, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.6, i32 1118, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed TX DMA transfer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_dma_based_xfer\00", [42 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry_ptr = internal global ptr @handle_dma_based_xfer._entry, section ".printk_index", align 4
@handle_dma_based_xfer._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.6, i32 1133, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed RX DMA transfer\0A\00", [40 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry_ptr.66 = internal global ptr @handle_dma_based_xfer._entry.64, section ".printk_index", align 4
@tegra_qspi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.67, ptr @.str.6, i32 1345, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_qspi_resume\00", [46 x i8] zeroinitializer }, align 32
@tegra_qspi_resume._entry_ptr = internal global ptr @tegra_qspi_resume._entry, section ".printk_index", align 4
@tegra_qspi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.6, i32 1377, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_qspi_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@tegra_qspi_runtime_resume._entry_ptr = internal global ptr @tegra_qspi_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"tegra_qspi_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1387, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1389, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"tegra_qspi_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1196, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"tegra_qspi_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1382, i32 32 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1228, i32 47 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1234, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1245, i32 40 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1248, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1255, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1276, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1296, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1303, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 901, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 884, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 886, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1015, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1023, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 611, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 618, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 629, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 639, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 326, i32 6 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 458, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 486, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 948, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 931, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 932, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 935, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 938, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 941, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 711, i32 42 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 728, i32 42 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 752, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 753, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 87, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1118, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1133, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1345, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [35 x i8] c"../drivers/spi/spi-tegra210-quad.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1377, i32 3 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_tegra_qspi_driver_exit, ptr @__initcall__kmod_spi_tegra210_quad__252_1396_tegra_qspi_driver_init6, ptr @handle_dma_based_xfer._entry, ptr @handle_dma_based_xfer._entry.64, ptr @handle_dma_based_xfer._entry_ptr, ptr @handle_dma_based_xfer._entry_ptr.66, ptr @tegra_qspi_driver_exit, ptr @tegra_qspi_handle_error._entry, ptr @tegra_qspi_handle_error._entry_ptr, ptr @tegra_qspi_init_dma._entry, ptr @tegra_qspi_init_dma._entry.58, ptr @tegra_qspi_init_dma._entry_ptr, ptr @tegra_qspi_init_dma._entry_ptr.60, ptr @tegra_qspi_probe._entry, ptr @tegra_qspi_probe._entry.12, ptr @tegra_qspi_probe._entry.15, ptr @tegra_qspi_probe._entry.18, ptr @tegra_qspi_probe._entry.9, ptr @tegra_qspi_probe._entry_ptr, ptr @tegra_qspi_probe._entry_ptr.11, ptr @tegra_qspi_probe._entry_ptr.14, ptr @tegra_qspi_probe._entry_ptr.17, ptr @tegra_qspi_probe._entry_ptr.20, ptr @tegra_qspi_resume._entry, ptr @tegra_qspi_resume._entry_ptr, ptr @tegra_qspi_runtime_resume._entry, ptr @tegra_qspi_runtime_resume._entry_ptr, ptr @tegra_qspi_setup._entry, ptr @tegra_qspi_setup._entry_ptr, ptr @tegra_qspi_start_dma_based_transfer._entry, ptr @tegra_qspi_start_dma_based_transfer._entry.31, ptr @tegra_qspi_start_dma_based_transfer._entry.34, ptr @tegra_qspi_start_dma_based_transfer._entry.36, ptr @tegra_qspi_start_dma_based_transfer._entry_ptr, ptr @tegra_qspi_start_dma_based_transfer._entry_ptr.33, ptr @tegra_qspi_start_dma_based_transfer._entry_ptr.35, ptr @tegra_qspi_start_dma_based_transfer._entry_ptr.38, ptr @tegra_qspi_start_rx_dma._entry, ptr @tegra_qspi_start_rx_dma._entry_ptr, ptr @tegra_qspi_start_tx_dma._entry, ptr @tegra_qspi_start_tx_dma._entry_ptr, ptr @tegra_qspi_transfer_one_message._entry, ptr @tegra_qspi_transfer_one_message._entry.26, ptr @tegra_qspi_transfer_one_message._entry_ptr, ptr @tegra_qspi_transfer_one_message._entry_ptr.28, ptr @tegra_qspi_driver, ptr @.str, ptr @tegra_qspi_of_match, ptr @tegra_qspi_pm_ops, ptr @.str.1, ptr @tegra_qspi_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @init_completion.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_transfer_one_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_transfer_one_message._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_start_dma_based_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_start_dma_based_transfer._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_start_dma_based_transfer._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_start_dma_based_transfer._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_start_tx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_start_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_init_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_init_dma._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dma_based_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dma_based_xfer._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_qspi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_qspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_qspi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_qspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_qspi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_qspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %dma_phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 364, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i194 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i194 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i194, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3847, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2147450752, ptr %bits_per_word_mask, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %5 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tegra_qspi_setup, ptr %setup, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %6 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tegra_qspi_transfer_one_message, ptr %transfer_one_message, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %num_chipselect, align 2
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %8 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %auto_runtime_pm, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call3 = tail call i32 @of_alias_get_id(ptr noundef %10, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %call3 to i16
  %bus_num5 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %bus_num5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %bus_num5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %master7 = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %master7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %master7, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %2, align 4
  %lock = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @tegra_qspi_probe.__key, i16 noundef signext 3) #7
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call13 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call11) #7
  %base = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 5
  %14 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %16 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call11, align 4
  %phys = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 6
  %18 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %phys, align 4
  %call20 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 7
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call20, ptr %irq, align 4
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  %clk = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 3
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call22, ptr %clk, align 4
  %cmp.i195 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %21) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  %call.i196 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 4
  %22 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i196, ptr %rst, align 4
  %cmp.i197 = icmp ugt ptr %call.i196, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then37, label %if.end44

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call.i196 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %23) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  %max_buf_size = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 17
  %24 = ptrtoint ptr %max_buf_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %max_buf_size, align 4
  %dma_buf_size = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 16
  %25 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65536, ptr %dma_buf_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_phys.i) #7
  %26 = ptrtoint ptr %dma_phys.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %dma_phys.i, align 4, !annotation !163
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
  %call.i198 = tail call ptr @dma_request_chan(ptr noundef %28, ptr noundef nonnull @.str.54) #7
  %cmp.i.i = icmp ugt ptr %call.i198, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end44.err_out.i_crit_edge, label %if.end.i

if.end44.err_out.i_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.i

if.end.i:                                         ; preds = %if.end44
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 35
  %29 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i198, ptr %rx_dma_chan.i, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %2, align 4
  %32 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_buf_size, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %31, i32 noundef %33, ptr noundef nonnull %dma_phys.i, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.err_out.thread.i_crit_edge, label %if.end6.i

if.end.i.err_out.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.thread.i

if.end6.i:                                        ; preds = %if.end.i
  %rx_dma_buf.i = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 36
  %34 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i, ptr %rx_dma_buf.i, align 4
  %35 = ptrtoint ptr %dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_phys.i, align 4
  %rx_dma_phys.i = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 37
  %37 = ptrtoint ptr %rx_dma_phys.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rx_dma_phys.i, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  %call8.i = call ptr @dma_request_chan(ptr noundef %39, ptr noundef nonnull @.str.55) #7
  %cmp.i54.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.i, label %if.end6.i.err_out.i_crit_edge, label %if.end12.i

if.end6.i.err_out.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.i

if.end12.i:                                       ; preds = %if.end6.i
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 39
  %40 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call8.i, ptr %tx_dma_chan.i, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  %43 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_buf_size, align 4
  %call.i55.i = call ptr @dma_alloc_attrs(ptr noundef %42, i32 noundef %44, ptr noundef nonnull %dma_phys.i, i32 noundef 3264, i32 noundef 0) #7
  %tobool16.not.i = icmp eq ptr %call.i55.i, null
  br i1 %tobool16.not.i, label %if.end12.i.err_out.thread.i_crit_edge, label %if.end18.i

if.end12.i.err_out.thread.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.thread.i

if.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_dma_buf.i = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 40
  %45 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i55.i, ptr %tx_dma_buf.i, align 4
  %46 = ptrtoint ptr %dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_phys.i, align 4
  %tx_dma_phys.i = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 41
  %48 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tx_dma_phys.i, align 4
  %use_dma.i = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 25
  %49 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %use_dma.i, align 1
  br label %if.end49

err_out.thread.i:                                 ; preds = %if.end12.i.err_out.thread.i_crit_edge, %if.end.i.err_out.thread.i_crit_edge
  call fastcc void @tegra_qspi_deinit_dma(ptr noundef %2) #7
  br label %do.end.i

err_out.i:                                        ; preds = %if.end6.i.err_out.i_crit_edge, %if.end44.err_out.i_crit_edge
  %err.0.in.i = phi ptr [ %call.i198, %if.end44.err_out.i_crit_edge ], [ %call8.i, %if.end6.i.err_out.i_crit_edge ]
  %err.0.i = ptrtoint ptr %err.0.in.i to i32
  call fastcc void @tegra_qspi_deinit_dma(ptr noundef %2) #7
  %cmp.not.i = icmp eq ptr %err.0.in.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %tegra_qspi_init_dma.exit, label %err_out.i.do.end.i_crit_edge

err_out.i.do.end.i_crit_edge:                     ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %err_out.i.do.end.i_crit_edge, %err_out.thread.i
  %err.058.i = phi i32 [ -12, %err_out.thread.i ], [ %err.0.i, %err_out.i.do.end.i_crit_edge ]
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.56, i32 noundef %err.058.i) #10
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.59) #10
  br label %if.end49

tegra_qspi_init_dma.exit:                         ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_phys.i) #7
  br label %cleanup

if.end49:                                         ; preds = %do.end.i, %if.end18.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_phys.i) #7
  %use_dma = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 25
  %54 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %use_dma, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool50.not = icmp eq i8 %55, 0
  br i1 %tobool50.not, label %if.end49.if.end54_crit_edge, label %if.then51

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_buf_size, align 4
  %58 = ptrtoint ptr %max_buf_size to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %max_buf_size, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49.if.end54_crit_edge
  %tx_dma_complete = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 20
  %59 = ptrtoint ptr %tx_dma_complete to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %tx_dma_complete, align 4
  %wait.i = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 20, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #7
  %rx_dma_complete = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 19
  %60 = ptrtoint ptr %rx_dma_complete to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %rx_dma_complete, align 4
  %wait.i199 = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 19, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i199, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #7
  %xfer_completion = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 33
  %61 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %xfer_completion, align 4
  %wait.i200 = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 33, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i200, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i201 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %cmp.i202 = icmp slt i32 %call.i201, 0
  br i1 %cmp.i202, label %if.then.i, label %if.end65

if.then.i:                                        ; preds = %if.end54
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !165
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !166
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end63_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end63_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !167
  br label %do.end63

do.end63:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end63_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i201) #10
  br label %exit_pm_disable

if.end65:                                         ; preds = %if.end54
  %63 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rst, align 4
  %call67 = call i32 @reset_control_assert(ptr noundef %64) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 429496) #7
  %66 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rst, align 4
  %call69 = call i32 @reset_control_deassert(ptr noundef %67) #7
  %def_command1_reg = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 28
  %68 = ptrtoint ptr %def_command1_reg to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1076887552, ptr %def_command1_reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 12352) #7, !srcloc !169
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !170
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %75, i32 8
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %77 = call i32 @llvm.bswap.i32(i32 %76) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %spi_cs_timing1 = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 30
  %78 = ptrtoint ptr %spi_cs_timing1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %spi_cs_timing1, align 4
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr.i208 = getelementptr i8, ptr %80, i32 12
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208) #7, !srcloc !170
  %82 = call i32 @llvm.bswap.i32(i32 %81) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %spi_cs_timing2 = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 31
  %83 = ptrtoint ptr %spi_cs_timing2 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %spi_cs_timing2, align 4
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr.i210 = getelementptr i8, ptr %85, i32 4
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210) #7, !srcloc !170
  %87 = call i32 @llvm.bswap.i32(i32 %86) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %def_command2_reg = getelementptr inbounds %struct.tegra_qspi, ptr %2, i32 0, i32 29
  %88 = ptrtoint ptr %def_command2_reg to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %def_command2_reg, align 4
  %call.i211 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  %89 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %91 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i212 = icmp eq ptr %92, null
  br i1 %tobool.not.i212, label %if.end.i213, label %if.end65.dev_name.exit_crit_edge

if.end65.dev_name.exit_crit_edge:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i213:                                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i213, %if.end65.dev_name.exit_crit_edge
  %retval.0.i214 = phi ptr [ %94, %if.end.i213 ], [ %92, %if.end65.dev_name.exit_crit_edge ]
  %call79 = call i32 @request_threaded_irq(i32 noundef %90, ptr noundef null, ptr noundef nonnull @tegra_qspi_isr_thread, i32 noundef 8192, ptr noundef %retval.0.i214, ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end85, label %if.end88

do.end85:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %96, i32 noundef %call79) #10
  br label %exit_pm_disable

if.end88:                                         ; preds = %dev_name.exit
  %97 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %of_node, align 8
  %of_node92 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %99 = ptrtoint ptr %of_node92 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %of_node92, align 8
  %call93 = call i32 @spi_register_controller(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %do.end99, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end99:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call93) #10
  %call102 = call ptr @free_irq(i32 noundef %call20, ptr noundef %2) #7
  br label %exit_pm_disable

exit_pm_disable:                                  ; preds = %do.end99, %do.end85, %do.end63
  %ret.0 = phi i32 [ %call.i201, %do.end63 ], [ %call79, %do.end85 ], [ %call93, %do.end99 ]
  %call104 = call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  call fastcc void @tegra_qspi_deinit_dma(ptr noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %exit_pm_disable, %if.end88.cleanup_crit_edge, %tegra_qspi_init_dma.exit, %if.then37, %if.then25, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then16 ], [ %21, %if.then25 ], [ %23, %if.then37 ], [ %ret.0, %exit_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ -517, %tegra_qspi_init_dma.exit ], [ 0, %if.end88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_qspi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i8, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #7
  %irq = getelementptr inbounds %struct.tegra_qspi, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  tail call fastcc void @tegra_qspi_deinit_dma(ptr noundef %3)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_qspi_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %4 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_data, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !166
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !167
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then3, label %if.end.do.body8_crit_edge

if.end.do.body8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

if.then3:                                         ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 8, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then3.tegra_qspi_parse_cdata_dt.exit_crit_edge, label %if.end.i

if.then3.tegra_qspi_parse_cdata_dt.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_qspi_parse_cdata_dt.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.22, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #7
  %rx_clk_tap_delay.i = getelementptr inbounds %struct.tegra_qspi_client_data, ptr %call.i.i, i32 0, i32 1
  %call.i.i10.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.23, ptr noundef %rx_clk_tap_delay.i, i32 noundef 1, i32 noundef 0) #7
  br label %tegra_qspi_parse_cdata_dt.exit

tegra_qspi_parse_cdata_dt.exit:                   ; preds = %if.end.i, %if.then3.tegra_qspi_parse_cdata_dt.exit_crit_edge
  %13 = ptrtoint ptr %controller_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %controller_data, align 4
  br label %do.body8

do.body8:                                         ; preds = %tegra_qspi_parse_cdata_dt.exit, %if.end.do.body8_crit_edge
  %lock = getelementptr inbounds %struct.tegra_qspi, ptr %3, i32 0, i32 2
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %def_command1_reg = getelementptr inbounds %struct.tegra_qspi, ptr %3, i32 0, i32 28
  %14 = ptrtoint ptr %def_command1_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %def_command1_reg, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 8
  %and18 = and i32 %15, -1048577
  %and = shl i32 %17, 18
  %18 = and i32 %and, 1048576
  %19 = or i32 %18, %and18
  %val.0 = xor i32 %19, 1048576
  store i32 %val.0, ptr %def_command1_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %val.0) #7
  %base.i = getelementptr inbounds %struct.tegra_qspi, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !169
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #7
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %call.i48 = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_qspi_transfer_one_message(ptr noundef %master, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %status = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %actual_length, align 4
  %tx_status = getelementptr inbounds %struct.tegra_qspi, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %tx_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_status, align 4
  %rx_status = getelementptr inbounds %struct.tegra_qspi, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %rx_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rx_status, align 4
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn270 = load ptr, ptr %msg, align 4
  %cmp.not272 = icmp eq ptr %.pn270, %msg
  br i1 %cmp.not272, label %entry.exit_crit_edge, label %for.body.lr.ph

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

for.body.lr.ph:                                   ; preds = %entry
  %dummy_cycles = getelementptr inbounds %struct.tegra_qspi, ptr %1, i32 0, i32 32
  %xfer_completion = getelementptr inbounds %struct.tegra_qspi, ptr %1, i32 0, i32 33
  %master.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %controller_data.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 10
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn274 = phi ptr [ %.pn270, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %is_first_msg.0.off0273 = phi i1 [ true, %for.body.lr.ph ], [ false, %for.inc.for.body_crit_edge ]
  %transfer.0275 = getelementptr i8, ptr %.pn274, i32 -84
  %9 = ptrtoint ptr %dummy_cycles to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dummy_cycles, align 4
  %10 = ptrtoint ptr %.pn274 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn274, align 4
  %cmp.i.not = icmp eq ptr %11, %msg
  br i1 %cmp.i.not, label %for.body.if.end23_crit_edge, label %if.then

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then:                                          ; preds = %for.body
  %dummy_data = getelementptr i8, ptr %11, i32 -40
  %12 = ptrtoint ptr %dummy_data to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %dummy_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool11.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool11.not, label %if.then.if.end23_crit_edge, label %if.then12

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then12:                                        ; preds = %if.then
  %len = getelementptr i8, ptr %11, i32 -76
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %mul = shl i32 %14, 3
  %bf.lshr15 = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr15, 7
  %bf.cast16 = zext i8 %bf.clear to i32
  %div = udiv i32 %mul, %bf.cast16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div)
  %cmp17 = icmp ult i32 %div, 256
  br i1 %cmp17, label %if.then18, label %if.then12.if.end23_crit_edge

if.then12.if.end23_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %div to i8
  %15 = ptrtoint ptr %dummy_cycles to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %dummy_cycles, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then12.if.end23_crit_edge, %if.then.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %dummy_bytes.2 = phi i32 [ 0, %for.body.if.end23_crit_edge ], [ 0, %if.then.if.end23_crit_edge ], [ %17, %if.then18 ], [ 0, %if.then12.if.end23_crit_edge ]
  %18 = phi ptr [ %.pn274, %for.body.if.end23_crit_edge ], [ %.pn274, %if.then.if.end23_crit_edge ], [ %11, %if.then18 ], [ %.pn274, %if.then12.if.end23_crit_edge ]
  %19 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %xfer_completion, align 4
  %20 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %24 = ptrtoint ptr %controller_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %controller_data.i, align 4
  %speed_hz.i = getelementptr i8, ptr %.pn274, i32 -24
  %26 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed_hz.i, align 4
  %bits_per_word1.i = getelementptr i8, ptr %.pn274, i32 -39
  %28 = ptrtoint ptr %bits_per_word1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bits_per_word1.i, align 1
  %cur_speed.i = getelementptr inbounds %struct.tegra_qspi, ptr %23, i32 0, i32 8
  %30 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur_speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp.not.i = icmp eq i32 %27, %31
  br i1 %cmp.not.i, label %if.end23.if.end.i_crit_edge, label %if.then.i

if.end23.if.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i = getelementptr inbounds %struct.tegra_qspi, ptr %23, i32 0, i32 3
  %32 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk.i, align 4
  %call2.i = tail call i32 @clk_set_rate(ptr noundef %33, i32 noundef %27) #7
  %34 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %27, ptr %cur_speed.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end23.if.end.i_crit_edge
  %cur_pos.i = getelementptr inbounds %struct.tegra_qspi, ptr %23, i32 0, i32 9
  %35 = ptrtoint ptr %cur_pos.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cur_pos.i, align 4
  %cur_rx_pos.i = getelementptr inbounds %struct.tegra_qspi, ptr %23, i32 0, i32 14
  %36 = ptrtoint ptr %cur_rx_pos.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %cur_rx_pos.i, align 4
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_qspi, ptr %23, i32 0, i32 15
  %37 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cur_tx_pos.i, align 4
  %curr_xfer.i = getelementptr inbounds %struct.tegra_qspi, ptr %23, i32 0, i32 34
  %38 = ptrtoint ptr %curr_xfer.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer.0275, ptr %curr_xfer.i, align 4
  br i1 %is_first_msg.0.off0273, label %if.then4.i, label %if.else41.i

if.then4.i:                                       ; preds = %if.end.i
  tail call fastcc void @tegra_qspi_mask_clear_irq(ptr noundef %23) #7
  %def_command1_reg.i = getelementptr inbounds %struct.tegra_qspi, ptr %23, i32 0, i32 28
  %39 = ptrtoint ptr %def_command1_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %def_command1_reg.i, align 4
  %41 = add i8 %29, 31
  %42 = and i8 %41, 31
  %and.i = zext i8 %42 to i32
  %.masked.i = and i32 %40, -805306369
  %and5.i = or i32 %.masked.i, %and.i
  %43 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mode.i, align 8
  %and6.i = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 3
  %or10.i = or i32 %and5.i, 805306368
  %command1.0.i = select i1 %cmp7.i, i32 %or10.i, i32 %and5.i
  %and19.i = and i32 %command1.0.i, -1048577
  %and14.i = shl i32 %44, 18
  %45 = and i32 %and14.i, 1048576
  %command1.1.i = or i32 %and19.i, %45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %command1.1.i) #7
  %base.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %23, i32 0, i32 5
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #7, !srcloc !169
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %tobool21.not.i = icmp eq ptr %25, null
  br i1 %tobool21.not.i, label %if.then4.i.if.end31.i_crit_edge, label %land.lhs.true.i

if.then4.i.if.end31.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool22.not.i = icmp eq i32 %53, 0
  %phi.bo.i = shl i32 %53, 10
  %phi.bo89.i = and i32 %phi.bo.i, 64512
  %tx_tap.0.ph.i = select i1 %tobool22.not.i, i32 0, i32 %phi.bo89.i
  %rx_clk_tap_delay.i = getelementptr inbounds %struct.tegra_qspi_client_data, ptr %25, i32 0, i32 1
  %54 = ptrtoint ptr %rx_clk_tap_delay.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_clk_tap_delay.i, align 4
  %phi.bo90.i = and i32 %55, 255
  %56 = or i32 %tx_tap.0.ph.i, %phi.bo90.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true.i, %if.then4.i.if.end31.i_crit_edge
  %or36.i = phi i32 [ %56, %land.lhs.true.i ], [ 0, %if.then4.i.if.end31.i_crit_edge ]
  %def_command2_reg.i = getelementptr inbounds %struct.tegra_qspi, ptr %23, i32 0, i32 29
  %57 = ptrtoint ptr %def_command2_reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %def_command2_reg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or36.i, i32 %58)
  %cmp37.not.i = icmp eq i32 %or36.i, %58
  br i1 %cmp37.not.i, label %if.end31.i.tegra_qspi_setup_transfer_one.exit_crit_edge, label %if.then39.i

if.end31.i.tegra_qspi_setup_transfer_one.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_qspi_setup_transfer_one.exit

if.then39.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %or36.i) #7
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %59) #7, !srcloc !169
  %62 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  br label %tegra_qspi_setup_transfer_one.exit

if.else41.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %command1_reg.i = getelementptr inbounds %struct.tegra_qspi, ptr %23, i32 0, i32 26
  %65 = ptrtoint ptr %command1_reg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %command1_reg.i, align 4
  %and42.i = and i32 %66, -32
  %67 = add i8 %29, 31
  %68 = and i8 %67, 31
  %and45.i = zext i8 %68 to i32
  %or47.i = or i32 %and42.i, %and45.i
  br label %tegra_qspi_setup_transfer_one.exit

tegra_qspi_setup_transfer_one.exit:               ; preds = %if.else41.i, %if.then39.i, %if.end31.i.tegra_qspi_setup_transfer_one.exit_crit_edge
  %command1.2.i = phi i32 [ %command1.1.i, %if.then39.i ], [ %command1.1.i, %if.end31.i.tegra_qspi_setup_transfer_one.exit_crit_edge ], [ %or47.i, %if.else41.i ]
  %69 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i192 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %driver_data.i.i.i192 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i.i192, align 4
  %len.i.i = getelementptr i8, ptr %.pn274, i32 -76
  %73 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i.i, align 4
  %cur_pos.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 9
  %75 = ptrtoint ptr %cur_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cur_pos.i.i, align 4
  %sub.i.i = sub i32 %74, %76
  %77 = ptrtoint ptr %bits_per_word1.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bits_per_word1.i, align 1
  %conv.i.i = zext i8 %78 to i32
  %sub2.i.i = add nuw nsw i32 %conv.i.i, 7
  %div65.i.i = lshr i32 %sub2.i.i, 3
  %bytes_per_word.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 11
  %79 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %div65.i.i, ptr %bytes_per_word.i.i, align 4
  %80 = zext i8 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values)
  switch i8 %78, label %tegra_qspi_setup_transfer_one.exit.if.else.i.i_crit_edge [
    i8 8, label %tegra_qspi_setup_transfer_one.exit.land.lhs.true.i.i_crit_edge
    i8 16, label %tegra_qspi_setup_transfer_one.exit.land.lhs.true.i.i_crit_edge341
    i8 32, label %tegra_qspi_setup_transfer_one.exit.land.lhs.true.i.i_crit_edge342
  ]

tegra_qspi_setup_transfer_one.exit.land.lhs.true.i.i_crit_edge342: ; preds = %tegra_qspi_setup_transfer_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

tegra_qspi_setup_transfer_one.exit.land.lhs.true.i.i_crit_edge341: ; preds = %tegra_qspi_setup_transfer_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

tegra_qspi_setup_transfer_one.exit.land.lhs.true.i.i_crit_edge: ; preds = %tegra_qspi_setup_transfer_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

tegra_qspi_setup_transfer_one.exit.if.else.i.i_crit_edge: ; preds = %tegra_qspi_setup_transfer_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %tegra_qspi_setup_transfer_one.exit.land.lhs.true.i.i_crit_edge, %tegra_qspi_setup_transfer_one.exit.land.lhs.true.i.i_crit_edge341, %tegra_qspi_setup_transfer_one.exit.land.lhs.true.i.i_crit_edge342
  %81 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp10.i.i = icmp ugt i32 %82, 3
  br i1 %cmp10.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %is_packed.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 24
  %83 = ptrtoint ptr %is_packed.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %is_packed.i.i, align 4
  %div1268.i.i = udiv i8 32, %78
  %div12.zext.i.i = zext i8 %div1268.i.i to i32
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %tegra_qspi_setup_transfer_one.exit.if.else.i.i_crit_edge
  %is_packed13.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 24
  %84 = ptrtoint ptr %is_packed13.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %is_packed13.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ 1, %if.else.i.i ], [ %div12.zext.i.i, %if.then.i.i ]
  %words_per_32bit14.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 10
  %85 = ptrtoint ptr %words_per_32bit14.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.sink.i.i, ptr %words_per_32bit14.i.i, align 4
  %is_packed15.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 24
  %86 = ptrtoint ptr %is_packed15.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %is_packed15.i.i, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i.i, label %if.else23.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_buf_size.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 17
  %88 = ptrtoint ptr %max_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_buf_size.i.i, align 4
  %90 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %89) #7
  %div20.i.i = udiv i32 %90, %div65.i.i
  %add21.i.i = add i32 %90, 3
  %div2267.i.i = lshr i32 %add21.i.i, 2
  br label %tegra_qspi_calculate_curr_xfer_param.exit.i

if.else23.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub24.i.i = add i32 %sub.i.i, -1
  %div26.i.i = udiv i32 %sub24.i.i, %div65.i.i
  %add27.i.i = add i32 %div26.i.i, 1
  %max_buf_size28.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 17
  %91 = ptrtoint ptr %max_buf_size28.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_buf_size28.i.i, align 4
  %div2966.i.i = lshr i32 %92, 2
  %93 = tail call i32 @llvm.umin.i32(i32 %add27.i.i, i32 %div2966.i.i) #7
  br label %tegra_qspi_calculate_curr_xfer_param.exit.i

tegra_qspi_calculate_curr_xfer_param.exit.i:      ; preds = %if.else23.i.i, %if.then16.i.i
  %masksel.i = phi i32 [ 32, %if.then16.i.i ], [ 0, %if.else23.i.i ]
  %div20.sink.i.i = phi i32 [ %div20.i.i, %if.then16.i.i ], [ %93, %if.else23.i.i ]
  %total_fifo_words.0.i.i = phi i32 [ %div2267.i.i, %if.then16.i.i ], [ %93, %if.else23.i.i ]
  %94 = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 12
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %div20.sink.i.i, ptr %94, align 4
  %and.i193 = and i32 %command1.2.i, -545
  %spec.select.i = or i32 %masksel.i, %and.i193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %96 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  %base.i.i194 = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 5
  %97 = ptrtoint ptr %base.i.i194 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i.i194, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #7, !srcloc !169
  %99 = ptrtoint ptr %base.i.i194 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i194, align 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %cur_direction.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 13
  %102 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %cur_direction.i, align 4
  %and2.i = and i32 %spec.select.i, -6657
  %rx_buf.i = getelementptr i8, ptr %.pn274, i32 -80
  %103 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_buf.i, align 4
  %tobool3.not.i = icmp eq ptr %104, null
  br i1 %tobool3.not.i, label %tegra_qspi_calculate_curr_xfer_param.exit.i.if.end8.i_crit_edge, label %if.then4.i195

tegra_qspi_calculate_curr_xfer_param.exit.i.if.end8.i_crit_edge: ; preds = %tegra_qspi_calculate_curr_xfer_param.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then4.i195:                                    ; preds = %tegra_qspi_calculate_curr_xfer_param.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %or5.i = or i32 %and2.i, 4096
  %105 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2, ptr %cur_direction.i, align 4
  %rx_nbits.i = getelementptr i8, ptr %.pn274, i32 -40
  %106 = ptrtoint ptr %rx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load.i = load i8, ptr %rx_nbits.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 7
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i195, %tegra_qspi_calculate_curr_xfer_param.exit.i.if.end8.i_crit_edge
  %command1.addr.1.i = phi i32 [ %or5.i, %if.then4.i195 ], [ %and2.i, %tegra_qspi_calculate_curr_xfer_param.exit.i.if.end8.i_crit_edge ]
  %bus_width.0.i = phi i8 [ %bf.clear.i, %if.then4.i195 ], [ 0, %tegra_qspi_calculate_curr_xfer_param.exit.i.if.end8.i_crit_edge ]
  %107 = ptrtoint ptr %transfer.0275 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %transfer.0275, align 4
  %tobool9.not.i = icmp eq ptr %108, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end18.i_crit_edge, label %if.then10.i

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %or11.i = or i32 %command1.addr.1.i, 2048
  %109 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cur_direction.i, align 4
  %or13.i = or i32 %110, 1
  store i32 %or13.i, ptr %cur_direction.i, align 4
  %tx_nbits.i = getelementptr i8, ptr %.pn274, i32 -40
  %111 = ptrtoint ptr %tx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load14.i = load i8, ptr %tx_nbits.i, align 4
  %bf.lshr.i = lshr i8 %bf.load14.i, 3
  %bf.clear15.i = and i8 %bf.lshr.i, 7
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end18.i_crit_edge
  %command1.addr.2.i = phi i32 [ %or11.i, %if.then10.i ], [ %command1.addr.1.i, %if.end8.i.if.end18.i_crit_edge ]
  %bus_width.1.i = phi i8 [ %bf.clear15.i, %if.then10.i ], [ %bus_width.0.i, %if.end8.i.if.end18.i_crit_edge ]
  %and19.i196 = and i32 %command1.addr.2.i, -385
  %112 = zext i8 %bus_width.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %bus_width.1.i, label %if.end18.i.if.end32.i_crit_edge [
    i8 4, label %if.then22.i
    i8 2, label %if.then27.i
  ]

if.end18.i.if.end32.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %or23.i = or i32 %and19.i196, 256
  br label %if.end32.i

if.then27.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %or28.i = or i32 %and19.i196, 128
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i, %if.then22.i, %if.end18.i.if.end32.i_crit_edge
  %command1.addr.3.i = phi i32 [ %or23.i, %if.then22.i ], [ %or28.i, %if.then27.i ], [ %and19.i196, %if.end18.i.if.end32.i_crit_edge ]
  %command1_reg.i197 = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 26
  %113 = ptrtoint ptr %command1_reg.i197 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %command1.addr.3.i, ptr %command1_reg.i197, align 4
  %dummy_cycles.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 32
  %114 = ptrtoint ptr %dummy_cycles.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %dummy_cycles.i, align 4
  %conv33.i = zext i8 %115 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %116 = shl nuw i32 %conv33.i, 24
  %117 = ptrtoint ptr %base.i.i194 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i.i194, align 4
  %add.ptr.i.i198 = getelementptr i8, ptr %118, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i198, i32 %116) #7, !srcloc !169
  %119 = ptrtoint ptr %base.i.i194 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i.i194, align 4
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %call35.i = tail call fastcc i32 @tegra_qspi_flush_fifos(ptr noundef %72, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.end32.i.do.end_crit_edge, label %if.end39.i

if.end32.i.do.end_crit_edge:                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end39.i:                                       ; preds = %if.end32.i
  %use_dma.i = getelementptr inbounds %struct.tegra_qspi, ptr %72, i32 0, i32 25
  %122 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %use_dma.i, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool40.not.i = icmp ne i8 %123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %total_fifo_words.0.i.i)
  %cmp42.i = icmp ugt i32 %total_fifo_words.0.i.i, 64
  %or.cond.i = select i1 %tobool40.not.i, i1 %cmp42.i, i1 false
  br i1 %or.cond.i, label %tegra_qspi_start_transfer_one.exit, label %tegra_qspi_start_transfer_one.exit.thread238

tegra_qspi_start_transfer_one.exit.thread238:     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tegra_qspi_start_cpu_based_transfer(ptr noundef %72, ptr noundef %transfer.0275) #7
  br label %if.end30

tegra_qspi_start_transfer_one.exit:               ; preds = %if.end39.i
  %call45.i = tail call fastcc i32 @tegra_qspi_start_dma_based_transfer(ptr noundef %72, ptr noundef %transfer.0275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp27 = icmp slt i32 %call45.i, 0
  br i1 %cmp27, label %tegra_qspi_start_transfer_one.exit.do.end_crit_edge, label %tegra_qspi_start_transfer_one.exit.if.end30_crit_edge

tegra_qspi_start_transfer_one.exit.if.end30_crit_edge: ; preds = %tegra_qspi_start_transfer_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

tegra_qspi_start_transfer_one.exit.do.end_crit_edge: ; preds = %tegra_qspi_start_transfer_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %tegra_qspi_start_transfer_one.exit.do.end_crit_edge, %if.end32.i.do.end_crit_edge
  %retval.0.i237 = phi i32 [ %call45.i, %tegra_qspi_start_transfer_one.exit.do.end_crit_edge ], [ %call35.i, %if.end32.i.do.end_crit_edge ]
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i237) #10
  br label %cleanup

if.end30:                                         ; preds = %tegra_qspi_start_transfer_one.exit.if.end30_crit_edge, %tegra_qspi_start_transfer_one.exit.thread238
  %call33 = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_completion, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %do.end48, label %if.end84, !prof !173

do.end48:                                         ; preds = %if.end30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1022, i32 noundef 9, ptr noundef null) #7
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.27) #10
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_qspi, ptr %1, i32 0, i32 18
  %128 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %is_curr_dma_xfer, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool68.not = icmp eq i8 %129, 0
  br i1 %tobool68.not, label %do.end48.if.end83_crit_edge, label %land.lhs.true

do.end48.if.end83_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

land.lhs.true:                                    ; preds = %do.end48
  %cur_direction = getelementptr inbounds %struct.tegra_qspi, ptr %1, i32 0, i32 13
  %130 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cur_direction, align 4
  %and = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %land.lhs.true.if.end73_crit_edge, label %if.then71

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then71:                                        ; preds = %land.lhs.true
  %tx_dma_chan = getelementptr inbounds %struct.tegra_qspi, ptr %1, i32 0, i32 39
  %132 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tx_dma_chan, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %135, i32 0, i32 47
  %136 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %137, null
  br i1 %tobool.not.i, label %if.then71.if.end73_crit_edge, label %if.then.i199

if.then71.if.end73_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then.i199:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %137(ptr noundef %133) #7
  br label %if.end73

if.end73:                                         ; preds = %if.then.i199, %if.then71.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge
  %138 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_load1_noabort(i32 %138)
  %.pr = load i8, ptr %is_curr_dma_xfer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool75.not = icmp eq i8 %.pr, 0
  br i1 %tobool75.not, label %if.end73.if.end83_crit_edge, label %land.lhs.true77

if.end73.if.end83_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

land.lhs.true77:                                  ; preds = %if.end73
  %139 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cur_direction, align 4
  %and79 = and i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %land.lhs.true77.if.end83_crit_edge, label %if.then81

land.lhs.true77.if.end83_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then81:                                        ; preds = %land.lhs.true77
  %rx_dma_chan = getelementptr inbounds %struct.tegra_qspi, ptr %1, i32 0, i32 35
  %141 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rx_dma_chan, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %device_terminate_all.i200 = getelementptr inbounds %struct.dma_device, ptr %144, i32 0, i32 47
  %145 = ptrtoint ptr %device_terminate_all.i200 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %device_terminate_all.i200, align 4
  %tobool.not.i201 = icmp eq ptr %146, null
  br i1 %tobool.not.i201, label %if.then81.if.end83_crit_edge, label %if.then.i203

if.then81.if.end83_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then.i203:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  %call.i202 = tail call i32 %146(ptr noundef %142) #7
  br label %if.end83

if.end83:                                         ; preds = %if.then.i203, %if.then81.if.end83_crit_edge, %land.lhs.true77.if.end83_crit_edge, %if.end73.if.end83_crit_edge, %do.end48.if.end83_crit_edge
  tail call fastcc void @tegra_qspi_handle_error(ptr noundef %1)
  br label %cleanup

if.end84:                                         ; preds = %if.end30
  %147 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool86.not = icmp eq i32 %148, 0
  br i1 %tobool86.not, label %lor.lhs.false, label %if.end84.if.then89_crit_edge

if.end84.if.then89_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

lor.lhs.false:                                    ; preds = %if.end84
  %149 = ptrtoint ptr %rx_status to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool88.not = icmp eq i32 %150, 0
  br i1 %tobool88.not, label %complete_xfer, label %lor.lhs.false.if.then89_crit_edge

lor.lhs.false.if.then89_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

if.then89:                                        ; preds = %lor.lhs.false.if.then89_crit_edge, %if.end84.if.then89_crit_edge
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 4
  %status_reg.i = getelementptr inbounds %struct.tegra_qspi, ptr %1, i32 0, i32 23
  %153 = ptrtoint ptr %status_reg.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %status_reg.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.45, i32 noundef %154) #10
  tail call fastcc void @tegra_qspi_dump_regs(ptr noundef %1) #7
  %call.i205 = tail call fastcc i32 @tegra_qspi_flush_fifos(ptr noundef %1, i1 noundef zeroext true) #7
  %rst.i = getelementptr inbounds %struct.tegra_qspi, ptr %1, i32 0, i32 4
  %155 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %156) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 429496) #7
  %158 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rst.i, align 4
  %call3.i = tail call i32 @reset_control_deassert(ptr noundef %159) #7
  br label %cleanup

complete_xfer:                                    ; preds = %lor.lhs.false
  %160 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %len.i.i, align 4
  %conv92 = and i32 %dummy_bytes.2, 255
  %add = add i32 %161, %conv92
  %162 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %actual_length, align 4
  %add94 = add i32 %add, %163
  store i32 %add94, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp95 = icmp slt i32 %call33, 0
  br i1 %cmp95, label %complete_xfer.cleanup_crit_edge, label %if.end99

complete_xfer.cleanup_crit_edge:                  ; preds = %complete_xfer
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end99:                                         ; preds = %complete_xfer
  %164 = ptrtoint ptr %.pn274 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %.pn274, align 4
  %cmp.i213.not = icmp eq ptr %165, %msg
  %cs_change = getelementptr i8, ptr %.pn274, i32 -40
  %166 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load105 = load i8, ptr %cs_change, align 4
  %167 = and i8 %bf.load105, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool109.not = icmp eq i8 %167, 0
  br i1 %cmp.i213.not, label %if.then104, label %if.else

if.then104:                                       ; preds = %if.end99
  br i1 %tobool109.not, label %if.then110, label %if.then104.for.inc_crit_edge

if.then104.for.inc_crit_edge:                     ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then110:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i216 = getelementptr inbounds %struct.device, ptr %169, i32 0, i32 8
  %170 = ptrtoint ptr %driver_data.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %driver_data.i.i.i216, align 4
  %172 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %mode.i, align 8
  %command1_reg.i218 = getelementptr inbounds %struct.tegra_qspi, ptr %171, i32 0, i32 26
  %174 = ptrtoint ptr %command1_reg.i218 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %command1_reg.i218, align 4
  %and3.i219 = and i32 %175, -1048577
  %176 = shl i32 %173, 18
  %177 = and i32 %176, 1048576
  %178 = or i32 %177, %and3.i219
  %and3.sink.i220 = xor i32 %178, 1048576
  store i32 %and3.sink.i220, ptr %command1_reg.i218, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %179 = tail call i32 @llvm.bswap.i32(i32 %and3.sink.i220) #7
  %base.i.i221 = getelementptr inbounds %struct.tegra_qspi, ptr %171, i32 0, i32 5
  %180 = ptrtoint ptr %base.i.i221 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base.i.i221, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #7, !srcloc !169
  %182 = ptrtoint ptr %base.i.i221 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base.i.i221, align 4
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %def_command1_reg.i222 = getelementptr inbounds %struct.tegra_qspi, ptr %171, i32 0, i32 28
  %185 = ptrtoint ptr %def_command1_reg.i222 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %def_command1_reg.i222, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #7
  %188 = ptrtoint ptr %base.i.i221 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %base.i.i221, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %187) #7, !srcloc !169
  %190 = ptrtoint ptr %base.i.i221 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %base.i.i221, align 4
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end99
  br i1 %tobool109.not, label %if.else.for.inc_crit_edge, label %if.then119

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then119:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i226 = getelementptr inbounds %struct.device, ptr %194, i32 0, i32 8
  %195 = ptrtoint ptr %driver_data.i.i.i226 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %driver_data.i.i.i226, align 4
  %197 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %mode.i, align 8
  %command1_reg.i228 = getelementptr inbounds %struct.tegra_qspi, ptr %196, i32 0, i32 26
  %199 = ptrtoint ptr %command1_reg.i228 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %command1_reg.i228, align 4
  %and3.i229 = and i32 %200, -1048577
  %201 = shl i32 %198, 18
  %202 = and i32 %201, 1048576
  %203 = or i32 %202, %and3.i229
  %and3.sink.i230 = xor i32 %203, 1048576
  store i32 %and3.sink.i230, ptr %command1_reg.i228, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %204 = tail call i32 @llvm.bswap.i32(i32 %and3.sink.i230) #7
  %base.i.i231 = getelementptr inbounds %struct.tegra_qspi, ptr %196, i32 0, i32 5
  %205 = ptrtoint ptr %base.i.i231 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base.i.i231, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %204) #7, !srcloc !169
  %207 = ptrtoint ptr %base.i.i231 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base.i.i231, align 4
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %def_command1_reg.i232 = getelementptr inbounds %struct.tegra_qspi, ptr %196, i32 0, i32 28
  %210 = ptrtoint ptr %def_command1_reg.i232 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %def_command1_reg.i232, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %212 = tail call i32 @llvm.bswap.i32(i32 %211) #7
  %213 = ptrtoint ptr %base.i.i231 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %base.i.i231, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %212) #7, !srcloc !169
  %215 = ptrtoint ptr %base.i.i231 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %base.i.i231, align 4
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  br label %for.inc.sink.split

cleanup:                                          ; preds = %complete_xfer.cleanup_crit_edge, %if.then89, %if.end83, %do.end
  %ret.0246 = phi i32 [ -5, %if.then89 ], [ -5, %if.end83 ], [ %retval.0.i237, %do.end ], [ %call33, %complete_xfer.cleanup_crit_edge ]
  %218 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i207 = getelementptr inbounds %struct.device, ptr %219, i32 0, i32 8
  %220 = ptrtoint ptr %driver_data.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %driver_data.i.i.i207, align 4
  %222 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %mode.i, align 8
  %command1_reg.i209 = getelementptr inbounds %struct.tegra_qspi, ptr %221, i32 0, i32 26
  %224 = ptrtoint ptr %command1_reg.i209 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %command1_reg.i209, align 4
  %and3.i = and i32 %225, -1048577
  %226 = shl i32 %223, 18
  %227 = and i32 %226, 1048576
  %228 = or i32 %227, %and3.i
  %and3.sink.i = xor i32 %228, 1048576
  store i32 %and3.sink.i, ptr %command1_reg.i209, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %229 = tail call i32 @llvm.bswap.i32(i32 %and3.sink.i) #7
  %base.i.i210 = getelementptr inbounds %struct.tegra_qspi, ptr %221, i32 0, i32 5
  %230 = ptrtoint ptr %base.i.i210 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %base.i.i210, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %229) #7, !srcloc !169
  %232 = ptrtoint ptr %base.i.i210 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %base.i.i210, align 4
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %def_command1_reg.i211 = getelementptr inbounds %struct.tegra_qspi, ptr %221, i32 0, i32 28
  %235 = ptrtoint ptr %def_command1_reg.i211 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %def_command1_reg.i211, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %237 = tail call i32 @llvm.bswap.i32(i32 %236) #7
  %238 = ptrtoint ptr %base.i.i210 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %base.i.i210, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %237) #7, !srcloc !169
  %240 = ptrtoint ptr %base.i.i210 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %base.i.i210, align 4
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %delay.i = getelementptr i8, ptr %.pn274, i32 -38
  %call.i212 = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %transfer.0275) #7
  br label %exit

for.inc.sink.split:                               ; preds = %if.then119, %if.then110
  %delay.i233 = getelementptr i8, ptr %.pn274, i32 -38
  %call.i234 = tail call i32 @spi_delay_exec(ptr noundef %delay.i233, ptr noundef %transfer.0275) #7
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.then104.for.inc_crit_edge
  %243 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %243)
  %.pn = load ptr, ptr %18, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.inc.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.exit_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

exit:                                             ; preds = %for.inc.exit_crit_edge, %cleanup, %entry.exit_crit_edge
  %ret.1 = phi i32 [ %ret.0246, %cleanup ], [ 0, %entry.exit_crit_edge ], [ 0, %for.inc.exit_crit_edge ]
  %244 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %ret.1, ptr %status, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_qspi_isr_thread(i32 noundef %irq, ptr noundef %context_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 5
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %status_reg = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 23
  %4 = ptrtoint ptr %status_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status_reg, align 4
  %cur_direction = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 13
  %5 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_direction, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and2 = and i32 %3, 192
  %tx_status = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 21
  %7 = ptrtoint ptr %tx_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and2, ptr %tx_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and8 = and i32 %3, 48
  %rx_status = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 22
  %8 = ptrtoint ptr %rx_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and8, ptr %rx_status, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  tail call fastcc void @tegra_qspi_mask_clear_irq(ptr noundef %context_data)
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 18
  %9 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_curr_dma_xfer, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  %curr_xfer.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 34
  %11 = ptrtoint ptr %curr_xfer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %curr_xfer.i, align 4
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %lock.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %tx_status.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 21
  %13 = ptrtoint ptr %tx_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then11.if.then.i_crit_edge

if.then11.if.then.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then11
  %rx_status.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 22
  %15 = ptrtoint ptr %rx_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not.i = icmp eq i32 %16, 0
  br i1 %tobool5.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then11.if.then.i_crit_edge
  %17 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %context_data, align 4
  %19 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status_reg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.45, i32 noundef %20) #10
  tail call fastcc void @tegra_qspi_dump_regs(ptr noundef %context_data) #7
  %call.i.i = tail call fastcc i32 @tegra_qspi_flush_fifos(ptr noundef %context_data, i1 noundef zeroext true) #7
  %rst.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 4
  %21 = ptrtoint ptr %rst.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rst.i.i, align 4
  %call1.i.i = tail call i32 @reset_control_assert(ptr noundef %22) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #7
  %24 = ptrtoint ptr %rst.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rst.i.i, align 4
  %call3.i.i = tail call i32 @reset_control_deassert(ptr noundef %25) #7
  %xfer_completion.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 33
  tail call void @complete(ptr noundef %xfer_completion.i) #7
  br label %handle_cpu_based_xfer.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %26 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_direction, align 4
  %and.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  %rx_buf1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 1
  %28 = ptrtoint ptr %rx_buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_buf1.i.i, align 4
  %cur_rx_pos.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 14
  %30 = ptrtoint ptr %cur_rx_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur_rx_pos.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %31
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !170
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %shr.i.i = lshr i32 %35, 23
  %and.i.i = and i32 %shr.i.i, 127
  %is_packed.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 24
  %36 = ptrtoint ptr %is_packed.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_packed.i.i, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then7.i
  %curr_dma_words.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 12
  %bytes_per_word.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp12.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp12.not.i.i, label %if.then.i.i.for.end12.i.i_crit_edge, label %for.body.preheader.i.i

if.then.i.i.for.end12.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end12.i.i

for.body.preheader.i.i:                           ; preds = %if.then.i.i
  %38 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bytes_per_word.i.i, align 4
  %40 = ptrtoint ptr %curr_dma_words.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %curr_dma_words.i.i, align 4
  %mul.i.i = mul i32 %41, %39
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc10.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rx_buf.015.i.i = phi ptr [ %rx_buf.1.lcssa.i.i, %for.inc10.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %count.014.i.i = phi i32 [ %inc11.i.i, %for.inc10.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %len.013.i.i = phi i32 [ %len.1.lcssa.i.i, %for.inc10.i.i.for.body.i.i_crit_edge ], [ %mul.i.i, %for.body.preheader.i.i ]
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %43, i32 392
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i) #7, !srcloc !170
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.013.i.i)
  %tobool4.not6.not.i.i = icmp eq i32 %len.013.i.i, 0
  br i1 %tobool4.not6.not.i.i, label %for.body.i.i.for.inc10.i.i_crit_edge, label %for.body6.preheader.i.i

for.body.i.i.for.inc10.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc10.i.i

for.body6.preheader.i.i:                          ; preds = %for.body.i.i
  %46 = add i32 %len.013.i.i, -1
  %umin.i.i = tail call i32 @llvm.umin.i32(i32 %46, i32 3) #7
  %conv.i.i = trunc i32 %45 to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %rx_buf.015.i.i, i32 1
  %47 = ptrtoint ptr %rx_buf.015.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i.i, ptr %rx_buf.015.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin.i.i)
  %exitcond.not.i.i = icmp eq i32 %umin.i.i, 0
  br i1 %exitcond.not.i.i, label %for.body6.preheader.i.i.for.inc10.i.loopexit.i_crit_edge, label %for.body6.i.i.1

for.body6.preheader.i.i.for.inc10.i.loopexit.i_crit_edge: ; preds = %for.body6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc10.i.loopexit.i

for.body6.i.i.1:                                  ; preds = %for.body6.preheader.i.i
  %shr8.i.i.1 = lshr i32 %45, 8
  %conv.i.i.1 = trunc i32 %shr8.i.i.1 to i8
  %incdec.ptr.i.i.1 = getelementptr i8, ptr %rx_buf.015.i.i, i32 2
  %48 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i.i.1, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin.i.i)
  %exitcond.not.i.i.1 = icmp eq i32 %umin.i.i, 1
  br i1 %exitcond.not.i.i.1, label %for.body6.i.i.1.for.inc10.i.loopexit.i_crit_edge, label %for.body6.i.i.2

for.body6.i.i.1.for.inc10.i.loopexit.i_crit_edge: ; preds = %for.body6.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc10.i.loopexit.i

for.body6.i.i.2:                                  ; preds = %for.body6.i.i.1
  %shr8.i.i.2 = lshr i32 %45, 16
  %conv.i.i.2 = trunc i32 %shr8.i.i.2 to i8
  %incdec.ptr.i.i.2 = getelementptr i8, ptr %rx_buf.015.i.i, i32 3
  %49 = ptrtoint ptr %incdec.ptr.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i.i.2, ptr %incdec.ptr.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin.i.i)
  %exitcond.not.i.i.2 = icmp eq i32 %umin.i.i, 2
  br i1 %exitcond.not.i.i.2, label %for.body6.i.i.2.for.inc10.i.loopexit.i_crit_edge, label %for.body6.i.i.3

for.body6.i.i.2.for.inc10.i.loopexit.i_crit_edge: ; preds = %for.body6.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc10.i.loopexit.i

for.body6.i.i.3:                                  ; preds = %for.body6.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %shr8.i.i.3 = lshr i32 %45, 24
  %conv.i.i.3 = trunc i32 %shr8.i.i.3 to i8
  %incdec.ptr.i.i.3 = getelementptr i8, ptr %rx_buf.015.i.i, i32 4
  %50 = ptrtoint ptr %incdec.ptr.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i.i.3, ptr %incdec.ptr.i.i.2, align 1
  br label %for.inc10.i.loopexit.i

for.inc10.i.loopexit.i:                           ; preds = %for.body6.i.i.3, %for.body6.i.i.2.for.inc10.i.loopexit.i_crit_edge, %for.body6.i.i.1.for.inc10.i.loopexit.i_crit_edge, %for.body6.preheader.i.i.for.inc10.i.loopexit.i_crit_edge
  %incdec.ptr.i.i.lcssa = phi ptr [ %incdec.ptr.i.i, %for.body6.preheader.i.i.for.inc10.i.loopexit.i_crit_edge ], [ %incdec.ptr.i.i.1, %for.body6.i.i.1.for.inc10.i.loopexit.i_crit_edge ], [ %incdec.ptr.i.i.2, %for.body6.i.i.2.for.inc10.i.loopexit.i_crit_edge ], [ %incdec.ptr.i.i.3, %for.body6.i.i.3 ]
  %51 = sub i32 %46, %umin.i.i
  br label %for.inc10.i.i

for.inc10.i.i:                                    ; preds = %for.inc10.i.loopexit.i, %for.body.i.i.for.inc10.i.i_crit_edge
  %len.1.lcssa.i.i = phi i32 [ 0, %for.body.i.i.for.inc10.i.i_crit_edge ], [ %51, %for.inc10.i.loopexit.i ]
  %rx_buf.1.lcssa.i.i = phi ptr [ %rx_buf.015.i.i, %for.body.i.i.for.inc10.i.i_crit_edge ], [ %incdec.ptr.i.i.lcssa, %for.inc10.i.loopexit.i ]
  %inc11.i.i = add nuw nsw i32 %count.014.i.i, 1
  %exitcond28.not.i.i = icmp eq i32 %inc11.i.i, %and.i.i
  br i1 %exitcond28.not.i.i, label %for.inc10.i.i.for.end12.i.i_crit_edge, label %for.inc10.i.i.for.body.i.i_crit_edge

for.inc10.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc10.i.i.for.end12.i.i_crit_edge:            ; preds = %for.inc10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end12.i.i

for.end12.i.i:                                    ; preds = %for.inc10.i.i.for.end12.i.i_crit_edge, %if.then.i.i.for.end12.i.i_crit_edge
  %52 = ptrtoint ptr %curr_dma_words.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %curr_dma_words.i.i, align 4
  %54 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bytes_per_word.i.i, align 4
  %mul16.i.i = mul i32 %55, %53
  br label %tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i

if.else.i.i:                                      ; preds = %if.then7.i
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 8
  %56 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bits_per_word.i.i, align 1
  %conv19.i.i = zext i8 %57 to i32
  %notmask.i.i = shl nsw i32 -1, %conv19.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %bytes_per_word21.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 11
  %58 = ptrtoint ptr %bytes_per_word21.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bytes_per_word21.i.i, align 4
  %conv23.i.i = and i32 %59, 255
  %mul24.i.i = mul nuw nsw i32 %conv23.i.i, %and.i.i
  %len25.i.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 2
  %60 = ptrtoint ptr %len25.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len25.i.i, align 4
  %cur_pos.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 9
  %62 = ptrtoint ptr %cur_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cur_pos.i.i, align 4
  %sub26.i.i = sub i32 %61, %63
  %64 = tail call i32 @llvm.umin.i32(i32 %mul24.i.i, i32 %sub26.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp3424.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp3424.not.i.i, label %if.else.i.i.tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge, label %for.body36.lr.ph.i.i

if.else.i.i.tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i

for.body36.lr.ph.i.i:                             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.i.i)
  %cmp4317.i.i = icmp ne i32 %conv23.i.i, 0
  br label %for.body36.i.i

for.body36.i.i:                                   ; preds = %for.inc56.i.i.for.body36.i.i_crit_edge, %for.body36.lr.ph.i.i
  %rx_buf.227.i.i = phi ptr [ %add.ptr.i.i, %for.body36.lr.ph.i.i ], [ %rx_buf.3.lcssa.i.i, %for.inc56.i.i.for.body36.i.i_crit_edge ]
  %count.126.i.i = phi i32 [ 0, %for.body36.lr.ph.i.i ], [ %inc57.i.i, %for.inc56.i.i.for.body36.i.i_crit_edge ]
  %len.325.i.i = phi i32 [ %64, %for.body36.lr.ph.i.i ], [ %len.4.lcssa.i.i, %for.inc56.i.i.for.body36.i.i_crit_edge ]
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %66, i32 392
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #7, !srcloc !170
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %and38.i.i = and i32 %68, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.325.i.i)
  %tobool40.not16.i.i = icmp ne i32 %len.325.i.i, 0
  %or.cond118.i.i = select i1 %tobool40.not16.i.i, i1 %cmp4317.i.i, i1 false
  br i1 %or.cond118.i.i, label %for.body36.i.i.for.body46.i.i_crit_edge, label %for.body36.i.i.for.inc56.i.i_crit_edge

for.body36.i.i.for.inc56.i.i_crit_edge:           ; preds = %for.body36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.i.i

for.body36.i.i.for.body46.i.i_crit_edge:          ; preds = %for.body36.i.i
  br label %for.body46.i.i

for.body46.i.i:                                   ; preds = %for.body46.i.i.for.body46.i.i_crit_edge, %for.body36.i.i.for.body46.i.i_crit_edge
  %rx_buf.321.i.i = phi ptr [ %incdec.ptr51.i.i, %for.body46.i.i.for.body46.i.i_crit_edge ], [ %rx_buf.227.i.i, %for.body36.i.i.for.body46.i.i_crit_edge ]
  %i.120.i.i = phi i32 [ %inc53.i.i, %for.body46.i.i.for.body46.i.i_crit_edge ], [ 0, %for.body36.i.i.for.body46.i.i_crit_edge ]
  %len.419.i.i = phi i32 [ %dec54.i.i, %for.body46.i.i.for.body46.i.i_crit_edge ], [ %len.325.i.i, %for.body36.i.i.for.body46.i.i_crit_edge ]
  %mul47.i.i = shl i32 %i.120.i.i, 3
  %shr48.i.i = lshr i32 %and38.i.i, %mul47.i.i
  %conv50.i.i = trunc i32 %shr48.i.i to i8
  %incdec.ptr51.i.i = getelementptr i8, ptr %rx_buf.321.i.i, i32 1
  %69 = ptrtoint ptr %rx_buf.321.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv50.i.i, ptr %rx_buf.321.i.i, align 1
  %inc53.i.i = add nuw nsw i32 %i.120.i.i, 1
  %dec54.i.i = add i32 %len.419.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec54.i.i)
  %tobool40.not.i.i = icmp ne i32 %dec54.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc53.i.i, i32 %conv23.i.i)
  %cmp43.i.i = icmp ult i32 %inc53.i.i, %conv23.i.i
  %or.cond1.i.i = select i1 %tobool40.not.i.i, i1 %cmp43.i.i, i1 false
  br i1 %or.cond1.i.i, label %for.body46.i.i.for.body46.i.i_crit_edge, label %for.body46.i.i.for.inc56.i.i_crit_edge

for.body46.i.i.for.inc56.i.i_crit_edge:           ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.i.i

for.body46.i.i.for.body46.i.i_crit_edge:          ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46.i.i

for.inc56.i.i:                                    ; preds = %for.body46.i.i.for.inc56.i.i_crit_edge, %for.body36.i.i.for.inc56.i.i_crit_edge
  %len.4.lcssa.i.i = phi i32 [ %len.325.i.i, %for.body36.i.i.for.inc56.i.i_crit_edge ], [ %dec54.i.i, %for.body46.i.i.for.inc56.i.i_crit_edge ]
  %rx_buf.3.lcssa.i.i = phi ptr [ %rx_buf.227.i.i, %for.body36.i.i.for.inc56.i.i_crit_edge ], [ %incdec.ptr51.i.i, %for.body46.i.i.for.inc56.i.i_crit_edge ]
  %inc57.i.i = add nuw nsw i32 %count.126.i.i, 1
  %exitcond29.not.i.i = icmp eq i32 %inc57.i.i, %and.i.i
  br i1 %exitcond29.not.i.i, label %for.inc56.i.i.tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge, label %for.inc56.i.i.for.body36.i.i_crit_edge

for.inc56.i.i.for.body36.i.i_crit_edge:           ; preds = %for.inc56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body36.i.i

for.inc56.i.i.tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge: ; preds = %for.inc56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i

tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i:   ; preds = %for.inc56.i.i.tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge, %if.else.i.i.tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge, %for.end12.i.i
  %.sink30.i.i = phi i32 [ %mul16.i.i, %for.end12.i.i ], [ %64, %if.else.i.i.tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge ], [ %64, %for.inc56.i.i.tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge ]
  %70 = ptrtoint ptr %cur_rx_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cur_rx_pos.i.i, align 4
  %add61.i.i = add i32 %71, %.sink30.i.i
  store i32 %add61.i.i, ptr %cur_rx_pos.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %tegra_qspi_read_rx_fifo_to_client_rxbuf.exit.i, %if.end.i.if.end9.i_crit_edge
  %72 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cur_direction, align 4
  %and11.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %cur_rx_pos.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 14
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 15
  %.sink.in.i = select i1 %tobool12.not.i, ptr %cur_rx_pos.i, ptr %cur_tx_pos.i
  %74 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %75 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 9
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %.sink.i, ptr %75, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 2
  %77 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %.sink.i)
  %cmp17.i = icmp eq i32 %78, %.sink.i
  br i1 %cmp17.i, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_completion20.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 33
  tail call void @complete(ptr noundef %xfer_completion20.i) #7
  br label %handle_cpu_based_xfer.exit

if.end21.i:                                       ; preds = %if.end9.i
  %sub.i2.i = sub i32 %78, %.sink.i
  %bits_per_word1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 8
  %79 = ptrtoint ptr %bits_per_word1.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bits_per_word1.i.i, align 1
  %conv.i3.i = zext i8 %80 to i32
  %sub2.i.i = add nuw nsw i32 %conv.i3.i, 7
  %div65.i.i = lshr i32 %sub2.i.i, 3
  %bytes_per_word.i4.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 11
  %81 = ptrtoint ptr %bytes_per_word.i4.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div65.i.i, ptr %bytes_per_word.i4.i, align 4
  %82 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %80, label %if.end21.i.if.else.i7.i_crit_edge [
    i8 8, label %if.end21.i.land.lhs.true.i.i_crit_edge
    i8 16, label %if.end21.i.land.lhs.true.i.i_crit_edge90
    i8 32, label %if.end21.i.land.lhs.true.i.i_crit_edge91
  ]

if.end21.i.land.lhs.true.i.i_crit_edge91:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

if.end21.i.land.lhs.true.i.i_crit_edge90:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

if.end21.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

if.end21.i.if.else.i7.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i7.i

land.lhs.true.i.i:                                ; preds = %if.end21.i.land.lhs.true.i.i_crit_edge, %if.end21.i.land.lhs.true.i.i_crit_edge90, %if.end21.i.land.lhs.true.i.i_crit_edge91
  %83 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp10.i.i = icmp ugt i32 %84, 3
  br i1 %cmp10.i.i, label %if.then.i6.i, label %land.lhs.true.i.i.if.else.i7.i_crit_edge

land.lhs.true.i.i.if.else.i7.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i7.i

if.then.i6.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %is_packed.i5.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 24
  %85 = ptrtoint ptr %is_packed.i5.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %is_packed.i5.i, align 4
  %div1268.i.i = udiv i8 32, %80
  %div12.zext.i.i = zext i8 %div1268.i.i to i32
  br label %if.end.i.i

if.else.i7.i:                                     ; preds = %land.lhs.true.i.i.if.else.i7.i_crit_edge, %if.end21.i.if.else.i7.i_crit_edge
  %is_packed13.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 24
  %86 = ptrtoint ptr %is_packed13.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %is_packed13.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i7.i, %if.then.i6.i
  %.sink.i.i = phi i32 [ 1, %if.else.i7.i ], [ %div12.zext.i.i, %if.then.i6.i ]
  %words_per_32bit14.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 10
  %87 = ptrtoint ptr %words_per_32bit14.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.sink.i.i, ptr %words_per_32bit14.i.i, align 4
  %is_packed15.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 24
  %88 = ptrtoint ptr %is_packed15.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %is_packed15.i.i, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i8.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i8.i, label %if.else23.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_buf_size.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 17
  %90 = ptrtoint ptr %max_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_buf_size.i.i, align 4
  %92 = tail call i32 @llvm.umin.i32(i32 %sub.i2.i, i32 %91) #7
  %div20.i.i = udiv i32 %92, %div65.i.i
  br label %tegra_qspi_calculate_curr_xfer_param.exit.i

if.else23.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub24.i.i = add i32 %sub.i2.i, -1
  %div26.i.i = udiv i32 %sub24.i.i, %div65.i.i
  %add27.i.i = add i32 %div26.i.i, 1
  %max_buf_size28.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 17
  %93 = ptrtoint ptr %max_buf_size28.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_buf_size28.i.i, align 4
  %div2966.i.i = lshr i32 %94, 2
  %95 = tail call i32 @llvm.umin.i32(i32 %add27.i.i, i32 %div2966.i.i) #7
  br label %tegra_qspi_calculate_curr_xfer_param.exit.i

tegra_qspi_calculate_curr_xfer_param.exit.i:      ; preds = %if.else23.i.i, %if.then16.i.i
  %div20.sink.i.i = phi i32 [ %95, %if.else23.i.i ], [ %div20.i.i, %if.then16.i.i ]
  %96 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 12
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %div20.sink.i.i, ptr %96, align 4
  tail call fastcc void @tegra_qspi_start_cpu_based_transfer(ptr noundef %context_data, ptr noundef %12) #7
  br label %handle_cpu_based_xfer.exit

handle_cpu_based_xfer.exit:                       ; preds = %tegra_qspi_calculate_curr_xfer_param.exit.i, %if.then19.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %98 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cur_direction, align 4
  %and.i28 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %if.end13.if.end10.i_crit_edge, label %if.then.i31

if.end13.if.end10.i_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i31:                                      ; preds = %if.end13
  %tx_status.i30 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 21
  %100 = ptrtoint ptr %tx_status.i30 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_status.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool1.not.i = icmp eq i32 %101, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i31
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 39
  %102 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx_dma_chan.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %105, i32 0, i32 47
  %106 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i32 = icmp eq ptr %107, null
  br i1 %tobool.not.i.i32, label %if.then2.i.if.end10.i_crit_edge, label %if.then.i.i34

if.then2.i.if.end10.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i.i34:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i33 = tail call i32 %107(ptr noundef %103) #7
  br label %if.end10.i

if.else.i:                                        ; preds = %if.then.i31
  %tx_dma_complete.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 20
  %call4.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %tx_dma_complete.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 1
  br i1 %cmp.i, label %if.then5.i, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.else.i
  %tx_dma_chan6.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 39
  %108 = ptrtoint ptr %tx_dma_chan6.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tx_dma_chan6.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %device_terminate_all.i1.i = getelementptr inbounds %struct.dma_device, ptr %111, i32 0, i32 47
  %112 = ptrtoint ptr %device_terminate_all.i1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device_terminate_all.i1.i, align 4
  %tobool.not.i2.i = icmp eq ptr %113, null
  br i1 %tobool.not.i2.i, label %if.then5.i.dmaengine_terminate_all.exit5.i_crit_edge, label %if.then.i4.i

if.then5.i.dmaengine_terminate_all.exit5.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_all.exit5.i

if.then.i4.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i3.i = tail call i32 %113(ptr noundef %109) #7
  br label %dmaengine_terminate_all.exit5.i

dmaengine_terminate_all.exit5.i:                  ; preds = %if.then.i4.i, %if.then5.i.dmaengine_terminate_all.exit5.i_crit_edge
  %114 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %context_data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.62) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %dmaengine_terminate_all.exit5.i, %if.else.i.if.end10.i_crit_edge, %if.then.i.i34, %if.then2.i.if.end10.i_crit_edge, %if.end13.if.end10.i_crit_edge
  %tobool43.not.i = phi i1 [ false, %if.then.i.i34 ], [ false, %if.then2.i.if.end10.i_crit_edge ], [ false, %dmaengine_terminate_all.exit5.i ], [ true, %if.else.i.if.end10.i_crit_edge ], [ true, %if.end13.if.end10.i_crit_edge ]
  %116 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cur_direction, align 4
  %and12.i = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.do.body35.i_crit_edge, label %if.then14.i

if.end10.i.do.body35.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.i

if.then14.i:                                      ; preds = %if.end10.i
  %rx_status.i35 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 22
  %118 = ptrtoint ptr %rx_status.i35 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rx_status.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool15.not.i = icmp eq i32 %119, 0
  br i1 %tobool15.not.i, label %if.else19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then14.i
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 35
  %120 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rx_dma_chan.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %device_terminate_all.i6.i = getelementptr inbounds %struct.dma_device, ptr %123, i32 0, i32 47
  %124 = ptrtoint ptr %device_terminate_all.i6.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device_terminate_all.i6.i, align 4
  %tobool.not.i7.i = icmp eq ptr %125, null
  br i1 %tobool.not.i7.i, label %if.then16.i.do.body35.thread.i_crit_edge, label %if.then.i9.i

if.then16.i.do.body35.thread.i_crit_edge:         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.thread.i

if.then.i9.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i8.i = tail call i32 %125(ptr noundef %121) #7
  br label %do.body35.thread.i

if.else19.i:                                      ; preds = %if.then14.i
  %rx_dma_complete.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 19
  %call21.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %rx_dma_complete.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 1
  br i1 %cmp22.i, label %if.then23.i, label %if.else19.i.do.body35.i_crit_edge

if.else19.i.do.body35.i_crit_edge:                ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.i

if.then23.i:                                      ; preds = %if.else19.i
  %rx_dma_chan24.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 35
  %126 = ptrtoint ptr %rx_dma_chan24.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx_dma_chan24.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %device_terminate_all.i11.i = getelementptr inbounds %struct.dma_device, ptr %129, i32 0, i32 47
  %130 = ptrtoint ptr %device_terminate_all.i11.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device_terminate_all.i11.i, align 4
  %tobool.not.i12.i = icmp eq ptr %131, null
  br i1 %tobool.not.i12.i, label %if.then23.i.dmaengine_terminate_all.exit15.i_crit_edge, label %if.then.i14.i

if.then23.i.dmaengine_terminate_all.exit15.i_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_all.exit15.i

if.then.i14.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i13.i = tail call i32 %131(ptr noundef %127) #7
  br label %dmaengine_terminate_all.exit15.i

dmaengine_terminate_all.exit15.i:                 ; preds = %if.then.i14.i, %if.then23.i.dmaengine_terminate_all.exit15.i_crit_edge
  %132 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %context_data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.65) #10
  br label %do.body35.thread.i

do.body35.thread.i:                               ; preds = %dmaengine_terminate_all.exit15.i, %if.then.i9.i, %if.then16.i.do.body35.thread.i_crit_edge
  %lock47.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 2
  %call3848.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock47.i) #7
  br label %if.then44.i

do.body35.i:                                      ; preds = %if.else19.i.do.body35.i_crit_edge, %if.end10.i.do.body35.i_crit_edge
  %lock.i36 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 2
  %call38.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i36) #7
  br i1 %tobool43.not.i, label %if.end45.i, label %do.body35.i.if.then44.i_crit_edge

do.body35.i.if.then44.i_crit_edge:                ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44.i

if.then44.i:                                      ; preds = %do.body35.i.if.then44.i_crit_edge, %do.body35.thread.i
  %call3853.i = phi i32 [ %call3848.i, %do.body35.thread.i ], [ %call38.i, %do.body35.i.if.then44.i_crit_edge ]
  %lock51.i = phi ptr [ %lock47.i, %do.body35.thread.i ], [ %lock.i36, %do.body35.i.if.then44.i_crit_edge ]
  %curr_dma_words.i.i37 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 12
  %134 = ptrtoint ptr %curr_dma_words.i.i37 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %curr_dma_words.i.i37, align 4
  %bytes_per_word.i.i38 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 11
  %136 = ptrtoint ptr %bytes_per_word.i.i38 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bytes_per_word.i.i38, align 4
  %mul.i.i39 = mul i32 %137, %135
  %sub.i.i40 = add i32 %mul.i.i39, 3
  %div8.i.i = and i32 %sub.i.i40, -4
  %138 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %context_data, align 4
  %tx_dma.i.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 3
  %140 = ptrtoint ptr %tx_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %139, i32 noundef %141, i32 noundef %div8.i.i, i32 noundef 1, i32 noundef 0) #7
  %142 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %context_data, align 4
  %rx_dma.i.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 4
  %144 = ptrtoint ptr %rx_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rx_dma.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %143, i32 noundef %145, i32 noundef %div8.i.i, i32 noundef 2, i32 noundef 0) #7
  %146 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %context_data, align 4
  %148 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %status_reg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.45, i32 noundef %149) #10
  tail call fastcc void @tegra_qspi_dump_regs(ptr noundef %context_data) #7
  %call.i16.i = tail call fastcc i32 @tegra_qspi_flush_fifos(ptr noundef %context_data, i1 noundef zeroext true) #7
  %rst.i.i42 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 4
  %150 = ptrtoint ptr %rst.i.i42 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rst.i.i42, align 4
  %call1.i.i43 = tail call i32 @reset_control_assert(ptr noundef %151) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 429496) #7
  %153 = ptrtoint ptr %rst.i.i42 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rst.i.i42, align 4
  %call3.i.i44 = tail call i32 @reset_control_deassert(ptr noundef %154) #7
  %xfer_completion.i45 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 33
  tail call void @complete(ptr noundef %xfer_completion.i45) #7
  br label %handle_dma_based_xfer.exit

if.end45.i:                                       ; preds = %do.body35.i
  %155 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cur_direction, align 4
  %and47.i = and i32 %156, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end50.i_crit_edge, label %if.then49.i

if.end45.i.if.end50.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.end45.i
  %157 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %context_data, align 4
  %rx_dma_phys.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 37
  %159 = ptrtoint ptr %rx_dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_dma_phys.i.i, align 4
  %dma_buf_size.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 16
  %161 = ptrtoint ptr %dma_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %dma_buf_size.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %158, i32 noundef %160, i32 noundef %162, i32 noundef 2) #7
  %is_packed.i.i46 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 24
  %163 = ptrtoint ptr %is_packed.i.i46 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %is_packed.i.i46, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i17.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i17.i, label %if.else.i.i52, label %if.then.i21.i

if.then.i21.i:                                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #9
  %curr_dma_words.i18.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 12
  %165 = ptrtoint ptr %curr_dma_words.i18.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %curr_dma_words.i18.i, align 4
  %bytes_per_word.i19.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 11
  %167 = ptrtoint ptr %bytes_per_word.i19.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %bytes_per_word.i19.i, align 4
  %mul.i20.i = mul i32 %168, %166
  %cur_rx_pos.i.i47 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 14
  br label %tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i

if.else.i.i52:                                    ; preds = %if.then49.i
  %cur_rx_pos2.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 14
  %bits_per_word.i.i48 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 8
  %169 = ptrtoint ptr %bits_per_word.i.i48 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bits_per_word.i.i48, align 1
  %conv.i.i49 = zext i8 %170 to i32
  %notmask.i.i50 = shl nsw i32 -1, %conv.i.i49
  %sub.i22.i = xor i32 %notmask.i.i50, -1
  %curr_dma_words3.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 12
  %171 = ptrtoint ptr %curr_dma_words3.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %curr_dma_words3.i.i, align 4
  %bytes_per_word4.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 11
  %173 = ptrtoint ptr %bytes_per_word4.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %bytes_per_word4.i.i, align 4
  %mul5.i.i = mul i32 %174, %172
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 2
  %175 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %len.i.i, align 4
  %cur_pos.i.i51 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 9
  %177 = ptrtoint ptr %cur_pos.i.i51 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %cur_pos.i.i51, align 4
  %sub6.i.i = sub i32 %176, %178
  %179 = tail call i32 @llvm.umin.i32(i32 %mul5.i.i, i32 %sub6.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp1368.not.i.i = icmp eq i32 %172, 0
  br i1 %cmp1368.not.i.i, label %if.else.i.i52.tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.else.i.i52.tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i_crit_edge: ; preds = %if.else.i.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i.i52
  %rx_buf1.i.i53 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 1
  %180 = ptrtoint ptr %rx_buf1.i.i53 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rx_buf1.i.i53, align 4
  %182 = ptrtoint ptr %cur_rx_pos2.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cur_rx_pos2.i.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %181, i32 %183
  %rx_dma_buf.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 36
  br label %for.body.i.i56

for.body.i.i56:                                   ; preds = %for.end.i.i.for.body.i.i56_crit_edge, %for.body.lr.ph.i.i
  %consume.171.i.i = phi i32 [ %179, %for.body.lr.ph.i.i ], [ %consume.2.lcssa.i.i, %for.end.i.i.for.body.i.i56_crit_edge ]
  %count.070.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc25.i.i, %for.end.i.i.for.body.i.i56_crit_edge ]
  %rx_buf.069.i.i = phi ptr [ %add.ptr.i.i54, %for.body.lr.ph.i.i ], [ %rx_buf.1.lcssa.i.i61, %for.end.i.i.for.body.i.i56_crit_edge ]
  %184 = ptrtoint ptr %rx_dma_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rx_dma_buf.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %185, i32 %count.070.i.i
  %186 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i55 = and i32 %187, %sub.i22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume.171.i.i)
  %tobool16.not61.i.i = icmp eq i32 %consume.171.i.i, 0
  br i1 %tobool16.not61.i.i, label %for.body.i.i56.for.end.i.i_crit_edge, label %for.body.i.i56.land.rhs.i.i_crit_edge

for.body.i.i56.land.rhs.i.i_crit_edge:            ; preds = %for.body.i.i56
  br label %land.rhs.i.i

for.body.i.i56.for.end.i.i_crit_edge:             ; preds = %for.body.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

land.rhs.i.i:                                     ; preds = %for.body20.i.i.land.rhs.i.i_crit_edge, %for.body.i.i56.land.rhs.i.i_crit_edge
  %consume.264.i.i = phi i32 [ %dec.i.i, %for.body20.i.i.land.rhs.i.i_crit_edge ], [ %consume.171.i.i, %for.body.i.i56.land.rhs.i.i_crit_edge ]
  %i.063.i.i = phi i32 [ %inc.i.i60, %for.body20.i.i.land.rhs.i.i_crit_edge ], [ 0, %for.body.i.i56.land.rhs.i.i_crit_edge ]
  %rx_buf.162.i.i = phi ptr [ %incdec.ptr.i.i59, %for.body20.i.i.land.rhs.i.i_crit_edge ], [ %rx_buf.069.i.i, %for.body.i.i56.land.rhs.i.i_crit_edge ]
  %188 = ptrtoint ptr %bytes_per_word4.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %bytes_per_word4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.063.i.i, i32 %189)
  %cmp18.i.i = icmp ult i32 %i.063.i.i, %189
  br i1 %cmp18.i.i, label %for.body20.i.i, label %land.rhs.i.i.for.end.i.i_crit_edge

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body20.i.i:                                   ; preds = %land.rhs.i.i
  %mul21.i.i = shl i32 %i.063.i.i, 3
  %shr.i.i57 = lshr i32 %and.i.i55, %mul21.i.i
  %conv23.i.i58 = trunc i32 %shr.i.i57 to i8
  %incdec.ptr.i.i59 = getelementptr i8, ptr %rx_buf.162.i.i, i32 1
  %190 = ptrtoint ptr %rx_buf.162.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv23.i.i58, ptr %rx_buf.162.i.i, align 1
  %inc.i.i60 = add nuw i32 %i.063.i.i, 1
  %dec.i.i = add i32 %consume.264.i.i, -1
  %tobool16.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool16.not.i.i, label %for.body20.i.i.for.end.i.i_crit_edge, label %for.body20.i.i.land.rhs.i.i_crit_edge

for.body20.i.i.land.rhs.i.i_crit_edge:            ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

for.body20.i.i.for.end.i.i_crit_edge:             ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body20.i.i.for.end.i.i_crit_edge, %land.rhs.i.i.for.end.i.i_crit_edge, %for.body.i.i56.for.end.i.i_crit_edge
  %rx_buf.1.lcssa.i.i61 = phi ptr [ %rx_buf.069.i.i, %for.body.i.i56.for.end.i.i_crit_edge ], [ %incdec.ptr.i.i59, %for.body20.i.i.for.end.i.i_crit_edge ], [ %rx_buf.162.i.i, %land.rhs.i.i.for.end.i.i_crit_edge ]
  %consume.2.lcssa.i.i = phi i32 [ 0, %for.body.i.i56.for.end.i.i_crit_edge ], [ 0, %for.body20.i.i.for.end.i.i_crit_edge ], [ %consume.264.i.i, %land.rhs.i.i.for.end.i.i_crit_edge ]
  %inc25.i.i = add nuw i32 %count.070.i.i, 1
  %191 = ptrtoint ptr %curr_dma_words3.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %curr_dma_words3.i.i, align 4
  %cmp13.i.i = icmp ult i32 %inc25.i.i, %192
  br i1 %cmp13.i.i, label %for.end.i.i.for.body.i.i56_crit_edge, label %for.end.i.i.tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i_crit_edge

for.end.i.i.tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i

for.end.i.i.for.body.i.i56_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i56

tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i: ; preds = %for.end.i.i.tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i_crit_edge, %if.else.i.i52.tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i_crit_edge, %if.then.i21.i
  %cur_rx_pos2.sink73.i.i = phi ptr [ %cur_rx_pos.i.i47, %if.then.i21.i ], [ %cur_rx_pos2.i.i, %if.else.i.i52.tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i_crit_edge ], [ %cur_rx_pos2.i.i, %for.end.i.i.tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i_crit_edge ]
  %.sink72.i.i = phi i32 [ %mul.i20.i, %if.then.i21.i ], [ %179, %if.else.i.i52.tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i_crit_edge ], [ %179, %for.end.i.i.tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i_crit_edge ]
  %193 = ptrtoint ptr %cur_rx_pos2.sink73.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cur_rx_pos2.sink73.i.i, align 4
  %add28.i.i = add i32 %194, %.sink72.i.i
  store i32 %add28.i.i, ptr %cur_rx_pos2.sink73.i.i, align 4
  %195 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %context_data, align 4
  %197 = ptrtoint ptr %rx_dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %rx_dma_phys.i.i, align 4
  %199 = ptrtoint ptr %dma_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %dma_buf_size.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %196, i32 noundef %198, i32 noundef %200, i32 noundef 2) #7
  br label %if.end50.i

if.end50.i:                                       ; preds = %tegra_qspi_copy_qspi_rxbuf_to_client_rxbuf.exit.i, %if.end45.i.if.end50.i_crit_edge
  %201 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %cur_direction, align 4
  %and52.i = and i32 %202, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  %cur_rx_pos.i62 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 14
  %cur_tx_pos.i63 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 15
  %.sink.in.i64 = select i1 %tobool53.not.i, ptr %cur_rx_pos.i62, ptr %cur_tx_pos.i63
  %203 = ptrtoint ptr %.sink.in.i64 to i32
  call void @__asan_load4_noabort(i32 %203)
  %.sink.i65 = load i32, ptr %.sink.in.i64, align 4
  %204 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 9
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %.sink.i65, ptr %204, align 4
  %len.i66 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 2
  %206 = ptrtoint ptr %len.i66 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %len.i66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i65, i32 %207)
  %cmp59.i = icmp eq i32 %.sink.i65, %207
  %curr_dma_words.i23.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 12
  %208 = ptrtoint ptr %curr_dma_words.i23.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %curr_dma_words.i23.i, align 4
  %bytes_per_word.i24.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 11
  %210 = ptrtoint ptr %bytes_per_word.i24.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %bytes_per_word.i24.i, align 4
  %mul.i25.i = mul i32 %211, %209
  %sub.i26.i = add i32 %mul.i25.i, 3
  %div8.i27.i = and i32 %sub.i26.i, -4
  %212 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %context_data, align 4
  %tx_dma.i28.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 3
  %214 = ptrtoint ptr %tx_dma.i28.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %tx_dma.i28.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %213, i32 noundef %215, i32 noundef %div8.i27.i, i32 noundef 1, i32 noundef 0) #7
  %216 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %context_data, align 4
  %rx_dma.i29.i = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 4
  %218 = ptrtoint ptr %rx_dma.i29.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %rx_dma.i29.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %217, i32 noundef %219, i32 noundef %div8.i27.i, i32 noundef 2, i32 noundef 0) #7
  br i1 %cmp59.i, label %if.then61.i, label %if.end63.i

if.then61.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_completion62.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 33
  tail call void @complete(ptr noundef %xfer_completion62.i) #7
  br label %handle_dma_based_xfer.exit

if.end63.i:                                       ; preds = %if.end50.i
  %220 = ptrtoint ptr %len.i66 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %len.i66, align 4
  %222 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %204, align 4
  %sub.i39.i = sub i32 %221, %223
  %bits_per_word1.i.i67 = getelementptr inbounds %struct.spi_transfer, ptr %12, i32 0, i32 8
  %224 = ptrtoint ptr %bits_per_word1.i.i67 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %bits_per_word1.i.i67, align 1
  %conv.i40.i = zext i8 %225 to i32
  %sub2.i.i68 = add nuw nsw i32 %conv.i40.i, 7
  %div65.i.i69 = lshr i32 %sub2.i.i68, 3
  %226 = ptrtoint ptr %bytes_per_word.i24.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %div65.i.i69, ptr %bytes_per_word.i24.i, align 4
  %227 = zext i8 %225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %227, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %225, label %if.end63.i.if.else.i44.i_crit_edge [
    i8 8, label %if.end63.i.land.lhs.true.i.i71_crit_edge
    i8 16, label %if.end63.i.land.lhs.true.i.i71_crit_edge92
    i8 32, label %if.end63.i.land.lhs.true.i.i71_crit_edge93
  ]

if.end63.i.land.lhs.true.i.i71_crit_edge93:       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i71

if.end63.i.land.lhs.true.i.i71_crit_edge92:       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i71

if.end63.i.land.lhs.true.i.i71_crit_edge:         ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i71

if.end63.i.if.else.i44.i_crit_edge:               ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i44.i

land.lhs.true.i.i71:                              ; preds = %if.end63.i.land.lhs.true.i.i71_crit_edge, %if.end63.i.land.lhs.true.i.i71_crit_edge92, %if.end63.i.land.lhs.true.i.i71_crit_edge93
  %228 = ptrtoint ptr %len.i66 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %len.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %229)
  %cmp10.i.i70 = icmp ugt i32 %229, 3
  br i1 %cmp10.i.i70, label %if.then.i43.i, label %land.lhs.true.i.i71.if.else.i44.i_crit_edge

land.lhs.true.i.i71.if.else.i44.i_crit_edge:      ; preds = %land.lhs.true.i.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i44.i

if.then.i43.i:                                    ; preds = %land.lhs.true.i.i71
  call void @__sanitizer_cov_trace_pc() #9
  %is_packed.i42.i = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 24
  %230 = ptrtoint ptr %is_packed.i42.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 1, ptr %is_packed.i42.i, align 4
  %div1268.i.i72 = udiv i8 32, %225
  %div12.zext.i.i73 = zext i8 %div1268.i.i72 to i32
  br label %if.end.i.i78

if.else.i44.i:                                    ; preds = %land.lhs.true.i.i71.if.else.i44.i_crit_edge, %if.end63.i.if.else.i44.i_crit_edge
  %is_packed13.i.i74 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 24
  %231 = ptrtoint ptr %is_packed13.i.i74 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 0, ptr %is_packed13.i.i74, align 4
  br label %if.end.i.i78

if.end.i.i78:                                     ; preds = %if.else.i44.i, %if.then.i43.i
  %.sink.i.i75 = phi i32 [ 1, %if.else.i44.i ], [ %div12.zext.i.i73, %if.then.i43.i ]
  %words_per_32bit14.i.i76 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 10
  %232 = ptrtoint ptr %words_per_32bit14.i.i76 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %.sink.i.i75, ptr %words_per_32bit14.i.i76, align 4
  %is_packed15.i.i77 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 24
  %233 = ptrtoint ptr %is_packed15.i.i77 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %is_packed15.i.i77, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool.not.i45.i = icmp eq i8 %234, 0
  br i1 %tobool.not.i45.i, label %if.else23.i.i87, label %if.then16.i.i81

if.then16.i.i81:                                  ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #9
  %max_buf_size.i.i79 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 17
  %235 = ptrtoint ptr %max_buf_size.i.i79 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %max_buf_size.i.i79, align 4
  %237 = tail call i32 @llvm.umin.i32(i32 %sub.i39.i, i32 %236) #7
  %div20.i.i80 = udiv i32 %237, %div65.i.i69
  %add21.i.i = add i32 %237, 3
  %div2267.i.i = lshr i32 %add21.i.i, 2
  br label %tegra_qspi_calculate_curr_xfer_param.exit.i89

if.else23.i.i87:                                  ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #9
  %sub24.i.i82 = add i32 %sub.i39.i, -1
  %div26.i.i83 = udiv i32 %sub24.i.i82, %div65.i.i69
  %add27.i.i84 = add i32 %div26.i.i83, 1
  %max_buf_size28.i.i85 = getelementptr inbounds %struct.tegra_qspi, ptr %context_data, i32 0, i32 17
  %238 = ptrtoint ptr %max_buf_size28.i.i85 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %max_buf_size28.i.i85, align 4
  %div2966.i.i86 = lshr i32 %239, 2
  %240 = tail call i32 @llvm.umin.i32(i32 %add27.i.i84, i32 %div2966.i.i86) #7
  br label %tegra_qspi_calculate_curr_xfer_param.exit.i89

tegra_qspi_calculate_curr_xfer_param.exit.i89:    ; preds = %if.else23.i.i87, %if.then16.i.i81
  %div20.sink.i.i88 = phi i32 [ %240, %if.else23.i.i87 ], [ %div20.i.i80, %if.then16.i.i81 ]
  %total_fifo_words.0.i.i = phi i32 [ %240, %if.else23.i.i87 ], [ %div2267.i.i, %if.then16.i.i81 ]
  %241 = ptrtoint ptr %curr_dma_words.i23.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %div20.sink.i.i88, ptr %curr_dma_words.i23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %total_fifo_words.0.i.i)
  %cmp65.i = icmp ugt i32 %total_fifo_words.0.i.i, 64
  br i1 %cmp65.i, label %if.then67.i, label %if.else69.i

if.then67.i:                                      ; preds = %tegra_qspi_calculate_curr_xfer_param.exit.i89
  call void @__sanitizer_cov_trace_pc() #9
  %call68.i = tail call fastcc i32 @tegra_qspi_start_dma_based_transfer(ptr noundef %context_data, ptr noundef %12) #7
  br label %handle_dma_based_xfer.exit

if.else69.i:                                      ; preds = %tegra_qspi_calculate_curr_xfer_param.exit.i89
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tegra_qspi_start_cpu_based_transfer(ptr noundef %context_data, ptr noundef %12) #7
  br label %handle_dma_based_xfer.exit

handle_dma_based_xfer.exit:                       ; preds = %if.else69.i, %if.then67.i, %if.then61.i, %if.then44.i
  %call3852.i = phi i32 [ %call38.i, %if.then67.i ], [ %call38.i, %if.else69.i ], [ %call38.i, %if.then61.i ], [ %call3853.i, %if.then44.i ]
  %lock50.i = phi ptr [ %lock.i36, %if.then67.i ], [ %lock.i36, %if.else69.i ], [ %lock.i36, %if.then61.i ], [ %lock51.i, %if.then44.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock50.i, i32 noundef %call3852.i) #7
  br label %cleanup

cleanup:                                          ; preds = %handle_dma_based_xfer.exit, %handle_cpu_based_xfer.exit
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_qspi_deinit_dma(ptr nocapture noundef %tqspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma_buf = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 40
  %0 = ptrtoint ptr %tx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tqspi, align 4
  %dma_buf_size = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 16
  %4 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_buf_size, align 4
  %tx_dma_phys = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 41
  %6 = ptrtoint ptr %tx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dma_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #7
  %8 = ptrtoint ptr %tx_dma_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tx_dma_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_dma_chan = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 39
  %9 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_dma_chan, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %10) #7
  %11 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_dma_chan, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %rx_dma_buf = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 36
  %12 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_dma_buf, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %if.then9

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tqspi, align 4
  %dma_buf_size11 = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 16
  %16 = ptrtoint ptr %dma_buf_size11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_buf_size11, align 4
  %rx_dma_phys = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 37
  %18 = ptrtoint ptr %rx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_dma_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %13, i32 noundef %19, i32 noundef 0) #7
  %20 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rx_dma_buf, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end7.if.end14_crit_edge
  %rx_dma_chan = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 35
  %21 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_dma_chan, align 4
  %tobool15.not = icmp eq ptr %22, null
  br i1 %tobool15.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %22) #7
  %23 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rx_dma_chan, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_qspi_handle_error(ptr nocapture noundef readonly %tqspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tqspi, align 4
  %status_reg = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 23
  %2 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status_reg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %3) #10
  tail call fastcc void @tegra_qspi_dump_regs(ptr noundef %tqspi)
  %call = tail call fastcc i32 @tegra_qspi_flush_fifos(ptr noundef %tqspi, i1 noundef zeroext true)
  %rst = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 4
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 429496) #7
  %7 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rst, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %8) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_qspi_mask_clear_irq(ptr nocapture noundef readonly %tqspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 5
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %2) #7, !srcloc !169
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %9, i32 396
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #7, !srcloc !170
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %and = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %11, 1040187392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %14, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %12) #7, !srcloc !169
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %19, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %21 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not = icmp eq i32 %21, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 -268369920) #7, !srcloc !169
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_qspi_flush_fifos(ptr nocapture noundef readonly %tqspi, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !170
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %and = and i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp = icmp eq i32 %and, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %3, 49152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr.i90 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %4) #7, !srcloc !169
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %call36 = tail call i64 @ktime_get() #7
  %add.i91 = add i64 %call36, 1000000000
  br i1 %atomic, label %if.end33, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 513) #7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !170
  %11 = and i32 %10, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %11)
  %cmp15100 = icmp eq i32 %11, 83886080
  br i1 %cmp15100, label %if.then1.for.end.thread_crit_edge, label %if.then1.land.lhs.true_crit_edge

if.then1.land.lhs.true_crit_edge:                 ; preds = %if.then1
  br label %land.lhs.true

if.then1.for.end.thread_crit_edge:                ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then28.land.lhs.true_crit_edge, %if.then1.land.lhs.true_crit_edge
  %call19 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i91)
  %cmp3.i = icmp sgt i64 %call19, %add.i91
  br i1 %cmp3.i, label %for.end, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !170
  %13 = and i32 %12, 83886080
  %cmp15 = icmp eq i32 %13, 83886080
  br i1 %cmp15, label %if.then28.for.end.thread_crit_edge, label %if.then28.land.lhs.true_crit_edge

if.then28.land.lhs.true_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then28.for.end.thread_crit_edge:               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !170
  %15 = and i32 %14, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %15)
  %cmp32 = icmp eq i32 %15, 83886080
  br i1 %cmp32, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then28.for.end.thread_crit_edge, %if.then1.for.end.thread_crit_edge
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !170
  %17 = and i32 %16, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %17)
  %cmp43102 = icmp eq i32 %17, 83886080
  br i1 %cmp43102, label %if.end33.for.end63.thread_crit_edge, label %if.end33.land.lhs.true47_crit_edge

if.end33.land.lhs.true47_crit_edge:               ; preds = %if.end33
  br label %land.lhs.true47

if.end33.for.end63.thread_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end63.thread

land.lhs.true47:                                  ; preds = %cond.false.land.lhs.true47_crit_edge, %if.end33.land.lhs.true47_crit_edge
  %call48 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call48, i64 %add.i91)
  %cmp3.i93 = icmp sgt i64 %call48, %add.i91
  br i1 %cmp3.i93, label %for.end63, label %cond.false

cond.false:                                       ; preds = %land.lhs.true47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !170
  %20 = and i32 %19, 83886080
  %cmp43 = icmp eq i32 %20, 83886080
  br i1 %cmp43, label %cond.false.for.end63.thread_crit_edge, label %cond.false.land.lhs.true47_crit_edge

cond.false.land.lhs.true47_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true47

cond.false.for.end63.thread_crit_edge:            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end63.thread

for.end63:                                        ; preds = %land.lhs.true47
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !170
  %22 = and i32 %21, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %22)
  %cmp66 = icmp eq i32 %22, 83886080
  br i1 %cmp66, label %for.end63.for.end63.thread_crit_edge, label %for.end63.cleanup_crit_edge

for.end63.cleanup_crit_edge:                      ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end63.for.end63.thread_crit_edge:             ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end63.thread

for.end63.thread:                                 ; preds = %for.end63.for.end63.thread_crit_edge, %cond.false.for.end63.thread_crit_edge, %if.end33.for.end63.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end63.thread, %for.end63.cleanup_crit_edge, %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.thread ], [ -110, %for.end.cleanup_crit_edge ], [ 0, %for.end63.thread ], [ -110, %for.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_qspi_start_dma_based_transfer(ptr noundef %tqspi, ptr nocapture noundef %t) unnamed_addr #2 align 64 {
entry:
  %sg.i.i176 = alloca %struct.scatterlist, align 4
  %sg.i.i = alloca %struct.scatterlist, align 4
  %dma_sconfig = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_sconfig) #7
  %0 = call ptr @memset(ptr %dma_sconfig, i32 0, i32 48)
  %is_packed = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 24
  %1 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_packed, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %t, align 4
  %rx_buf2.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf2.i, align 4
  %cur_rx_pos.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 14
  %7 = ptrtoint ptr %cur_rx_pos.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_rx_pos.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %6, i32 %8
  %curr_dma_words.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 12
  %9 = ptrtoint ptr %curr_dma_words.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %curr_dma_words.i, align 4
  %bytes_per_word.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 11
  %11 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytes_per_word.i, align 4
  %mul.i = mul i32 %12, %10
  %sub.i = add i32 %mul.i, 3
  %div46.i = and i32 %sub.i, -4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.if.end11.i_crit_edge, label %if.then.i

if.then.if.end11.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then.i:                                        ; preds = %if.then
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 15
  %13 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_tx_pos.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %14
  %15 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tqspi, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #7
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !174

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %16) #7
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %20, %if.end.i.i.i ], [ %18, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #7
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %16, ptr noundef %add.ptr.i, i32 noundef %div46.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  %sub.i.i = add i32 %22, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %21, i32 %shr.i.i
  %and.i.i = and i32 %22, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %16, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %div46.i, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %tx_dma.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 3
  %23 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.i, ptr %tx_dma.i, align 4
  %24 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tqspi, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %25, i32 noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.cleanup_crit_edge, label %dma_map_single_attrs.exit.i.if.end11.i_crit_edge

dma_map_single_attrs.exit.i.if.end11.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

dma_map_single_attrs.exit.i.cleanup_crit_edge:    ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %dma_map_single_attrs.exit.i.if.end11.i_crit_edge, %if.then.if.end11.i_crit_edge
  %26 = ptrtoint ptr %rx_buf2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_buf2.i, align 4
  %tobool13.not.i = icmp eq ptr %27, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end2_crit_edge, label %if.then14.i

if.end11.i.if.end2_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then14.i:                                      ; preds = %if.end11.i
  %28 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tqspi, align 4
  %call.i47.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr3.i) #7
  br i1 %call.i47.i, label %land.rhs.i49.i, label %if.end39.i62.i

land.rhs.i49.i:                                   ; preds = %if.then14.i
  %.b1.i48.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i48.i, label %land.rhs.i49.i.dma_map_single_attrs.exit64.i_crit_edge, label %if.then.i53.i, !prof !174

land.rhs.i49.i.dma_map_single_attrs.exit64.i_crit_edge: ; preds = %land.rhs.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit64.i

if.then.i53.i:                                    ; preds = %land.rhs.i49.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i50.i = tail call ptr @dev_driver_string(ptr noundef %29) #7
  %init_name.i.i51.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i51.i, align 8
  %tobool.not.i.i52.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i52.i, label %if.end.i.i54.i, label %if.then.i53.i.dev_name.exit.i56.i_crit_edge

if.then.i53.i.dev_name.exit.i56.i_crit_edge:      ; preds = %if.then.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i56.i

if.end.i.i54.i:                                   ; preds = %if.then.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  br label %dev_name.exit.i56.i

dev_name.exit.i56.i:                              ; preds = %if.end.i.i54.i, %if.then.i53.i.dev_name.exit.i56.i_crit_edge
  %retval.0.i.i55.i = phi ptr [ %33, %if.end.i.i54.i ], [ %31, %if.then.i53.i.dev_name.exit.i56.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %call16.i50.i, ptr noundef %retval.0.i.i55.i) #7
  br label %dma_map_single_attrs.exit64.i

if.end39.i62.i:                                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %29, ptr noundef %add.ptr3.i, i32 noundef %div46.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %add.ptr3.i to i32
  %sub.i57.i = add i32 %35, 1073741824
  %shr.i58.i = lshr i32 %sub.i57.i, 12
  %add.ptr.i59.i = getelementptr %struct.page, ptr %34, i32 %shr.i58.i
  %and.i60.i = and i32 %35, 4095
  %call41.i61.i = tail call i32 @dma_map_page_attrs(ptr noundef %29, ptr noundef %add.ptr.i59.i, i32 noundef %and.i60.i, i32 noundef %div46.i, i32 noundef 2, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit64.i

dma_map_single_attrs.exit64.i:                    ; preds = %if.end39.i62.i, %dev_name.exit.i56.i, %land.rhs.i49.i.dma_map_single_attrs.exit64.i_crit_edge
  %retval.0.i63.i = phi i32 [ %call41.i61.i, %if.end39.i62.i ], [ -1, %dev_name.exit.i56.i ], [ -1, %land.rhs.i49.i.dma_map_single_attrs.exit64.i_crit_edge ]
  %rx_dma.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 4
  %36 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i63.i, ptr %rx_dma.i, align 4
  %37 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tqspi, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %38, i32 noundef %retval.0.i63.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i63.i)
  %cmp.i65.i = icmp eq i32 %retval.0.i63.i, -1
  br i1 %cmp.i65.i, label %if.then21.i, label %dma_map_single_attrs.exit64.i.if.end2_crit_edge

dma_map_single_attrs.exit64.i.if.end2_crit_edge:  ; preds = %dma_map_single_attrs.exit64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then21.i:                                      ; preds = %dma_map_single_attrs.exit64.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tqspi, align 4
  %tx_dma23.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 3
  %41 = ptrtoint ptr %tx_dma23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_dma23.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %42, i32 noundef %div46.i, i32 noundef 1, i32 noundef 0) #7
  br label %cleanup

if.end2:                                          ; preds = %dma_map_single_attrs.exit64.i.if.end2_crit_edge, %if.end11.i.if.end2_crit_edge, %entry.if.end2_crit_edge
  %curr_dma_words = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 12
  %43 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %curr_dma_words, align 4
  %sub = add i32 %44, 65535
  %and = and i32 %sub, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %base.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 5
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %47, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %45) #7, !srcloc !169
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i149 = getelementptr i8, ptr %52, i32 396
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i149) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %54 = and i32 %53, -63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %56, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %54) #7, !srcloc !169
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %60 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %is_packed, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool4.not = icmp eq i8 %61, 0
  %62 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %curr_dma_words, align 4
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %bytes_per_word = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 11
  %64 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bytes_per_word, align 4
  %mul = mul i32 %65, %63
  %sub7 = add i32 %mul, 3
  %div145 = and i32 %sub7, -4
  br label %if.end11

if.else:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %mul10 = shl i32 %63, 2
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  %len.0 = phi i32 [ %div145, %if.then5 ], [ %mul10, %if.else ]
  %and12 = and i32 %len.0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %66 = and i32 %len.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool17.not = icmp eq i32 %66, 0
  %. = select i1 %tobool17.not, i32 8, i32 4
  %.146 = select i1 %tobool17.not, i32 1114112, i32 557056
  %dma_burst.0 = select i1 %tobool13.not, i32 %., i32 1
  %val.0 = select i1 %tobool13.not, i32 %.146, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %67 = tail call i32 @llvm.bswap.i32(i32 %val.0) #7
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %69, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %67) #7, !srcloc !169
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %dma_control_reg = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 27
  %73 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %val.0, ptr %dma_control_reg, align 4
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 9
  %74 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %device_fc, align 4
  %cur_direction = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 13
  %75 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cur_direction, align 4
  %and24 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end11.if.end42_crit_edge, label %if.then26

if.end11.if.end42_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then26:                                        ; preds = %if.end11
  %phys = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 6
  %77 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %phys, align 4
  %add27 = add i32 %78, 264
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 2
  %79 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add27, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 4
  %80 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 6
  %81 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %dma_burst.0, ptr %dst_maxburst, align 4
  %tx_dma_chan = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 39
  %82 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tx_dma_chan, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 44
  %86 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i153 = icmp eq ptr %87, null
  br i1 %tobool.not.i153, label %if.then26.do.end_crit_edge, label %dmaengine_slave_config.exit

if.then26.do.end_crit_edge:                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

dmaengine_slave_config.exit:                      ; preds = %if.then26
  %call.i = call i32 %87(ptr noundef %83, ptr noundef nonnull %dma_sconfig) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp29 = icmp slt i32 %call.i, 0
  br i1 %cmp29, label %dmaengine_slave_config.exit.do.end_crit_edge, label %if.end32

dmaengine_slave_config.exit.do.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %dmaengine_slave_config.exit.do.end_crit_edge, %if.then26.do.end_crit_edge
  %retval.0.i155210 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.end_crit_edge ], [ -38, %if.then26.do.end_crit_edge ]
  %88 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tqspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i155210) #10
  br label %cleanup

if.end32:                                         ; preds = %dmaengine_slave_config.exit
  %90 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tqspi, align 4
  %tx_dma_phys.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 41
  %92 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_dma_phys.i, align 4
  %dma_buf_size.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 16
  %94 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_buf_size.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef 1) #7
  %96 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %is_packed, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i156 = icmp eq i8 %97, 0
  br i1 %tobool.not.i156, label %if.else.i, label %if.then.i161

if.then.i161:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %curr_dma_words, align 4
  %bytes_per_word.i158 = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 11
  %100 = ptrtoint ptr %bytes_per_word.i158 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bytes_per_word.i158, align 4
  %mul.i159 = mul i32 %101, %99
  %cur_tx_pos.i160 = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 15
  br label %tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit

if.else.i:                                        ; preds = %if.end32
  %cur_tx_pos2.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 15
  %102 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %curr_dma_words, align 4
  %bytes_per_word4.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 11
  %104 = ptrtoint ptr %bytes_per_word4.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bytes_per_word4.i, align 4
  %mul5.i = mul i32 %105, %103
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %106 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %len.i, align 4
  %cur_pos.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 9
  %108 = ptrtoint ptr %cur_pos.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cur_pos.i, align 4
  %sub.i162 = sub i32 %107, %109
  %110 = call i32 @llvm.umin.i32(i32 %mul5.i, i32 %sub.i162) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp1165.not.i = icmp eq i32 %103, 0
  br i1 %cmp1165.not.i, label %if.else.i.tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit_crit_edge, label %for.cond12.preheader.lr.ph.i

if.else.i.tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit

for.cond12.preheader.lr.ph.i:                     ; preds = %if.else.i
  %111 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %t, align 4
  %113 = ptrtoint ptr %cur_tx_pos2.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cur_tx_pos2.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %112, i32 %114
  %tx_dma_buf.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 40
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %for.end.i.for.cond12.preheader.i_crit_edge, %for.cond12.preheader.lr.ph.i
  %consume.168.i = phi i32 [ %110, %for.cond12.preheader.lr.ph.i ], [ %consume.2.lcssa.i, %for.end.i.for.cond12.preheader.i_crit_edge ]
  %count.067.i = phi i32 [ 0, %for.cond12.preheader.lr.ph.i ], [ %inc19.i, %for.end.i.for.cond12.preheader.i_crit_edge ]
  %tx_buf.066.i = phi ptr [ %add.ptr.i163, %for.cond12.preheader.lr.ph.i ], [ %tx_buf.1.lcssa.i, %for.end.i.for.cond12.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume.168.i)
  %tobool13.not55.i = icmp eq i32 %consume.168.i, 0
  br i1 %tobool13.not55.i, label %for.cond12.preheader.i.for.end.i_crit_edge, label %land.rhs.lr.ph.i

for.cond12.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %for.cond12.preheader.i
  %115 = ptrtoint ptr %bytes_per_word4.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bytes_per_word4.i, align 4
  %117 = add i32 %consume.168.i, -1
  %umin.i = call i32 @llvm.umin.i32(i32 %116, i32 %117) #7
  %uglygep.i = getelementptr i8, ptr %tx_buf.066.i, i32 %umin.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body16.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %x.059.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %or.i, %for.body16.i.land.rhs.i_crit_edge ]
  %consume.258.i = phi i32 [ %consume.168.i, %land.rhs.lr.ph.i ], [ %dec.i, %for.body16.i.land.rhs.i_crit_edge ]
  %i.057.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.body16.i.land.rhs.i_crit_edge ]
  %tx_buf.156.i = phi ptr [ %tx_buf.066.i, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %for.body16.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.057.i, i32 %116)
  %exitcond.not.i = icmp eq i32 %i.057.i, %116
  br i1 %exitcond.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body16.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body16.i:                                     ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, ptr %tx_buf.156.i, i32 1
  %118 = ptrtoint ptr %tx_buf.156.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %tx_buf.156.i, align 1
  %conv.i = zext i8 %119 to i32
  %mul17.i = shl i32 %i.057.i, 3
  %shl.i = shl i32 %conv.i, %mul17.i
  %or.i = or i32 %shl.i, %x.059.i
  %inc.i = add nuw i32 %i.057.i, 1
  %dec.i = add i32 %consume.258.i, -1
  %tobool13.not.i164 = icmp eq i32 %dec.i, 0
  br i1 %tobool13.not.i164, label %for.body16.i.for.end.i_crit_edge, label %for.body16.i.land.rhs.i_crit_edge

for.body16.i.land.rhs.i_crit_edge:                ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.body16.i.for.end.i_crit_edge:                 ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body16.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %for.cond12.preheader.i.for.end.i_crit_edge
  %tx_buf.1.lcssa.i = phi ptr [ %tx_buf.066.i, %for.cond12.preheader.i.for.end.i_crit_edge ], [ %uglygep.i, %land.rhs.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body16.i.for.end.i_crit_edge ]
  %consume.2.lcssa.i = phi i32 [ 0, %for.cond12.preheader.i.for.end.i_crit_edge ], [ %consume.258.i, %land.rhs.i.for.end.i_crit_edge ], [ 0, %for.body16.i.for.end.i_crit_edge ]
  %x.0.lcssa.i = phi i32 [ 0, %for.cond12.preheader.i.for.end.i_crit_edge ], [ %x.059.i, %land.rhs.i.for.end.i_crit_edge ], [ %or.i, %for.body16.i.for.end.i_crit_edge ]
  %120 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tx_dma_buf.i, align 4
  %arrayidx.i = getelementptr i32, ptr %121, i32 %count.067.i
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %x.0.lcssa.i, ptr %arrayidx.i, align 4
  %inc19.i = add nuw i32 %count.067.i, 1
  %123 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %curr_dma_words, align 4
  %cmp11.i = icmp ult i32 %inc19.i, %124
  br i1 %cmp11.i, label %for.end.i.for.cond12.preheader.i_crit_edge, label %for.end.i.tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit_crit_edge

for.end.i.tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit

for.end.i.for.cond12.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond12.preheader.i

tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit:  ; preds = %for.end.i.tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit_crit_edge, %if.else.i.tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit_crit_edge, %if.then.i161
  %cur_tx_pos2.sink70.i = phi ptr [ %cur_tx_pos.i160, %if.then.i161 ], [ %cur_tx_pos2.i, %if.else.i.tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit_crit_edge ], [ %cur_tx_pos2.i, %for.end.i.tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit_crit_edge ]
  %.sink69.i = phi i32 [ %mul.i159, %if.then.i161 ], [ %110, %if.else.i.tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit_crit_edge ], [ %110, %for.end.i.tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit_crit_edge ]
  %125 = ptrtoint ptr %cur_tx_pos2.sink70.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cur_tx_pos2.sink70.i, align 4
  %add22.i = add i32 %126, %.sink69.i
  store i32 %add22.i, ptr %cur_tx_pos2.sink70.i, align 4
  %127 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tqspi, align 4
  %129 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tx_dma_phys.i, align 4
  %131 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma_buf_size.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %128, i32 noundef %130, i32 noundef %132, i32 noundef 1) #7
  %tx_dma_complete.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 20
  %133 = ptrtoint ptr %tx_dma_complete.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %tx_dma_complete.i, align 4
  %134 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %is_packed, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i166 = icmp eq i8 %135, 0
  %tx_dma.i167 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 3
  %tx_dma_phys.0.in.i = select i1 %tobool.not.i166, ptr %tx_dma_phys.i, ptr %tx_dma.i167
  %136 = ptrtoint ptr %tx_dma_phys.0.in.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %tx_dma_phys.0.i = load i32, ptr %tx_dma_phys.0.in.i, align 4
  %137 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tx_dma_chan, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #7
  %139 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %140 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %141 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #7
  %142 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %tx_dma_phys.0.i, ptr %139, align 4
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %len.0, ptr %140, align 4
  %tobool.not.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i, label %tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit
  %144 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %138, align 4
  %tobool1.not.i.i = icmp eq ptr %145, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %145, i32 0, i32 39
  %146 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %147, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %tegra_qspi_copy_client_txbuf_to_qspi_txbuf.exit.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  %tx_dma_desc25.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 42
  %148 = ptrtoint ptr %tx_dma_desc25.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %tx_dma_desc25.i, align 4
  br label %do.end39

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i168 = call ptr %147(ptr noundef nonnull %138, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  %tx_dma_desc.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 42
  %149 = ptrtoint ptr %tx_dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call.i.i168, ptr %tx_dma_desc.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i.i168, null
  br i1 %tobool3.not.i, label %dmaengine_prep_slave_single.exit.i.do.end39_crit_edge, label %tegra_qspi_start_tx_dma.exit

dmaengine_prep_slave_single.exit.i.do.end39_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

tegra_qspi_start_tx_dma.exit:                     ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i168, i32 0, i32 6
  %150 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @tegra_qspi_dma_complete, ptr %callback.i, align 4
  %151 = ptrtoint ptr %tx_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tx_dma_desc.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %152, i32 0, i32 8
  %153 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %tx_dma_complete.i, ptr %callback_param.i, align 4
  %154 = load ptr, ptr %tx_dma_desc.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i23.i = call i32 %156(ptr noundef %154) #7
  %157 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tx_dma_chan, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %160, i32 0, i32 50
  %161 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %162(ptr noundef %158) #7
  br label %if.end42

do.end39:                                         ; preds = %dmaengine_prep_slave_single.exit.i.do.end39_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %163 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tqspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.41) #10
  %165 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tqspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.32, i32 noundef -5) #10
  br label %cleanup

if.end42:                                         ; preds = %tegra_qspi_start_tx_dma.exit, %if.end11.if.end42_crit_edge
  %167 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cur_direction, align 4
  %and44 = and i32 %168, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end76_crit_edge, label %if.then46

if.end42.if.end76_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then46:                                        ; preds = %if.end42
  %phys47 = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 6
  %169 = ptrtoint ptr %phys47 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %phys47, align 4
  %add48 = add i32 %170, 392
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 1
  %171 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %add48, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 3
  %172 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 4, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 5
  %173 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %dma_burst.0, ptr %src_maxburst, align 4
  %rx_dma_chan = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 35
  %174 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rx_dma_chan, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %device_config.i170 = getelementptr inbounds %struct.dma_device, ptr %177, i32 0, i32 44
  %178 = ptrtoint ptr %device_config.i170 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %device_config.i170, align 4
  %tobool.not.i171 = icmp eq ptr %179, null
  br i1 %tobool.not.i171, label %if.then46.do.end56_crit_edge, label %dmaengine_slave_config.exit175

if.then46.do.end56_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

dmaengine_slave_config.exit175:                   ; preds = %if.then46
  %call.i172 = call i32 %179(ptr noundef %175, ptr noundef nonnull %dma_sconfig) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %cmp51 = icmp slt i32 %call.i172, 0
  br i1 %cmp51, label %dmaengine_slave_config.exit175.do.end56_crit_edge, label %if.end58

dmaengine_slave_config.exit175.do.end56_crit_edge: ; preds = %dmaengine_slave_config.exit175
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

do.end56:                                         ; preds = %dmaengine_slave_config.exit175.do.end56_crit_edge, %if.then46.do.end56_crit_edge
  %retval.0.i174216 = phi i32 [ %call.i172, %dmaengine_slave_config.exit175.do.end56_crit_edge ], [ -38, %if.then46.do.end56_crit_edge ]
  %180 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %tqspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i174216) #10
  br label %cleanup

if.end58:                                         ; preds = %dmaengine_slave_config.exit175
  %182 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %tqspi, align 4
  %rx_dma_phys = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 37
  %184 = ptrtoint ptr %rx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %rx_dma_phys, align 4
  %dma_buf_size = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 16
  %186 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %dma_buf_size, align 4
  call void @dma_sync_single_for_device(ptr noundef %183, i32 noundef %185, i32 noundef %187, i32 noundef 2) #7
  %rx_dma_complete.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 19
  %188 = ptrtoint ptr %rx_dma_complete.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %rx_dma_complete.i, align 4
  %189 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %is_packed, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i178 = icmp eq i8 %190, 0
  %rx_dma.i179 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 4
  %rx_dma_phys.0.in.i = select i1 %tobool.not.i178, ptr %rx_dma_phys, ptr %rx_dma.i179
  %191 = ptrtoint ptr %rx_dma_phys.0.in.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %rx_dma_phys.0.i = load i32, ptr %rx_dma_phys.0.in.i, align 4
  %192 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rx_dma_chan, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i176) #7
  %194 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i176, i32 0, i32 3
  %195 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i176, i32 0, i32 4
  %196 = call ptr @memset(ptr %sg.i.i176, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i176, i32 noundef 1) #7
  %197 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %rx_dma_phys.0.i, ptr %194, align 4
  %198 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %len.0, ptr %195, align 4
  %tobool.not.i.i180 = icmp eq ptr %193, null
  br i1 %tobool.not.i.i180, label %if.end58.dmaengine_prep_slave_single.exit.thread.i186_crit_edge, label %lor.lhs.false.i.i182

if.end58.dmaengine_prep_slave_single.exit.thread.i186_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i186

lor.lhs.false.i.i182:                             ; preds = %if.end58
  %199 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %193, align 4
  %tobool1.not.i.i181 = icmp eq ptr %200, null
  br i1 %tobool1.not.i.i181, label %lor.lhs.false.i.i182.dmaengine_prep_slave_single.exit.thread.i186_crit_edge, label %lor.lhs.false2.i.i185

lor.lhs.false.i.i182.dmaengine_prep_slave_single.exit.thread.i186_crit_edge: ; preds = %lor.lhs.false.i.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i186

lor.lhs.false2.i.i185:                            ; preds = %lor.lhs.false.i.i182
  %device_prep_slave_sg.i.i183 = getelementptr inbounds %struct.dma_device, ptr %200, i32 0, i32 39
  %201 = ptrtoint ptr %device_prep_slave_sg.i.i183 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %device_prep_slave_sg.i.i183, align 4
  %tobool4.not.i.i184 = icmp eq ptr %202, null
  br i1 %tobool4.not.i.i184, label %lor.lhs.false2.i.i185.dmaengine_prep_slave_single.exit.thread.i186_crit_edge, label %dmaengine_prep_slave_single.exit.i189

lor.lhs.false2.i.i185.dmaengine_prep_slave_single.exit.thread.i186_crit_edge: ; preds = %lor.lhs.false2.i.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i186

dmaengine_prep_slave_single.exit.thread.i186:     ; preds = %lor.lhs.false2.i.i185.dmaengine_prep_slave_single.exit.thread.i186_crit_edge, %lor.lhs.false.i.i182.dmaengine_prep_slave_single.exit.thread.i186_crit_edge, %if.end58.dmaengine_prep_slave_single.exit.thread.i186_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i176) #7
  %rx_dma_desc25.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 38
  %203 = ptrtoint ptr %rx_dma_desc25.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %rx_dma_desc25.i, align 4
  br label %do.end66

dmaengine_prep_slave_single.exit.i189:            ; preds = %lor.lhs.false2.i.i185
  %call.i.i187 = call ptr %202(ptr noundef nonnull %193, ptr noundef nonnull %sg.i.i176, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i176) #7
  %rx_dma_desc.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 38
  %204 = ptrtoint ptr %rx_dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call.i.i187, ptr %rx_dma_desc.i, align 4
  %tobool3.not.i188 = icmp eq ptr %call.i.i187, null
  br i1 %tobool3.not.i188, label %dmaengine_prep_slave_single.exit.i189.do.end66_crit_edge, label %tegra_qspi_start_rx_dma.exit

dmaengine_prep_slave_single.exit.i189.do.end66_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

tegra_qspi_start_rx_dma.exit:                     ; preds = %dmaengine_prep_slave_single.exit.i189
  call void @__sanitizer_cov_trace_pc() #9
  %callback.i191 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i187, i32 0, i32 6
  %205 = ptrtoint ptr %callback.i191 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr @tegra_qspi_dma_complete, ptr %callback.i191, align 4
  %206 = ptrtoint ptr %rx_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rx_dma_desc.i, align 4
  %callback_param.i192 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %207, i32 0, i32 8
  %208 = ptrtoint ptr %callback_param.i192 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %rx_dma_complete.i, ptr %callback_param.i192, align 4
  %209 = load ptr, ptr %rx_dma_desc.i, align 4
  %tx_submit.i.i193 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %209, i32 0, i32 4
  %210 = ptrtoint ptr %tx_submit.i.i193 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %tx_submit.i.i193, align 4
  %call.i23.i194 = call i32 %211(ptr noundef %209) #7
  %212 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rx_dma_chan, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %device_issue_pending.i.i195 = getelementptr inbounds %struct.dma_device, ptr %215, i32 0, i32 50
  %216 = ptrtoint ptr %device_issue_pending.i.i195 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %device_issue_pending.i.i195, align 4
  call void %217(ptr noundef %213) #7
  br label %if.end76

do.end66:                                         ; preds = %dmaengine_prep_slave_single.exit.i189.do.end66_crit_edge, %dmaengine_prep_slave_single.exit.thread.i186
  %218 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %tqspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.43) #10
  %220 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %tqspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.37, i32 noundef -5) #10
  %222 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %cur_direction, align 4
  %and69 = and i32 %223, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.end66.cleanup_crit_edge, label %if.then71

do.end66.cleanup_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then71:                                        ; preds = %do.end66
  %tx_dma_chan72 = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 39
  %224 = ptrtoint ptr %tx_dma_chan72 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %tx_dma_chan72, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %227, i32 0, i32 47
  %228 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i198 = icmp eq ptr %229, null
  br i1 %tobool.not.i198, label %if.then71.cleanup_crit_edge, label %if.then.i200

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i200:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  %call.i199 = call i32 %229(ptr noundef %225) #7
  br label %cleanup

if.end76:                                         ; preds = %tegra_qspi_start_rx_dma.exit, %if.end42.if.end76_crit_edge
  %command1_reg = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 26
  %230 = ptrtoint ptr %command1_reg to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %command1_reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  %232 = call i32 @llvm.bswap.i32(i32 %231) #7
  %233 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %232) #7, !srcloc !169
  %235 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base.i, align 4
  %237 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #7, !srcloc !170
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 18
  %238 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 1, ptr %is_curr_dma_xfer, align 4
  %239 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %val.0, ptr %dma_control_reg, align 4
  %or78 = or i32 %val.0, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  %240 = call i32 @llvm.bswap.i32(i32 %or78) #7
  %241 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %base.i, align 4
  %add.ptr.i204 = getelementptr i8, ptr %242, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 %240) #7, !srcloc !169
  %243 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %base.i, align 4
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #7, !srcloc !170
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then.i200, %if.then71.cleanup_crit_edge, %do.end66.cleanup_crit_edge, %do.end56, %do.end39, %do.end, %if.then21.i, %dma_map_single_attrs.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i155210, %do.end ], [ -5, %do.end39 ], [ %retval.0.i174216, %do.end56 ], [ 0, %if.end76 ], [ -5, %do.end66.cleanup_crit_edge ], [ -5, %if.then71.cleanup_crit_edge ], [ -5, %if.then.i200 ], [ -12, %if.then21.i ], [ -12, %dma_map_single_attrs.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_sconfig) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_qspi_start_cpu_based_transfer(ptr nocapture noundef %qspi, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_direction = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 13
  %0 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_direction, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t, align 4
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 15
  %4 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tx_pos.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %base.i.i = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 5
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %9 = lshr i32 %8, 8
  %and.i = and i32 %9, 127
  %is_packed.i = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 24
  %10 = ptrtoint ptr %is_packed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_packed.i, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %words_per_32bit.i = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 10
  %12 = ptrtoint ptr %words_per_32bit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %words_per_32bit.i, align 4
  %mul.i = mul i32 %13, %and.i
  %curr_dma_words.i = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 12
  %14 = ptrtoint ptr %curr_dma_words.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %curr_dma_words.i, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %15) #7
  %bytes_per_word.i = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 11
  %17 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytes_per_word.i, align 4
  %mul2.i = mul i32 %16, %18
  %sub.i = add i32 %mul2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp3124.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp3124.not.i, label %if.then.i.for.end11.i_crit_edge, label %for.cond4.preheader.preheader.i

if.then.i.for.end11.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end11.i

for.cond4.preheader.preheader.i:                  ; preds = %if.then.i
  %div110.i = lshr i32 %sub.i, 2
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.end.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.preheader.i
  %count.0127.i = phi i32 [ %inc10.i, %for.end.i.for.cond4.preheader.i_crit_edge ], [ 0, %for.cond4.preheader.preheader.i ]
  %tx_buf.0126.i = phi ptr [ %tx_buf.1.lcssa.i, %for.end.i.for.cond4.preheader.i_crit_edge ], [ %add.ptr.i, %for.cond4.preheader.preheader.i ]
  %len.0125.i = phi i32 [ %len.1.lcssa.i, %for.end.i.for.cond4.preheader.i_crit_edge ], [ %mul2.i, %for.cond4.preheader.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0125.i)
  %tobool6.not116.i = icmp eq i32 %len.0125.i, 0
  br i1 %tobool6.not116.i, label %for.cond4.preheader.i.for.end.i_crit_edge, label %for.body7.preheader.i

for.cond4.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body7.preheader.i:                            ; preds = %for.cond4.preheader.i
  %19 = add i32 %len.0125.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %19, i32 3) #7
  %uglygep = getelementptr i8, ptr %tx_buf.0126.i, i32 1
  %uglygep7 = getelementptr i8, ptr %uglygep, i32 %umin.i
  %20 = ptrtoint ptr %tx_buf.0126.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_buf.0126.i, align 1
  %conv.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin.i)
  %exitcond.i = icmp eq i32 %umin.i, 0
  br i1 %exitcond.i, label %for.body7.preheader.i.for.end.i.loopexit_crit_edge, label %for.body7.i.1

for.body7.preheader.i.for.end.i.loopexit_crit_edge: ; preds = %for.body7.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.loopexit

for.body7.i.1:                                    ; preds = %for.body7.preheader.i
  %incdec.ptr.i = getelementptr i8, ptr %tx_buf.0126.i, i32 1
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.i, align 1
  %conv.i.1 = zext i8 %23 to i32
  %shl.i.1 = shl nuw nsw i32 %conv.i.1, 8
  %or.i.1 = or i32 %shl.i.1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin.i)
  %exitcond.i.1 = icmp eq i32 %umin.i, 1
  br i1 %exitcond.i.1, label %for.body7.i.1.for.end.i.loopexit_crit_edge, label %for.body7.i.2

for.body7.i.1.for.end.i.loopexit_crit_edge:       ; preds = %for.body7.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.loopexit

for.body7.i.2:                                    ; preds = %for.body7.i.1
  %incdec.ptr.i.1 = getelementptr i8, ptr %tx_buf.0126.i, i32 2
  %24 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.i.1, align 1
  %conv.i.2 = zext i8 %25 to i32
  %shl.i.2 = shl nuw nsw i32 %conv.i.2, 16
  %or.i.2 = or i32 %shl.i.2, %or.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin.i)
  %exitcond.i.2 = icmp eq i32 %umin.i, 2
  br i1 %exitcond.i.2, label %for.body7.i.2.for.end.i.loopexit_crit_edge, label %for.body7.i.3

for.body7.i.2.for.end.i.loopexit_crit_edge:       ; preds = %for.body7.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.loopexit

for.body7.i.3:                                    ; preds = %for.body7.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.2 = getelementptr i8, ptr %tx_buf.0126.i, i32 3
  %26 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.i.2, align 1
  %conv.i.3 = zext i8 %27 to i32
  %shl.i.3 = shl nuw i32 %conv.i.3, 24
  %or.i.3 = or i32 %shl.i.3, %or.i.2
  br label %for.end.i.loopexit

for.end.i.loopexit:                               ; preds = %for.body7.i.3, %for.body7.i.2.for.end.i.loopexit_crit_edge, %for.body7.i.1.for.end.i.loopexit_crit_edge, %for.body7.preheader.i.for.end.i.loopexit_crit_edge
  %or.i.lcssa = phi i32 [ %conv.i, %for.body7.preheader.i.for.end.i.loopexit_crit_edge ], [ %or.i.1, %for.body7.i.1.for.end.i.loopexit_crit_edge ], [ %or.i.2, %for.body7.i.2.for.end.i.loopexit_crit_edge ], [ %or.i.3, %for.body7.i.3 ]
  %28 = sub i32 %19, %umin.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond4.preheader.i.for.end.i_crit_edge
  %len.1.lcssa.i = phi i32 [ 0, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %28, %for.end.i.loopexit ]
  %tx_buf.1.lcssa.i = phi ptr [ %tx_buf.0126.i, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %uglygep7, %for.end.i.loopexit ]
  %x.0.lcssa.i = phi i32 [ 0, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %or.i.lcssa, %for.end.i.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %x.0.lcssa.i) #7
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %31, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %29) #7, !srcloc !169
  %inc10.i = add nuw nsw i32 %count.0127.i, 1
  %exitcond142.not.i = icmp eq i32 %inc10.i, %div110.i
  br i1 %exitcond142.not.i, label %for.end.i.for.end11.i_crit_edge, label %for.end.i.for.cond4.preheader.i_crit_edge

for.end.i.for.cond4.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond4.preheader.i

for.end.i.for.end11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end11.i

for.end11.i:                                      ; preds = %for.end.i.for.end11.i_crit_edge, %if.then.i.for.end11.i_crit_edge
  %32 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes_per_word.i, align 4
  %mul13.i = mul i32 %33, %16
  br label %tegra_qspi_fill_tx_fifo_from_client_txbuf.exit

if.else.i:                                        ; preds = %if.then
  %bytes_per_word17.i = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 11
  %34 = ptrtoint ptr %bytes_per_word17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytes_per_word17.i, align 4
  %curr_dma_words19.i = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 12
  %36 = ptrtoint ptr %curr_dma_words19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %curr_dma_words19.i, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %and.i) #7
  %mul28.i = mul i32 %38, %35
  %len29.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %39 = ptrtoint ptr %len29.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len29.i, align 4
  %cur_pos.i = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 9
  %41 = ptrtoint ptr %cur_pos.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_pos.i, align 4
  %sub30.i = sub i32 %40, %42
  %43 = tail call i32 @llvm.umin.i32(i32 %mul28.i, i32 %sub30.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp38138.not.i = icmp eq i32 %38, 0
  br i1 %cmp38138.not.i, label %if.else.i.tegra_qspi_fill_tx_fifo_from_client_txbuf.exit_crit_edge, label %for.cond42.preheader.lr.ph.i

if.else.i.tegra_qspi_fill_tx_fifo_from_client_txbuf.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_qspi_fill_tx_fifo_from_client_txbuf.exit

for.cond42.preheader.lr.ph.i:                     ; preds = %if.else.i
  %conv45.i = and i32 %35, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv45.i)
  %cmp46129.i = icmp ne i32 %conv45.i, 0
  br label %for.cond42.preheader.i

for.cond42.preheader.i:                           ; preds = %for.end58.i.for.cond42.preheader.i_crit_edge, %for.cond42.preheader.lr.ph.i
  %count.1141.i = phi i32 [ 0, %for.cond42.preheader.lr.ph.i ], [ %inc60.i, %for.end58.i.for.cond42.preheader.i_crit_edge ]
  %tx_buf.2140.i = phi ptr [ %add.ptr.i, %for.cond42.preheader.lr.ph.i ], [ %tx_buf.3.lcssa.i, %for.end58.i.for.cond42.preheader.i_crit_edge ]
  %len.3139.i = phi i32 [ %43, %for.cond42.preheader.lr.ph.i ], [ %len.4.lcssa.i, %for.end58.i.for.cond42.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.3139.i)
  %tobool43.not128.i = icmp ne i32 %len.3139.i, 0
  %or.cond111130.i = select i1 %tobool43.not128.i, i1 %cmp46129.i, i1 false
  br i1 %or.cond111130.i, label %for.cond42.preheader.i.for.body49.i_crit_edge, label %for.cond42.preheader.i.for.end58.i_crit_edge

for.cond42.preheader.i.for.end58.i_crit_edge:     ; preds = %for.cond42.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end58.i

for.cond42.preheader.i.for.body49.i_crit_edge:    ; preds = %for.cond42.preheader.i
  br label %for.body49.i

for.body49.i:                                     ; preds = %for.body49.i.for.body49.i_crit_edge, %for.cond42.preheader.i.for.body49.i_crit_edge
  %x41.0134.i = phi i32 [ %or54.i, %for.body49.i.for.body49.i_crit_edge ], [ 0, %for.cond42.preheader.i.for.body49.i_crit_edge ]
  %tx_buf.3133.i = phi ptr [ %incdec.ptr50.i, %for.body49.i.for.body49.i_crit_edge ], [ %tx_buf.2140.i, %for.cond42.preheader.i.for.body49.i_crit_edge ]
  %i.1132.i = phi i32 [ %inc56.i, %for.body49.i.for.body49.i_crit_edge ], [ 0, %for.cond42.preheader.i.for.body49.i_crit_edge ]
  %len.4131.i = phi i32 [ %dec57.i, %for.body49.i.for.body49.i_crit_edge ], [ %len.3139.i, %for.cond42.preheader.i.for.body49.i_crit_edge ]
  %incdec.ptr50.i = getelementptr i8, ptr %tx_buf.3133.i, i32 1
  %44 = ptrtoint ptr %tx_buf.3133.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_buf.3133.i, align 1
  %conv51.i = zext i8 %45 to i32
  %mul52.i = shl i32 %i.1132.i, 3
  %shl53.i = shl i32 %conv51.i, %mul52.i
  %or54.i = or i32 %shl53.i, %x41.0134.i
  %inc56.i = add nuw nsw i32 %i.1132.i, 1
  %dec57.i = add i32 %len.4131.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec57.i)
  %tobool43.not.i = icmp ne i32 %dec57.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc56.i, i32 %conv45.i)
  %cmp46.i = icmp ult i32 %inc56.i, %conv45.i
  %or.cond111.i = select i1 %tobool43.not.i, i1 %cmp46.i, i1 false
  br i1 %or.cond111.i, label %for.body49.i.for.body49.i_crit_edge, label %for.body49.i.for.end58.i_crit_edge

for.body49.i.for.end58.i_crit_edge:               ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end58.i

for.body49.i.for.body49.i_crit_edge:              ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49.i

for.end58.i:                                      ; preds = %for.body49.i.for.end58.i_crit_edge, %for.cond42.preheader.i.for.end58.i_crit_edge
  %len.4.lcssa.i = phi i32 [ %len.3139.i, %for.cond42.preheader.i.for.end58.i_crit_edge ], [ %dec57.i, %for.body49.i.for.end58.i_crit_edge ]
  %tx_buf.3.lcssa.i = phi ptr [ %tx_buf.2140.i, %for.cond42.preheader.i.for.end58.i_crit_edge ], [ %incdec.ptr50.i, %for.body49.i.for.end58.i_crit_edge ]
  %x41.0.lcssa.i = phi i32 [ 0, %for.cond42.preheader.i.for.end58.i_crit_edge ], [ %or54.i, %for.body49.i.for.end58.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %x41.0.lcssa.i) #7
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %48, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %46) #7, !srcloc !169
  %inc60.i = add nuw nsw i32 %count.1141.i, 1
  %exitcond143.not.i = icmp eq i32 %inc60.i, %38
  br i1 %exitcond143.not.i, label %for.end58.i.tegra_qspi_fill_tx_fifo_from_client_txbuf.exit_crit_edge, label %for.end58.i.for.cond42.preheader.i_crit_edge

for.end58.i.for.cond42.preheader.i_crit_edge:     ; preds = %for.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond42.preheader.i

for.end58.i.tegra_qspi_fill_tx_fifo_from_client_txbuf.exit_crit_edge: ; preds = %for.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_qspi_fill_tx_fifo_from_client_txbuf.exit

tegra_qspi_fill_tx_fifo_from_client_txbuf.exit:   ; preds = %for.end58.i.tegra_qspi_fill_tx_fifo_from_client_txbuf.exit_crit_edge, %if.else.i.tegra_qspi_fill_tx_fifo_from_client_txbuf.exit_crit_edge, %for.end11.i
  %.sink144.i = phi i32 [ %mul13.i, %for.end11.i ], [ %43, %if.else.i.tegra_qspi_fill_tx_fifo_from_client_txbuf.exit_crit_edge ], [ %43, %for.end58.i.tegra_qspi_fill_tx_fifo_from_client_txbuf.exit_crit_edge ]
  %written_words.0.i = phi i32 [ %16, %for.end11.i ], [ 0, %if.else.i.tegra_qspi_fill_tx_fifo_from_client_txbuf.exit_crit_edge ], [ %38, %for.end58.i.tegra_qspi_fill_tx_fifo_from_client_txbuf.exit_crit_edge ]
  %49 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cur_tx_pos.i, align 4
  %add63.i = add i32 %50, %.sink144.i
  store i32 %add63.i, ptr %cur_tx_pos.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %curr_dma_words = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 12
  %51 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %curr_dma_words, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %tegra_qspi_fill_tx_fifo_from_client_txbuf.exit
  %cur_words.0 = phi i32 [ %written_words.0.i, %tegra_qspi_fill_tx_fifo_from_client_txbuf.exit ], [ %52, %if.else ]
  %sub = add i32 %cur_words.0, 65535
  %and1 = and i32 %sub, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %53 = tail call i32 @llvm.bswap.i32(i32 %and1) #7
  %base.i = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 5
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i1 = getelementptr i8, ptr %55, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %53) #7, !srcloc !169
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %60, i32 396
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %62 = and i32 %61, -63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %64, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %62) #7, !srcloc !169
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 18
  %68 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %is_curr_dma_xfer, align 4
  %command1_reg = getelementptr inbounds %struct.tegra_qspi, ptr %qspi, i32 0, i32 26
  %69 = ptrtoint ptr %command1_reg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %command1_reg, align 4
  %or = or i32 %70, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #7, !srcloc !169
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_qspi_dma_complete(ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %args) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_qspi_dump_regs(ptr nocapture noundef readonly %tqspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_qspi_dump_regs, %do.body4)) #7
          to label %if.then [label %do.body4], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tqspi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug247, ptr noundef %1, ptr noundef nonnull @.str.49) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_qspi_dump_regs, %do.body24)) #7
          to label %if.then18 [label %do.body24], !srcloc !175

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tqspi, align 4
  %base.i = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 5
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !170
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !170
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug248, ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef %7, i32 noundef %11) #7
  br label %do.body24

do.body24:                                        ; preds = %if.then18, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_qspi_dump_regs, %do.body44)) #7
          to label %if.then38 [label %do.body44], !srcloc !175

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tqspi, align 4
  %base.i109 = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 5
  %14 = ptrtoint ptr %base.i109 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i109, align 4
  %add.ptr.i110 = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #7, !srcloc !170
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %18 = ptrtoint ptr %base.i109 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i109, align 4
  %add.ptr.i112 = getelementptr i8, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #7, !srcloc !170
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug249, ptr noundef %13, ptr noundef nonnull @.str.51, i32 noundef %17, i32 noundef %21) #7
  br label %do.body44

do.body44:                                        ; preds = %if.then38, %do.body24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_qspi_dump_regs, %do.body64)) #7
          to label %if.then58 [label %do.body64], !srcloc !175

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tqspi, align 4
  %base.i113 = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 5
  %24 = ptrtoint ptr %base.i113 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i113, align 4
  %add.ptr.i114 = getelementptr i8, ptr %25, i32 396
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #7, !srcloc !170
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %28 = ptrtoint ptr %base.i113 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i113, align 4
  %add.ptr.i116 = getelementptr i8, ptr %29, i32 404
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #7, !srcloc !170
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug250, ptr noundef %23, ptr noundef nonnull @.str.52, i32 noundef %27, i32 noundef %31) #7
  br label %do.body64

do.body64:                                        ; preds = %if.then58, %do.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_qspi_dump_regs, %do.end83)) #7
          to label %if.then78 [label %do.end83], !srcloc !175

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %tqspi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tqspi, align 4
  %base.i117 = getelementptr inbounds %struct.tegra_qspi, ptr %tqspi, i32 0, i32 5
  %34 = ptrtoint ptr %base.i117 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i117, align 4
  %add.ptr.i118 = getelementptr i8, ptr %35, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #7, !srcloc !170
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %38 = ptrtoint ptr %base.i117 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i117, align 4
  %add.ptr.i120 = getelementptr i8, ptr %39, i32 20
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #7, !srcloc !170
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug251, ptr noundef %33, ptr noundef nonnull @.str.53, i32 noundef %37, i32 noundef %41) #7
  br label %do.end83

do.end83:                                         ; preds = %if.then78, %do.body64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_qspi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_qspi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !166
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !167
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %command1_reg = getelementptr inbounds %struct.tegra_qspi, ptr %3, i32 0, i32 26
  %5 = ptrtoint ptr %command1_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %command1_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %base.i = getelementptr inbounds %struct.tegra_qspi, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !169
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %def_command2_reg = getelementptr inbounds %struct.tegra_qspi, ptr %3, i32 0, i32 29
  %13 = ptrtoint ptr %def_command2_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %def_command2_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #7, !srcloc !169
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %call.i19 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  %call4 = tail call i32 @spi_controller_resume(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_qspi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.tegra_qspi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %clk = getelementptr inbounds %struct.tegra_qspi, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_qspi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.tegra_qspi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.68, i32 noundef %retval.0.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i9 = phi i32 [ %retval.0.i, %do.end ], [ %retval.0.i, %clk_prepare_enable.exit.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !145, !147, !148, !149, !151, !152, !153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__initcall__kmod_spi_tegra210_quad__252_1396_tegra_qspi_driver_init6, !1, !"__initcall__kmod_spi_tegra210_quad__252_1396_tegra_qspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1396, i32 1}
!2 = !{ptr @__exitcall_tegra_qspi_driver_exit, !1, !"__exitcall_tegra_qspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias253, !4, !"__UNIQUE_ID_alias253", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1398, i32 1}
!5 = !{ptr @__UNIQUE_ID_description254, !6, !"__UNIQUE_ID_description254", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1399, i32 1}
!7 = !{ptr @__UNIQUE_ID_author255, !8, !"__UNIQUE_ID_author255", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1400, i32 1}
!9 = !{ptr @__UNIQUE_ID_file256, !10, !"__UNIQUE_ID_file256", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1401, i32 1}
!11 = !{ptr @__UNIQUE_ID_license257, !10, !"__UNIQUE_ID_license257", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1389, i32 12}
!14 = !{ptr @tegra_qspi_driver, !15, !"tegra_qspi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1387, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1228, i32 47}
!18 = !{ptr @tegra_qspi_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1234, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1245, i32 40}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1248, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tegra_qspi_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_qspi_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1255, i32 3}
!33 = !{ptr @tegra_qspi_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra_qspi_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1276, i32 3}
!37 = !{ptr @tegra_qspi_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @tegra_qspi_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1296, i32 3}
!41 = !{ptr @tegra_qspi_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tegra_qspi_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1303, i32 3}
!45 = !{ptr @tegra_qspi_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tegra_qspi_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 901, i32 3}
!49 = !{ptr @tegra_qspi_setup._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tegra_qspi_setup._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 884, i32 33}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 886, i32 33}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1015, i32 4}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tegra_qspi_transfer_one_message._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tegra_qspi_transfer_one_message._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1023, i32 4}
!62 = !{ptr @tegra_qspi_transfer_one_message._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tegra_qspi_transfer_one_message._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 611, i32 4}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @tegra_qspi_start_dma_based_transfer._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @tegra_qspi_start_dma_based_transfer._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 618, i32 4}
!71 = !{ptr @tegra_qspi_start_dma_based_transfer._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @tegra_qspi_start_dma_based_transfer._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @tegra_qspi_start_dma_based_transfer._entry.34, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 629, i32 4}
!75 = !{ptr @tegra_qspi_start_dma_based_transfer._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 639, i32 4}
!78 = !{ptr @tegra_qspi_start_dma_based_transfer._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @tegra_qspi_start_dma_based_transfer._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 458, i32 3}
!86 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @tegra_qspi_start_tx_dma._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @tegra_qspi_start_tx_dma._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 486, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tegra_qspi_start_rx_dma._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @tegra_qspi_start_rx_dma._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 948, i32 2}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tegra_qspi_handle_error._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @tegra_qspi_handle_error._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 931, i32 2}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug247, !100, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 932, i32 2}
!106 = !{ptr @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug248, !105, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 935, i32 2}
!109 = !{ptr @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug249, !108, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 938, i32 2}
!112 = !{ptr @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug250, !111, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 941, i32 2}
!115 = !{ptr @tegra_qspi_dump_regs.__UNIQUE_ID_ddebug251, !114, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 711, i32 42}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 728, i32 42}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 752, i32 3}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @tegra_qspi_init_dma._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @tegra_qspi_init_dma._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 753, i32 3}
!127 = !{ptr @tegra_qspi_init_dma._entry.58, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @tegra_qspi_init_dma._entry_ptr.60, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @init_completion.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../include/linux/completion.h", i32 87, i32 2}
!131 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1118, i32 5}
!134 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @handle_dma_based_xfer._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @handle_dma_based_xfer._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1133, i32 5}
!139 = !{ptr @handle_dma_based_xfer._entry.64, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @handle_dma_based_xfer._entry_ptr.66, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @tegra_qspi_of_match, !142, !"tegra_qspi_of_match", i1 false, i1 false}
!142 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1196, i32 34}
!143 = !{ptr @tegra_qspi_pm_ops, !144, !"tegra_qspi_pm_ops", i1 false, i1 false}
!144 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1382, i32 32}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1345, i32 3}
!147 = !{ptr @tegra_qspi_resume._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @tegra_qspi_resume._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/spi/spi-tegra210-quad.c", i32 1377, i32 3}
!151 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @tegra_qspi_runtime_resume._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @tegra_qspi_runtime_resume._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{!"auto-init"}
!164 = !{i8 0, i8 2}
!165 = !{i64 2148276264}
!166 = !{i64 761087, i64 761112, i64 761134, i64 761150, i64 761162, i64 761182, i64 761206, i64 761222, i64 761234}
!167 = !{i64 2148276452}
!168 = !{i64 2154585146}
!169 = !{i64 6343250}
!170 = !{i64 6343668}
!171 = !{i64 2154585836}
!172 = !{i64 2154584758}
!173 = !{!"branch_weights", i32 1, i32 2000}
!174 = !{!"branch_weights", i32 2000, i32 1}
!175 = !{i64 2148758660, i64 2148758665, i64 2148758678, i64 2148758722, i64 2148758756, i64 2148758777}
