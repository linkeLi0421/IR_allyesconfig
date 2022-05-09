; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-tegra20-slink.c_pt.bc'
source_filename = "../drivers/spi/spi-tegra20-slink.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.tegra_slink_chip_data = type { i8 }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.tegra_slink_data = type { ptr, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.completion, %struct.completion, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, %struct.completion, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_tegra20_slink__248_1232_tegra_slink_driver_init6 = internal global ptr @tegra_slink_driver_init, section ".initcall6.init", align 4
@tegra_slink_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_slink_probe, ptr @tegra_slink_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_slink_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @slink_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_slink_driver_exit = internal global ptr @tegra_slink_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias249 = internal constant [49 x i8] c"spi_tegra20_slink.alias=platform:spi-tegra-slink\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [77 x i8] c"spi_tegra20_slink.description=NVIDIA Tegra20/Tegra30 SLINK Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [64 x i8] c"spi_tegra20_slink.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [53 x i8] c"spi_tegra20_slink.file=drivers/spi/spi-tegra20-slink\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [33 x i8] c"spi_tegra20_slink.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi-tegra-slink\00", [16 x i8] zeroinitializer }, align 32
@tegra_slink_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-slink\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_spi_cdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-slink\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_spi_cdata }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@slink_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_slink_suspend, ptr @tegra_slink_resume, ptr @tegra_slink_suspend, ptr @tegra_slink_resume, ptr @tegra_slink_suspend, ptr @tegra_slink_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_slink_runtime_suspend, ptr @tegra_slink_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1013, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_slink_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/spi/spi-tegra20-slink.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry_ptr = internal global ptr @tegra_slink_probe._entry, section ".printk_index", align 4
@tegra_slink_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1020, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"master allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry_ptr.8 = internal global ptr @tegra_slink_probe._entry.6, section ".printk_index", align 4
@tegra_slink_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tspi->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-max-frequency\00", [46 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1046, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No IO memory resource\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry_ptr.13 = internal global ptr @tegra_slink_probe._entry.11, section ".printk_index", align 4
@tegra_slink_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1061, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can not get clock %d\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry_ptr.16 = internal global ptr @tegra_slink_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1067, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can not get reset\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry_ptr.20 = internal global ptr @tegra_slink_probe._entry.18, section ".printk_index", align 4
@tegra_slink_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pm runtime get failed, e = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry_ptr.23 = internal global ptr @tegra_slink_probe._entry.21, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_slink_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry_ptr.26 = internal global ptr @tegra_slink_probe._entry.24, section ".printk_index", align 4
@tegra_slink_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1121, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can not register to master err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_slink_probe._entry_ptr.29 = internal global ptr @tegra_slink_probe._entry.27, section ".printk_index", align 4
@tegra_slink_setup.cs_pol_bit = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8192, i32 1048576, i32 4194304, i32 8388608], [16 x i8] zeroinitializer }, align 32
@tegra_slink_setup.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -69, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_tegra20_slink\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_slink_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"setup %d bpw, %scpol, %scpha, %dHz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"~\00", [30 x i8] zeroinitializer }, align 32
@tegra_slink_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.3, i32 755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pm runtime failed, e = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_slink_setup._entry_ptr = internal global ptr @tegra_slink_setup._entry, section ".printk_index", align 4
@tegra_slink_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 810, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"spi can not start transfer, err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_slink_transfer_one\00", [39 x i8] zeroinitializer }, align 32
@tegra_slink_transfer_one._entry_ptr = internal global ptr @tegra_slink_transfer_one._entry, section ".printk_index", align 4
@tegra_slink_transfer_one._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 818, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spi transfer timeout, err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_slink_transfer_one._entry_ptr.40 = internal global ptr @tegra_slink_transfer_one._entry.38, section ".printk_index", align 4
@tegra_slink_start_dma_based_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Rx/Tx fifo are not empty status 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tegra_slink_start_dma_based_transfer\00", [59 x i8] zeroinitializer }, align 32
@tegra_slink_start_dma_based_transfer._entry_ptr = internal global ptr @tegra_slink_start_dma_based_transfer._entry, section ".printk_index", align 4
@tegra_slink_start_dma_based_transfer._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Starting tx dma failed, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_slink_start_dma_based_transfer._entry_ptr.45 = internal global ptr @tegra_slink_start_dma_based_transfer._entry.43, section ".printk_index", align 4
@tegra_slink_start_dma_based_transfer._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Starting rx dma failed, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_slink_start_dma_based_transfer._entry_ptr.48 = internal global ptr @tegra_slink_start_dma_based_transfer._entry.46, section ".printk_index", align 4
@tegra_slink_start_tx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not able to get desc for Tx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_slink_start_tx_dma\00", [39 x i8] zeroinitializer }, align 32
@tegra_slink_start_tx_dma._entry_ptr = internal global ptr @tegra_slink_start_tx_dma._entry, section ".printk_index", align 4
@tegra_slink_start_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 459, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not able to get desc for Rx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_slink_start_rx_dma\00", [39 x i8] zeroinitializer }, align 32
@tegra_slink_start_rx_dma._entry_ptr = internal global ptr @tegra_slink_start_rx_dma._entry, section ".printk_index", align 4
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dma channel is not available\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_slink_init_dma_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 610, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" Not able to allocate the dma buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_slink_init_dma_param\00", [37 x i8] zeroinitializer }, align 32
@tegra_slink_init_dma_param._entry_ptr = internal global ptr @tegra_slink_init_dma_param._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@handle_cpu_based_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 850, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CpuXfer ERROR bit set 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_cpu_based_xfer\00", [42 x i8] zeroinitializer }, align 32
@handle_cpu_based_xfer._entry_ptr = internal global ptr @handle_cpu_based_xfer._entry, section ".printk_index", align 4
@handle_cpu_based_xfer._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CpuXfer 0x%08x:0x%08x:0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@handle_cpu_based_xfer._entry_ptr.63 = internal global ptr @handle_cpu_based_xfer._entry.61, section ".printk_index", align 4
@handle_dma_based_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TxDma Xfer failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_dma_based_xfer\00", [42 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry_ptr = internal global ptr @handle_dma_based_xfer._entry, section ".printk_index", align 4
@handle_dma_based_xfer._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 914, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RxDma Xfer failed\0A\00", [45 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry_ptr.68 = internal global ptr @handle_dma_based_xfer._entry.66, section ".printk_index", align 4
@handle_dma_based_xfer._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.3, i32 923, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DmaXfer: ERROR bit set 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry_ptr.71 = internal global ptr @handle_dma_based_xfer._entry.69, section ".printk_index", align 4
@handle_dma_based_xfer._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.3, i32 926, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DmaXfer 0x%08x:0x%08x:0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry_ptr.74 = internal global ptr @handle_dma_based_xfer._entry.72, section ".printk_index", align 4
@tegra30_spi_cdata = internal constant { %struct.tegra_slink_chip_data, [31 x i8] } { %struct.tegra_slink_chip_data { i8 1 }, [31 x i8] zeroinitializer }, align 32
@tegra20_spi_cdata = internal constant { %struct.tegra_slink_chip_data, [31 x i8] } zeroinitializer, align 32
@tegra_slink_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.75, ptr @.str.3, i32 1181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_slink_resume\00", [45 x i8] zeroinitializer }, align 32
@tegra_slink_resume._entry_ptr = internal global ptr @tegra_slink_resume._entry, section ".printk_index", align 4
@tegra_slink_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 1212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk_prepare failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_slink_runtime_resume\00", [37 x i8] zeroinitializer }, align 32
@tegra_slink_runtime_resume._entry_ptr = internal global ptr @tegra_slink_runtime_resume._entry, section ".printk_index", align 4
@switch.table.tegra_slink_transfer_one = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2097152, i32 4194304, i32 0, i32 6291456], [16 x i8] zeroinitializer }, align 32
@switch.table.tegra_slink_isr_thread = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2097152, i32 4194304, i32 0, i32 6291456], [16 x i8] zeroinitializer }, align 32
@switch.table.tegra_slink_isr_thread.78 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2097152, i32 4194304, i32 0, i32 6291456], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"tegra_slink_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1223, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1225, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"tegra_slink_of_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 995, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"slink_pm_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1218, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1013, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1020, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1038, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1040, i32 47 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1046, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1061, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1065, i32 59 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1067, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1094, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1108, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1121, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [11 x i8] c"cs_pol_bit\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 734, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 746, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 755, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 809, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 817, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 482, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 517, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 535, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 440, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 459, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 602, i32 57 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 602, i32 64 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 605, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 610, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 87, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 849, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 851, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 899, i32 5 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 914, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 922, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 924, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [18 x i8] c"tegra30_spi_cdata\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 987, i32 43 }
@___asan_gen_.312 = private unnamed_addr constant [18 x i8] c"tegra20_spi_cdata\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 991, i32 43 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1181, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private constant [35 x i8] c"../drivers/spi/spi-tegra20-slink.c\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 1212, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [38 x i8] c"switch.table.tegra_slink_transfer_one\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [36 x i8] c"switch.table.tegra_slink_isr_thread\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [39 x i8] c"switch.table.tegra_slink_isr_thread.78\00", align 1
@llvm.compiler.used = appending global [119 x ptr] [ptr @__UNIQUE_ID_alias249, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_tegra_slink_driver_exit, ptr @__initcall__kmod_spi_tegra20_slink__248_1232_tegra_slink_driver_init6, ptr @handle_cpu_based_xfer._entry, ptr @handle_cpu_based_xfer._entry.61, ptr @handle_cpu_based_xfer._entry_ptr, ptr @handle_cpu_based_xfer._entry_ptr.63, ptr @handle_dma_based_xfer._entry, ptr @handle_dma_based_xfer._entry.66, ptr @handle_dma_based_xfer._entry.69, ptr @handle_dma_based_xfer._entry.72, ptr @handle_dma_based_xfer._entry_ptr, ptr @handle_dma_based_xfer._entry_ptr.68, ptr @handle_dma_based_xfer._entry_ptr.71, ptr @handle_dma_based_xfer._entry_ptr.74, ptr @tegra_slink_driver_exit, ptr @tegra_slink_init_dma_param._entry, ptr @tegra_slink_init_dma_param._entry_ptr, ptr @tegra_slink_probe._entry, ptr @tegra_slink_probe._entry.11, ptr @tegra_slink_probe._entry.14, ptr @tegra_slink_probe._entry.18, ptr @tegra_slink_probe._entry.21, ptr @tegra_slink_probe._entry.24, ptr @tegra_slink_probe._entry.27, ptr @tegra_slink_probe._entry.6, ptr @tegra_slink_probe._entry_ptr, ptr @tegra_slink_probe._entry_ptr.13, ptr @tegra_slink_probe._entry_ptr.16, ptr @tegra_slink_probe._entry_ptr.20, ptr @tegra_slink_probe._entry_ptr.23, ptr @tegra_slink_probe._entry_ptr.26, ptr @tegra_slink_probe._entry_ptr.29, ptr @tegra_slink_probe._entry_ptr.8, ptr @tegra_slink_resume._entry, ptr @tegra_slink_resume._entry_ptr, ptr @tegra_slink_runtime_resume._entry, ptr @tegra_slink_runtime_resume._entry_ptr, ptr @tegra_slink_setup._entry, ptr @tegra_slink_setup._entry_ptr, ptr @tegra_slink_start_dma_based_transfer._entry, ptr @tegra_slink_start_dma_based_transfer._entry.43, ptr @tegra_slink_start_dma_based_transfer._entry.46, ptr @tegra_slink_start_dma_based_transfer._entry_ptr, ptr @tegra_slink_start_dma_based_transfer._entry_ptr.45, ptr @tegra_slink_start_dma_based_transfer._entry_ptr.48, ptr @tegra_slink_start_rx_dma._entry, ptr @tegra_slink_start_rx_dma._entry_ptr, ptr @tegra_slink_start_tx_dma._entry, ptr @tegra_slink_start_tx_dma._entry_ptr, ptr @tegra_slink_transfer_one._entry, ptr @tegra_slink_transfer_one._entry.38, ptr @tegra_slink_transfer_one._entry_ptr, ptr @tegra_slink_transfer_one._entry_ptr.40, ptr @tegra_slink_driver, ptr @.str, ptr @tegra_slink_of_match, ptr @slink_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @tegra_slink_probe.__key, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @tegra_slink_setup.cs_pol_bit, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @init_completion.__key, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @tegra30_spi_cdata, ptr @tegra20_spi_cdata, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @switch.table.tegra_slink_transfer_one, ptr @switch.table.tegra_slink_isr_thread, ptr @switch.table.tegra_slink_isr_thread.78], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slink_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_setup.cs_pol_bit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_transfer_one._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_start_dma_based_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_start_dma_based_transfer._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_start_dma_based_transfer._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_start_tx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_start_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_init_dma_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_cpu_based_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_cpu_based_xfer._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dma_based_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dma_based_xfer._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dma_based_xfer._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dma_based_xfer._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_spi_cdata to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_spi_cdata to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_slink_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_slink_transfer_one to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_slink_isr_thread to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_slink_isr_thread.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_slink_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_slink_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_slink_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @tegra_slink_of_match, ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 372, i1 noundef zeroext false) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %mode_bits, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %3 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tegra_slink_setup, ptr %setup, align 4
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %4 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tegra_slink_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %5 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tegra_slink_transfer_one, ptr %transfer_one, align 4
  %unprepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 48
  %6 = ptrtoint ptr %unprepare_message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tegra_slink_unprepare_message, ptr %unprepare_message, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %7 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %auto_runtime_pm, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4, ptr %num_chipselect, align 2
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i224 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i224 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i224, align 4
  %master12 = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %master12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %master12, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %11, align 4
  %chip_data = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %chip_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %chip_data, align 4
  %lock = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @tegra_slink_probe.__key, i16 noundef signext 3) #7
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.10, ptr noundef %max_speed_hz, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool21.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool21.not, label %if.end10.if.end24_crit_edge, label %if.then22

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 25000000, ptr %max_speed_hz, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end10.if.end24_crit_edge
  %call25 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %spi_controller_put.exit

if.end32:                                         ; preds = %if.end24
  %20 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call25, align 4
  %phys = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 7
  %22 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %phys, align 4
  %call34 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call25) #7
  %base = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 6
  %23 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call34, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call34 to i32
  br label %spi_controller_put.exit

if.end40:                                         ; preds = %if.end32
  %call42 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 4
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call42, ptr %clk, align 4
  %cmp.i225 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %if.then45, label %if.end52

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %26) #10
  br label %spi_controller_put.exit

if.end52:                                         ; preds = %if.end40
  %call.i226 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 5
  %27 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i226, ptr %rst, align 4
  %cmp.i227 = icmp ugt ptr %call.i226, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %do.end60, label %if.end64

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  %28 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rst, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %spi_controller_put.exit

if.end64:                                         ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #7
  %31 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %opp_params.i, align 1
  %call.i228 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev, ptr noundef nonnull %opp_params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i228)
  %cmp.not.i = icmp eq i32 %call.i228, -19
  %.call.i = select i1 %cmp.not.i, i32 0, i32 %call.i228
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool67.not = icmp eq i32 %.call.i, 0
  br i1 %tobool67.not, label %if.end69, label %if.end64.spi_controller_put.exit_crit_edge

if.end64.spi_controller_put.exit_crit_edge:       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.end69:                                         ; preds = %if.end64
  %max_buf_size = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 20
  %32 = ptrtoint ptr %max_buf_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %max_buf_size, align 4
  %dma_buf_size = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 19
  %33 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16384, ptr %dma_buf_size, align 4
  %call70 = call fastcc i32 @tegra_slink_init_dma_param(ptr noundef %11, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp = icmp slt i32 %call70, 0
  br i1 %cmp, label %if.end69.spi_controller_put.exit_crit_edge, label %if.end72

if.end69.spi_controller_put.exit_crit_edge:       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.end72:                                         ; preds = %if.end69
  %call73 = call fastcc i32 @tegra_slink_init_dma_param(ptr noundef %11, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end72.exit_rx_dma_free_crit_edge, label %if.end76

if.end72.exit_rx_dma_free_crit_edge:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_rx_dma_free

if.end76:                                         ; preds = %if.end72
  %34 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_buf_size, align 4
  %36 = ptrtoint ptr %max_buf_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_buf_size, align 4
  %tx_dma_complete = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 23
  %37 = ptrtoint ptr %tx_dma_complete to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %tx_dma_complete, align 4
  %wait.i = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 23, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @init_completion.__key) #7
  %rx_dma_complete = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 22
  %38 = ptrtoint ptr %rx_dma_complete to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %rx_dma_complete, align 4
  %wait.i229 = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 22, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i229, ptr noundef nonnull @.str.58, ptr noundef nonnull @init_completion.__key) #7
  %xfer_completion = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 34
  %39 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %xfer_completion, align 4
  %wait.i230 = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 34, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i230, ptr noundef nonnull @.str.58, ptr noundef nonnull @init_completion.__key) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i231 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %cmp.i232 = icmp slt i32 %call.i231, 0
  br i1 %cmp.i232, label %if.then.i, label %if.end88

if.then.i:                                        ; preds = %if.end76
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !170
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !171
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end86_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end86_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end86

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !172
  br label %do.end86

do.end86:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end86_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call.i231) #10
  br label %exit_pm_disable

if.end88:                                         ; preds = %if.end76
  %41 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rst, align 4
  %call90 = call i32 @reset_control_assert(ptr noundef %42) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 429496) #7
  %44 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rst, align 4
  %call92 = call i32 @reset_control_deassert(ptr noundef %45) #7
  %call93 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 8
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call93, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end88.dev_name.exit_crit_edge

if.end88.dev_name.exit_crit_edge:                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end88.dev_name.exit_crit_edge
  %retval.0.i233 = phi ptr [ %50, %if.end.i ], [ %48, %if.end88.dev_name.exit_crit_edge ]
  %call97 = call i32 @request_threaded_irq(i32 noundef %call93, ptr noundef nonnull @tegra_slink_isr, ptr noundef nonnull @tegra_slink_isr_thread, i32 noundef 8192, ptr noundef %retval.0.i233, ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end102, label %if.end105

do.end102:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %52) #10
  br label %exit_pm_put

if.end105:                                        ; preds = %dev_name.exit
  %def_command_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 32
  %53 = ptrtoint ptr %def_command_reg to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 268435456, ptr %def_command_reg, align 4
  %def_command2_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 33
  %54 = ptrtoint ptr %def_command2_reg to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 131072, ptr %def_command2_reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 16) #7, !srcloc !174
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %58, i32 16
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %60 = ptrtoint ptr %def_command2_reg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %def_command2_reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  call void @arm_heavy_mb() #7
  %62 = call i32 @llvm.bswap.i32(i32 %61) #7
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %64, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %62) #7, !srcloc !174
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr2.i237 = getelementptr i8, ptr %66, i32 16
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i237) #7, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %of_node109 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %68 = ptrtoint ptr %of_node109 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node109, align 8
  %of_node111 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %70 = ptrtoint ptr %of_node111 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %of_node111, align 8
  %call112 = call i32 @spi_register_controller(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %do.end117, label %if.end119

do.end117:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call112) #10
  %call122 = call ptr @free_irq(i32 noundef %call93, ptr noundef %11) #7
  br label %exit_pm_put

if.end119:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %call.i240 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

exit_pm_put:                                      ; preds = %do.end117, %do.end102
  %ret.0 = phi i32 [ %call97, %do.end102 ], [ %call112, %do.end117 ]
  %call.i241 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %exit_pm_disable

exit_pm_disable:                                  ; preds = %exit_pm_put, %do.end86
  %ret.1 = phi i32 [ %call.i231, %do.end86 ], [ %ret.0, %exit_pm_put ]
  %call126 = call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  call fastcc void @tegra_slink_deinit_dma_param(ptr noundef %11, i1 noundef zeroext false)
  br label %exit_rx_dma_free

exit_rx_dma_free:                                 ; preds = %exit_pm_disable, %if.end72.exit_rx_dma_free_crit_edge
  %ret.2 = phi i32 [ %call73, %if.end72.exit_rx_dma_free_crit_edge ], [ %ret.1, %exit_pm_disable ]
  %rx_dma_buf.i = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 37
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 36
  %rx_dma_phys.i = getelementptr inbounds %struct.tegra_slink_data, ptr %11, i32 0, i32 38
  %71 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %dma_chan.0.i = load ptr, ptr %rx_dma_chan.i, align 4
  %72 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %dma_buf.0.i = load ptr, ptr %rx_dma_buf.i, align 4
  %73 = ptrtoint ptr %rx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rx_dma_phys.i, align 4
  store ptr null, ptr %rx_dma_chan.i, align 4
  store ptr null, ptr %rx_dma_buf.i, align 4
  %tobool5.not.i = icmp eq ptr %dma_chan.0.i, null
  br i1 %tobool5.not.i, label %exit_rx_dma_free.spi_controller_put.exit_crit_edge, label %if.end7.i

exit_rx_dma_free.spi_controller_put.exit_crit_edge: ; preds = %exit_rx_dma_free
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.end7.i:                                        ; preds = %exit_rx_dma_free
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %11, align 4
  %77 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_buf_size, align 4
  call void @dma_free_attrs(ptr noundef %76, i32 noundef %78, ptr noundef %dma_buf.0.i, i32 noundef %74, i32 noundef 0) #7
  call void @dma_release_channel(ptr noundef nonnull %dma_chan.0.i) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.end7.i, %exit_rx_dma_free.spi_controller_put.exit_crit_edge, %if.end69.spi_controller_put.exit_crit_edge, %if.end64.spi_controller_put.exit_crit_edge, %do.end60, %if.then45, %if.then37, %do.end30
  %ret.3 = phi i32 [ %24, %if.then37 ], [ %26, %if.then45 ], [ %30, %do.end60 ], [ %.call.i, %if.end64.spi_controller_put.exit_crit_edge ], [ %call70, %if.end69.spi_controller_put.exit_crit_edge ], [ -19, %do.end30 ], [ %ret.2, %exit_rx_dma_free.spi_controller_put.exit_crit_edge ], [ %ret.2, %if.end7.i ]
  call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end119, %do.end8, %do.end
  %retval.0 = phi i32 [ %ret.3, %spi_controller_put.exit ], [ %call112, %if.end119 ], [ -12, %do.end8 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i14 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i14, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #7
  %irq = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  %tx_dma_chan = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_dma_chan, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %tegra_slink_deinit_dma_param.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

tegra_slink_deinit_dma_param.exit:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_dma_buf.i = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 41
  %tx_dma_phys.i = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 42
  %8 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %dma_buf.0.i = load ptr, ptr %tx_dma_buf.i, align 4
  %9 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_dma_phys.i, align 4
  store ptr null, ptr %tx_dma_buf.i, align 4
  %11 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_dma_chan, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dma_buf_size.i = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 19
  %14 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_buf_size.i, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef %15, ptr noundef %dma_buf.0.i, i32 noundef %10, i32 noundef 0) #7
  tail call void @dma_release_channel(ptr noundef nonnull %7) #7
  br label %if.end

if.end:                                           ; preds = %tegra_slink_deinit_dma_param.exit, %entry.if.end_crit_edge
  %rx_dma_chan = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 36
  %16 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_dma_chan, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %tegra_slink_deinit_dma_param.exit20

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

tegra_slink_deinit_dma_param.exit20:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rx_dma_buf.i = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 37
  %rx_dma_phys.i = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 38
  %18 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %dma_buf.0.i16 = load ptr, ptr %rx_dma_buf.i, align 4
  %19 = ptrtoint ptr %rx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_dma_phys.i, align 4
  %21 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rx_dma_chan, align 4
  store ptr null, ptr %rx_dma_buf.i, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %dma_buf_size.i18 = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 19
  %24 = ptrtoint ptr %dma_buf_size.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_buf_size.i18, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %25, ptr noundef %dma_buf.0.i16, i32 noundef %20, i32 noundef 0) #7
  tail call void @dma_release_channel(ptr noundef nonnull %17) #7
  br label %if.end6

if.end6:                                          ; preds = %tegra_slink_deinit_dma_param.exit20, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_setup(ptr noundef %spi) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_slink_setup.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_slink_setup, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %5 to i32
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool5.not, ptr @.str.34, ptr @.str.33
  %and7 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.34, ptr @.str.33
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %8 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_speed_hz, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_slink_setup.__UNIQUE_ID_ddebug247, ptr noundef %spi, ptr noundef nonnull @.str.32, i32 noundef %conv, ptr noundef nonnull %cond, ptr noundef nonnull %cond9, i32 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then13, label %do.body21

if.then13:                                        ; preds = %do.end
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !171
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then13.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then13.pm_runtime_put_noidle.exit_crit_edge:   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !172
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then13.pm_runtime_put_noidle.exit_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.35, i32 noundef %call.i) #10
  br label %cleanup

do.body21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 3
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %def_command_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 32
  %17 = ptrtoint ptr %def_command_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %def_command_reg, align 4
  %mode31 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %19 = ptrtoint ptr %mode31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode31, align 8
  %and32 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %chip_select35 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %21 = ptrtoint ptr %chip_select35 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chip_select35, align 4
  %idxprom36 = zext i8 %22 to i32
  %arrayidx37 = getelementptr [4 x i32], ptr @tegra_slink_setup.cs_pol_bit, i32 0, i32 %idxprom36
  %23 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx37, align 4
  %or = or i32 %24, %18
  %neg = xor i32 %24, -1
  %and38 = and i32 %18, %neg
  %val.0 = select i1 %tobool33.not, i32 %and38, i32 %or
  %25 = ptrtoint ptr %def_command_reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %val.0, ptr %def_command_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %val.0) #7
  %base.i = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !174
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %30, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call26) #7
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %call.i69 = tail call i32 @__pm_runtime_idle(ptr noundef %33, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body21, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ 0, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %msg) #2 align 64 {
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
  %base.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 3139) #7, !srcloc !174
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %def_command_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %def_command_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %def_command_reg, align 4
  %command_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 29
  %or = or i32 %13, 6144
  %14 = ptrtoint ptr %command_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %command_reg, align 4
  %def_command2_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 33
  %15 = ptrtoint ptr %def_command2_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %def_command2_reg, align 4
  %command2_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 30
  %17 = ptrtoint ptr %command2_reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %command2_reg, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_select, align 4
  %20 = and i8 %19, 3
  %and = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %and, 18
  %or4 = or i32 %shl, %16
  store i32 %or4, ptr %command2_reg, align 4
  %and6 = and i32 %or, -52428801
  store i32 %and6, ptr %command_reg, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 8
  %and7 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or9 = or i32 %and6, 2097152
  %23 = ptrtoint ptr %command_reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or9, ptr %command_reg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode, align 8
  %and11 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end18_crit_edge, label %if.then13

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %command_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %command_reg, align 4
  %or15 = or i32 %27, 16777216
  store i32 %or15, ptr %command_reg, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_transfer_one(ptr nocapture noundef readonly %master, ptr noundef %spi, ptr noundef %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xfer_completion = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %xfer_completion, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %3 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %bits_per_word1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %7 = ptrtoint ptr %bits_per_word1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bits_per_word1.i, align 1
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %9 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed_hz.i, align 4
  %cur_speed.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 9
  %11 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not.i = icmp eq i32 %10, %12
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %mul.i = shl i32 %10, 2
  %call2.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %14, i32 noundef %mul.i) #7
  %15 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %10, ptr %cur_speed.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %cur_spi.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 10
  %16 = ptrtoint ptr %cur_spi.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spi, ptr %cur_spi.i, align 4
  %cur_pos.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 11
  %17 = ptrtoint ptr %cur_pos.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cur_pos.i, align 4
  %cur_rx_pos.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 17
  %18 = ptrtoint ptr %cur_rx_pos.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cur_rx_pos.i, align 4
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 18
  %19 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cur_tx_pos.i, align 4
  %curr_xfer.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 35
  %20 = ptrtoint ptr %curr_xfer.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %xfer, ptr %curr_xfer.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %23 = ptrtoint ptr %bits_per_word1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bits_per_word1.i, align 1
  %conv.i.i = zext i8 %24 to i32
  %sub2.i.i = add nuw nsw i32 %conv.i.i, 7
  %div1.i.i = lshr i32 %sub2.i.i, 3
  %bytes_per_word.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 14
  %25 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div1.i.i, ptr %bytes_per_word.i.i, align 4
  %26 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %if.else.i.i [
    i8 8, label %if.end.i.if.then.i.i_crit_edge
    i8 16, label %if.end.i.if.then.i.i_crit_edge60
  ]

if.end.i.if.then.i.i_crit_edge60:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge60
  %is_packed.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 27
  %27 = ptrtoint ptr %is_packed.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %is_packed.i.i, align 4
  %div64.i.i = udiv i8 32, %24
  %div6.zext.i.i = zext i8 %div64.i.i to i32
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %is_packed7.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 27
  %28 = ptrtoint ptr %is_packed7.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %is_packed7.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ 1, %if.else.i.i ], [ %div6.zext.i.i, %if.then.i.i ]
  %words_per_32bit8.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 13
  %29 = ptrtoint ptr %words_per_32bit8.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink.i.i, ptr %words_per_32bit8.i.i, align 4
  %switch.tableidx = add nsw i32 %div1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %30 = icmp ult i32 %switch.tableidx, 4
  br i1 %30, label %switch.lookup, label %if.end.i.i.tegra_slink_get_packed_size.exit.i.i_crit_edge

if.end.i.i.tegra_slink_get_packed_size.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_get_packed_size.exit.i.i

switch.lookup:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_slink_transfer_one, i32 0, i32 %switch.tableidx
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tegra_slink_get_packed_size.exit.i.i

tegra_slink_get_packed_size.exit.i.i:             ; preds = %switch.lookup, %if.end.i.i.tegra_slink_get_packed_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end.i.i.tegra_slink_get_packed_size.exit.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %packed_size.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 28
  %32 = ptrtoint ptr %packed_size.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.i.i, ptr %packed_size.i.i, align 4
  %is_packed9.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 27
  %33 = ptrtoint ptr %is_packed9.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_packed9.i.i, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %if.else16.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %tegra_slink_get_packed_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_buf_size.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 20
  %35 = ptrtoint ptr %max_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_buf_size.i.i, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %22, i32 %36) #7
  %div14.i.i = udiv i32 %37, %div1.i.i
  %div153.i.i = lshr i32 %37, 2
  br label %tegra_slink_calculate_curr_xfer_param.exit.i

if.else16.i.i:                                    ; preds = %tegra_slink_get_packed_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub17.i.i = add i32 %22, -1
  %div19.i.i = udiv i32 %sub17.i.i, %div1.i.i
  %add20.i.i = add i32 %div19.i.i, 1
  %max_buf_size21.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 20
  %38 = ptrtoint ptr %max_buf_size21.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_buf_size21.i.i, align 4
  %div222.i.i = lshr i32 %39, 2
  %40 = tail call i32 @llvm.umin.i32(i32 %add20.i.i, i32 %div222.i.i) #7
  br label %tegra_slink_calculate_curr_xfer_param.exit.i

tegra_slink_calculate_curr_xfer_param.exit.i:     ; preds = %if.else16.i.i, %if.then10.i.i
  %div14.sink.i.i = phi i32 [ %40, %if.else16.i.i ], [ %div14.i.i, %if.then10.i.i ]
  %total_fifo_words.0.i.i = phi i32 [ %40, %if.else16.i.i ], [ %div153.i.i, %if.then10.i.i ]
  %41 = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 15
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div14.sink.i.i, ptr %41, align 4
  %command_reg.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 29
  %43 = ptrtoint ptr %command_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %command_reg.i, align 4
  %and.i = and i32 %44, -32
  %45 = add i8 %8, 31
  %46 = and i8 %45, 31
  %and5.i = zext i8 %46 to i32
  %or.i = or i32 %and.i, %and5.i
  %command2_reg.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 30
  %47 = ptrtoint ptr %command2_reg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %command2_reg.i, align 4
  %and6.i = and i32 %48, 1073741823
  %cur_direction.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 16
  %49 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %cur_direction.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %50 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %tegra_slink_calculate_curr_xfer_param.exit.i.if.end11.i_crit_edge, label %if.then7.i

tegra_slink_calculate_curr_xfer_param.exit.i.if.end11.i_crit_edge: ; preds = %tegra_slink_calculate_curr_xfer_param.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then7.i:                                       ; preds = %tegra_slink_calculate_curr_xfer_param.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %or8.i = or i32 %and6.i, -2147483648
  %52 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %cur_direction.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %tegra_slink_calculate_curr_xfer_param.exit.i.if.end11.i_crit_edge
  %command2.0.i = phi i32 [ %or8.i, %if.then7.i ], [ %and6.i, %tegra_slink_calculate_curr_xfer_param.exit.i.if.end11.i_crit_edge ]
  %53 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xfer, align 4
  %tobool12.not.i = icmp eq ptr %54, null
  br i1 %tobool12.not.i, label %if.end11.i.if.end17.i_crit_edge, label %if.then13.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %or14.i = or i32 %command2.0.i, 1073741824
  %55 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cur_direction.i, align 4
  %or16.i = or i32 %56, 1
  store i32 %or16.i, ptr %cur_direction.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end17.i_crit_edge
  %command2.1.i = phi i32 [ %or14.i, %if.then13.i ], [ %command2.0.i, %if.end11.i.if.end17.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %command2.1.i) #7
  %base.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %6, i32 0, i32 6
  %58 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %57) #7, !srcloc !174
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %61, i32 16
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %63 = ptrtoint ptr %command2_reg.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %command2.1.i, ptr %command2_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %65 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #7, !srcloc !174
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i66.i = getelementptr i8, ptr %68, i32 16
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i66.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %70 = ptrtoint ptr %command_reg.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i, ptr %command_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %total_fifo_words.0.i.i)
  %cmp20.i = icmp ugt i32 %total_fifo_words.0.i.i, 32
  br i1 %cmp20.i, label %tegra_slink_start_transfer_one.exit, label %tegra_slink_start_transfer_one.exit.thread

tegra_slink_start_transfer_one.exit.thread:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tegra_slink_start_cpu_based_transfer(ptr noundef %6, ptr noundef %xfer) #7
  br label %if.end

tegra_slink_start_transfer_one.exit:              ; preds = %if.end17.i
  %call23.i = tail call fastcc i32 @tegra_slink_start_dma_based_transfer(ptr noundef %6, ptr noundef %xfer) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp = icmp slt i32 %call23.i, 0
  br i1 %cmp, label %do.end, label %tegra_slink_start_transfer_one.exit.if.end_crit_edge

tegra_slink_start_transfer_one.exit.if.end_crit_edge: ; preds = %tegra_slink_start_transfer_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %tegra_slink_start_transfer_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.36, i32 noundef %call23.i) #10
  br label %cleanup

if.end:                                           ; preds = %tegra_slink_start_transfer_one.exit.if.end_crit_edge, %tegra_slink_start_transfer_one.exit.thread
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_completion, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %do.end16, label %if.end35, !prof !180

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 816, i32 noundef 9, ptr noundef null) #7
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.39, i32 noundef 0) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end
  %tx_status = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 24
  %75 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool36.not = icmp eq i32 %76, 0
  br i1 %tobool36.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %rx_status = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 25
  %77 = ptrtoint ptr %rx_status to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end35.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ %call23.i, %do.end ], [ -5, %do.end16 ], [ %76, %if.end35.cleanup_crit_edge ], [ %78, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_unprepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %def_command_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %def_command_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %def_command_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %base.i = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !174
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %def_command2_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %def_command2_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %def_command2_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !174
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr2.i5 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i5) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_slink_init_dma_param(ptr nocapture noundef %tspi, i1 noundef zeroext %dma_to_memory) unnamed_addr #2 align 64 {
entry:
  %dma_phys = alloca i32, align 4
  %dma_sconfig = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_phys) #7
  %0 = ptrtoint ptr %dma_phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_phys, align 4, !annotation !181
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_sconfig) #7
  %1 = call ptr @memset(ptr %dma_sconfig, i32 255, i32 48)
  %2 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tspi, align 4
  %cond = select i1 %dma_to_memory, ptr @.str.53, ptr @.str.54
  %call = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull %cond) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tspi, align 4
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %6, ptr noundef nonnull @.str.55) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_buf_size = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 19
  %7 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_buf_size, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef %8, ptr noundef nonnull %dma_phys, i32 noundef 3264, i32 noundef 0) #7
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.56) #10
  call void @dma_release_channel(ptr noundef %call) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %phys = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 7
  %11 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys, align 4
  br i1 %dma_to_memory, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %12, 384
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 1
  %13 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 3
  %14 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 5
  br label %if.end15

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %add14 = add i32 %12, 256
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 2
  %15 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add14, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 4
  %16 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 6
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %dst_maxburst.sink = phi ptr [ %dst_maxburst, %if.else ], [ %src_maxburst, %if.then12 ]
  %17 = ptrtoint ptr %dst_maxburst.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dst_maxburst.sink, align 4
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end15.scrub_crit_edge, label %dmaengine_slave_config.exit

if.end15.scrub_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %scrub

dmaengine_slave_config.exit:                      ; preds = %if.end15
  %call.i56 = call i32 %21(ptr noundef %call, ptr noundef nonnull %dma_sconfig) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool17.not = icmp eq i32 %call.i56, 0
  br i1 %tobool17.not, label %if.end19, label %dmaengine_slave_config.exit.scrub_crit_edge

dmaengine_slave_config.exit.scrub_crit_edge:      ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %scrub

if.end19:                                         ; preds = %dmaengine_slave_config.exit
  br i1 %dma_to_memory, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %rx_dma_chan = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 36
  %22 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %rx_dma_chan, align 4
  %rx_dma_buf = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 37
  %23 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %rx_dma_buf, align 4
  %24 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_phys, align 4
  %rx_dma_phys = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 38
  %26 = ptrtoint ptr %rx_dma_phys to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rx_dma_phys, align 4
  br label %cleanup

if.else22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %tx_dma_chan = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 40
  %27 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %tx_dma_chan, align 4
  %tx_dma_buf = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 41
  %28 = ptrtoint ptr %tx_dma_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %tx_dma_buf, align 4
  %29 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_phys, align 4
  %tx_dma_phys = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 42
  %31 = ptrtoint ptr %tx_dma_phys to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tx_dma_phys, align 4
  br label %cleanup

scrub:                                            ; preds = %dmaengine_slave_config.exit.scrub_crit_edge, %if.end15.scrub_crit_edge
  %retval.0.i59 = phi i32 [ %call.i56, %dmaengine_slave_config.exit.scrub_crit_edge ], [ -38, %if.end15.scrub_crit_edge ]
  %32 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tspi, align 4
  %34 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_buf_size, align 4
  %36 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_phys, align 4
  call void @dma_free_attrs(ptr noundef %33, i32 noundef %35, ptr noundef nonnull %call.i, i32 noundef %37, i32 noundef 0) #7
  call void @dma_release_channel(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %scrub, %if.else22, %if.then21, %do.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %retval.0.i59, %scrub ], [ -12, %do.end ], [ 0, %if.else22 ], [ 0, %if.then21 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_sconfig) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_phys) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_isr(i32 noundef %irq, ptr nocapture noundef %context_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 6
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %status_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 26
  %4 = ptrtoint ptr %status_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status_reg, align 4
  %cur_direction = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 16
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
  %and2 = and i32 %3, 17301504
  %tx_status = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 24
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
  %and8 = and i32 %3, 33816576
  %rx_status = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 25
  %8 = ptrtoint ptr %rx_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and8, ptr %rx_status, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 3139) #7, !srcloc !174
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_isr_thread(i32 noundef %irq, ptr noundef %context_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 21
  %0 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_curr_dma_xfer, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %curr_xfer.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 35
  %2 = ptrtoint ptr %curr_xfer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_xfer.i, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %tx_status.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 24
  %4 = ptrtoint ptr %tx_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.do.end10.i_crit_edge

if.then.do.end10.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %if.then
  %rx_status.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 25
  %6 = ptrtoint ptr %rx_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not.i = icmp eq i32 %7, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %status_reg.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 26
  %8 = ptrtoint ptr %status_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool7.not.i = icmp sgt i32 %9, -1
  br i1 %tobool7.not.i, label %if.end.i, label %lor.lhs.false6.i.do.end10.i_crit_edge

lor.lhs.false6.i.do.end10.i_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

do.end10.i:                                       ; preds = %lor.lhs.false6.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %if.then.do.end10.i_crit_edge
  %10 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context_data, align 4
  %status_reg11.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 26
  %12 = ptrtoint ptr %status_reg11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status_reg11.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.59, i32 noundef %13) #10
  %14 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %context_data, align 4
  %command_reg.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 29
  %16 = ptrtoint ptr %command_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %command_reg.i, align 4
  %command2_reg.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 30
  %18 = ptrtoint ptr %command2_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %command2_reg.i, align 4
  %dma_control_reg.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 31
  %20 = ptrtoint ptr %dma_control_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_control_reg.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.62, i32 noundef %17, i32 noundef %19, i32 noundef %21) #10
  %rst.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 5
  %22 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rst.i, align 4
  %call16.i = tail call i32 @reset_control_assert(ptr noundef %23) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 429496) #7
  %25 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rst.i, align 4
  %call18.i = tail call i32 @reset_control_deassert(ptr noundef %26) #7
  %xfer_completion.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 34
  tail call void @complete(ptr noundef %xfer_completion.i) #7
  br label %handle_cpu_based_xfer.exit

if.end.i:                                         ; preds = %lor.lhs.false6.i
  %cur_direction.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 16
  %27 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_direction.i, align 4
  %and19.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then21.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end.i
  %rx_buf1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %rx_buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_buf1.i.i, align 4
  %cur_rx_pos.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 17
  %31 = ptrtoint ptr %cur_rx_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_rx_pos.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %32
  %base.i.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 6
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 28
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %36 = lshr i32 %35, 8
  %shr.i.i = and i32 %36, 63
  %is_packed.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 27
  %37 = ptrtoint ptr %is_packed.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_packed.i.i, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %for.cond19.preheader.i.i, label %if.then.i.i

for.cond19.preheader.i.i:                         ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %cmp2019.not.i.i = icmp eq i32 %shr.i.i, 0
  br i1 %cmp2019.not.i.i, label %for.cond19.preheader.i.i.for.end40.i.i_crit_edge, label %for.body22.lr.ph.i.i

for.cond19.preheader.i.i.for.end40.i.i_crit_edge: ; preds = %for.cond19.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end40.i.i

for.body22.lr.ph.i.i:                             ; preds = %for.cond19.preheader.i.i
  %bytes_per_word26.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 14
  br label %for.body22.i.i

if.then.i.i:                                      ; preds = %if.then21.i
  %curr_dma_words.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 15
  %bytes_per_word.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %cmp11.not.i.i = icmp eq i32 %shr.i.i, 0
  br i1 %cmp11.not.i.i, label %if.then.i.i.for.end12.i.i_crit_edge, label %for.body.preheader.i.i

if.then.i.i.for.end12.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end12.i.i

for.body.preheader.i.i:                           ; preds = %if.then.i.i
  %39 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bytes_per_word.i.i, align 4
  %41 = ptrtoint ptr %curr_dma_words.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %curr_dma_words.i.i, align 4
  %mul.i.i = mul i32 %42, %40
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rx_buf.014.i.i = phi ptr [ %rx_buf.1.lcssa.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %len.013.i.i = phi i32 [ %len.1.lcssa.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ %mul.i.i, %for.body.preheader.i.i ]
  %count.012.i.i = phi i32 [ %inc11.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %43 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %44, i32 384
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #7, !srcloc !175
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.013.i.i)
  %tobool4.not5.not.i.i = icmp eq i32 %len.013.i.i, 0
  br i1 %tobool4.not5.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body6.preheader.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body6.preheader.i.i:                          ; preds = %for.body.i.i
  %47 = add i32 %len.013.i.i, -1
  %umin.i.i = tail call i32 @llvm.umin.i32(i32 %47, i32 3) #7
  %conv.i.i = trunc i32 %46 to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %rx_buf.014.i.i, i32 1
  %48 = ptrtoint ptr %rx_buf.014.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i.i, ptr %rx_buf.014.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin.i.i)
  %exitcond.not.i.i = icmp eq i32 %umin.i.i, 0
  br i1 %exitcond.not.i.i, label %for.body6.preheader.i.i.for.end.i.loopexit.i_crit_edge, label %for.body6.i.i.1

for.body6.preheader.i.i.for.end.i.loopexit.i_crit_edge: ; preds = %for.body6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.loopexit.i

for.body6.i.i.1:                                  ; preds = %for.body6.preheader.i.i
  %shr8.i.i.1 = lshr i32 %46, 8
  %conv.i.i.1 = trunc i32 %shr8.i.i.1 to i8
  %incdec.ptr.i.i.1 = getelementptr i8, ptr %rx_buf.014.i.i, i32 2
  %49 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i.i.1, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin.i.i)
  %exitcond.not.i.i.1 = icmp eq i32 %umin.i.i, 1
  br i1 %exitcond.not.i.i.1, label %for.body6.i.i.1.for.end.i.loopexit.i_crit_edge, label %for.body6.i.i.2

for.body6.i.i.1.for.end.i.loopexit.i_crit_edge:   ; preds = %for.body6.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.loopexit.i

for.body6.i.i.2:                                  ; preds = %for.body6.i.i.1
  %shr8.i.i.2 = lshr i32 %46, 16
  %conv.i.i.2 = trunc i32 %shr8.i.i.2 to i8
  %incdec.ptr.i.i.2 = getelementptr i8, ptr %rx_buf.014.i.i, i32 3
  %50 = ptrtoint ptr %incdec.ptr.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i.i.2, ptr %incdec.ptr.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin.i.i)
  %exitcond.not.i.i.2 = icmp eq i32 %umin.i.i, 2
  br i1 %exitcond.not.i.i.2, label %for.body6.i.i.2.for.end.i.loopexit.i_crit_edge, label %for.body6.i.i.3

for.body6.i.i.2.for.end.i.loopexit.i_crit_edge:   ; preds = %for.body6.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.loopexit.i

for.body6.i.i.3:                                  ; preds = %for.body6.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %shr8.i.i.3 = lshr i32 %46, 24
  %conv.i.i.3 = trunc i32 %shr8.i.i.3 to i8
  %incdec.ptr.i.i.3 = getelementptr i8, ptr %rx_buf.014.i.i, i32 4
  %51 = ptrtoint ptr %incdec.ptr.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i.i.3, ptr %incdec.ptr.i.i.2, align 1
  br label %for.end.i.loopexit.i

for.end.i.loopexit.i:                             ; preds = %for.body6.i.i.3, %for.body6.i.i.2.for.end.i.loopexit.i_crit_edge, %for.body6.i.i.1.for.end.i.loopexit.i_crit_edge, %for.body6.preheader.i.i.for.end.i.loopexit.i_crit_edge
  %incdec.ptr.i.i.lcssa = phi ptr [ %incdec.ptr.i.i, %for.body6.preheader.i.i.for.end.i.loopexit.i_crit_edge ], [ %incdec.ptr.i.i.1, %for.body6.i.i.1.for.end.i.loopexit.i_crit_edge ], [ %incdec.ptr.i.i.2, %for.body6.i.i.2.for.end.i.loopexit.i_crit_edge ], [ %incdec.ptr.i.i.3, %for.body6.i.i.3 ]
  %52 = sub i32 %47, %umin.i.i
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.loopexit.i, %for.body.i.i.for.end.i.i_crit_edge
  %len.1.lcssa.i.i = phi i32 [ 0, %for.body.i.i.for.end.i.i_crit_edge ], [ %52, %for.end.i.loopexit.i ]
  %rx_buf.1.lcssa.i.i = phi ptr [ %rx_buf.014.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %incdec.ptr.i.i.lcssa, %for.end.i.loopexit.i ]
  %inc11.i.i = add nuw nsw i32 %count.012.i.i, 1
  %exitcond22.not.i.i = icmp eq i32 %inc11.i.i, %shr.i.i
  br i1 %exitcond22.not.i.i, label %for.end.i.i.for.end12.i.i_crit_edge, label %for.end.i.i.for.body.i.i_crit_edge

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i.for.end12.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end12.i.i

for.end12.i.i:                                    ; preds = %for.end.i.i.for.end12.i.i_crit_edge, %if.then.i.i.for.end12.i.i_crit_edge
  %53 = ptrtoint ptr %curr_dma_words.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %curr_dma_words.i.i, align 4
  br label %tegra_slink_read_rx_fifo_to_client_rxbuf.exit.i

for.body22.i.i:                                   ; preds = %for.end37.i.i.for.body22.i.i_crit_edge, %for.body22.lr.ph.i.i
  %rx_buf.221.i.i = phi ptr [ %add.ptr.i.i, %for.body22.lr.ph.i.i ], [ %rx_buf.3.lcssa.i.i, %for.end37.i.i.for.body22.i.i_crit_edge ]
  %count.120.i.i = phi i32 [ 0, %for.body22.lr.ph.i.i ], [ %inc39.i.i, %for.end37.i.i.for.body22.i.i_crit_edge ]
  %55 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %56, i32 384
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #7, !srcloc !175
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %59 = ptrtoint ptr %bytes_per_word26.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bytes_per_word26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp2715.not.i.i = icmp eq i32 %60, 0
  br i1 %cmp2715.not.i.i, label %for.body22.i.i.for.end37.i.i_crit_edge, label %for.body22.i.i.for.body29.i.i_crit_edge

for.body22.i.i.for.body29.i.i_crit_edge:          ; preds = %for.body22.i.i
  br label %for.body29.i.i

for.body22.i.i.for.end37.i.i_crit_edge:           ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37.i.i

for.body29.i.i:                                   ; preds = %for.body29.i.i.for.body29.i.i_crit_edge, %for.body22.i.i.for.body29.i.i_crit_edge
  %rx_buf.317.i.i = phi ptr [ %incdec.ptr34.i.i, %for.body29.i.i.for.body29.i.i_crit_edge ], [ %rx_buf.221.i.i, %for.body22.i.i.for.body29.i.i_crit_edge ]
  %i.116.i.i = phi i32 [ %inc36.i.i, %for.body29.i.i.for.body29.i.i_crit_edge ], [ 0, %for.body22.i.i.for.body29.i.i_crit_edge ]
  %mul30.i.i = shl i32 %i.116.i.i, 3
  %shr31.i.i = lshr i32 %58, %mul30.i.i
  %conv33.i.i = trunc i32 %shr31.i.i to i8
  %incdec.ptr34.i.i = getelementptr i8, ptr %rx_buf.317.i.i, i32 1
  %61 = ptrtoint ptr %rx_buf.317.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv33.i.i, ptr %rx_buf.317.i.i, align 1
  %inc36.i.i = add nuw i32 %i.116.i.i, 1
  %62 = ptrtoint ptr %bytes_per_word26.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bytes_per_word26.i.i, align 4
  %cmp27.i.i = icmp ult i32 %inc36.i.i, %63
  br i1 %cmp27.i.i, label %for.body29.i.i.for.body29.i.i_crit_edge, label %for.body29.i.i.for.end37.i.i_crit_edge

for.body29.i.i.for.end37.i.i_crit_edge:           ; preds = %for.body29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37.i.i

for.body29.i.i.for.body29.i.i_crit_edge:          ; preds = %for.body29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29.i.i

for.end37.i.i:                                    ; preds = %for.body29.i.i.for.end37.i.i_crit_edge, %for.body22.i.i.for.end37.i.i_crit_edge
  %rx_buf.3.lcssa.i.i = phi ptr [ %rx_buf.221.i.i, %for.body22.i.i.for.end37.i.i_crit_edge ], [ %incdec.ptr34.i.i, %for.body29.i.i.for.end37.i.i_crit_edge ]
  %inc39.i.i = add nuw nsw i32 %count.120.i.i, 1
  %exitcond23.not.i.i = icmp eq i32 %inc39.i.i, %shr.i.i
  br i1 %exitcond23.not.i.i, label %for.end37.i.i.for.end40.i.i_crit_edge, label %for.end37.i.i.for.body22.i.i_crit_edge

for.end37.i.i.for.body22.i.i_crit_edge:           ; preds = %for.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22.i.i

for.end37.i.i.for.end40.i.i_crit_edge:            ; preds = %for.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end40.i.i

for.end40.i.i:                                    ; preds = %for.end37.i.i.for.end40.i.i_crit_edge, %for.cond19.preheader.i.i.for.end40.i.i_crit_edge
  %bytes_per_word41.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 14
  br label %tegra_slink_read_rx_fifo_to_client_rxbuf.exit.i

tegra_slink_read_rx_fifo_to_client_rxbuf.exit.i:  ; preds = %for.end40.i.i, %for.end12.i.i
  %bytes_per_word41.sink.i.i = phi ptr [ %bytes_per_word41.i.i, %for.end40.i.i ], [ %bytes_per_word.i.i, %for.end12.i.i ]
  %shr.sink.i.i = phi i32 [ %shr.i.i, %for.end40.i.i ], [ %54, %for.end12.i.i ]
  %64 = ptrtoint ptr %bytes_per_word41.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bytes_per_word41.sink.i.i, align 4
  %mul42.i.i = mul i32 %65, %shr.sink.i.i
  %66 = ptrtoint ptr %cur_rx_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cur_rx_pos.i.i, align 4
  %add44.i.i = add i32 %67, %mul42.i.i
  store i32 %add44.i.i, ptr %cur_rx_pos.i.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %tegra_slink_read_rx_fifo_to_client_rxbuf.exit.i, %if.end.i.if.end23.i_crit_edge
  %68 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cur_direction.i, align 4
  %and25.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %cur_rx_pos.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 17
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 18
  %.sink.in.i = select i1 %tobool26.not.i, ptr %cur_rx_pos.i, ptr %cur_tx_pos.i
  %70 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %71 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 11
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink.i, ptr %71, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %.sink.i)
  %cmp31.i = icmp eq i32 %74, %.sink.i
  br i1 %cmp31.i, label %if.then33.i, label %if.end35.i

if.then33.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_completion34.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 34
  tail call void @complete(ptr noundef %xfer_completion34.i) #7
  br label %handle_cpu_based_xfer.exit

if.end35.i:                                       ; preds = %if.end23.i
  %sub.i.i = sub i32 %74, %.sink.i
  %bits_per_word1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %75 = ptrtoint ptr %bits_per_word1.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bits_per_word1.i.i, align 1
  %conv.i1.i = zext i8 %76 to i32
  %sub2.i.i = add nuw nsw i32 %conv.i1.i, 7
  %div1.i.i = lshr i32 %sub2.i.i, 3
  %bytes_per_word.i2.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 14
  %77 = ptrtoint ptr %bytes_per_word.i2.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div1.i.i, ptr %bytes_per_word.i2.i, align 4
  %78 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %76, label %if.else.i.i [
    i8 8, label %if.end35.i.if.then.i4.i_crit_edge
    i8 16, label %if.end35.i.if.then.i4.i_crit_edge69
  ]

if.end35.i.if.then.i4.i_crit_edge69:              ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i4.i

if.end35.i.if.then.i4.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i4.i

if.then.i4.i:                                     ; preds = %if.end35.i.if.then.i4.i_crit_edge, %if.end35.i.if.then.i4.i_crit_edge69
  %is_packed.i3.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 27
  %79 = ptrtoint ptr %is_packed.i3.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %is_packed.i3.i, align 4
  %div64.i.i = udiv i8 32, %76
  %div6.zext.i.i = zext i8 %div64.i.i to i32
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %is_packed7.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 27
  %80 = ptrtoint ptr %is_packed7.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %is_packed7.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i4.i
  %.sink.i.i = phi i32 [ 1, %if.else.i.i ], [ %div6.zext.i.i, %if.then.i4.i ]
  %words_per_32bit8.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 13
  %81 = ptrtoint ptr %words_per_32bit8.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %.sink.i.i, ptr %words_per_32bit8.i.i, align 4
  %switch.tableidx = add nsw i32 %div1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %82 = icmp ult i32 %switch.tableidx, 4
  br i1 %82, label %switch.lookup, label %if.end.i.i.tegra_slink_get_packed_size.exit.i.i_crit_edge

if.end.i.i.tegra_slink_get_packed_size.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_get_packed_size.exit.i.i

switch.lookup:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_slink_isr_thread, i32 0, i32 %switch.tableidx
  %83 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tegra_slink_get_packed_size.exit.i.i

tegra_slink_get_packed_size.exit.i.i:             ; preds = %switch.lookup, %if.end.i.i.tegra_slink_get_packed_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end.i.i.tegra_slink_get_packed_size.exit.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %packed_size.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 28
  %84 = ptrtoint ptr %packed_size.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %retval.0.i.i.i, ptr %packed_size.i.i, align 4
  %is_packed9.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 27
  %85 = ptrtoint ptr %is_packed9.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_packed9.i.i, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i5.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i5.i, label %if.else16.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %tegra_slink_get_packed_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_buf_size.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 20
  %87 = ptrtoint ptr %max_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_buf_size.i.i, align 4
  %89 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %88) #7
  %div14.i.i = udiv i32 %89, %div1.i.i
  br label %tegra_slink_calculate_curr_xfer_param.exit.i

if.else16.i.i:                                    ; preds = %tegra_slink_get_packed_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub17.i.i = add i32 %sub.i.i, -1
  %div19.i.i = udiv i32 %sub17.i.i, %div1.i.i
  %add20.i.i = add i32 %div19.i.i, 1
  %max_buf_size21.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 20
  %90 = ptrtoint ptr %max_buf_size21.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_buf_size21.i.i, align 4
  %div222.i.i = lshr i32 %91, 2
  %92 = tail call i32 @llvm.umin.i32(i32 %add20.i.i, i32 %div222.i.i) #7
  br label %tegra_slink_calculate_curr_xfer_param.exit.i

tegra_slink_calculate_curr_xfer_param.exit.i:     ; preds = %if.else16.i.i, %if.then10.i.i
  %div14.sink.i.i = phi i32 [ %92, %if.else16.i.i ], [ %div14.i.i, %if.then10.i.i ]
  %93 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 15
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %div14.sink.i.i, ptr %93, align 4
  tail call fastcc void @tegra_slink_start_cpu_based_transfer(ptr noundef %context_data, ptr noundef %3) #7
  br label %handle_cpu_based_xfer.exit

handle_cpu_based_xfer.exit:                       ; preds = %tegra_slink_calculate_curr_xfer_param.exit.i, %if.then33.i, %do.end10.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_direction.i5 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 16
  %95 = ptrtoint ptr %cur_direction.i5 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cur_direction.i5, align 4
  %and.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i6 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i6, label %if.end.if.end10.i_crit_edge, label %if.then.i

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end
  %tx_status.i7 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 24
  %97 = ptrtoint ptr %tx_status.i7 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_status.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool1.not.i = icmp eq i32 %98, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 40
  %99 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_dma_chan.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %102, i32 0, i32 47
  %103 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i8 = icmp eq ptr %104, null
  br i1 %tobool.not.i.i8, label %if.then2.i.if.end10.i_crit_edge, label %if.then.i.i9

if.then2.i.if.end10.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i.i9:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 %104(ptr noundef %100) #7
  br label %if.end10.i

if.else.i:                                        ; preds = %if.then.i
  %tx_dma_complete.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 23
  %call4.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %tx_dma_complete.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 1
  br i1 %cmp.i, label %if.then5.i, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.else.i
  %tx_dma_chan6.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 40
  %105 = ptrtoint ptr %tx_dma_chan6.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tx_dma_chan6.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %device_terminate_all.i1.i = getelementptr inbounds %struct.dma_device, ptr %108, i32 0, i32 47
  %109 = ptrtoint ptr %device_terminate_all.i1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device_terminate_all.i1.i, align 4
  %tobool.not.i2.i = icmp eq ptr %110, null
  br i1 %tobool.not.i2.i, label %if.then5.i.dmaengine_terminate_all.exit5.i_crit_edge, label %if.then.i4.i10

if.then5.i.dmaengine_terminate_all.exit5.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_all.exit5.i

if.then.i4.i10:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i3.i = tail call i32 %110(ptr noundef %106) #7
  br label %dmaengine_terminate_all.exit5.i

dmaengine_terminate_all.exit5.i:                  ; preds = %if.then.i4.i10, %if.then5.i.dmaengine_terminate_all.exit5.i_crit_edge
  %111 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %context_data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.64) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %dmaengine_terminate_all.exit5.i, %if.else.i.if.end10.i_crit_edge, %if.then.i.i9, %if.then2.i.if.end10.i_crit_edge, %if.end.if.end10.i_crit_edge
  %tobool43.not.i = phi i1 [ false, %if.then.i.i9 ], [ false, %if.then2.i.if.end10.i_crit_edge ], [ false, %dmaengine_terminate_all.exit5.i ], [ true, %if.else.i.if.end10.i_crit_edge ], [ true, %if.end.if.end10.i_crit_edge ]
  %113 = ptrtoint ptr %cur_direction.i5 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cur_direction.i5, align 4
  %and12.i = and i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.do.body35.i_crit_edge, label %if.then14.i

if.end10.i.do.body35.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.i

if.then14.i:                                      ; preds = %if.end10.i
  %rx_status.i11 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 25
  %115 = ptrtoint ptr %rx_status.i11 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_status.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool15.not.i = icmp eq i32 %116, 0
  br i1 %tobool15.not.i, label %if.else19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then14.i
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 36
  %117 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rx_dma_chan.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %device_terminate_all.i6.i = getelementptr inbounds %struct.dma_device, ptr %120, i32 0, i32 47
  %121 = ptrtoint ptr %device_terminate_all.i6.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %device_terminate_all.i6.i, align 4
  %tobool.not.i7.i = icmp eq ptr %122, null
  br i1 %tobool.not.i7.i, label %if.then16.i.do.body35.thread.i_crit_edge, label %if.then.i9.i

if.then16.i.do.body35.thread.i_crit_edge:         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.thread.i

if.then.i9.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i8.i = tail call i32 %122(ptr noundef %118) #7
  br label %do.body35.thread.i

if.else19.i:                                      ; preds = %if.then14.i
  %rx_dma_complete.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 22
  %call21.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %rx_dma_complete.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 1
  br i1 %cmp22.i, label %if.then23.i, label %if.else19.i.do.body35.i_crit_edge

if.else19.i.do.body35.i_crit_edge:                ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.i

if.then23.i:                                      ; preds = %if.else19.i
  %rx_dma_chan24.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 36
  %123 = ptrtoint ptr %rx_dma_chan24.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rx_dma_chan24.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %device_terminate_all.i11.i = getelementptr inbounds %struct.dma_device, ptr %126, i32 0, i32 47
  %127 = ptrtoint ptr %device_terminate_all.i11.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %device_terminate_all.i11.i, align 4
  %tobool.not.i12.i = icmp eq ptr %128, null
  br i1 %tobool.not.i12.i, label %if.then23.i.dmaengine_terminate_all.exit15.i_crit_edge, label %if.then.i14.i

if.then23.i.dmaengine_terminate_all.exit15.i_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_all.exit15.i

if.then.i14.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i13.i = tail call i32 %128(ptr noundef %124) #7
  br label %dmaengine_terminate_all.exit15.i

dmaengine_terminate_all.exit15.i:                 ; preds = %if.then.i14.i, %if.then23.i.dmaengine_terminate_all.exit15.i_crit_edge
  %129 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %context_data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.67) #10
  br label %do.body35.thread.i

do.body35.thread.i:                               ; preds = %dmaengine_terminate_all.exit15.i, %if.then.i9.i, %if.then16.i.do.body35.thread.i_crit_edge
  %lock26.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 3
  %call3827.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock26.i) #7
  br label %do.end47.i

do.body35.i:                                      ; preds = %if.else19.i.do.body35.i_crit_edge, %if.end10.i.do.body35.i_crit_edge
  %lock.i12 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 3
  %call38.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i12) #7
  br i1 %tobool43.not.i, label %if.end57.i, label %do.body35.i.do.end47.i_crit_edge

do.body35.i.do.end47.i_crit_edge:                 ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47.i

do.end47.i:                                       ; preds = %do.body35.i.do.end47.i_crit_edge, %do.body35.thread.i
  %call3830.i = phi i32 [ %call3827.i, %do.body35.thread.i ], [ %call38.i, %do.body35.i.do.end47.i_crit_edge ]
  %lock29.i = phi ptr [ %lock26.i, %do.body35.thread.i ], [ %lock.i12, %do.body35.i.do.end47.i_crit_edge ]
  %131 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %context_data, align 4
  %status_reg.i13 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 26
  %133 = ptrtoint ptr %status_reg.i13 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %status_reg.i13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.70, i32 noundef %134) #10
  %135 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %context_data, align 4
  %command_reg.i14 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 29
  %137 = ptrtoint ptr %command_reg.i14 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %command_reg.i14, align 4
  %command2_reg.i15 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 30
  %139 = ptrtoint ptr %command2_reg.i15 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %command2_reg.i15, align 4
  %dma_control_reg.i16 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 31
  %141 = ptrtoint ptr %dma_control_reg.i16 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dma_control_reg.i16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.73, i32 noundef %138, i32 noundef %140, i32 noundef %142) #10
  %rst.i17 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 5
  %143 = ptrtoint ptr %rst.i17 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rst.i17, align 4
  %call53.i = tail call i32 @reset_control_assert(ptr noundef %144) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 429496) #7
  %146 = ptrtoint ptr %rst.i17 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rst.i17, align 4
  %call55.i = tail call i32 @reset_control_assert(ptr noundef %147) #7
  %xfer_completion.i18 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 34
  tail call void @complete(ptr noundef %xfer_completion.i18) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock29.i, i32 noundef %call3830.i) #7
  br label %cleanup

if.end57.i:                                       ; preds = %do.body35.i
  %148 = ptrtoint ptr %cur_direction.i5 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cur_direction.i5, align 4
  %and59.i = and i32 %149, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.end57.i.if.end62.i_crit_edge, label %if.then61.i

if.end57.i.if.end62.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then61.i:                                      ; preds = %if.end57.i
  %150 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %context_data, align 4
  %rx_dma_phys.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 38
  %152 = ptrtoint ptr %rx_dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rx_dma_phys.i.i, align 4
  %dma_buf_size.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 19
  %154 = ptrtoint ptr %dma_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %dma_buf_size.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %151, i32 noundef %153, i32 noundef %155, i32 noundef 2) #7
  %is_packed.i.i19 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 27
  %156 = ptrtoint ptr %is_packed.i.i19 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %is_packed.i.i19, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i16.i = icmp eq i8 %157, 0
  br i1 %tobool.not.i16.i, label %if.else.i.i27, label %if.then.i17.i

if.then.i17.i:                                    ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #9
  %curr_dma_words.i.i20 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 15
  %158 = ptrtoint ptr %curr_dma_words.i.i20 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %curr_dma_words.i.i20, align 4
  %bytes_per_word.i.i21 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 14
  %160 = ptrtoint ptr %bytes_per_word.i.i21 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %bytes_per_word.i.i21, align 4
  %mul.i.i22 = mul i32 %161, %159
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %162 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rx_buf.i.i, align 4
  %cur_rx_pos.i.i23 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 17
  %164 = ptrtoint ptr %cur_rx_pos.i.i23 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cur_rx_pos.i.i23, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %163, i32 %165
  %rx_dma_buf.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 37
  %166 = ptrtoint ptr %rx_dma_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rx_dma_buf.i.i, align 4
  %168 = call ptr @memcpy(ptr %add.ptr.i.i24, ptr %167, i32 %mul.i.i22)
  br label %tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i

if.else.i.i27:                                    ; preds = %if.then61.i
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %169 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bits_per_word.i.i, align 1
  %conv.i.i25 = zext i8 %170 to i32
  %notmask.i.i = shl nsw i32 -1, %conv.i.i25
  %sub.i.i26 = xor i32 %notmask.i.i, -1
  %curr_dma_words5.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 15
  %171 = ptrtoint ptr %curr_dma_words5.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %curr_dma_words5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp52.not.i.i = icmp eq i32 %172, 0
  br i1 %cmp52.not.i.i, label %if.else.i.i27.tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.else.i.i27.tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge: ; preds = %if.else.i.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i.i27
  %rx_buf2.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %173 = ptrtoint ptr %rx_buf2.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rx_buf2.i.i, align 4
  %cur_rx_pos3.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 17
  %175 = ptrtoint ptr %cur_rx_pos3.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %cur_rx_pos3.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %174, i32 %176
  %rx_dma_buf7.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 37
  %bytes_per_word9.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 14
  br label %for.body.i.i28

for.body.i.i28:                                   ; preds = %for.end.i.i32.for.body.i.i28_crit_edge, %for.body.lr.ph.i.i
  %rx_buf1.054.i.i = phi ptr [ %add.ptr4.i.i, %for.body.lr.ph.i.i ], [ %rx_buf1.1.lcssa.i.i, %for.end.i.i32.for.body.i.i28_crit_edge ]
  %count.053.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc17.i.i, %for.end.i.i32.for.body.i.i28_crit_edge ]
  %177 = ptrtoint ptr %rx_dma_buf7.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rx_dma_buf7.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %178, i32 %count.053.i.i
  %179 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %180, %sub.i.i26
  %181 = ptrtoint ptr %bytes_per_word9.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bytes_per_word9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp1049.not.i.i = icmp eq i32 %182, 0
  br i1 %cmp1049.not.i.i, label %for.body.i.i28.for.end.i.i32_crit_edge, label %for.body.i.i28.for.body12.i.i_crit_edge

for.body.i.i28.for.body12.i.i_crit_edge:          ; preds = %for.body.i.i28
  br label %for.body12.i.i

for.body.i.i28.for.end.i.i32_crit_edge:           ; preds = %for.body.i.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i32

for.body12.i.i:                                   ; preds = %for.body12.i.i.for.body12.i.i_crit_edge, %for.body.i.i28.for.body12.i.i_crit_edge
  %rx_buf1.151.i.i = phi ptr [ %incdec.ptr.i.i30, %for.body12.i.i.for.body12.i.i_crit_edge ], [ %rx_buf1.054.i.i, %for.body.i.i28.for.body12.i.i_crit_edge ]
  %i.050.i.i = phi i32 [ %inc.i.i31, %for.body12.i.i.for.body12.i.i_crit_edge ], [ 0, %for.body.i.i28.for.body12.i.i_crit_edge ]
  %mul13.i.i = shl i32 %i.050.i.i, 3
  %shr.i.i29 = lshr i32 %and.i.i, %mul13.i.i
  %conv15.i.i = trunc i32 %shr.i.i29 to i8
  %incdec.ptr.i.i30 = getelementptr i8, ptr %rx_buf1.151.i.i, i32 1
  %183 = ptrtoint ptr %rx_buf1.151.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv15.i.i, ptr %rx_buf1.151.i.i, align 1
  %inc.i.i31 = add nuw i32 %i.050.i.i, 1
  %184 = ptrtoint ptr %bytes_per_word9.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %bytes_per_word9.i.i, align 4
  %cmp10.i.i = icmp ult i32 %inc.i.i31, %185
  br i1 %cmp10.i.i, label %for.body12.i.i.for.body12.i.i_crit_edge, label %for.body12.i.i.for.end.i.i32_crit_edge

for.body12.i.i.for.end.i.i32_crit_edge:           ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i32

for.body12.i.i.for.body12.i.i_crit_edge:          ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.i.i

for.end.i.i32:                                    ; preds = %for.body12.i.i.for.end.i.i32_crit_edge, %for.body.i.i28.for.end.i.i32_crit_edge
  %rx_buf1.1.lcssa.i.i = phi ptr [ %rx_buf1.054.i.i, %for.body.i.i28.for.end.i.i32_crit_edge ], [ %incdec.ptr.i.i30, %for.body12.i.i.for.end.i.i32_crit_edge ]
  %inc17.i.i = add nuw i32 %count.053.i.i, 1
  %186 = ptrtoint ptr %curr_dma_words5.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %curr_dma_words5.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc17.i.i, %187
  br i1 %cmp.i.i, label %for.end.i.i32.for.body.i.i28_crit_edge, label %for.end.i.i32.tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge

for.end.i.i32.tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge: ; preds = %for.end.i.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i

for.end.i.i32.for.body.i.i28_crit_edge:           ; preds = %for.end.i.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i28

tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i: ; preds = %for.end.i.i32.tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge, %if.else.i.i27.tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge, %if.then.i17.i
  %curr_dma_words19.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 15
  %188 = ptrtoint ptr %curr_dma_words19.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %curr_dma_words19.i.i, align 4
  %bytes_per_word20.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 14
  %190 = ptrtoint ptr %bytes_per_word20.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %bytes_per_word20.i.i, align 4
  %mul21.i.i = mul i32 %191, %189
  %cur_rx_pos22.i.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 17
  %192 = ptrtoint ptr %cur_rx_pos22.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %cur_rx_pos22.i.i, align 4
  %add.i.i = add i32 %193, %mul21.i.i
  store i32 %add.i.i, ptr %cur_rx_pos22.i.i, align 4
  %194 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %context_data, align 4
  %196 = ptrtoint ptr %rx_dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rx_dma_phys.i.i, align 4
  %198 = ptrtoint ptr %dma_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dma_buf_size.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %195, i32 noundef %197, i32 noundef %199, i32 noundef 2) #7
  br label %if.end62.i

if.end62.i:                                       ; preds = %tegra_slink_copy_spi_rxbuf_to_client_rxbuf.exit.i, %if.end57.i.if.end62.i_crit_edge
  %200 = ptrtoint ptr %cur_direction.i5 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %cur_direction.i5, align 4
  %and64.i = and i32 %201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  %cur_rx_pos.i33 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 17
  %cur_tx_pos.i34 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 18
  %.sink.in.i35 = select i1 %tobool65.not.i, ptr %cur_rx_pos.i33, ptr %cur_tx_pos.i34
  %202 = ptrtoint ptr %.sink.in.i35 to i32
  call void @__asan_load4_noabort(i32 %202)
  %.sink.i36 = load i32, ptr %.sink.in.i35, align 4
  %203 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 11
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %.sink.i36, ptr %203, align 4
  %len.i37 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %205 = ptrtoint ptr %len.i37 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %len.i37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %.sink.i36)
  %cmp71.i = icmp eq i32 %206, %.sink.i36
  br i1 %cmp71.i, label %if.then73.i, label %if.end75.i

if.then73.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_completion74.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 34
  tail call void @complete(ptr noundef %xfer_completion74.i) #7
  br label %exit.i

if.end75.i:                                       ; preds = %if.end62.i
  %sub.i18.i = sub i32 %206, %.sink.i36
  %bits_per_word1.i.i38 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %207 = ptrtoint ptr %bits_per_word1.i.i38 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %bits_per_word1.i.i38, align 1
  %conv.i19.i = zext i8 %208 to i32
  %sub2.i.i39 = add nuw nsw i32 %conv.i19.i, 7
  %div1.i.i40 = lshr i32 %sub2.i.i39, 3
  %bytes_per_word.i20.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 14
  %209 = ptrtoint ptr %bytes_per_word.i20.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %div1.i.i40, ptr %bytes_per_word.i20.i, align 4
  %210 = zext i8 %208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %208, label %if.else.i23.i [
    i8 8, label %if.end75.i.if.then.i22.i_crit_edge
    i8 16, label %if.end75.i.if.then.i22.i_crit_edge70
  ]

if.end75.i.if.then.i22.i_crit_edge70:             ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i22.i

if.end75.i.if.then.i22.i_crit_edge:               ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i22.i

if.then.i22.i:                                    ; preds = %if.end75.i.if.then.i22.i_crit_edge, %if.end75.i.if.then.i22.i_crit_edge70
  %is_packed.i21.i = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 27
  %211 = ptrtoint ptr %is_packed.i21.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 1, ptr %is_packed.i21.i, align 4
  %div64.i.i41 = udiv i8 32, %208
  %div6.zext.i.i42 = zext i8 %div64.i.i41 to i32
  br label %if.end.i.i46

if.else.i23.i:                                    ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  %is_packed7.i.i43 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 27
  %212 = ptrtoint ptr %is_packed7.i.i43 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 0, ptr %is_packed7.i.i43, align 4
  br label %if.end.i.i46

if.end.i.i46:                                     ; preds = %if.else.i23.i, %if.then.i22.i
  %.sink.i.i44 = phi i32 [ 1, %if.else.i23.i ], [ %div6.zext.i.i42, %if.then.i22.i ]
  %words_per_32bit8.i.i45 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 13
  %213 = ptrtoint ptr %words_per_32bit8.i.i45 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %.sink.i.i44, ptr %words_per_32bit8.i.i45, align 4
  %switch.tableidx66 = add nsw i32 %div1.i.i40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx66)
  %214 = icmp ult i32 %switch.tableidx66, 4
  br i1 %214, label %switch.lookup65, label %if.end.i.i46.tegra_slink_get_packed_size.exit.i.i53_crit_edge

if.end.i.i46.tegra_slink_get_packed_size.exit.i.i53_crit_edge: ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_get_packed_size.exit.i.i53

switch.lookup65:                                  ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep67 = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_slink_isr_thread.78, i32 0, i32 %switch.tableidx66
  %215 = ptrtoint ptr %switch.gep67 to i32
  call void @__asan_load4_noabort(i32 %215)
  %switch.load68 = load i32, ptr %switch.gep67, align 4
  br label %tegra_slink_get_packed_size.exit.i.i53

tegra_slink_get_packed_size.exit.i.i53:           ; preds = %switch.lookup65, %if.end.i.i46.tegra_slink_get_packed_size.exit.i.i53_crit_edge
  %retval.0.i.i.i50 = phi i32 [ 0, %if.end.i.i46.tegra_slink_get_packed_size.exit.i.i53_crit_edge ], [ %switch.load68, %switch.lookup65 ]
  %packed_size.i.i51 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 28
  %216 = ptrtoint ptr %packed_size.i.i51 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %retval.0.i.i.i50, ptr %packed_size.i.i51, align 4
  %is_packed9.i.i52 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 27
  %217 = ptrtoint ptr %is_packed9.i.i52 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %is_packed9.i.i52, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.i24.i = icmp eq i8 %218, 0
  br i1 %tobool.not.i24.i, label %if.else16.i.i62, label %if.then10.i.i56

if.then10.i.i56:                                  ; preds = %tegra_slink_get_packed_size.exit.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  %max_buf_size.i.i54 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 20
  %219 = ptrtoint ptr %max_buf_size.i.i54 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %max_buf_size.i.i54, align 4
  %221 = tail call i32 @llvm.umin.i32(i32 %sub.i18.i, i32 %220) #7
  %div14.i.i55 = udiv i32 %221, %div1.i.i40
  %div153.i.i = lshr i32 %221, 2
  br label %tegra_slink_calculate_curr_xfer_param.exit.i64

if.else16.i.i62:                                  ; preds = %tegra_slink_get_packed_size.exit.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  %sub17.i.i57 = add i32 %sub.i18.i, -1
  %div19.i.i58 = udiv i32 %sub17.i.i57, %div1.i.i40
  %add20.i.i59 = add i32 %div19.i.i58, 1
  %max_buf_size21.i.i60 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 20
  %222 = ptrtoint ptr %max_buf_size21.i.i60 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %max_buf_size21.i.i60, align 4
  %div222.i.i61 = lshr i32 %223, 2
  %224 = tail call i32 @llvm.umin.i32(i32 %add20.i.i59, i32 %div222.i.i61) #7
  br label %tegra_slink_calculate_curr_xfer_param.exit.i64

tegra_slink_calculate_curr_xfer_param.exit.i64:   ; preds = %if.else16.i.i62, %if.then10.i.i56
  %div14.sink.i.i63 = phi i32 [ %224, %if.else16.i.i62 ], [ %div14.i.i55, %if.then10.i.i56 ]
  %total_fifo_words.0.i.i = phi i32 [ %224, %if.else16.i.i62 ], [ %div153.i.i, %if.then10.i.i56 ]
  %225 = getelementptr inbounds %struct.tegra_slink_data, ptr %context_data, i32 0, i32 15
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %div14.sink.i.i63, ptr %225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %total_fifo_words.0.i.i)
  %cmp77.i = icmp ugt i32 %total_fifo_words.0.i.i, 32
  br i1 %cmp77.i, label %if.then79.i, label %if.else81.i

if.then79.i:                                      ; preds = %tegra_slink_calculate_curr_xfer_param.exit.i64
  call void @__sanitizer_cov_trace_pc() #9
  %call80.i = tail call fastcc i32 @tegra_slink_start_dma_based_transfer(ptr noundef %context_data, ptr noundef %3) #7
  br label %exit.i

if.else81.i:                                      ; preds = %tegra_slink_calculate_curr_xfer_param.exit.i64
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tegra_slink_start_cpu_based_transfer(ptr noundef %context_data, ptr noundef %3) #7
  br label %exit.i

exit.i:                                           ; preds = %if.else81.i, %if.then79.i, %if.then73.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i12, i32 noundef %call38.i) #7
  br label %cleanup

cleanup:                                          ; preds = %exit.i, %do.end47.i, %handle_cpu_based_xfer.exit
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_slink_deinit_dma_param(ptr nocapture noundef %tspi, i1 noundef zeroext %dma_to_memory) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %dma_to_memory, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_dma_buf = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 37
  %rx_dma_chan = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 36
  %rx_dma_phys = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 38
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_dma_buf = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 41
  %tx_dma_chan = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 40
  %tx_dma_phys = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tx_dma_phys.sink = phi ptr [ %tx_dma_phys, %if.else ], [ %rx_dma_phys, %if.then ]
  %tx_dma_buf.sink = phi ptr [ %tx_dma_buf, %if.else ], [ %rx_dma_chan, %if.then ]
  %tx_dma_chan.sink = phi ptr [ %tx_dma_chan, %if.else ], [ %rx_dma_buf, %if.then ]
  %dma_buf.0.in = phi ptr [ %tx_dma_buf, %if.else ], [ %rx_dma_buf, %if.then ]
  %dma_chan.0.in = phi ptr [ %tx_dma_chan, %if.else ], [ %rx_dma_chan, %if.then ]
  %0 = ptrtoint ptr %dma_chan.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %dma_chan.0 = load ptr, ptr %dma_chan.0.in, align 4
  %1 = ptrtoint ptr %dma_buf.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %dma_buf.0 = load ptr, ptr %dma_buf.0.in, align 4
  %2 = ptrtoint ptr %tx_dma_phys.sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_dma_phys.sink, align 4
  %4 = ptrtoint ptr %tx_dma_buf.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tx_dma_buf.sink, align 4
  %5 = ptrtoint ptr %tx_dma_chan.sink to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tx_dma_chan.sink, align 4
  %tobool5.not = icmp eq ptr %dma_chan.0, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tspi, align 4
  %dma_buf_size = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 19
  %8 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_buf_size, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef %dma_buf.0, i32 noundef %3, i32 noundef 0) #7
  tail call void @dma_release_channel(ptr noundef nonnull %dma_chan.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_slink_start_dma_based_transfer(ptr noundef %tspi, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  %sg.i.i146 = alloca %struct.scatterlist, align 4
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 6
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !175
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %and = and i32 %3, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 10485760, i32 %and)
  %cmp.not = icmp eq i32 %and, 10485760
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tspi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.41, i32 noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %curr_dma_words = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 15
  %6 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr_dma_words, align 4
  %sub = add i32 %7, 65535
  %and1 = and i32 %sub, 65535
  %packed_size = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 28
  %8 = ptrtoint ptr %packed_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %packed_size, align 4
  %or = or i32 %and1, %9
  %is_packed = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 27
  %10 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_packed, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bytes_per_word = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 14
  %12 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes_per_word, align 4
  %mul = mul i32 %13, %7
  %sub4 = add i32 %mul, 3
  %div136 = and i32 %sub4, -4
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul7 = shl i32 %7, 2
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %len.0 = phi i32 [ %div136, %if.then2 ], [ %mul7, %if.else ]
  %and9 = and i32 %len.0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else13, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else13:                                        ; preds = %if.end8
  %14 = and i32 %len.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  %or17 = or i32 %or, 327680
  br label %if.end21

if.else18:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  %or19 = or i32 %or, 655360
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then16, %if.end8.if.end21_crit_edge
  %val.0 = phi i32 [ %or17, %if.then16 ], [ %or19, %if.else18 ], [ %or, %if.end8.if.end21_crit_edge ]
  %cur_direction = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 16
  %15 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_direction, align 4
  %and22 = shl i32 %16, 26
  %17 = and i32 %and22, 67108864
  %18 = or i32 %17, %val.0
  %19 = and i32 %and22, 134217728
  %20 = or i32 %18, %19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %21) #7, !srcloc !174
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %dma_control_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 31
  %27 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %20, ptr %dma_control_reg, align 4
  %28 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cur_direction, align 4
  %and34 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end21.if.end52_crit_edge, label %if.then36

if.end21.if.end52_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then36:                                        ; preds = %if.end21
  %30 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tspi, align 4
  %tx_dma_phys.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 42
  %32 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_dma_phys.i, align 4
  %dma_buf_size.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 19
  %34 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_buf_size.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef 1) #7
  %36 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_packed, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %curr_dma_words, align 4
  %bytes_per_word.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 14
  %40 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bytes_per_word.i, align 4
  %mul.i = mul i32 %41, %39
  %tx_dma_buf.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 41
  %42 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_dma_buf.i, align 4
  %44 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %t, align 4
  %cur_pos.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 11
  %46 = ptrtoint ptr %cur_pos.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cur_pos.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %45, i32 %47
  %48 = call ptr @memcpy(ptr %43, ptr %add.ptr.i139, i32 %mul.i)
  br label %tegra_slink_copy_client_txbuf_to_spi_txbuf.exit

if.else.i:                                        ; preds = %if.then36
  %bytes_per_word5.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 14
  %49 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %curr_dma_words, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp61.not.i = icmp eq i32 %50, 0
  br i1 %cmp61.not.i, label %if.else.i.tegra_slink_copy_client_txbuf_to_spi_txbuf.exit_crit_edge, label %for.cond8.preheader.lr.ph.i

if.else.i.tegra_slink_copy_client_txbuf_to_spi_txbuf.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_copy_client_txbuf_to_spi_txbuf.exit

for.cond8.preheader.lr.ph.i:                      ; preds = %if.else.i
  %51 = ptrtoint ptr %bytes_per_word5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytes_per_word5.i, align 4
  %mul6.i = mul i32 %52, %50
  %53 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %t, align 4
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 18
  %55 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cur_tx_pos.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %54, i32 %56
  %tx_dma_buf14.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 41
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.end.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.lr.ph.i
  %consume.064.i = phi i32 [ %mul6.i, %for.cond8.preheader.lr.ph.i ], [ %consume.1.lcssa.i, %for.end.i.for.cond8.preheader.i_crit_edge ]
  %tx_buf1.063.i = phi ptr [ %add.ptr3.i, %for.cond8.preheader.lr.ph.i ], [ %tx_buf1.1.lcssa.i, %for.end.i.for.cond8.preheader.i_crit_edge ]
  %count.062.i = phi i32 [ 0, %for.cond8.preheader.lr.ph.i ], [ %inc16.i, %for.end.i.for.cond8.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume.064.i)
  %tobool9.not51.i = icmp eq i32 %consume.064.i, 0
  br i1 %tobool9.not51.i, label %for.cond8.preheader.i.for.end.i_crit_edge, label %land.rhs.lr.ph.i

for.cond8.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %for.cond8.preheader.i
  %57 = ptrtoint ptr %bytes_per_word5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bytes_per_word5.i, align 4
  %59 = add i32 %consume.064.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %58, i32 %59) #7
  %uglygep.i = getelementptr i8, ptr %tx_buf1.063.i, i32 %umin.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body12.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %x.055.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %or.i, %for.body12.i.land.rhs.i_crit_edge ]
  %consume.154.i = phi i32 [ %consume.064.i, %land.rhs.lr.ph.i ], [ %dec.i, %for.body12.i.land.rhs.i_crit_edge ]
  %tx_buf1.153.i = phi ptr [ %tx_buf1.063.i, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %for.body12.i.land.rhs.i_crit_edge ]
  %i.052.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.body12.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.052.i, i32 %58)
  %exitcond.not.i = icmp eq i32 %i.052.i, %58
  br i1 %exitcond.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body12.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body12.i:                                     ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, ptr %tx_buf1.153.i, i32 1
  %60 = ptrtoint ptr %tx_buf1.153.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tx_buf1.153.i, align 1
  %conv.i = zext i8 %61 to i32
  %mul13.i = shl i32 %i.052.i, 3
  %shl.i = shl i32 %conv.i, %mul13.i
  %or.i = or i32 %shl.i, %x.055.i
  %inc.i = add nuw i32 %i.052.i, 1
  %dec.i = add i32 %consume.154.i, -1
  %tobool9.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool9.not.i, label %for.body12.i.for.end.i_crit_edge, label %for.body12.i.land.rhs.i_crit_edge

for.body12.i.land.rhs.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.body12.i.for.end.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body12.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %for.cond8.preheader.i.for.end.i_crit_edge
  %tx_buf1.1.lcssa.i = phi ptr [ %tx_buf1.063.i, %for.cond8.preheader.i.for.end.i_crit_edge ], [ %uglygep.i, %land.rhs.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body12.i.for.end.i_crit_edge ]
  %consume.1.lcssa.i = phi i32 [ 0, %for.cond8.preheader.i.for.end.i_crit_edge ], [ %consume.154.i, %land.rhs.i.for.end.i_crit_edge ], [ 0, %for.body12.i.for.end.i_crit_edge ]
  %x.0.lcssa.i = phi i32 [ 0, %for.cond8.preheader.i.for.end.i_crit_edge ], [ %x.055.i, %land.rhs.i.for.end.i_crit_edge ], [ %or.i, %for.body12.i.for.end.i_crit_edge ]
  %62 = ptrtoint ptr %tx_dma_buf14.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_dma_buf14.i, align 4
  %arrayidx.i = getelementptr i32, ptr %63, i32 %count.062.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %x.0.lcssa.i, ptr %arrayidx.i, align 4
  %inc16.i = add nuw i32 %count.062.i, 1
  %65 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %curr_dma_words, align 4
  %cmp.i = icmp ult i32 %inc16.i, %66
  br i1 %cmp.i, label %for.end.i.for.cond8.preheader.i_crit_edge, label %for.end.i.tegra_slink_copy_client_txbuf_to_spi_txbuf.exit_crit_edge

for.end.i.tegra_slink_copy_client_txbuf_to_spi_txbuf.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_copy_client_txbuf_to_spi_txbuf.exit

for.end.i.for.cond8.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i

tegra_slink_copy_client_txbuf_to_spi_txbuf.exit:  ; preds = %for.end.i.tegra_slink_copy_client_txbuf_to_spi_txbuf.exit_crit_edge, %if.else.i.tegra_slink_copy_client_txbuf_to_spi_txbuf.exit_crit_edge, %if.then.i
  %67 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %curr_dma_words, align 4
  %bytes_per_word19.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 14
  %69 = ptrtoint ptr %bytes_per_word19.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bytes_per_word19.i, align 4
  %mul20.i = mul i32 %70, %68
  %cur_tx_pos21.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 18
  %71 = ptrtoint ptr %cur_tx_pos21.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cur_tx_pos21.i, align 4
  %add.i = add i32 %72, %mul20.i
  store i32 %add.i, ptr %cur_tx_pos21.i, align 4
  %73 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tspi, align 4
  %75 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_dma_phys.i, align 4
  %77 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_buf_size.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef 1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  %tx_dma_complete.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 23
  %79 = ptrtoint ptr %tx_dma_complete.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %tx_dma_complete.i, align 4
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 40
  %80 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tx_dma_chan.i, align 4
  %82 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_dma_phys.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #7
  %84 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %85 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %86 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #7
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %83, ptr %84, align 4
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %len.0, ptr %85, align 4
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %tegra_slink_copy_client_txbuf_to_spi_txbuf.exit.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

tegra_slink_copy_client_txbuf_to_spi_txbuf.exit.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %tegra_slink_copy_client_txbuf_to_spi_txbuf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %tegra_slink_copy_client_txbuf_to_spi_txbuf.exit
  %89 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %81, align 4
  %tobool1.not.i.i = icmp eq ptr %90, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %90, i32 0, i32 39
  %91 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %92, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %tegra_slink_copy_client_txbuf_to_spi_txbuf.exit.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  %tx_dma_desc20.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 43
  %93 = ptrtoint ptr %tx_dma_desc20.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %tx_dma_desc20.i, align 4
  br label %do.end45

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %92(ptr noundef nonnull %81, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  %tx_dma_desc.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 43
  %94 = ptrtoint ptr %tx_dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i.i, ptr %tx_dma_desc.i, align 4
  %tobool.not.i141 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i141, label %dmaengine_prep_slave_single.exit.i.do.end45_crit_edge, label %if.end47

dmaengine_prep_slave_single.exit.i.do.end45_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.end45:                                         ; preds = %dmaengine_prep_slave_single.exit.i.do.end45_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %95 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.49) #10
  %97 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.44, i32 noundef -5) #10
  br label %cleanup

if.end47:                                         ; preds = %dmaengine_prep_slave_single.exit.i
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %99 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @tegra_slink_dma_complete, ptr %callback.i, align 4
  %100 = ptrtoint ptr %tx_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tx_dma_desc.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %tx_dma_complete.i, ptr %callback_param.i, align 4
  %103 = load ptr, ptr %tx_dma_desc.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i18.i = call i32 %105(ptr noundef %103) #7
  %106 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tx_dma_chan.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %109, i32 0, i32 50
  %110 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %111(ptr noundef %107) #7
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %113, i32 8
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #7, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %115 = and i32 %114, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool50.not184 = icmp eq i32 %115, 0
  br i1 %tobool50.not184, label %if.end47.while.body_crit_edge, label %if.end47.if.end52_crit_edge

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end47.while.body_crit_edge
  %116 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %117, i32 8
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #7, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %119 = and i32 %118, 4096
  %tobool50.not = icmp eq i32 %119, 0
  br i1 %tobool50.not, label %while.body.while.body_crit_edge, label %while.body.if.end52_crit_edge

while.body.if.end52_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end52:                                         ; preds = %while.body.if.end52_crit_edge, %if.end47.if.end52_crit_edge, %if.end21.if.end52_crit_edge
  %120 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cur_direction, align 4
  %and54 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end72_crit_edge, label %if.then56

if.end52.if.end72_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then56:                                        ; preds = %if.end52
  %122 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tspi, align 4
  %rx_dma_phys = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 38
  %124 = ptrtoint ptr %rx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_dma_phys, align 4
  %dma_buf_size = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 19
  %126 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dma_buf_size, align 4
  call void @dma_sync_single_for_device(ptr noundef %123, i32 noundef %125, i32 noundef %127, i32 noundef 2) #7
  %rx_dma_complete.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 22
  %128 = ptrtoint ptr %rx_dma_complete.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %rx_dma_complete.i, align 4
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 36
  %129 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rx_dma_chan.i, align 4
  %131 = ptrtoint ptr %rx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rx_dma_phys, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i146) #7
  %133 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i146, i32 0, i32 3
  %134 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i146, i32 0, i32 4
  %135 = call ptr @memset(ptr %sg.i.i146, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i146, i32 noundef 1) #7
  %136 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %132, ptr %133, align 4
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %len.0, ptr %134, align 4
  %tobool.not.i.i147 = icmp eq ptr %130, null
  br i1 %tobool.not.i.i147, label %if.then56.dmaengine_prep_slave_single.exit.thread.i153_crit_edge, label %lor.lhs.false.i.i149

if.then56.dmaengine_prep_slave_single.exit.thread.i153_crit_edge: ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i153

lor.lhs.false.i.i149:                             ; preds = %if.then56
  %138 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %130, align 4
  %tobool1.not.i.i148 = icmp eq ptr %139, null
  br i1 %tobool1.not.i.i148, label %lor.lhs.false.i.i149.dmaengine_prep_slave_single.exit.thread.i153_crit_edge, label %lor.lhs.false2.i.i152

lor.lhs.false.i.i149.dmaengine_prep_slave_single.exit.thread.i153_crit_edge: ; preds = %lor.lhs.false.i.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i153

lor.lhs.false2.i.i152:                            ; preds = %lor.lhs.false.i.i149
  %device_prep_slave_sg.i.i150 = getelementptr inbounds %struct.dma_device, ptr %139, i32 0, i32 39
  %140 = ptrtoint ptr %device_prep_slave_sg.i.i150 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %device_prep_slave_sg.i.i150, align 4
  %tobool4.not.i.i151 = icmp eq ptr %141, null
  br i1 %tobool4.not.i.i151, label %lor.lhs.false2.i.i152.dmaengine_prep_slave_single.exit.thread.i153_crit_edge, label %dmaengine_prep_slave_single.exit.i156

lor.lhs.false2.i.i152.dmaengine_prep_slave_single.exit.thread.i153_crit_edge: ; preds = %lor.lhs.false2.i.i152
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i153

dmaengine_prep_slave_single.exit.thread.i153:     ; preds = %lor.lhs.false2.i.i152.dmaengine_prep_slave_single.exit.thread.i153_crit_edge, %lor.lhs.false.i.i149.dmaengine_prep_slave_single.exit.thread.i153_crit_edge, %if.then56.dmaengine_prep_slave_single.exit.thread.i153_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i146) #7
  %rx_dma_desc20.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 39
  %142 = ptrtoint ptr %rx_dma_desc20.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %rx_dma_desc20.i, align 4
  br label %do.end63

dmaengine_prep_slave_single.exit.i156:            ; preds = %lor.lhs.false2.i.i152
  %call.i.i154 = call ptr %141(ptr noundef nonnull %130, ptr noundef nonnull %sg.i.i146, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i146) #7
  %rx_dma_desc.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 39
  %143 = ptrtoint ptr %rx_dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i.i154, ptr %rx_dma_desc.i, align 4
  %tobool.not.i155 = icmp eq ptr %call.i.i154, null
  br i1 %tobool.not.i155, label %dmaengine_prep_slave_single.exit.i156.do.end63_crit_edge, label %tegra_slink_start_rx_dma.exit

dmaengine_prep_slave_single.exit.i156.do.end63_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i156
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

tegra_slink_start_rx_dma.exit:                    ; preds = %dmaengine_prep_slave_single.exit.i156
  call void @__sanitizer_cov_trace_pc() #9
  %callback.i158 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i154, i32 0, i32 6
  %144 = ptrtoint ptr %callback.i158 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @tegra_slink_dma_complete, ptr %callback.i158, align 4
  %145 = ptrtoint ptr %rx_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rx_dma_desc.i, align 4
  %callback_param.i159 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %146, i32 0, i32 8
  %147 = ptrtoint ptr %callback_param.i159 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %rx_dma_complete.i, ptr %callback_param.i159, align 4
  %148 = load ptr, ptr %rx_dma_desc.i, align 4
  %tx_submit.i.i160 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %tx_submit.i.i160 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tx_submit.i.i160, align 4
  %call.i18.i161 = call i32 %150(ptr noundef %148) #7
  %151 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rx_dma_chan.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %device_issue_pending.i.i162 = getelementptr inbounds %struct.dma_device, ptr %154, i32 0, i32 50
  %155 = ptrtoint ptr %device_issue_pending.i.i162 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device_issue_pending.i.i162, align 4
  call void %156(ptr noundef %152) #7
  br label %if.end72

do.end63:                                         ; preds = %dmaengine_prep_slave_single.exit.i156.do.end63_crit_edge, %dmaengine_prep_slave_single.exit.thread.i153
  %157 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.51) #10
  %159 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.47, i32 noundef -5) #10
  %161 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cur_direction, align 4
  %and66 = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.end63.cleanup_crit_edge, label %if.then68

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then68:                                        ; preds = %do.end63
  %tx_dma_chan = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 40
  %163 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tx_dma_chan, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %166, i32 0, i32 47
  %167 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i165 = icmp eq ptr %168, null
  br i1 %tobool.not.i165, label %if.then68.cleanup_crit_edge, label %if.then.i166

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i166:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 %168(ptr noundef %164) #7
  br label %cleanup

if.end72:                                         ; preds = %tegra_slink_start_rx_dma.exit, %if.end52.if.end72_crit_edge
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 21
  %169 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %is_curr_dma_xfer, align 4
  %170 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %is_packed, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool74.not = icmp eq i8 %171, 0
  br i1 %tobool74.not, label %if.end72.if.end77_crit_edge, label %if.then75

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %or76 = or i32 %20, 1048576
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  call void @arm_heavy_mb() #7
  %172 = call i32 @llvm.bswap.i32(i32 %or76) #7
  %173 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %174, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %172) #7, !srcloc !174
  %175 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base.i, align 4
  %add.ptr2.i169 = getelementptr i8, ptr %176, i32 16
  %177 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i169) #7, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %178(i32 noundef 214748) #7
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end72.if.end77_crit_edge
  %val.3 = phi i32 [ %or76, %if.then75 ], [ %20, %if.end72.if.end77_crit_edge ]
  %179 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %val.3, ptr %dma_control_reg, align 4
  %or79 = or i32 %val.3, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  call void @arm_heavy_mb() #7
  %180 = call i32 @llvm.bswap.i32(i32 %or79) #7
  %181 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base.i, align 4
  %add.ptr.i173 = getelementptr i8, ptr %182, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 %180) #7, !srcloc !174
  %183 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i, align 4
  %add.ptr2.i174 = getelementptr i8, ptr %184, i32 16
  %185 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i174) #7, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then.i166, %if.then68.cleanup_crit_edge, %do.end63.cleanup_crit_edge, %do.end45, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end45 ], [ 0, %if.end77 ], [ -5, %do.end63.cleanup_crit_edge ], [ -5, %if.then68.cleanup_crit_edge ], [ -5, %if.then.i166 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_slink_start_cpu_based_transfer(ptr nocapture noundef %tspi, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %packed_size = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 28
  %0 = ptrtoint ptr %packed_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %packed_size, align 4
  %cur_direction = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 16
  %2 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_direction, align 4
  %and = shl i32 %3, 26
  %4 = and i32 %and, 67108864
  %5 = or i32 %4, %1
  %6 = and i32 %and, 134217728
  %7 = or i32 %5, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %base.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 6
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !174
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %dma_control_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 31
  %14 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %7, ptr %dma_control_reg, align 4
  %15 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_direction, align 4
  %and8 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %entry
  %17 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t, align 4
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 18
  %19 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_tx_pos.i, align 4
  %add.ptr.i1 = getelementptr i8, ptr %18, i32 %20
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !175
  %24 = lshr i32 %23, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %and.i = and i32 %24, 63
  %is_packed.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 27
  %25 = ptrtoint ptr %is_packed.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_packed.i, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then10
  %words_per_32bit.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 13
  %27 = ptrtoint ptr %words_per_32bit.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %words_per_32bit.i, align 4
  %mul.i = mul i32 %28, %and.i
  %curr_dma_words.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 15
  %29 = ptrtoint ptr %curr_dma_words.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %curr_dma_words.i, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %30) #7
  %bytes_per_word.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 14
  %32 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes_per_word.i, align 4
  %mul2.i = mul i32 %31, %33
  %sub.i = add i32 %mul2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp3103.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp3103.not.i, label %if.then.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge, label %for.cond4.preheader.preheader.i

if.then.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_fill_tx_fifo_from_client_txbuf.exit

for.cond4.preheader.preheader.i:                  ; preds = %if.then.i
  %div89.i = lshr i32 %sub.i, 2
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.end.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.preheader.i
  %nbytes.0106.i = phi i32 [ %nbytes.1.lcssa.i, %for.end.i.for.cond4.preheader.i_crit_edge ], [ %mul2.i, %for.cond4.preheader.preheader.i ]
  %tx_buf.0105.i = phi ptr [ %tx_buf.1.lcssa.i, %for.end.i.for.cond4.preheader.i_crit_edge ], [ %add.ptr.i1, %for.cond4.preheader.preheader.i ]
  %count.0104.i = phi i32 [ %inc10.i, %for.end.i.for.cond4.preheader.i_crit_edge ], [ 0, %for.cond4.preheader.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.0106.i)
  %tobool6.not95.i = icmp eq i32 %nbytes.0106.i, 0
  br i1 %tobool6.not95.i, label %for.cond4.preheader.i.for.end.i_crit_edge, label %for.body7.preheader.i

for.cond4.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body7.preheader.i:                            ; preds = %for.cond4.preheader.i
  %34 = add i32 %nbytes.0106.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %34, i32 3) #7
  %uglygep = getelementptr i8, ptr %tx_buf.0105.i, i32 1
  %uglygep16 = getelementptr i8, ptr %uglygep, i32 %umin.i
  %35 = ptrtoint ptr %tx_buf.0105.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx_buf.0105.i, align 1
  %conv.i = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin.i)
  %exitcond.i = icmp eq i32 %umin.i, 0
  br i1 %exitcond.i, label %for.body7.preheader.i.for.end.i.loopexit_crit_edge, label %for.body7.i.1

for.body7.preheader.i.for.end.i.loopexit_crit_edge: ; preds = %for.body7.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.loopexit

for.body7.i.1:                                    ; preds = %for.body7.preheader.i
  %incdec.ptr.i = getelementptr i8, ptr %tx_buf.0105.i, i32 1
  %37 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.i, align 1
  %conv.i.1 = zext i8 %38 to i32
  %shl.i.1 = shl nuw nsw i32 %conv.i.1, 8
  %or.i.1 = or i32 %shl.i.1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin.i)
  %exitcond.i.1 = icmp eq i32 %umin.i, 1
  br i1 %exitcond.i.1, label %for.body7.i.1.for.end.i.loopexit_crit_edge, label %for.body7.i.2

for.body7.i.1.for.end.i.loopexit_crit_edge:       ; preds = %for.body7.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.loopexit

for.body7.i.2:                                    ; preds = %for.body7.i.1
  %incdec.ptr.i.1 = getelementptr i8, ptr %tx_buf.0105.i, i32 2
  %39 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.i.1, align 1
  %conv.i.2 = zext i8 %40 to i32
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
  %incdec.ptr.i.2 = getelementptr i8, ptr %tx_buf.0105.i, i32 3
  %41 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr.i.2, align 1
  %conv.i.3 = zext i8 %42 to i32
  %shl.i.3 = shl nuw i32 %conv.i.3, 24
  %or.i.3 = or i32 %shl.i.3, %or.i.2
  br label %for.end.i.loopexit

for.end.i.loopexit:                               ; preds = %for.body7.i.3, %for.body7.i.2.for.end.i.loopexit_crit_edge, %for.body7.i.1.for.end.i.loopexit_crit_edge, %for.body7.preheader.i.for.end.i.loopexit_crit_edge
  %or.i.lcssa = phi i32 [ %conv.i, %for.body7.preheader.i.for.end.i.loopexit_crit_edge ], [ %or.i.1, %for.body7.i.1.for.end.i.loopexit_crit_edge ], [ %or.i.2, %for.body7.i.2.for.end.i.loopexit_crit_edge ], [ %or.i.3, %for.body7.i.3 ]
  %43 = sub i32 %34, %umin.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond4.preheader.i.for.end.i_crit_edge
  %tx_buf.1.lcssa.i = phi ptr [ %tx_buf.0105.i, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %uglygep16, %for.end.i.loopexit ]
  %x.0.lcssa.i = phi i32 [ 0, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %or.i.lcssa, %for.end.i.loopexit ]
  %nbytes.1.lcssa.i = phi i32 [ 0, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %43, %for.end.i.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %x.0.lcssa.i) #7
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %46, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 %44) #7, !srcloc !174
  %inc10.i = add nuw nsw i32 %count.0104.i, 1
  %exitcond123.not.i = icmp eq i32 %inc10.i, %div89.i
  br i1 %exitcond123.not.i, label %for.end.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge, label %for.end.i.for.cond4.preheader.i_crit_edge

for.end.i.for.cond4.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond4.preheader.i

for.end.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_fill_tx_fifo_from_client_txbuf.exit

if.else.i:                                        ; preds = %if.then10
  %curr_dma_words12.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 15
  %47 = ptrtoint ptr %curr_dma_words12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %curr_dma_words12.i, align 4
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 %and.i) #7
  %bytes_per_word20.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp23118.not.i = icmp eq i32 %49, 0
  br i1 %cmp23118.not.i, label %if.else.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge, label %for.cond27.preheader.preheader.i

if.else.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_fill_tx_fifo_from_client_txbuf.exit

for.cond27.preheader.preheader.i:                 ; preds = %if.else.i
  %50 = ptrtoint ptr %bytes_per_word20.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bytes_per_word20.i, align 4
  %mul21.i = mul i32 %51, %49
  br label %for.cond27.preheader.i

for.cond27.preheader.i:                           ; preds = %for.end43.i.for.cond27.preheader.i_crit_edge, %for.cond27.preheader.preheader.i
  %nbytes.2121.i = phi i32 [ %nbytes.3.lcssa.i, %for.end43.i.for.cond27.preheader.i_crit_edge ], [ %mul21.i, %for.cond27.preheader.preheader.i ]
  %tx_buf.2120.i = phi ptr [ %tx_buf.3.lcssa.i, %for.end43.i.for.cond27.preheader.i_crit_edge ], [ %add.ptr.i1, %for.cond27.preheader.preheader.i ]
  %count.1119.i = phi i32 [ %inc45.i, %for.end43.i.for.cond27.preheader.i_crit_edge ], [ 0, %for.cond27.preheader.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.2121.i)
  %tobool28.not107.i = icmp eq i32 %nbytes.2121.i, 0
  br i1 %tobool28.not107.i, label %for.cond27.preheader.i.for.end43.i_crit_edge, label %land.rhs29.lr.ph.i

for.cond27.preheader.i.for.end43.i_crit_edge:     ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43.i

land.rhs29.lr.ph.i:                               ; preds = %for.cond27.preheader.i
  %52 = ptrtoint ptr %bytes_per_word20.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bytes_per_word20.i, align 4
  %54 = add i32 %nbytes.2121.i, -1
  %umin124.i = tail call i32 @llvm.umin.i32(i32 %53, i32 %54) #7
  %uglygep.i = getelementptr i8, ptr %tx_buf.2120.i, i32 %umin124.i
  br label %land.rhs29.i

land.rhs29.i:                                     ; preds = %for.body34.i.land.rhs29.i_crit_edge, %land.rhs29.lr.ph.i
  %x26.0111.i = phi i32 [ 0, %land.rhs29.lr.ph.i ], [ %or39.i, %for.body34.i.land.rhs29.i_crit_edge ]
  %nbytes.3110.i = phi i32 [ %nbytes.2121.i, %land.rhs29.lr.ph.i ], [ %dec42.i, %for.body34.i.land.rhs29.i_crit_edge ]
  %tx_buf.3109.i = phi ptr [ %tx_buf.2120.i, %land.rhs29.lr.ph.i ], [ %incdec.ptr35.i, %for.body34.i.land.rhs29.i_crit_edge ]
  %i.1108.i = phi i32 [ 0, %land.rhs29.lr.ph.i ], [ %inc41.i, %for.body34.i.land.rhs29.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1108.i, i32 %53)
  %exitcond125.not.i = icmp eq i32 %i.1108.i, %53
  br i1 %exitcond125.not.i, label %land.rhs29.i.for.end43.i_crit_edge, label %for.body34.i

land.rhs29.i.for.end43.i_crit_edge:               ; preds = %land.rhs29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43.i

for.body34.i:                                     ; preds = %land.rhs29.i
  %incdec.ptr35.i = getelementptr i8, ptr %tx_buf.3109.i, i32 1
  %55 = ptrtoint ptr %tx_buf.3109.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %tx_buf.3109.i, align 1
  %conv36.i = zext i8 %56 to i32
  %mul37.i = shl i32 %i.1108.i, 3
  %shl38.i = shl i32 %conv36.i, %mul37.i
  %or39.i = or i32 %shl38.i, %x26.0111.i
  %inc41.i = add nuw i32 %i.1108.i, 1
  %dec42.i = add i32 %nbytes.3110.i, -1
  %tobool28.not.i = icmp eq i32 %dec42.i, 0
  br i1 %tobool28.not.i, label %for.body34.i.for.end43.i_crit_edge, label %for.body34.i.land.rhs29.i_crit_edge

for.body34.i.land.rhs29.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs29.i

for.body34.i.for.end43.i_crit_edge:               ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43.i

for.end43.i:                                      ; preds = %for.body34.i.for.end43.i_crit_edge, %land.rhs29.i.for.end43.i_crit_edge, %for.cond27.preheader.i.for.end43.i_crit_edge
  %tx_buf.3.lcssa.i = phi ptr [ %tx_buf.2120.i, %for.cond27.preheader.i.for.end43.i_crit_edge ], [ %uglygep.i, %land.rhs29.i.for.end43.i_crit_edge ], [ %incdec.ptr35.i, %for.body34.i.for.end43.i_crit_edge ]
  %nbytes.3.lcssa.i = phi i32 [ 0, %for.cond27.preheader.i.for.end43.i_crit_edge ], [ %nbytes.3110.i, %land.rhs29.i.for.end43.i_crit_edge ], [ 0, %for.body34.i.for.end43.i_crit_edge ]
  %x26.0.lcssa.i = phi i32 [ 0, %for.cond27.preheader.i.for.end43.i_crit_edge ], [ %x26.0111.i, %land.rhs29.i.for.end43.i_crit_edge ], [ %or39.i, %for.body34.i.for.end43.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %x26.0.lcssa.i) #7
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %59, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 %57) #7, !srcloc !174
  %inc45.i = add nuw nsw i32 %count.1119.i, 1
  %exitcond126.not.i = icmp eq i32 %inc45.i, %49
  br i1 %exitcond126.not.i, label %for.end43.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge, label %for.end43.i.for.cond27.preheader.i_crit_edge

for.end43.i.for.cond27.preheader.i_crit_edge:     ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond27.preheader.i

for.end43.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge: ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_slink_fill_tx_fifo_from_client_txbuf.exit

tegra_slink_fill_tx_fifo_from_client_txbuf.exit:  ; preds = %for.end43.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge, %if.else.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge, %for.end.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge, %if.then.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge
  %written_words.0.i = phi i32 [ 0, %if.else.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge ], [ %31, %if.then.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge ], [ %49, %for.end43.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge ], [ %31, %for.end.i.tegra_slink_fill_tx_fifo_from_client_txbuf.exit_crit_edge ]
  %bytes_per_word47.i = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 14
  %60 = ptrtoint ptr %bytes_per_word47.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bytes_per_word47.i, align 4
  %mul48.i = mul i32 %61, %written_words.0.i
  %62 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cur_tx_pos.i, align 4
  %add50.i = add i32 %63, %mul48.i
  store i32 %add50.i, ptr %cur_tx_pos.i, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %curr_dma_words = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 15
  %64 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %curr_dma_words, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %tegra_slink_fill_tx_fifo_from_client_txbuf.exit
  %cur_words.0 = phi i32 [ %written_words.0.i, %tegra_slink_fill_tx_fifo_from_client_txbuf.exit ], [ %65, %if.else ]
  %sub = add i32 %cur_words.0, 65535
  %and12 = and i32 %sub, 65535
  %or13 = or i32 %and12, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %or13) #7
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %68, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %66) #7, !srcloc !174
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %add.ptr2.i4 = getelementptr i8, ptr %70, i32 16
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i4) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %72 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or13, ptr %dma_control_reg, align 4
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 21
  %73 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %is_curr_dma_xfer, align 4
  %is_packed = getelementptr inbounds %struct.tegra_slink_data, ptr %tspi, i32 0, i32 27
  %74 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_packed, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool15.not = icmp eq i8 %75, 0
  br i1 %tobool15.not, label %if.end11.if.end18_crit_edge, label %if.then16

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %or17 = or i32 %or13, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %76 = tail call i32 @llvm.bswap.i32(i32 %or17) #7
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %78, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %76) #7, !srcloc !174
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 4
  %add.ptr2.i8 = getelementptr i8, ptr %80, i32 16
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i8) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void @arm_heavy_mb() #7
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end11.if.end18_crit_edge
  %val.2 = phi i32 [ %or17, %if.then16 ], [ %or13, %if.end11.if.end18_crit_edge ]
  %83 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %val.2, ptr %dma_control_reg, align 4
  %or20 = or i32 %val.2, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %84 = tail call i32 @llvm.bswap.i32(i32 %or20) #7
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %86, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %84) #7, !srcloc !174
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 4
  %add.ptr2.i12 = getelementptr i8, ptr %88, i32 16
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i12) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_slink_dma_complete(ptr noundef %args) #2 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
define internal i32 @tegra_slink_resume(ptr noundef %dev) #2 align 64 {
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
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !171
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !172
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %command_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 29
  %5 = ptrtoint ptr %command_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %command_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %base.i = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !174
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %command2_reg = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 30
  %13 = ptrtoint ptr %command2_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %command2_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #7, !srcloc !174
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr2.i18 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %call.i19 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  %call4 = tail call i32 @spi_controller_resume(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %base.i = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %clk = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_slink_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %clk = getelementptr inbounds %struct.tegra_slink_data, ptr %3, i32 0, i32 4
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
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.cleanup_crit_edge

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.76, i32 noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %clk_prepare_enable.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
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
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !150, !152, !154, !155, !156, !158, !159, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__initcall__kmod_spi_tegra20_slink__248_1232_tegra_slink_driver_init6, !1, !"__initcall__kmod_spi_tegra20_slink__248_1232_tegra_slink_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1232, i32 1}
!2 = !{ptr @__exitcall_tegra_slink_driver_exit, !1, !"__exitcall_tegra_slink_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias249, !4, !"__UNIQUE_ID_alias249", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1234, i32 1}
!5 = !{ptr @__UNIQUE_ID_description250, !6, !"__UNIQUE_ID_description250", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1235, i32 1}
!7 = !{ptr @__UNIQUE_ID_author251, !8, !"__UNIQUE_ID_author251", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1236, i32 1}
!9 = !{ptr @__UNIQUE_ID_file252, !10, !"__UNIQUE_ID_file252", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1237, i32 1}
!11 = !{ptr @__UNIQUE_ID_license253, !10, !"__UNIQUE_ID_license253", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1225, i32 12}
!14 = !{ptr @tegra_slink_driver, !15, !"tegra_slink_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1223, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1013, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_slink_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_slink_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1020, i32 3}
!26 = !{ptr @tegra_slink_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_slink_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @tegra_slink_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1038, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1040, i32 47}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1046, i32 3}
!35 = !{ptr @tegra_slink_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_slink_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1061, i32 3}
!39 = !{ptr @tegra_slink_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tegra_slink_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1065, i32 59}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1067, i32 3}
!45 = !{ptr @tegra_slink_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tegra_slink_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1094, i32 3}
!49 = !{ptr @tegra_slink_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tegra_slink_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1108, i32 3}
!53 = !{ptr @tegra_slink_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tegra_slink_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1121, i32 3}
!57 = !{ptr @tegra_slink_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @tegra_slink_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @tegra_slink_setup.cs_pol_bit, !60, !"cs_pol_bit", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 734, i32 19}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 746, i32 2}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @tegra_slink_setup.__UNIQUE_ID_ddebug247, !62, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!66 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 755, i32 3}
!70 = !{ptr @tegra_slink_setup._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tegra_slink_setup._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 809, i32 3}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tegra_slink_transfer_one._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @tegra_slink_transfer_one._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 817, i32 3}
!79 = !{ptr @tegra_slink_transfer_one._entry.38, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tegra_slink_transfer_one._entry_ptr.40, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 482, i32 3}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @tegra_slink_start_dma_based_transfer._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @tegra_slink_start_dma_based_transfer._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 517, i32 4}
!88 = !{ptr @tegra_slink_start_dma_based_transfer._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @tegra_slink_start_dma_based_transfer._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 535, i32 4}
!92 = !{ptr @tegra_slink_start_dma_based_transfer._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tegra_slink_start_dma_based_transfer._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 440, i32 3}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tegra_slink_start_tx_dma._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @tegra_slink_start_tx_dma._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 459, i32 3}
!101 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @tegra_slink_start_rx_dma._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @tegra_slink_start_rx_dma._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 602, i32 57}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 602, i32 64}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 605, i32 10}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 610, i32 3}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @tegra_slink_init_dma_param._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @tegra_slink_init_dma_param._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @init_completion.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../include/linux/completion.h", i32 87, i32 2}
!117 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 849, i32 3}
!120 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @handle_cpu_based_xfer._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @handle_cpu_based_xfer._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 851, i32 3}
!125 = !{ptr @handle_cpu_based_xfer._entry.61, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @handle_cpu_based_xfer._entry_ptr.63, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 899, i32 5}
!129 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @handle_dma_based_xfer._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @handle_dma_based_xfer._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 914, i32 5}
!134 = !{ptr @handle_dma_based_xfer._entry.66, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @handle_dma_based_xfer._entry_ptr.68, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 922, i32 3}
!138 = !{ptr @handle_dma_based_xfer._entry.69, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @handle_dma_based_xfer._entry_ptr.71, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 924, i32 3}
!142 = !{ptr @handle_dma_based_xfer._entry.72, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @handle_dma_based_xfer._entry_ptr.74, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @tegra_slink_of_match, !145, !"tegra_slink_of_match", i1 false, i1 false}
!145 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 995, i32 34}
!146 = !{ptr @tegra30_spi_cdata, !147, !"tegra30_spi_cdata", i1 false, i1 false}
!147 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 987, i32 43}
!148 = !{ptr @tegra20_spi_cdata, !149, !"tegra20_spi_cdata", i1 false, i1 false}
!149 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 991, i32 43}
!150 = !{ptr @slink_pm_ops, !151, !"slink_pm_ops", i1 false, i1 false}
!151 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1218, i32 32}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1181, i32 3}
!154 = !{ptr @tegra_slink_resume._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @tegra_slink_resume._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/spi/spi-tegra20-slink.c", i32 1212, i32 3}
!158 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @tegra_slink_runtime_resume._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @tegra_slink_runtime_resume._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2148271609}
!171 = !{i64 756432, i64 756457, i64 756479, i64 756495, i64 756507, i64 756527, i64 756551, i64 756567, i64 756579}
!172 = !{i64 2148271797}
!173 = !{i64 2154589973}
!174 = !{i64 6338595}
!175 = !{i64 6339013}
!176 = !{i64 2154590649}
!177 = !{i64 2148754005, i64 2148754010, i64 2148754023, i64 2148754067, i64 2148754101, i64 2148754122}
!178 = !{i64 2154589591}
!179 = !{i8 0, i8 2}
!180 = !{!"branch_weights", i32 1, i32 2000}
!181 = !{!"auto-init"}
!182 = !{i64 2154602958}
!183 = !{i64 2154607715}
