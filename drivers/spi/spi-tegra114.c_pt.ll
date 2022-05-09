; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-tegra114.c_pt.bc'
source_filename = "../drivers/spi/spi-tegra114.c"
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
%struct.tegra_spi_soc_data = type { i8 }
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
%struct.tegra_spi_data = type { ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.completion, %struct.completion, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, %struct.completion, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.tegra_spi_client_data = type { i32, i32 }
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
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_spi_tegra114__260_1530_tegra_spi_driver_init6 = internal global ptr @tegra_spi_driver_init, section ".initcall6.init", align 4
@tegra_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_spi_probe, ptr @tegra_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_spi_driver_exit = internal global ptr @tegra_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias261 = internal constant [41 x i8] c"spi_tegra114.alias=platform:spi-tegra114\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [63 x i8] c"spi_tegra114.description=NVIDIA Tegra114 SPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author263 = internal constant [59 x i8] c"spi_tegra114.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file264 = internal constant [43 x i8] c"spi_tegra114.file=drivers/spi/spi-tegra114\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [28 x i8] c"spi_tegra114.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi-tegra114\00", [19 x i8] zeroinitializer }, align 32
@tegra_spi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_spi_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_spi_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_spi_soc_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tegra_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_spi_suspend, ptr @tegra_spi_resume, ptr @tegra_spi_suspend, ptr @tegra_spi_resume, ptr @tegra_spi_suspend, ptr @tegra_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_spi_runtime_suspend, ptr @tegra_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"master allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-tegra114.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_spi_probe._entry_ptr = internal global ptr @tegra_spi_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-max-frequency\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@tegra_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tspi->lock\00", [20 x i8] zeroinitializer }, align 32
@tegra_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unsupported tegra\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_spi_probe._entry_ptr.11 = internal global ptr @tegra_spi_probe._entry.9, section ".printk_index", align 4
@tegra_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can not get clock\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_spi_probe._entry_ptr.14 = internal global ptr @tegra_spi_probe._entry.12, section ".printk_index", align 4
@tegra_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1366, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can not get reset\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_spi_probe._entry_ptr.17 = internal global ptr @tegra_spi_probe._entry.15, section ".printk_index", align 4
@tegra_spi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pm runtime get failed, e = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_spi_probe._entry_ptr.20 = internal global ptr @tegra_spi_probe._entry.18, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_spi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register ISR for IRQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_spi_probe._entry_ptr.23 = internal global ptr @tegra_spi_probe._entry.21, section ".printk_index", align 4
@tegra_spi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can not register to master err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_spi_probe._entry_ptr.26 = internal global ptr @tegra_spi_probe._entry.24, section ".printk_index", align 4
@tegra_spi_setup.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -16, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_tegra114\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_spi_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"setup %d bpw, %scpol, %scpha, %dHz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"~\00", [30 x i8] zeroinitializer }, align 32
@tegra_spi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.3, i32 970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pm runtime failed, e = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_spi_setup._entry_ptr = internal global ptr @tegra_spi_setup._entry, section ".printk_index", align 4
@tegra_spi_parse_cdata_dt.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 -25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_spi_parse_cdata_dt\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device node not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia,tx-clk-tap-delay\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia,rx-clk-tap-delay\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_spi_transfer_one_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 1066, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"spi can not start transfer, err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_spi_transfer_one_message\00", [33 x i8] zeroinitializer }, align 32
@tegra_spi_transfer_one_message._entry_ptr = internal global ptr @tegra_spi_transfer_one_message._entry, section ".printk_index", align 4
@tegra_spi_transfer_one_message._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 1074, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spi transfer timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_spi_transfer_one_message._entry_ptr.41 = internal global ptr @tegra_spi_transfer_one_message._entry.39, section ".printk_index", align 4
@tegra_spi_transfer_one_message._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 1092, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error in Transfer\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_spi_transfer_one_message._entry_ptr.44 = internal global ptr @tegra_spi_transfer_one_message._entry.42, section ".printk_index", align 4
@tegra_spi_start_transfer_one.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra_spi_start_transfer_one\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"The def 0x%x and written 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_spi_start_dma_based_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DMA slave config failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tegra_spi_start_dma_based_transfer\00", [61 x i8] zeroinitializer }, align 32
@tegra_spi_start_dma_based_transfer._entry_ptr = internal global ptr @tegra_spi_start_dma_based_transfer._entry, section ".printk_index", align 4
@tegra_spi_start_dma_based_transfer._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Starting tx dma failed, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_spi_start_dma_based_transfer._entry_ptr.51 = internal global ptr @tegra_spi_start_dma_based_transfer._entry.49, section ".printk_index", align 4
@tegra_spi_start_dma_based_transfer._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 604, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tegra_spi_start_dma_based_transfer._entry_ptr.53 = internal global ptr @tegra_spi_start_dma_based_transfer._entry.52, section ".printk_index", align 4
@tegra_spi_start_dma_based_transfer._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.48, ptr @.str.3, i32 615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Starting rx dma failed, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_spi_start_dma_based_transfer._entry_ptr.56 = internal global ptr @tegra_spi_start_dma_based_transfer._entry.54, section ".printk_index", align 4
@tegra_spi_start_tx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not able to get desc for Tx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_spi_start_tx_dma\00", [41 x i8] zeroinitializer }, align 32
@tegra_spi_start_tx_dma._entry_ptr = internal global ptr @tegra_spi_start_tx_dma._entry, section ".printk_index", align 4
@tegra_spi_start_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 499, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not able to get desc for Rx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_spi_start_rx_dma\00", [41 x i8] zeroinitializer }, align 32
@tegra_spi_start_rx_dma._entry_ptr = internal global ptr @tegra_spi_start_rx_dma._entry, section ".printk_index", align 4
@tegra_spi_dump_regs.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -1, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_spi_dump_regs\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"============ SPI REGISTER DUMP ============\0A\00", [51 x i8] zeroinitializer }, align 32
@tegra_spi_dump_regs.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.61, ptr @.str.3, ptr @.str.63, i8 1, i8 0, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Command1:    0x%08x | Command2:    0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_spi_dump_regs.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.61, ptr @.str.3, ptr @.str.64, i8 1, i8 1, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DMA_CTL:     0x%08x | DMA_BLK:     0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_spi_dump_regs.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.61, ptr @.str.3, ptr @.str.65, i8 1, i8 1, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TRANS_STAT:  0x%08x | FIFO_STATUS: 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tegra_spi_flush_fifos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timeout waiting for fifo flush\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_spi_flush_fifos\00", [42 x i8] zeroinitializer }, align 32
@tegra_spi_flush_fifos._entry_ptr = internal global ptr @tegra_spi_flush_fifos._entry, section ".printk_index", align 4
@tegra_spi_set_hw_cs_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 737, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid delay unit %d, should be SPI_DELAY_UNIT_SCK\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_spi_set_hw_cs_timing\00", [37 x i8] zeroinitializer }, align 32
@tegra_spi_set_hw_cs_timing._entry_ptr = internal global ptr @tegra_spi_set_hw_cs_timing._entry, section ".printk_index", align 4
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dma channel is not available\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_spi_init_dma_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 676, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" Not able to allocate the dma buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_spi_init_dma_param\00", [39 x i8] zeroinitializer }, align 32
@tegra_spi_init_dma_param._entry_ptr = internal global ptr @tegra_spi_init_dma_param._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tegra_spi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 1510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk_prepare failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_spi_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@tegra_spi_runtime_resume._entry_ptr = internal global ptr @tegra_spi_runtime_resume._entry, section ".printk_index", align 4
@handle_cpu_based_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 1133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CpuXfer ERROR bit set 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_cpu_based_xfer\00", [42 x i8] zeroinitializer }, align 32
@handle_cpu_based_xfer._entry_ptr = internal global ptr @handle_cpu_based_xfer._entry, section ".printk_index", align 4
@handle_cpu_based_xfer._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.3, i32 1135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CpuXfer 0x%08x:0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@handle_cpu_based_xfer._entry_ptr.82 = internal global ptr @handle_cpu_based_xfer._entry.80, section ".printk_index", align 4
@handle_dma_based_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 1184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TxDma Xfer failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_dma_based_xfer\00", [42 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry_ptr = internal global ptr @handle_dma_based_xfer._entry, section ".printk_index", align 4
@handle_dma_based_xfer._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 1199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RxDma Xfer failed\0A\00", [45 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry_ptr.87 = internal global ptr @handle_dma_based_xfer._entry.85, section ".printk_index", align 4
@handle_dma_based_xfer._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.3, i32 1208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DmaXfer: ERROR bit set 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry_ptr.90 = internal global ptr @handle_dma_based_xfer._entry.88, section ".printk_index", align 4
@handle_dma_based_xfer._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.84, ptr @.str.3, i32 1210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DmaXfer 0x%08x:0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@handle_dma_based_xfer._entry_ptr.93 = internal global ptr @handle_dma_based_xfer._entry.91, section ".printk_index", align 4
@tegra114_spi_soc_data = internal global { %struct.tegra_spi_soc_data, [31 x i8] } zeroinitializer, align 32
@tegra124_spi_soc_data = internal global { %struct.tegra_spi_soc_data, [31 x i8] } zeroinitializer, align 32
@tegra210_spi_soc_data = internal global { %struct.tegra_spi_soc_data, [31 x i8] } { %struct.tegra_spi_soc_data { i8 1 }, [31 x i8] zeroinitializer }, align 32
@tegra_spi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.94, ptr @.str.3, i32 1478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_spi_resume\00", [47 x i8] zeroinitializer }, align 32
@tegra_spi_resume._entry_ptr = internal global ptr @tegra_spi_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"tegra_spi_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1521, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1523, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"tegra_spi_of_match\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1285, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"tegra_spi_pm_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1516, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1310, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1316, i32 46 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1331, i32 47 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1337, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1341, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1359, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1366, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1395, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1414, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1422, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 956, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 970, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 924, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 932, i32 33 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 934, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1065, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1074, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1092, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 903, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 583, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 591, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 603, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 614, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 480, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 499, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1022, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1023, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1026, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1029, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 523, i32 5 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 735, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 668, i32 57 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 668, i32 64 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 671, i32 10 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 676, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 87, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1510, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1132, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1134, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1184, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1199, i32 5 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1207, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1209, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [22 x i8] c"tegra114_spi_soc_data\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1273, i32 34 }
@___asan_gen_.389 = private unnamed_addr constant [22 x i8] c"tegra124_spi_soc_data\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1277, i32 34 }
@___asan_gen_.392 = private unnamed_addr constant [22 x i8] c"tegra210_spi_soc_data\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1281, i32 34 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.399 = private constant [30 x i8] c"../drivers/spi/spi-tegra114.c\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1478, i32 3 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_alias261, ptr @__UNIQUE_ID_author263, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__exitcall_tegra_spi_driver_exit, ptr @__initcall__kmod_spi_tegra114__260_1530_tegra_spi_driver_init6, ptr @handle_cpu_based_xfer._entry, ptr @handle_cpu_based_xfer._entry.80, ptr @handle_cpu_based_xfer._entry_ptr, ptr @handle_cpu_based_xfer._entry_ptr.82, ptr @handle_dma_based_xfer._entry, ptr @handle_dma_based_xfer._entry.85, ptr @handle_dma_based_xfer._entry.88, ptr @handle_dma_based_xfer._entry.91, ptr @handle_dma_based_xfer._entry_ptr, ptr @handle_dma_based_xfer._entry_ptr.87, ptr @handle_dma_based_xfer._entry_ptr.90, ptr @handle_dma_based_xfer._entry_ptr.93, ptr @tegra_spi_driver_exit, ptr @tegra_spi_flush_fifos._entry, ptr @tegra_spi_flush_fifos._entry_ptr, ptr @tegra_spi_init_dma_param._entry, ptr @tegra_spi_init_dma_param._entry_ptr, ptr @tegra_spi_probe._entry, ptr @tegra_spi_probe._entry.12, ptr @tegra_spi_probe._entry.15, ptr @tegra_spi_probe._entry.18, ptr @tegra_spi_probe._entry.21, ptr @tegra_spi_probe._entry.24, ptr @tegra_spi_probe._entry.9, ptr @tegra_spi_probe._entry_ptr, ptr @tegra_spi_probe._entry_ptr.11, ptr @tegra_spi_probe._entry_ptr.14, ptr @tegra_spi_probe._entry_ptr.17, ptr @tegra_spi_probe._entry_ptr.20, ptr @tegra_spi_probe._entry_ptr.23, ptr @tegra_spi_probe._entry_ptr.26, ptr @tegra_spi_resume._entry, ptr @tegra_spi_resume._entry_ptr, ptr @tegra_spi_runtime_resume._entry, ptr @tegra_spi_runtime_resume._entry_ptr, ptr @tegra_spi_set_hw_cs_timing._entry, ptr @tegra_spi_set_hw_cs_timing._entry_ptr, ptr @tegra_spi_setup._entry, ptr @tegra_spi_setup._entry_ptr, ptr @tegra_spi_start_dma_based_transfer._entry, ptr @tegra_spi_start_dma_based_transfer._entry.49, ptr @tegra_spi_start_dma_based_transfer._entry.52, ptr @tegra_spi_start_dma_based_transfer._entry.54, ptr @tegra_spi_start_dma_based_transfer._entry_ptr, ptr @tegra_spi_start_dma_based_transfer._entry_ptr.51, ptr @tegra_spi_start_dma_based_transfer._entry_ptr.53, ptr @tegra_spi_start_dma_based_transfer._entry_ptr.56, ptr @tegra_spi_start_rx_dma._entry, ptr @tegra_spi_start_rx_dma._entry_ptr, ptr @tegra_spi_start_tx_dma._entry, ptr @tegra_spi_start_tx_dma._entry_ptr, ptr @tegra_spi_transfer_one_message._entry, ptr @tegra_spi_transfer_one_message._entry.39, ptr @tegra_spi_transfer_one_message._entry.42, ptr @tegra_spi_transfer_one_message._entry_ptr, ptr @tegra_spi_transfer_one_message._entry_ptr.41, ptr @tegra_spi_transfer_one_message._entry_ptr.44, ptr @tegra_spi_driver, ptr @.str, ptr @tegra_spi_of_match, ptr @tegra_spi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tegra_spi_probe.__key, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @init_completion.__key, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @tegra114_spi_soc_data, ptr @tegra124_spi_soc_data, ptr @tegra210_spi_soc_data, ptr @.str.94], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_transfer_one_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_transfer_one_message._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_transfer_one_message._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_start_dma_based_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_start_dma_based_transfer._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_start_dma_based_transfer._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_start_dma_based_transfer._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_start_tx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_start_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_flush_fifos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_set_hw_cs_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_init_dma_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_cpu_based_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_cpu_based_xfer._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dma_based_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dma_based_xfer._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dma_based_xfer._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dma_based_xfer._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_spi_soc_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_spi_soc_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_spi_soc_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_spi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_spi_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_spi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 376, i1 noundef zeroext false) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup147

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i255 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i255, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %max_speed_hz, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool5.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 25000000, ptr %max_speed_hz, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %6 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1311, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -8, ptr %bits_per_word_mask, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %9 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tegra_spi_setup, ptr %setup, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %10 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tegra_spi_cleanup, ptr %cleanup, align 8
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %11 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tegra_spi_transfer_one_message, ptr %transfer_one_message, align 4
  %set_cs_timing = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 21
  %12 = ptrtoint ptr %set_cs_timing to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tegra_spi_set_hw_cs_timing, ptr %set_cs_timing, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4, ptr %num_chipselect, align 2
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %14 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %auto_runtime_pm, align 4
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call11 = tail call i32 @of_alias_get_id(ptr noundef %16, ptr noundef nonnull @.str.7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp = icmp sgt i32 %call11, -1
  br i1 %cmp, label %if.then12, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %call11 to i16
  %bus_num13 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %bus_num13 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %bus_num13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  %master15 = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %master15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %master15, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %2, align 4
  %lock = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @tegra_spi_probe.__key, i16 noundef signext 3) #9
  %call23 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %soc_data = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 45
  %20 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call23, ptr %soc_data, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %spi_controller_put.exit

if.end31:                                         ; preds = %if.end14
  %call32 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call34 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call32) #9
  %base = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 5
  %21 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call34, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call34 to i32
  br label %spi_controller_put.exit

if.end40:                                         ; preds = %if.end31
  %23 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call32, align 4
  %phys = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 6
  %25 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %phys, align 4
  %call41 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 7
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call41, ptr %irq, align 4
  %call43 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %clk = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 3
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call43, ptr %clk, align 4
  %cmp.i256 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i256, label %do.end49, label %if.end53

do.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %spi_controller_put.exit

if.end53:                                         ; preds = %if.end40
  %call.i257 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %rst = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 4
  %31 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i257, ptr %rst, align 4
  %cmp.i258 = icmp ugt ptr %call.i257, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %do.end61, label %if.end65

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  %32 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rst, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %spi_controller_put.exit

if.end65:                                         ; preds = %if.end53
  %max_buf_size = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 19
  %35 = ptrtoint ptr %max_buf_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 256, ptr %max_buf_size, align 4
  %dma_buf_size = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 18
  %36 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16384, ptr %dma_buf_size, align 4
  %call66 = tail call fastcc i32 @tegra_spi_init_dma_param(ptr noundef %2, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.spi_controller_put.exit_crit_edge, label %if.end70

if.end65.spi_controller_put.exit_crit_edge:       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.end70:                                         ; preds = %if.end65
  %call71 = tail call fastcc i32 @tegra_spi_init_dma_param(ptr noundef %2, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.exit_rx_dma_free_crit_edge, label %if.end75

if.end70.exit_rx_dma_free_crit_edge:              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_rx_dma_free

if.end75:                                         ; preds = %if.end70
  %37 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_buf_size, align 4
  %39 = ptrtoint ptr %max_buf_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_buf_size, align 4
  %tx_dma_complete = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 23
  %40 = ptrtoint ptr %tx_dma_complete to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tx_dma_complete, align 4
  %wait.i = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 23, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @init_completion.__key) #9
  %rx_dma_complete = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 22
  %41 = ptrtoint ptr %rx_dma_complete to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %rx_dma_complete, align 4
  %wait.i259 = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 22, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i259, ptr noundef nonnull @.str.75, ptr noundef nonnull @init_completion.__key) #9
  %xfer_completion = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 35
  %42 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %xfer_completion, align 4
  %wait.i260 = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 35, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i260, ptr noundef nonnull @.str.75, ptr noundef nonnull @init_completion.__key) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %43 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end75.if.end87_crit_edge, label %if.then81

if.end75.if.end87_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then81:                                        ; preds = %if.end75
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i.i, align 4
  %clk.i = getelementptr inbounds %struct.tegra_spi_data, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk.i, align 4
  %call.i.i262 = tail call i32 @clk_prepare(ptr noundef %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i262)
  %tobool.not.i.i = icmp eq i32 %call.i.i262, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then81.clk_prepare_enable.exit.i_crit_edge

if.then81.clk_prepare_enable.exit.i_crit_edge:    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.then81
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end87_crit_edge, label %if.then3.i.i

if.end.i.i.if.end87_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %49) #9
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.then81.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i262, %if.then81.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i263 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i263, label %tegra_spi_runtime_resume.exit, label %clk_prepare_enable.exit.i.if.end87_crit_edge

clk_prepare_enable.exit.i.if.end87_crit_edge:     ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

tegra_spi_runtime_resume.exit:                    ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.76, i32 noundef %retval.0.i.i) #12
  br label %exit_pm_disable

if.end87:                                         ; preds = %clk_prepare_enable.exit.i.if.end87_crit_edge, %if.end.i.i.if.end87_crit_edge, %if.end75.if.end87_crit_edge
  %call.i264 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %cmp90 = icmp slt i32 %call.i264, 0
  br i1 %cmp90, label %do.end95, label %if.end98

do.end95:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i264) #12
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  br label %exit_pm_disable

if.end98:                                         ; preds = %if.end87
  %52 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rst, align 4
  %call100 = tail call i32 @reset_control_assert(ptr noundef %53) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 429496) #9
  %55 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rst, align 4
  %call102 = tail call i32 @reset_control_deassert(ptr noundef %56) #9
  %def_command1_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 30
  %57 = ptrtoint ptr %def_command1_reg to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1073741824, ptr %def_command1_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 64) #9, !srcloc !209
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %64, i32 8
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !210
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %spi_cs_timing1 = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 32
  %67 = ptrtoint ptr %spi_cs_timing1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %spi_cs_timing1, align 4
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr.i267 = getelementptr i8, ptr %69, i32 12
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267) #9, !srcloc !210
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %spi_cs_timing2 = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 33
  %72 = ptrtoint ptr %spi_cs_timing2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %spi_cs_timing2, align 4
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr.i269 = getelementptr i8, ptr %74, i32 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269) #9, !srcloc !210
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %def_command2_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 31
  %77 = ptrtoint ptr %def_command2_reg to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %def_command2_reg, align 4
  %78 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %num_chipselect, align 2
  %conv108 = trunc i16 %79 to i8
  %add = add i8 %conv108, 1
  %last_used_cs = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 34
  %80 = ptrtoint ptr %last_used_cs to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %add, ptr %last_used_cs, align 4
  %call.i270 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  %81 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %83 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i271 = icmp eq ptr %84, null
  br i1 %tobool.not.i271, label %if.end.i, label %if.end98.dev_name.exit_crit_edge

if.end98.dev_name.exit_crit_edge:                 ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end98.dev_name.exit_crit_edge
  %retval.0.i272 = phi ptr [ %86, %if.end.i ], [ %84, %if.end98.dev_name.exit_crit_edge ]
  %call115 = tail call i32 @request_threaded_irq(i32 noundef %82, ptr noundef nonnull @tegra_spi_isr, ptr noundef nonnull @tegra_spi_isr_thread, i32 noundef 8192, ptr noundef %retval.0.i272, ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %do.end121, label %if.end124

do.end121:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %88) #12
  br label %exit_pm_disable

if.end124:                                        ; preds = %dev_name.exit
  %89 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %of_node, align 8
  %of_node128 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %91 = ptrtoint ptr %of_node128 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %of_node128, align 8
  %call130 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %do.end136, label %if.end124.cleanup147_crit_edge

if.end124.cleanup147_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup147

do.end136:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call130) #12
  %call139 = tail call ptr @free_irq(i32 noundef %call41, ptr noundef %2) #9
  br label %exit_pm_disable

exit_pm_disable:                                  ; preds = %do.end136, %do.end121, %do.end95, %tegra_spi_runtime_resume.exit
  %ret.0 = phi i32 [ %call.i264, %do.end95 ], [ %call115, %do.end121 ], [ %call130, %do.end136 ], [ %retval.0.i.i, %tegra_spi_runtime_resume.exit ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %92 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp.i273 = icmp eq i32 %93, 2
  br i1 %cmp.i273, label %exit_pm_disable.if.end146_crit_edge, label %if.then143

exit_pm_disable.if.end146_crit_edge:              ; preds = %exit_pm_disable
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.then143:                                       ; preds = %exit_pm_disable
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i275 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 8
  %96 = ptrtoint ptr %driver_data.i.i.i275 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver_data.i.i.i275, align 4
  %base.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i, align 4
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %clk.i276 = getelementptr inbounds %struct.tegra_spi_data, ptr %97, i32 0, i32 3
  %101 = ptrtoint ptr %clk.i276 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clk.i276, align 4
  tail call void @clk_disable(ptr noundef %102) #9
  tail call void @clk_unprepare(ptr noundef %102) #9
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %exit_pm_disable.if.end146_crit_edge
  %tx_dma_buf.i = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 42
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 41
  %tx_dma_phys.i = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 43
  %103 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %dma_chan.0.i = load ptr, ptr %tx_dma_chan.i, align 4
  %104 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %dma_buf.0.i = load ptr, ptr %tx_dma_buf.i, align 4
  %105 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tx_dma_phys.i, align 4
  store ptr null, ptr %tx_dma_buf.i, align 4
  store ptr null, ptr %tx_dma_chan.i, align 4
  %tobool5.not.i = icmp eq ptr %dma_chan.0.i, null
  br i1 %tobool5.not.i, label %if.end146.exit_rx_dma_free_crit_edge, label %if.end7.i

if.end146.exit_rx_dma_free_crit_edge:             ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_rx_dma_free

if.end7.i:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %2, align 4
  %109 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma_buf_size, align 4
  tail call void @dma_free_attrs(ptr noundef %108, i32 noundef %110, ptr noundef %dma_buf.0.i, i32 noundef %106, i32 noundef 0) #9
  tail call void @dma_release_channel(ptr noundef nonnull %dma_chan.0.i) #9
  br label %exit_rx_dma_free

exit_rx_dma_free:                                 ; preds = %if.end7.i, %if.end146.exit_rx_dma_free_crit_edge, %if.end70.exit_rx_dma_free_crit_edge
  %ret.1 = phi i32 [ %call71, %if.end70.exit_rx_dma_free_crit_edge ], [ %ret.0, %if.end146.exit_rx_dma_free_crit_edge ], [ %ret.0, %if.end7.i ]
  %rx_dma_buf.i = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 38
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 37
  %rx_dma_phys.i = getelementptr inbounds %struct.tegra_spi_data, ptr %2, i32 0, i32 39
  %111 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %dma_chan.0.i278 = load ptr, ptr %rx_dma_chan.i, align 4
  %112 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %dma_buf.0.i279 = load ptr, ptr %rx_dma_buf.i, align 4
  %113 = ptrtoint ptr %rx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_dma_phys.i, align 4
  store ptr null, ptr %rx_dma_chan.i, align 4
  store ptr null, ptr %rx_dma_buf.i, align 4
  %tobool5.not.i280 = icmp eq ptr %dma_chan.0.i278, null
  br i1 %tobool5.not.i280, label %exit_rx_dma_free.spi_controller_put.exit_crit_edge, label %if.end7.i283

exit_rx_dma_free.spi_controller_put.exit_crit_edge: ; preds = %exit_rx_dma_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.end7.i283:                                     ; preds = %exit_rx_dma_free
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %2, align 4
  %117 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_buf_size, align 4
  tail call void @dma_free_attrs(ptr noundef %116, i32 noundef %118, ptr noundef %dma_buf.0.i279, i32 noundef %114, i32 noundef 0) #9
  tail call void @dma_release_channel(ptr noundef nonnull %dma_chan.0.i278) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.end7.i283, %exit_rx_dma_free.spi_controller_put.exit_crit_edge, %if.end65.spi_controller_put.exit_crit_edge, %do.end61, %do.end49, %if.then37, %do.end29
  %ret.2 = phi i32 [ %22, %if.then37 ], [ %30, %do.end49 ], [ %34, %do.end61 ], [ %call66, %if.end65.spi_controller_put.exit_crit_edge ], [ -19, %do.end29 ], [ %ret.1, %exit_rx_dma_free.spi_controller_put.exit_crit_edge ], [ %ret.1, %if.end7.i283 ]
  tail call void @put_device(ptr noundef nonnull %call.i) #9
  br label %cleanup147

cleanup147:                                       ; preds = %spi_controller_put.exit, %if.end124.cleanup147_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ -12, %do.end ], [ %call130, %if.end124.cleanup147_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i20 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i20, align 4
  %irq = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #9
  %tx_dma_chan = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 41
  %6 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_dma_chan, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %tegra_spi_deinit_dma_param.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

tegra_spi_deinit_dma_param.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_dma_buf.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 42
  %tx_dma_phys.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 43
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
  %dma_buf_size.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_buf_size.i, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef %15, ptr noundef %dma_buf.0.i, i32 noundef %10, i32 noundef 0) #9
  tail call void @dma_release_channel(ptr noundef nonnull %7) #9
  br label %if.end

if.end:                                           ; preds = %tegra_spi_deinit_dma_param.exit, %entry.if.end_crit_edge
  %rx_dma_chan = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 37
  %16 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_dma_chan, align 4
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %tegra_spi_deinit_dma_param.exit26

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

tegra_spi_deinit_dma_param.exit26:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dma_buf.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 38
  %rx_dma_phys.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 39
  %18 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %dma_buf.0.i22 = load ptr, ptr %rx_dma_buf.i, align 4
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
  %dma_buf_size.i24 = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 18
  %24 = ptrtoint ptr %dma_buf_size.i24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_buf_size.i24, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %25, ptr noundef %dma_buf.0.i22, i32 noundef %20, i32 noundef 0) #9
  tail call void @dma_release_channel(ptr noundef nonnull %17) #9
  br label %if.end5

if.end5:                                          ; preds = %tegra_spi_deinit_dma_param.exit26, %if.end.if.end5_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %26 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i = icmp eq i32 %27, 2
  br i1 %cmp.i, label %if.end5.if.end11_crit_edge, label %if.then8

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %clk.i = getelementptr inbounds %struct.tegra_spi_data, ptr %31, i32 0, i32 3
  %35 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %36) #9
  tail call void @clk_unprepare(ptr noundef %36) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_spi_setup.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_spi_setup, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %7 to i32
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool5.not, ptr @.str.31, ptr @.str.30
  %and7 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.31, ptr @.str.30
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %10 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed_hz, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_spi_setup.__UNIQUE_ID_ddebug255, ptr noundef %spi, ptr noundef nonnull @.str.29, i32 noundef %conv, ptr noundef nonnull %cond, ptr noundef nonnull %cond9, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.then11, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %do.end
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_spi_parse_cdata_dt.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_spi_setup, %tegra_spi_parse_cdata_dt.exit)) #9
          to label %if.then5.i [label %tegra_spi_parse_cdata_dt.exit], !srcloc !213

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_spi_parse_cdata_dt.__UNIQUE_ID_ddebug254, ptr noundef %spi, ptr noundef nonnull @.str.34) #9
  br label %tegra_spi_parse_cdata_dt.exit

if.end7.i:                                        ; preds = %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 8) #13
  %tobool9.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not.i, label %if.end7.i.tegra_spi_parse_cdata_dt.exit_crit_edge, label %if.end11.i

if.end7.i.tegra_spi_parse_cdata_dt.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_parse_cdata_dt.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.35, ptr noundef nonnull %call7.i.i.i, i32 noundef 1, i32 noundef 0) #9
  %rx_clk_tap_delay.i = getelementptr inbounds %struct.tegra_spi_client_data, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i21.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.36, ptr noundef %rx_clk_tap_delay.i, i32 noundef 1, i32 noundef 0) #9
  br label %tegra_spi_parse_cdata_dt.exit

tegra_spi_parse_cdata_dt.exit:                    ; preds = %if.end11.i, %if.end7.i.tegra_spi_parse_cdata_dt.exit_crit_edge, %if.then5.i, %do.body.i
  %retval.0.i103 = phi ptr [ %call7.i.i.i, %if.end11.i ], [ null, %if.then5.i ], [ null, %if.end7.i.tegra_spi_parse_cdata_dt.exit_crit_edge ], [ null, %do.body.i ]
  %15 = ptrtoint ptr %controller_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i103, ptr %controller_data, align 4
  br label %if.end14

if.end14:                                         ; preds = %tegra_spi_parse_cdata_dt.exit, %do.end.if.end14_crit_edge
  %cdata.0 = phi ptr [ %5, %do.end.if.end14_crit_edge ], [ %retval.0.i103, %tegra_spi_parse_cdata_dt.exit ]
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end14
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 13
  %call.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !215
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then18.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then18.pm_runtime_put_noidle.exit_crit_edge:   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !216
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then18.pm_runtime_put_noidle.exit_crit_edge
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.32, i32 noundef %call.i) #12
  %tobool24.not = icmp eq ptr %cdata.0, null
  br i1 %tobool24.not, label %pm_runtime_put_noidle.exit.cleanup_crit_edge, label %if.then25

pm_runtime_put_noidle.exit.cleanup_crit_edge:     ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %pm_runtime_put_noidle.exit
  %23 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %controller_data, align 4
  store ptr null, ptr %controller_data, align 4
  %of_node.i105 = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %25 = ptrtoint ptr %of_node.i105 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i105, align 8
  %tobool.not.i106 = icmp eq ptr %26, null
  br i1 %tobool.not.i106, label %if.then25.cleanup_crit_edge, label %if.then.i

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %24) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end14
  %soc_data = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 45
  %27 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc_data, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool28.not = icmp eq i8 %30, 0
  br i1 %tobool28.not, label %if.end27.do.body34_crit_edge, label %if.then29

if.end27.do.body34_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 396
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %34 = and i32 %33, -63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %36, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %34) #9, !srcloc !209
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %do.body34

do.body34:                                        ; preds = %if.then29, %if.end27.do.body34_crit_edge
  %lock = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 2
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %40 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cs_gpiod, align 8
  %tobool44.not = icmp eq ptr %41, null
  br i1 %tobool44.not, label %do.body34.if.end47_crit_edge, label %if.then45

do.body34.if.end47_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then45:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %41, i32 noundef 0) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %do.body34.if.end47_crit_edge
  %def_command1_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 30
  %42 = ptrtoint ptr %def_command1_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %def_command1_reg, align 4
  %mode48 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %44 = ptrtoint ptr %mode48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mode48, align 8
  %and49 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %chip_select54 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %46 = ptrtoint ptr %chip_select54 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %chip_select54, align 4
  %conv55 = zext i8 %47 to i32
  %shl57 = shl i32 4194304, %conv55
  %neg = xor i32 %shl57, -1
  %and53 = and i32 %43, %neg
  %or = or i32 %shl57, %43
  %val.0 = select i1 %tobool50.not, i32 %or, i32 %and53
  %48 = ptrtoint ptr %def_command1_reg to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %val.0, ptr %def_command1_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %val.0) #9
  %base.i110 = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 5
  %50 = ptrtoint ptr %base.i110 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i110, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #9, !srcloc !209
  %52 = ptrtoint ptr %base.i110 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i110, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call39) #9
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %call.i112 = tail call i32 @__pm_runtime_idle(ptr noundef %56, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then.i, %if.then25.cleanup_crit_edge, %pm_runtime_put_noidle.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ %call.i, %pm_runtime_put_noidle.exit.cleanup_crit_edge ], [ %call.i, %if.then25.cleanup_crit_edge ], [ %call.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_spi_cleanup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %0 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_data, align 4
  store ptr null, ptr %controller_data, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_transfer_one_message(ptr noundef %master, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %msg, align 4
  %cmp.i.not.i = icmp eq ptr %7, %msg
  br i1 %cmp.i.not.i, label %entry.list_is_singular.exit_crit_edge, label %land.rhs.i

entry.list_is_singular.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_is_singular.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %7, %9
  %phi.cast.i = zext i1 %cmp.i to i32
  br label %list_is_singular.exit

list_is_singular.exit:                            ; preds = %land.rhs.i, %entry.list_is_singular.exit_crit_edge
  %10 = phi i32 [ 0, %entry.list_is_singular.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn218 = load ptr, ptr %msg, align 4
  %cmp.not220 = icmp eq ptr %.pn218, %msg
  br i1 %cmp.not220, label %list_is_singular.exit.cleanup114_crit_edge, label %for.body.lr.ph

list_is_singular.exit.cleanup114_crit_edge:       ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup114

for.body.lr.ph:                                   ; preds = %list_is_singular.exit
  %xfer_completion = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  %master.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %controller_data.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 10
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %cs_gpiod.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 14
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %tx_status = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 24
  %rx_status = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 25
  %cs_control = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn222 = phi ptr [ %.pn218, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %is_first_msg.0.off0221 = phi i1 [ true, %for.body.lr.ph ], [ false, %cleanup.for.body_crit_edge ]
  %xfer.0223 = getelementptr i8, ptr %.pn222, i32 -84
  %12 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %xfer_completion, align 4
  %13 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i, align 4
  %17 = ptrtoint ptr %controller_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %controller_data.i, align 4
  %speed_hz.i = getelementptr i8, ptr %.pn222, i32 -24
  %19 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed_hz.i, align 4
  %bits_per_word2.i = getelementptr i8, ptr %.pn222, i32 -39
  %21 = ptrtoint ptr %bits_per_word2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bits_per_word2.i, align 1
  %cur_speed.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 8
  %23 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur_speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp.not.i = icmp eq i32 %20, %24
  br i1 %cmp.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %clk.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 3
  %25 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk.i, align 4
  %call3.i = tail call i32 @clk_set_rate(ptr noundef %26, i32 noundef %20) #9
  %27 = ptrtoint ptr %cur_speed.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %20, ptr %cur_speed.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %cur_spi.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 9
  %28 = ptrtoint ptr %cur_spi.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %3, ptr %cur_spi.i, align 4
  %cur_pos.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 11
  %29 = ptrtoint ptr %cur_pos.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cur_pos.i, align 4
  %cur_rx_pos.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 16
  %30 = ptrtoint ptr %cur_rx_pos.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %cur_rx_pos.i, align 4
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 17
  %31 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %cur_tx_pos.i, align 4
  %curr_xfer.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 36
  %32 = ptrtoint ptr %curr_xfer.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %xfer.0223, ptr %curr_xfer.i, align 4
  br i1 %is_first_msg.0.off0221, label %if.then5.i, label %if.else106.i

if.then5.i:                                       ; preds = %if.end.i
  %base.i.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 5
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %35) #9, !srcloc !209
  %38 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i.i, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %41 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %42, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %44 = and i32 %43, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i, label %if.then5.i.tegra_spi_clear_status.exit.i_crit_edge, label %if.then.i.i

if.then5.i.tegra_spi_clear_status.exit.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_clear_status.exit.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %46, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 -268369920) #9, !srcloc !209
  %47 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i.i, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %tegra_spi_clear_status.exit.i

tegra_spi_clear_status.exit.i:                    ; preds = %if.then.i.i, %if.then5.i.tegra_spi_clear_status.exit.i_crit_edge
  %def_command1_reg.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 30
  %50 = ptrtoint ptr %def_command1_reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %def_command1_reg.i, align 4
  %52 = add i8 %22, 31
  %53 = and i8 %52, 31
  %and.i = zext i8 %53 to i32
  %.masked.i = and i32 %51, -805306369
  %and6.i = or i32 %.masked.i, %and.i
  %54 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode.i, align 8
  %and7.i = and i32 %55, 3
  %56 = zext i32 %and7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and7.i, label %if.then24.i [
    i32 0, label %tegra_spi_clear_status.exit.i.if.end29.i_crit_edge
    i32 1, label %if.then14.i
    i32 2, label %if.then19.i
  ]

tegra_spi_clear_status.exit.i.if.end29.i_crit_edge: ; preds = %tegra_spi_clear_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then14.i:                                      ; preds = %tegra_spi_clear_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %or15.i = or i32 %and6.i, 268435456
  br label %if.end29.i

if.then19.i:                                      ; preds = %tegra_spi_clear_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %or20.i = or i32 %and6.i, 536870912
  br label %if.end29.i

if.then24.i:                                      ; preds = %tegra_spi_clear_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %or25.i = or i32 %and6.i, 805306368
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i, %if.then19.i, %if.then14.i, %tegra_spi_clear_status.exit.i.if.end29.i_crit_edge
  %command1.0.i = phi i32 [ %or15.i, %if.then14.i ], [ %or20.i, %if.then19.i ], [ %or25.i, %if.then24.i ], [ %and6.i, %tegra_spi_clear_status.exit.i.if.end29.i_crit_edge ]
  %and36.i = and i32 %command1.0.i, -196609
  %and31.i = shl i32 %55, 13
  %command1.1.i = and i32 %and31.i, 196608
  %command1.2.i = or i32 %and36.i, %command1.1.i
  %cs_control.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 10
  %57 = ptrtoint ptr %cs_control.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cs_control.i, align 4
  %tobool46.not.i = icmp eq ptr %58, null
  br i1 %tobool46.not.i, label %if.else54.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.end29.i
  %cmp49.not.i = icmp eq ptr %58, %3
  br i1 %cmp49.not.i, label %if.then47.i.if.end52.i_crit_edge, label %if.then51.i

if.then47.i.if.end52.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then51.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %59 = tail call i32 @llvm.bswap.i32(i32 %command1.2.i) #9
  %60 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #9, !srcloc !209
  %62 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i.i, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then51.i, %if.then47.i.if.end52.i_crit_edge
  %65 = ptrtoint ptr %cs_control.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %cs_control.i, align 4
  br label %if.end55.i

if.else54.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %66 = tail call i32 @llvm.bswap.i32(i32 %command1.2.i) #9
  %67 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #9, !srcloc !209
  %69 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i.i, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else54.i, %if.end52.i
  %72 = ptrtoint ptr %cs_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cs_gpiod.i, align 8
  %tobool56.not.i = icmp eq ptr %73, null
  br i1 %tobool56.not.i, label %if.end55.i.if.end59.i_crit_edge, label %if.then57.i

if.end55.i.if.end59.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then57.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %73, i32 noundef 1) #9
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then57.i, %if.end55.i.if.end59.i_crit_edge
  br i1 %tobool5.not, label %if.end59.i.if.else65.i_crit_edge, label %land.lhs.true.i

if.end59.i.if.else65.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else65.i

land.lhs.true.i:                                  ; preds = %if.end59.i
  %cs_change.i = getelementptr i8, ptr %.pn222, i32 -40
  %74 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i = load i8, ptr %cs_change.i, align 4
  %75 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool62.not.i = icmp eq i8 %75, 0
  br i1 %tobool62.not.i, label %if.then63.i, label %land.lhs.true.i.if.else65.i_crit_edge

land.lhs.true.i.if.else65.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else65.i

if.then63.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %use_hw_based_cs.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 21
  %76 = ptrtoint ptr %use_hw_based_cs.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %use_hw_based_cs.i, align 1
  %and64.i = and i32 %command1.2.i, -3145729
  br label %if.end76.i

if.else65.i:                                      ; preds = %land.lhs.true.i.if.else65.i_crit_edge, %if.end59.i.if.else65.i_crit_edge
  %use_hw_based_cs66.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 21
  %77 = ptrtoint ptr %use_hw_based_cs66.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %use_hw_based_cs66.i, align 1
  %78 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mode.i, align 8
  %and69.i = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.else73.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #11
  %or72.i = or i32 %command1.2.i, 3145728
  br label %if.end76.i

if.else73.i:                                      ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #11
  %or67.i = and i32 %command1.2.i, -3145729
  %and74.i = or i32 %or67.i, 2097152
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.else73.i, %if.then71.i, %if.then63.i
  %command1.3.i = phi i32 [ %or72.i, %if.then71.i ], [ %and74.i, %if.else73.i ], [ %and64.i, %if.then63.i ]
  %last_used_cs.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 34
  %80 = ptrtoint ptr %last_used_cs.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %last_used_cs.i, align 4
  %82 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %chip_select.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %83)
  %cmp79.not.i = icmp eq i8 %81, %83
  br i1 %cmp79.not.i, label %if.end76.i.tegra_spi_setup_transfer_one.exit_crit_edge, label %if.then81.i

if.end76.i.tegra_spi_setup_transfer_one.exit_crit_edge: ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_setup_transfer_one.exit

if.then81.i:                                      ; preds = %if.end76.i
  %tobool82.not.i = icmp eq ptr %18, null
  br i1 %tobool82.not.i, label %if.then81.i.if.end93.i_crit_edge, label %land.lhs.true83.i

if.then81.i.if.end93.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93.i

land.lhs.true83.i:                                ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool84.not.i = icmp eq i32 %85, 0
  %phi.bo.i = shl i32 %85, 6
  %phi.bo184.i = and i32 %phi.bo.i, 4032
  %tx_tap.0.ph.i = select i1 %tobool84.not.i, i32 0, i32 %phi.bo184.i
  %rx_clk_tap_delay.i = getelementptr inbounds %struct.tegra_spi_client_data, ptr %18, i32 0, i32 1
  %86 = ptrtoint ptr %rx_clk_tap_delay.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_clk_tap_delay.i, align 4
  %phi.bo185.i = and i32 %87, 63
  %88 = or i32 %tx_tap.0.ph.i, %phi.bo185.i
  br label %if.end93.i

if.end93.i:                                       ; preds = %land.lhs.true83.i, %if.then81.i.if.end93.i_crit_edge
  %or98.i = phi i32 [ %88, %land.lhs.true83.i ], [ 0, %if.then81.i.if.end93.i_crit_edge ]
  %def_command2_reg.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 31
  %89 = ptrtoint ptr %def_command2_reg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %def_command2_reg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or98.i, i32 %90)
  %cmp99.not.i = icmp eq i32 %or98.i, %90
  br i1 %cmp99.not.i, label %if.end93.i.if.end102.i_crit_edge, label %if.then101.i

if.end93.i.if.end102.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.i

if.then101.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %91 = tail call i32 @llvm.bswap.i32(i32 %or98.i) #9
  %92 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %93, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %91) #9, !srcloc !209
  %94 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i.i.i, align 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then101.i, %if.end93.i.if.end102.i_crit_edge
  %97 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %chip_select.i, align 4
  %99 = ptrtoint ptr %last_used_cs.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %last_used_cs.i, align 4
  br label %tegra_spi_setup_transfer_one.exit

if.else106.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %command1_reg.i = getelementptr inbounds %struct.tegra_spi_data, ptr %16, i32 0, i32 28
  %100 = ptrtoint ptr %command1_reg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %command1_reg.i, align 4
  %and107.i = and i32 %101, -32
  %102 = add i8 %22, 31
  %103 = and i8 %102, 31
  %and110.i = zext i8 %103 to i32
  %or112.i = or i32 %and107.i, %and110.i
  br label %tegra_spi_setup_transfer_one.exit

tegra_spi_setup_transfer_one.exit:                ; preds = %if.else106.i, %if.end102.i, %if.end76.i.tegra_spi_setup_transfer_one.exit_crit_edge
  %command1.4.i = phi i32 [ %command1.3.i, %if.end102.i ], [ %command1.3.i, %if.end76.i.tegra_spi_setup_transfer_one.exit_crit_edge ], [ %or112.i, %if.else106.i ]
  %len = getelementptr i8, ptr %.pn222, i32 -76
  %104 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool7.not = icmp eq i32 %105, 0
  br i1 %tobool7.not, label %tegra_spi_setup_transfer_one.exit.cleanup.thread_crit_edge, label %if.end

tegra_spi_setup_transfer_one.exit.cleanup.thread_crit_edge: ; preds = %tegra_spi_setup_transfer_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end:                                           ; preds = %tegra_spi_setup_transfer_one.exit
  %call8 = tail call fastcc i32 @tegra_spi_start_transfer_one(ptr noundef %3, ptr noundef %xfer.0223, i32 noundef %command1.4.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.37, i32 noundef %call8) #12
  br label %cleanup.thread

if.end11:                                         ; preds = %if.end
  %call14 = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_completion, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %do.end28, label %if.end67, !prof !218

do.end28:                                         ; preds = %if.end11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1073, i32 noundef 9, ptr noundef null) #9
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.40) #12
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 20
  %110 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %is_curr_dma_xfer, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool48.not = icmp eq i8 %111, 0
  br i1 %tobool48.not, label %do.end28.if.end61_crit_edge, label %land.lhs.true

do.end28.if.end61_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true:                                    ; preds = %do.end28
  %cur_direction = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 15
  %112 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cur_direction, align 4
  %and = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %land.lhs.true.if.end52_crit_edge, label %if.then50

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then50:                                        ; preds = %land.lhs.true
  %tx_dma_chan = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 41
  %114 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tx_dma_chan, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %117, i32 0, i32 47
  %118 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %119, null
  br i1 %tobool.not.i, label %if.then50.if.end52_crit_edge, label %if.then.i178

if.then50.if.end52_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then.i178:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %119(ptr noundef %115) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then.i178, %if.then50.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge
  %120 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_load1_noabort(i32 %120)
  %.pr = load i8, ptr %is_curr_dma_xfer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool54.not = icmp eq i8 %.pr, 0
  br i1 %tobool54.not, label %if.end52.if.end61_crit_edge, label %land.lhs.true55

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true55:                                  ; preds = %if.end52
  %121 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cur_direction, align 4
  %and57 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.lhs.true55.if.end61_crit_edge, label %if.then59

land.lhs.true55.if.end61_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %land.lhs.true55
  %rx_dma_chan = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 37
  %123 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rx_dma_chan, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %device_terminate_all.i179 = getelementptr inbounds %struct.dma_device, ptr %126, i32 0, i32 47
  %127 = ptrtoint ptr %device_terminate_all.i179 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %device_terminate_all.i179, align 4
  %tobool.not.i180 = icmp eq ptr %128, null
  br i1 %tobool.not.i180, label %if.then59.if.end61_crit_edge, label %if.then.i182

if.then59.if.end61_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then.i182:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %call.i181 = tail call i32 %128(ptr noundef %124) #9
  br label %if.end61

if.end61:                                         ; preds = %if.then.i182, %if.then59.if.end61_crit_edge, %land.lhs.true55.if.end61_crit_edge, %if.end52.if.end61_crit_edge, %do.end28.if.end61_crit_edge
  tail call fastcc void @tegra_spi_dump_regs(ptr noundef %1)
  %call62 = tail call fastcc i32 @tegra_spi_flush_fifos(ptr noundef %1)
  %rst = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 4
  %129 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rst, align 4
  %call63 = tail call i32 @reset_control_assert(ptr noundef %130) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 429496) #9
  %132 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rst, align 4
  %call65 = tail call i32 @reset_control_deassert(ptr noundef %133) #9
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 3
  %134 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %num_chipselect, align 2
  %conv = trunc i16 %135 to i8
  %add = add i8 %conv, 1
  %last_used_cs = getelementptr inbounds %struct.tegra_spi_data, ptr %1, i32 0, i32 34
  %136 = ptrtoint ptr %last_used_cs to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %add, ptr %last_used_cs, align 4
  br label %cleanup.thread

if.end67:                                         ; preds = %if.end11
  %137 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool68.not = icmp eq i32 %138, 0
  br i1 %tobool68.not, label %lor.lhs.false, label %if.end67.do.end73_crit_edge

if.end67.do.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

lor.lhs.false:                                    ; preds = %if.end67
  %139 = ptrtoint ptr %rx_status to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool69.not = icmp eq i32 %140, 0
  br i1 %tobool69.not, label %complete_xfer, label %lor.lhs.false.do.end73_crit_edge

lor.lhs.false.do.end73_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

do.end73:                                         ; preds = %lor.lhs.false.do.end73_crit_edge, %if.end67.do.end73_crit_edge
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.43) #12
  tail call fastcc void @tegra_spi_dump_regs(ptr noundef %1)
  br label %cleanup.thread

complete_xfer:                                    ; preds = %lor.lhs.false
  %143 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len, align 4
  %145 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %actual_length, align 4
  %add78 = add i32 %146, %144
  store i32 %add78, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp79 = icmp slt i32 %call14, 0
  br i1 %cmp79, label %complete_xfer.cleanup.thread_crit_edge, label %if.else

complete_xfer.cleanup.thread_crit_edge:           ; preds = %complete_xfer
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %complete_xfer.cleanup.thread_crit_edge, %do.end73, %if.end61, %do.end, %tegra_spi_setup_transfer_one.exit.cleanup.thread_crit_edge
  %ret.0197 = phi i32 [ -5, %do.end73 ], [ -5, %if.end61 ], [ %call8, %do.end ], [ 0, %tegra_spi_setup_transfer_one.exit.cleanup.thread_crit_edge ], [ %call14, %complete_xfer.cleanup.thread_crit_edge ]
  tail call fastcc void @tegra_spi_transfer_end(ptr noundef %3)
  %delay.i = getelementptr i8, ptr %.pn222, i32 -38
  %call.i184 = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %xfer.0223) #9
  br label %cleanup114

if.else:                                          ; preds = %complete_xfer
  %147 = ptrtoint ptr %.pn222 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %.pn222, align 4
  %cmp.i185.not = icmp eq ptr %148, %msg
  %cs_change = getelementptr i8, ptr %.pn222, i32 -40
  %149 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %149)
  %bf.load = load i8, ptr %cs_change, align 4
  %150 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool91.not = icmp eq i8 %150, 0
  br i1 %cmp.i185.not, label %if.then90, label %if.else96

if.then90:                                        ; preds = %if.else
  br i1 %tobool91.not, label %if.else93, label %if.then92

if.then92:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %cs_control to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %3, ptr %cs_control, align 4
  br label %cleanup

if.else93:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_spi_transfer_end(ptr noundef %3)
  %delay.i186 = getelementptr i8, ptr %.pn222, i32 -38
  %call.i187 = tail call i32 @spi_delay_exec(ptr noundef %delay.i186, ptr noundef %xfer.0223) #9
  br label %cleanup

if.else96:                                        ; preds = %if.else
  br i1 %tobool91.not, label %if.else96.cleanup_crit_edge, label %if.then103

if.else96.cleanup_crit_edge:                      ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then103:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_spi_transfer_end(ptr noundef %3)
  %delay.i188 = getelementptr i8, ptr %.pn222, i32 -38
  %call.i189 = tail call i32 @spi_delay_exec(ptr noundef %delay.i188, ptr noundef %xfer.0223) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %if.else96.cleanup_crit_edge, %if.else93, %if.then92
  %152 = ptrtoint ptr %.pn222 to i32
  call void @__asan_load4_noabort(i32 %152)
  %.pn = load ptr, ptr %.pn222, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %cleanup.cleanup114_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.cleanup114_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup114

cleanup114:                                       ; preds = %cleanup.cleanup114_crit_edge, %cleanup.thread, %list_is_singular.exit.cleanup114_crit_edge
  %ret.1 = phi i32 [ %ret.0197, %cleanup.thread ], [ 0, %list_is_singular.exit.cleanup114_crit_edge ], [ 0, %cleanup.cleanup114_crit_edge ]
  %153 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %ret.1, ptr %status, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #9
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_set_hw_cs_timing(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cs_setup = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 16
  %cs_hold = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 17
  %cs_inactive = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 18
  %tobool.not = icmp eq ptr %cs_setup, null
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %unit = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unit, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not = icmp eq i8 %5, 2
  br i1 %cmp.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %tobool2.not = icmp eq ptr %cs_hold, null
  br i1 %tobool2.not, label %lor.lhs.false.lor.lhs.false8_crit_edge, label %land.lhs.true3

lor.lhs.false.lor.lhs.false8_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false8

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %unit4 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %unit4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %unit4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp6.not = icmp eq i8 %7, 2
  br i1 %cmp6.not, label %land.lhs.true3.lor.lhs.false8_crit_edge, label %land.lhs.true3.do.end_crit_edge

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3.lor.lhs.false8_crit_edge:          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %land.lhs.true3.lor.lhs.false8_crit_edge, %lor.lhs.false.lor.lhs.false8_crit_edge
  %tobool9.not = icmp eq ptr %cs_inactive, null
  br i1 %tobool9.not, label %lor.lhs.false8.if.end_crit_edge, label %land.lhs.true10

lor.lhs.false8.if.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true10:                                  ; preds = %lor.lhs.false8
  %unit11 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %unit11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %unit11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp13.not = icmp eq i8 %9, 2
  br i1 %cmp13.not, label %land.lhs.true10.if.end_crit_edge, label %land.lhs.true10.do.end_crit_edge

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true10.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.68, i32 noundef 2) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %lor.lhs.false8.if.end_crit_edge
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %cs_setup to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cs_setup, align 2
  %12 = and i16 %11, 255
  %phi.cast188 = zext i16 %12 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast188, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  br i1 %tobool2.not, label %cond.end.cond.end23_crit_edge, label %cond.true19

cond.end.cond.end23_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end23

cond.true19:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %cs_hold to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cs_hold, align 2
  %15 = and i16 %14, 255
  %phi.cast = zext i16 %15 to i32
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true19, %cond.end.cond.end23_crit_edge
  %cond24 = phi i32 [ %phi.cast, %cond.true19 ], [ 0, %cond.end.cond.end23_crit_edge ]
  br i1 %tobool9.not, label %cond.end23.cond.end31_crit_edge, label %cond.true27

cond.end23.cond.end31_crit_edge:                  ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end31

cond.true27:                                      ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %cs_inactive to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cs_inactive, align 2
  %18 = and i16 %17, 255
  %phi.cast189 = zext i16 %18 to i32
  br label %cond.end31

cond.end31:                                       ; preds = %cond.true27, %cond.end23.cond.end31_crit_edge
  %cond32 = phi i32 [ %phi.cast189, %cond.true27 ], [ 0, %cond.end23.cond.end31_crit_edge ]
  %19 = tail call i32 @llvm.umin.i32(i32 %cond, i32 16)
  %20 = tail call i32 @llvm.umin.i32(i32 %cond24, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool58.not = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool61.not = icmp eq i32 %20, 0
  %or.cond = select i1 %tobool58.not, i1 true, i1 %tobool61.not
  br i1 %or.cond, label %cond.end31.if.end80_crit_edge, label %if.then62

cond.end31.if.end80_crit_edge:                    ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then62:                                        ; preds = %cond.end31
  %sub = shl nuw nsw i32 %19, 4
  %shl = add nuw nsw i32 %sub, 240
  %sub65 = add nuw nsw i32 %20, 255
  %or = or i32 %sub65, %shl
  %and = and i32 %or, 255
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %21 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chip_select, align 4
  %conv66 = zext i8 %22 to i32
  %mul = shl nuw nsw i32 %conv66, 3
  %shl67 = shl i32 %and, %mul
  %spi_cs_timing1 = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 32
  %23 = ptrtoint ptr %spi_cs_timing1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %spi_cs_timing1, align 4
  %shl71 = shl i32 255, %mul
  %neg = xor i32 %shl71, -1
  %and72 = and i32 %24, %neg
  %or73 = or i32 %and72, %shl67
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %or73)
  %cmp75.not = icmp eq i32 %24, %or73
  br i1 %cmp75.not, label %if.then62.if.end80_crit_edge, label %if.then77

if.then62.if.end80_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then77:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %spi_cs_timing1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or73, ptr %spi_cs_timing1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %or73) #9
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #9, !srcloc !209
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.then62.if.end80_crit_edge, %cond.end31.if.end80_crit_edge
  %32 = tail call i32 @llvm.umin.i32(i32 %cond32, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool92.not = icmp eq i32 %32, 0
  %dec = add nsw i32 %32, -1
  %inactive_cycles.0 = select i1 %tobool92.not, i32 0, i32 %dec
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inactive_cycles.0)
  %tobool95.not = icmp eq i32 %inactive_cycles.0, 0
  %spi_cs_timing2 = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 33
  %33 = ptrtoint ptr %spi_cs_timing2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %spi_cs_timing2, align 4
  %conv98 = zext i1 %tobool95.not to i32
  %chip_select100 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %35 = ptrtoint ptr %chip_select100 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %chip_select100, align 4
  %conv101 = zext i8 %36 to i32
  %mul102 = shl nuw nsw i32 %conv101, 3
  %add = or i32 %mul102, 5
  %shl103 = shl nuw i32 %conv98, %add
  %shl108 = shl nuw i32 1, %add
  %neg109 = xor i32 %shl108, -1
  %and110 = and i32 %34, %neg109
  %or111 = or i32 %and110, %shl103
  %shl116 = shl i32 %inactive_cycles.0, %mul102
  %shl120 = shl i32 31, %mul102
  %neg121 = xor i32 %shl120, -1
  %and122 = and i32 %or111, %neg121
  %or123 = or i32 %and122, %shl116
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %or123)
  %cmp125.not = icmp eq i32 %34, %or123
  br i1 %cmp125.not, label %if.end80.cleanup_crit_edge, label %if.then127

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then127:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %spi_cs_timing2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or123, ptr %spi_cs_timing2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %or123) #9
  %base.i190 = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 5
  %39 = ptrtoint ptr %base.i190 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i190, align 4
  %add.ptr.i191 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 %38) #9, !srcloc !209
  %41 = ptrtoint ptr %base.i190 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i190, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %if.end80.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then127 ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_spi_init_dma_param(ptr nocapture noundef %tspi, i1 noundef zeroext %dma_to_memory) unnamed_addr #2 align 64 {
entry:
  %dma_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_phys) #9
  %0 = ptrtoint ptr %dma_phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_phys, align 4, !annotation !219
  %1 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tspi, align 4
  %cond = select i1 %dma_to_memory, ptr @.str.70, ptr @.str.71
  %call = tail call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull %cond) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tspi, align 4
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %5, ptr noundef nonnull @.str.72) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_buf_size = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 18
  %6 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_buf_size, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %dma_phys, i32 noundef 3264, i32 noundef 0) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.73) #12
  call void @dma_release_channel(ptr noundef %call) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  br i1 %dma_to_memory, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dma_chan = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 37
  %10 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %rx_dma_chan, align 4
  %rx_dma_buf = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 38
  %11 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %rx_dma_buf, align 4
  %12 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_phys, align 4
  %rx_dma_phys = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 39
  %14 = ptrtoint ptr %rx_dma_phys to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rx_dma_phys, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %tx_dma_chan = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 41
  %15 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %tx_dma_chan, align 4
  %tx_dma_buf = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 42
  %16 = ptrtoint ptr %tx_dma_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %tx_dma_buf, align 4
  %17 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_phys, align 4
  %tx_dma_phys = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 43
  %19 = ptrtoint ptr %tx_dma_phys to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_dma_phys, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12, %do.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ -12, %do.end ], [ 0, %if.else ], [ 0, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_phys) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %clk = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.cleanup_crit_edge

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.76, i32 noundef %retval.0.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %clk_prepare_enable.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !215
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !216
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_isr(i32 noundef %irq, ptr nocapture noundef %context_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 5
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !210
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %status_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 26
  %4 = ptrtoint ptr %status_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status_reg, align 4
  %cur_direction = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 15
  %5 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_direction, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and2 = and i32 %3, 192
  %tx_status = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 24
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and8 = and i32 %3, 48
  %rx_status = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 25
  %8 = ptrtoint ptr %rx_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and8, ptr %rx_status, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %11) #9, !srcloc !209
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %20 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end9.tegra_spi_clear_status.exit_crit_edge, label %if.then.i

if.end9.tegra_spi_clear_status.exit_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_clear_status.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 -268369920) #9, !srcloc !209
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %tegra_spi_clear_status.exit

tegra_spi_clear_status.exit:                      ; preds = %if.then.i, %if.end9.tegra_spi_clear_status.exit_crit_edge
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_isr_thread(i32 noundef %irq, ptr noundef %context_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 20
  %0 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_curr_dma_xfer, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %curr_xfer.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 36
  %2 = ptrtoint ptr %curr_xfer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_xfer.i, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %tx_status.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 24
  %4 = ptrtoint ptr %tx_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.do.end8.i_crit_edge

if.then.do.end8.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %if.then
  %rx_status.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 25
  %6 = ptrtoint ptr %rx_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not.i = icmp eq i32 %7, 0
  br i1 %tobool5.not.i, label %if.end.i, label %lor.lhs.false.i.do.end8.i_crit_edge

lor.lhs.false.i.do.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %lor.lhs.false.i.do.end8.i_crit_edge, %if.then.do.end8.i_crit_edge
  %8 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context_data, align 4
  %status_reg.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 26
  %10 = ptrtoint ptr %status_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status_reg.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.78, i32 noundef %11) #12
  %12 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context_data, align 4
  %command1_reg.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 28
  %14 = ptrtoint ptr %command1_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %command1_reg.i, align 4
  %dma_control_reg.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 29
  %16 = ptrtoint ptr %dma_control_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_control_reg.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.81, i32 noundef %15, i32 noundef %17) #12
  tail call fastcc void @tegra_spi_dump_regs(ptr noundef %context_data) #9
  %call13.i = tail call fastcc i32 @tegra_spi_flush_fifos(ptr noundef %context_data) #9
  %xfer_completion.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 35
  tail call void @complete(ptr noundef %xfer_completion.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %rst.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 4
  %18 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rst.i, align 4
  %call15.i = tail call i32 @reset_control_assert(ptr noundef %19) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 429496) #9
  %21 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rst.i, align 4
  %call17.i = tail call i32 @reset_control_deassert(ptr noundef %22) #9
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cur_direction.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 15
  %23 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur_direction.i, align 4
  %and.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then19.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end.i
  %rx_buf1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %rx_buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_buf1.i.i, align 4
  %cur_rx_pos.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 16
  %27 = ptrtoint ptr %cur_rx_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_rx_pos.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %28
  %base.i.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 5
  %29 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !210
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %shr.i.i = lshr i32 %32, 23
  %and.i.i = and i32 %shr.i.i, 127
  %is_packed.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 27
  %33 = ptrtoint ptr %is_packed.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_packed.i.i, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then19.i
  %curr_dma_words.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 14
  %bytes_per_word.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp12.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp12.not.i.i, label %if.then.i.i.for.end12.i.i_crit_edge, label %for.body.preheader.i.i

if.then.i.i.for.end12.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12.i.i

for.body.preheader.i.i:                           ; preds = %if.then.i.i
  %35 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bytes_per_word.i.i, align 4
  %37 = ptrtoint ptr %curr_dma_words.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %curr_dma_words.i.i, align 4
  %mul.i.i = mul i32 %38, %36
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rx_buf.015.i.i = phi ptr [ %rx_buf.1.lcssa.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %len.014.i.i = phi i32 [ %len.1.lcssa.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ %mul.i.i, %for.body.preheader.i.i ]
  %count.013.i.i = phi i32 [ %inc11.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %39 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %40, i32 392
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i) #9, !srcloc !210
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.014.i.i)
  %tobool4.not6.not.i.i = icmp eq i32 %len.014.i.i, 0
  br i1 %tobool4.not6.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body6.preheader.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body6.preheader.i.i:                          ; preds = %for.body.i.i
  %43 = add i32 %len.014.i.i, -1
  %umin.i.i = tail call i32 @llvm.umin.i32(i32 %43, i32 3) #9
  %conv.i.i = trunc i32 %42 to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %rx_buf.015.i.i, i32 1
  %44 = ptrtoint ptr %rx_buf.015.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i.i, ptr %rx_buf.015.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin.i.i)
  %exitcond.not.i.i = icmp eq i32 %umin.i.i, 0
  br i1 %exitcond.not.i.i, label %for.body6.preheader.i.i.for.end.i.loopexit.i_crit_edge, label %for.body6.i.i.1

for.body6.preheader.i.i.for.end.i.loopexit.i_crit_edge: ; preds = %for.body6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.loopexit.i

for.body6.i.i.1:                                  ; preds = %for.body6.preheader.i.i
  %shr8.i.i.1 = lshr i32 %42, 8
  %conv.i.i.1 = trunc i32 %shr8.i.i.1 to i8
  %incdec.ptr.i.i.1 = getelementptr i8, ptr %rx_buf.015.i.i, i32 2
  %45 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i.i.1, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin.i.i)
  %exitcond.not.i.i.1 = icmp eq i32 %umin.i.i, 1
  br i1 %exitcond.not.i.i.1, label %for.body6.i.i.1.for.end.i.loopexit.i_crit_edge, label %for.body6.i.i.2

for.body6.i.i.1.for.end.i.loopexit.i_crit_edge:   ; preds = %for.body6.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.loopexit.i

for.body6.i.i.2:                                  ; preds = %for.body6.i.i.1
  %shr8.i.i.2 = lshr i32 %42, 16
  %conv.i.i.2 = trunc i32 %shr8.i.i.2 to i8
  %incdec.ptr.i.i.2 = getelementptr i8, ptr %rx_buf.015.i.i, i32 3
  %46 = ptrtoint ptr %incdec.ptr.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i.i.2, ptr %incdec.ptr.i.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin.i.i)
  %exitcond.not.i.i.2 = icmp eq i32 %umin.i.i, 2
  br i1 %exitcond.not.i.i.2, label %for.body6.i.i.2.for.end.i.loopexit.i_crit_edge, label %for.body6.i.i.3

for.body6.i.i.2.for.end.i.loopexit.i_crit_edge:   ; preds = %for.body6.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.loopexit.i

for.body6.i.i.3:                                  ; preds = %for.body6.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %shr8.i.i.3 = lshr i32 %42, 24
  %conv.i.i.3 = trunc i32 %shr8.i.i.3 to i8
  %incdec.ptr.i.i.3 = getelementptr i8, ptr %rx_buf.015.i.i, i32 4
  %47 = ptrtoint ptr %incdec.ptr.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i.i.3, ptr %incdec.ptr.i.i.2, align 1
  br label %for.end.i.loopexit.i

for.end.i.loopexit.i:                             ; preds = %for.body6.i.i.3, %for.body6.i.i.2.for.end.i.loopexit.i_crit_edge, %for.body6.i.i.1.for.end.i.loopexit.i_crit_edge, %for.body6.preheader.i.i.for.end.i.loopexit.i_crit_edge
  %incdec.ptr.i.i.lcssa = phi ptr [ %incdec.ptr.i.i, %for.body6.preheader.i.i.for.end.i.loopexit.i_crit_edge ], [ %incdec.ptr.i.i.1, %for.body6.i.i.1.for.end.i.loopexit.i_crit_edge ], [ %incdec.ptr.i.i.2, %for.body6.i.i.2.for.end.i.loopexit.i_crit_edge ], [ %incdec.ptr.i.i.3, %for.body6.i.i.3 ]
  %48 = sub i32 %43, %umin.i.i
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.loopexit.i, %for.body.i.i.for.end.i.i_crit_edge
  %len.1.lcssa.i.i = phi i32 [ 0, %for.body.i.i.for.end.i.i_crit_edge ], [ %48, %for.end.i.loopexit.i ]
  %rx_buf.1.lcssa.i.i = phi ptr [ %rx_buf.015.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %incdec.ptr.i.i.lcssa, %for.end.i.loopexit.i ]
  %inc11.i.i = add nuw nsw i32 %count.013.i.i, 1
  %exitcond28.not.i.i = icmp eq i32 %inc11.i.i, %and.i.i
  br i1 %exitcond28.not.i.i, label %for.end.i.i.for.end12.i.i_crit_edge, label %for.end.i.i.for.body.i.i_crit_edge

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i.for.end12.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12.i.i

for.end12.i.i:                                    ; preds = %for.end.i.i.for.end12.i.i_crit_edge, %if.then.i.i.for.end12.i.i_crit_edge
  %49 = ptrtoint ptr %curr_dma_words.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %curr_dma_words.i.i, align 4
  %51 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytes_per_word.i.i, align 4
  %mul16.i.i = mul i32 %52, %50
  br label %tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i

if.else.i.i:                                      ; preds = %if.then19.i
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %53 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bits_per_word.i.i, align 1
  %conv19.i.i = zext i8 %54 to i32
  %notmask.i.i = shl nsw i32 -1, %conv19.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %bytes_per_word21.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 13
  %55 = ptrtoint ptr %bytes_per_word21.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bytes_per_word21.i.i, align 4
  %conv23.i.i = and i32 %56, 255
  %mul24.i.i = mul nuw nsw i32 %conv23.i.i, %and.i.i
  %len25.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %57 = ptrtoint ptr %len25.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len25.i.i, align 4
  %cur_pos.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 11
  %59 = ptrtoint ptr %cur_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cur_pos.i.i, align 4
  %sub26.i.i = sub i32 %58, %60
  %61 = tail call i32 @llvm.umin.i32(i32 %mul24.i.i, i32 %sub26.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp3424.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp3424.not.i.i, label %if.else.i.i.tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge, label %for.body36.lr.ph.i.i

if.else.i.i.tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i

for.body36.lr.ph.i.i:                             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.i.i)
  %cmp4417.i.i = icmp ne i32 %conv23.i.i, 0
  br label %for.body36.i.i

for.body36.i.i:                                   ; preds = %for.end56.i.i.for.body36.i.i_crit_edge, %for.body36.lr.ph.i.i
  %rx_buf.227.i.i = phi ptr [ %add.ptr.i.i, %for.body36.lr.ph.i.i ], [ %rx_buf.3.lcssa.i.i, %for.end56.i.i.for.body36.i.i_crit_edge ]
  %len.326.i.i = phi i32 [ %61, %for.body36.lr.ph.i.i ], [ %len.4.lcssa.i.i, %for.end56.i.i.for.body36.i.i_crit_edge ]
  %count.125.i.i = phi i32 [ 0, %for.body36.lr.ph.i.i ], [ %inc58.i.i, %for.end56.i.i.for.body36.i.i_crit_edge ]
  %62 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %63, i32 392
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #9, !srcloc !210
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %and39.i.i = and i32 %65, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.326.i.i)
  %tobool41.not16.i.i = icmp ne i32 %len.326.i.i, 0
  %or.cond118.i.i = select i1 %tobool41.not16.i.i, i1 %cmp4417.i.i, i1 false
  br i1 %or.cond118.i.i, label %for.body36.i.i.for.body47.i.i_crit_edge, label %for.body36.i.i.for.end56.i.i_crit_edge

for.body36.i.i.for.end56.i.i_crit_edge:           ; preds = %for.body36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end56.i.i

for.body36.i.i.for.body47.i.i_crit_edge:          ; preds = %for.body36.i.i
  br label %for.body47.i.i

for.body47.i.i:                                   ; preds = %for.body47.i.i.for.body47.i.i_crit_edge, %for.body36.i.i.for.body47.i.i_crit_edge
  %rx_buf.321.i.i = phi ptr [ %incdec.ptr52.i.i, %for.body47.i.i.for.body47.i.i_crit_edge ], [ %rx_buf.227.i.i, %for.body36.i.i.for.body47.i.i_crit_edge ]
  %len.420.i.i = phi i32 [ %dec55.i.i, %for.body47.i.i.for.body47.i.i_crit_edge ], [ %len.326.i.i, %for.body36.i.i.for.body47.i.i_crit_edge ]
  %i.119.i.i = phi i32 [ %inc54.i.i, %for.body47.i.i.for.body47.i.i_crit_edge ], [ 0, %for.body36.i.i.for.body47.i.i_crit_edge ]
  %mul48.i.i = shl i32 %i.119.i.i, 3
  %shr49.i.i = lshr i32 %and39.i.i, %mul48.i.i
  %conv51.i.i = trunc i32 %shr49.i.i to i8
  %incdec.ptr52.i.i = getelementptr i8, ptr %rx_buf.321.i.i, i32 1
  %66 = ptrtoint ptr %rx_buf.321.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv51.i.i, ptr %rx_buf.321.i.i, align 1
  %inc54.i.i = add nuw nsw i32 %i.119.i.i, 1
  %dec55.i.i = add i32 %len.420.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec55.i.i)
  %tobool41.not.i.i = icmp ne i32 %dec55.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc54.i.i, i32 %conv23.i.i)
  %cmp44.i.i = icmp ult i32 %inc54.i.i, %conv23.i.i
  %or.cond1.i.i = select i1 %tobool41.not.i.i, i1 %cmp44.i.i, i1 false
  br i1 %or.cond1.i.i, label %for.body47.i.i.for.body47.i.i_crit_edge, label %for.body47.i.i.for.end56.i.i_crit_edge

for.body47.i.i.for.end56.i.i_crit_edge:           ; preds = %for.body47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end56.i.i

for.body47.i.i.for.body47.i.i_crit_edge:          ; preds = %for.body47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47.i.i

for.end56.i.i:                                    ; preds = %for.body47.i.i.for.end56.i.i_crit_edge, %for.body36.i.i.for.end56.i.i_crit_edge
  %len.4.lcssa.i.i = phi i32 [ %len.326.i.i, %for.body36.i.i.for.end56.i.i_crit_edge ], [ %dec55.i.i, %for.body47.i.i.for.end56.i.i_crit_edge ]
  %rx_buf.3.lcssa.i.i = phi ptr [ %rx_buf.227.i.i, %for.body36.i.i.for.end56.i.i_crit_edge ], [ %incdec.ptr52.i.i, %for.body47.i.i.for.end56.i.i_crit_edge ]
  %inc58.i.i = add nuw nsw i32 %count.125.i.i, 1
  %exitcond29.not.i.i = icmp eq i32 %inc58.i.i, %and.i.i
  br i1 %exitcond29.not.i.i, label %for.end56.i.i.tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge, label %for.end56.i.i.for.body36.i.i_crit_edge

for.end56.i.i.for.body36.i.i_crit_edge:           ; preds = %for.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36.i.i

for.end56.i.i.tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge: ; preds = %for.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i

tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i:    ; preds = %for.end56.i.i.tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge, %if.else.i.i.tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge, %for.end12.i.i
  %.sink30.i.i = phi i32 [ %mul16.i.i, %for.end12.i.i ], [ %61, %if.else.i.i.tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge ], [ %61, %for.end56.i.i.tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i_crit_edge ]
  %67 = ptrtoint ptr %cur_rx_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cur_rx_pos.i.i, align 4
  %add62.i.i = add i32 %68, %.sink30.i.i
  store i32 %add62.i.i, ptr %cur_rx_pos.i.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %tegra_spi_read_rx_fifo_to_client_rxbuf.exit.i, %if.end.i.if.end21.i_crit_edge
  %69 = ptrtoint ptr %cur_direction.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur_direction.i, align 4
  %and23.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %cur_rx_pos.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 16
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 17
  %.sink.in.i = select i1 %tobool24.not.i, ptr %cur_rx_pos.i, ptr %cur_tx_pos.i
  %71 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %72 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 11
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink.i, ptr %72, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %.sink.i)
  %cmp29.i = icmp eq i32 %75, %.sink.i
  br i1 %cmp29.i, label %if.then31.i, label %if.end33.i

if.then31.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %xfer_completion32.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 35
  tail call void @complete(ptr noundef %xfer_completion32.i) #9
  br label %exit.i

if.end33.i:                                       ; preds = %if.end21.i
  %sub.i2.i = sub i32 %75, %.sink.i
  %bits_per_word1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %76 = ptrtoint ptr %bits_per_word1.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bits_per_word1.i.i, align 1
  %conv.i3.i = zext i8 %77 to i32
  %sub2.i.i = add nuw nsw i32 %conv.i3.i, 7
  %div1.i.i = lshr i32 %sub2.i.i, 3
  %bytes_per_word.i4.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 13
  %78 = ptrtoint ptr %bytes_per_word.i4.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %div1.i.i, ptr %bytes_per_word.i4.i, align 4
  %79 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %77, label %if.end33.i.if.else.i7.i_crit_edge [
    i8 8, label %if.end33.i.land.lhs.true.i.i_crit_edge
    i8 16, label %if.end33.i.land.lhs.true.i.i_crit_edge65
    i8 32, label %if.end33.i.land.lhs.true.i.i_crit_edge66
  ]

if.end33.i.land.lhs.true.i.i_crit_edge66:         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end33.i.land.lhs.true.i.i_crit_edge65:         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end33.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

if.end33.i.if.else.i7.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i7.i

land.lhs.true.i.i:                                ; preds = %if.end33.i.land.lhs.true.i.i_crit_edge, %if.end33.i.land.lhs.true.i.i_crit_edge65, %if.end33.i.land.lhs.true.i.i_crit_edge66
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %81)
  %cmp10.i.i = icmp ugt i32 %81, 3
  br i1 %cmp10.i.i, label %if.then.i6.i, label %land.lhs.true.i.i.if.else.i7.i_crit_edge

land.lhs.true.i.i.if.else.i7.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i7.i

if.then.i6.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_packed.i5.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 27
  %82 = ptrtoint ptr %is_packed.i5.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %is_packed.i5.i, align 4
  %div124.i.i = udiv i8 32, %77
  %div12.zext.i.i = zext i8 %div124.i.i to i32
  br label %if.end.i.i

if.else.i7.i:                                     ; preds = %land.lhs.true.i.i.if.else.i7.i_crit_edge, %if.end33.i.if.else.i7.i_crit_edge
  %is_packed13.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 27
  %83 = ptrtoint ptr %is_packed13.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %is_packed13.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i7.i, %if.then.i6.i
  %.sink.i.i = phi i32 [ 1, %if.else.i7.i ], [ %div12.zext.i.i, %if.then.i6.i ]
  %words_per_32bit14.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 12
  %84 = ptrtoint ptr %words_per_32bit14.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink.i.i, ptr %words_per_32bit14.i.i, align 4
  %is_packed15.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 27
  %85 = ptrtoint ptr %is_packed15.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_packed15.i.i, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i8.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i8.i, label %if.else23.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_buf_size.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 19
  %87 = ptrtoint ptr %max_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_buf_size.i.i, align 4
  %89 = tail call i32 @llvm.umin.i32(i32 %sub.i2.i, i32 %88) #9
  %div20.i.i = udiv i32 %89, %div1.i.i
  br label %tegra_spi_calculate_curr_xfer_param.exit.i

if.else23.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub24.i.i = add i32 %sub.i2.i, -1
  %div26.i.i = udiv i32 %sub24.i.i, %div1.i.i
  %add27.i.i = add i32 %div26.i.i, 1
  %max_buf_size28.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 19
  %90 = ptrtoint ptr %max_buf_size28.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_buf_size28.i.i, align 4
  %div292.i.i = lshr i32 %91, 2
  %92 = tail call i32 @llvm.umin.i32(i32 %add27.i.i, i32 %div292.i.i) #9
  br label %tegra_spi_calculate_curr_xfer_param.exit.i

tegra_spi_calculate_curr_xfer_param.exit.i:       ; preds = %if.else23.i.i, %if.then16.i.i
  %div20.sink.i.i = phi i32 [ %92, %if.else23.i.i ], [ %div20.i.i, %if.then16.i.i ]
  %93 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 14
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %div20.sink.i.i, ptr %93, align 4
  tail call fastcc void @tegra_spi_start_cpu_based_transfer(ptr noundef %context_data, ptr noundef %3) #9
  br label %exit.i

exit.i:                                           ; preds = %tegra_spi_calculate_curr_xfer_param.exit.i, %if.then31.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_direction.i5 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 15
  %95 = ptrtoint ptr %cur_direction.i5 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cur_direction.i5, align 4
  %and.i6 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %if.end.if.end10.i_crit_edge, label %if.then.i

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end
  %tx_status.i8 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 24
  %97 = ptrtoint ptr %tx_status.i8 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_status.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool1.not.i = icmp eq i32 %98, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 41
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
  %tobool.not.i.i9 = icmp eq ptr %104, null
  br i1 %tobool.not.i.i9, label %if.then2.i.if.end10.i_crit_edge, label %if.then.i.i10

if.then2.i.if.end10.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then.i.i10:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %104(ptr noundef %100) #9
  br label %if.end10.i

if.else.i:                                        ; preds = %if.then.i
  %tx_dma_complete.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 23
  %call4.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %tx_dma_complete.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 1
  br i1 %cmp.i, label %if.then5.i, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.else.i
  %tx_dma_chan6.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 41
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
  br i1 %tobool.not.i2.i, label %if.then5.i.dmaengine_terminate_all.exit5.i_crit_edge, label %if.then.i4.i

if.then5.i.dmaengine_terminate_all.exit5.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit5.i

if.then.i4.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i3.i = tail call i32 %110(ptr noundef %106) #9
  br label %dmaengine_terminate_all.exit5.i

dmaengine_terminate_all.exit5.i:                  ; preds = %if.then.i4.i, %if.then5.i.dmaengine_terminate_all.exit5.i_crit_edge
  %111 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %context_data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.83) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %dmaengine_terminate_all.exit5.i, %if.else.i.if.end10.i_crit_edge, %if.then.i.i10, %if.then2.i.if.end10.i_crit_edge, %if.end.if.end10.i_crit_edge
  %tobool43.not.i = phi i1 [ false, %if.then.i.i10 ], [ false, %if.then2.i.if.end10.i_crit_edge ], [ false, %dmaengine_terminate_all.exit5.i ], [ true, %if.else.i.if.end10.i_crit_edge ], [ true, %if.end.if.end10.i_crit_edge ]
  %113 = ptrtoint ptr %cur_direction.i5 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cur_direction.i5, align 4
  %and12.i = and i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.do.body35.i_crit_edge, label %if.then14.i

if.end10.i.do.body35.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35.i

if.then14.i:                                      ; preds = %if.end10.i
  %rx_status.i11 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 25
  %115 = ptrtoint ptr %rx_status.i11 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_status.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool15.not.i = icmp eq i32 %116, 0
  br i1 %tobool15.not.i, label %if.else19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then14.i
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 37
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35.thread.i

if.then.i9.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i8.i = tail call i32 %122(ptr noundef %118) #9
  br label %do.body35.thread.i

if.else19.i:                                      ; preds = %if.then14.i
  %rx_dma_complete.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 22
  %call21.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %rx_dma_complete.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 1
  br i1 %cmp22.i, label %if.then23.i, label %if.else19.i.do.body35.i_crit_edge

if.else19.i.do.body35.i_crit_edge:                ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35.i

if.then23.i:                                      ; preds = %if.else19.i
  %rx_dma_chan24.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 37
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit15.i

if.then.i14.i:                                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i13.i = tail call i32 %128(ptr noundef %124) #9
  br label %dmaengine_terminate_all.exit15.i

dmaengine_terminate_all.exit15.i:                 ; preds = %if.then.i14.i, %if.then23.i.dmaengine_terminate_all.exit15.i_crit_edge
  %129 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %context_data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.86) #12
  br label %do.body35.thread.i

do.body35.thread.i:                               ; preds = %dmaengine_terminate_all.exit15.i, %if.then.i9.i, %if.then16.i.do.body35.thread.i_crit_edge
  %lock27.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 2
  %call3828.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock27.i) #9
  br label %do.end47.i

do.body35.i:                                      ; preds = %if.else19.i.do.body35.i_crit_edge, %if.end10.i.do.body35.i_crit_edge
  %lock.i12 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 2
  %call38.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i12) #9
  br i1 %tobool43.not.i, label %if.end58.i, label %do.body35.i.do.end47.i_crit_edge

do.body35.i.do.end47.i_crit_edge:                 ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47.i

do.end47.i:                                       ; preds = %do.body35.i.do.end47.i_crit_edge, %do.body35.thread.i
  %call3831.i = phi i32 [ %call3828.i, %do.body35.thread.i ], [ %call38.i, %do.body35.i.do.end47.i_crit_edge ]
  %lock30.i = phi ptr [ %lock27.i, %do.body35.thread.i ], [ %lock.i12, %do.body35.i.do.end47.i_crit_edge ]
  %131 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %context_data, align 4
  %status_reg.i13 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 26
  %133 = ptrtoint ptr %status_reg.i13 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %status_reg.i13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.89, i32 noundef %134) #12
  %135 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %context_data, align 4
  %command1_reg.i14 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 28
  %137 = ptrtoint ptr %command1_reg.i14 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %command1_reg.i14, align 4
  %dma_control_reg.i15 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 29
  %139 = ptrtoint ptr %dma_control_reg.i15 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dma_control_reg.i15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.92, i32 noundef %138, i32 noundef %140) #12
  tail call fastcc void @tegra_spi_dump_regs(ptr noundef %context_data) #9
  %call53.i = tail call fastcc i32 @tegra_spi_flush_fifos(ptr noundef %context_data) #9
  %xfer_completion.i16 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 35
  tail call void @complete(ptr noundef %xfer_completion.i16) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock30.i, i32 noundef %call3831.i) #9
  %rst.i17 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 4
  %141 = ptrtoint ptr %rst.i17 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rst.i17, align 4
  %call55.i = tail call i32 @reset_control_assert(ptr noundef %142) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 429496) #9
  %144 = ptrtoint ptr %rst.i17 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rst.i17, align 4
  %call57.i = tail call i32 @reset_control_deassert(ptr noundef %145) #9
  br label %cleanup

if.end58.i:                                       ; preds = %do.body35.i
  %146 = ptrtoint ptr %cur_direction.i5 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cur_direction.i5, align 4
  %and60.i = and i32 %147, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end58.i.if.end63.i_crit_edge, label %if.then62.i

if.end58.i.if.end63.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

if.then62.i:                                      ; preds = %if.end58.i
  %148 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %context_data, align 4
  %rx_dma_phys.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 39
  %150 = ptrtoint ptr %rx_dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_dma_phys.i.i, align 4
  %dma_buf_size.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 18
  %152 = ptrtoint ptr %dma_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dma_buf_size.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %149, i32 noundef %151, i32 noundef %153, i32 noundef 2) #9
  %is_packed.i.i18 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 27
  %154 = ptrtoint ptr %is_packed.i.i18 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %is_packed.i.i18, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i16.i = icmp eq i8 %155, 0
  br i1 %tobool.not.i16.i, label %if.else.i.i29, label %if.then.i17.i

if.then.i17.i:                                    ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  %curr_dma_words.i.i19 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 14
  %156 = ptrtoint ptr %curr_dma_words.i.i19 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %curr_dma_words.i.i19, align 4
  %bytes_per_word.i.i20 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 13
  %158 = ptrtoint ptr %bytes_per_word.i.i20 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %bytes_per_word.i.i20, align 4
  %mul.i.i21 = mul i32 %159, %157
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %160 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rx_buf.i.i, align 4
  %cur_rx_pos.i.i22 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 16
  %162 = ptrtoint ptr %cur_rx_pos.i.i22 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cur_rx_pos.i.i22, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %161, i32 %163
  %rx_dma_buf.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 38
  %164 = ptrtoint ptr %rx_dma_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rx_dma_buf.i.i, align 4
  %166 = call ptr @memcpy(ptr %add.ptr.i.i23, ptr %165, i32 %mul.i.i21)
  %167 = load i32, ptr %curr_dma_words.i.i19, align 4
  %168 = load i32, ptr %bytes_per_word.i.i20, align 4
  %mul3.i.i = mul i32 %168, %167
  br label %tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i

if.else.i.i29:                                    ; preds = %if.then62.i
  %cur_rx_pos7.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 16
  %bits_per_word.i.i24 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %169 = ptrtoint ptr %bits_per_word.i.i24 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bits_per_word.i.i24, align 1
  %conv.i.i25 = zext i8 %170 to i32
  %notmask.i.i26 = shl nsw i32 -1, %conv.i.i25
  %sub.i.i27 = xor i32 %notmask.i.i26, -1
  %curr_dma_words9.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 14
  %171 = ptrtoint ptr %curr_dma_words9.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %curr_dma_words9.i.i, align 4
  %bytes_per_word10.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 13
  %173 = ptrtoint ptr %bytes_per_word10.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %bytes_per_word10.i.i, align 4
  %mul11.i.i = mul i32 %174, %172
  %len12.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %175 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %len12.i.i, align 4
  %cur_pos.i.i28 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 11
  %177 = ptrtoint ptr %cur_pos.i.i28 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %cur_pos.i.i28, align 4
  %sub13.i.i = sub i32 %176, %178
  %179 = tail call i32 @llvm.umin.i32(i32 %mul11.i.i, i32 %sub13.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp2081.not.i.i = icmp eq i32 %172, 0
  br i1 %cmp2081.not.i.i, label %if.else.i.i29.tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.else.i.i29.tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge: ; preds = %if.else.i.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i.i29
  %rx_buf6.i.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %180 = ptrtoint ptr %rx_buf6.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rx_buf6.i.i, align 4
  %182 = ptrtoint ptr %cur_rx_pos7.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cur_rx_pos7.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %181, i32 %183
  %rx_dma_buf22.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 38
  br label %for.body.i.i31

for.body.i.i31:                                   ; preds = %for.end.i.i35.for.body.i.i31_crit_edge, %for.body.lr.ph.i.i
  %consume.184.i.i = phi i32 [ %179, %for.body.lr.ph.i.i ], [ %consume.2.lcssa.i.i, %for.end.i.i35.for.body.i.i31_crit_edge ]
  %rx_buf5.083.i.i = phi ptr [ %add.ptr8.i.i, %for.body.lr.ph.i.i ], [ %rx_buf5.1.lcssa.i.i, %for.end.i.i35.for.body.i.i31_crit_edge ]
  %count.082.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc33.i.i, %for.end.i.i35.for.body.i.i31_crit_edge ]
  %184 = ptrtoint ptr %rx_dma_buf22.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rx_dma_buf22.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %185, i32 %count.082.i.i
  %186 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i30 = and i32 %187, %sub.i.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume.184.i.i)
  %tobool24.not74.i.i = icmp eq i32 %consume.184.i.i, 0
  br i1 %tobool24.not74.i.i, label %for.body.i.i31.for.end.i.i35_crit_edge, label %for.body.i.i31.land.rhs.i.i_crit_edge

for.body.i.i31.land.rhs.i.i_crit_edge:            ; preds = %for.body.i.i31
  br label %land.rhs.i.i

for.body.i.i31.for.end.i.i35_crit_edge:           ; preds = %for.body.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i35

land.rhs.i.i:                                     ; preds = %for.body28.i.i.land.rhs.i.i_crit_edge, %for.body.i.i31.land.rhs.i.i_crit_edge
  %consume.277.i.i = phi i32 [ %dec.i.i, %for.body28.i.i.land.rhs.i.i_crit_edge ], [ %consume.184.i.i, %for.body.i.i31.land.rhs.i.i_crit_edge ]
  %rx_buf5.176.i.i = phi ptr [ %incdec.ptr.i.i33, %for.body28.i.i.land.rhs.i.i_crit_edge ], [ %rx_buf5.083.i.i, %for.body.i.i31.land.rhs.i.i_crit_edge ]
  %i.075.i.i = phi i32 [ %inc.i.i34, %for.body28.i.i.land.rhs.i.i_crit_edge ], [ 0, %for.body.i.i31.land.rhs.i.i_crit_edge ]
  %188 = ptrtoint ptr %bytes_per_word10.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %bytes_per_word10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.i.i, i32 %189)
  %cmp26.i.i = icmp ult i32 %i.075.i.i, %189
  br i1 %cmp26.i.i, label %for.body28.i.i, label %land.rhs.i.i.for.end.i.i35_crit_edge

land.rhs.i.i.for.end.i.i35_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i35

for.body28.i.i:                                   ; preds = %land.rhs.i.i
  %mul29.i.i = shl i32 %i.075.i.i, 3
  %shr.i.i32 = lshr i32 %and.i.i30, %mul29.i.i
  %conv31.i.i = trunc i32 %shr.i.i32 to i8
  %incdec.ptr.i.i33 = getelementptr i8, ptr %rx_buf5.176.i.i, i32 1
  %190 = ptrtoint ptr %rx_buf5.176.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv31.i.i, ptr %rx_buf5.176.i.i, align 1
  %inc.i.i34 = add nuw i32 %i.075.i.i, 1
  %dec.i.i = add i32 %consume.277.i.i, -1
  %tobool24.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool24.not.i.i, label %for.body28.i.i.for.end.i.i35_crit_edge, label %for.body28.i.i.land.rhs.i.i_crit_edge

for.body28.i.i.land.rhs.i.i_crit_edge:            ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

for.body28.i.i.for.end.i.i35_crit_edge:           ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i35

for.end.i.i35:                                    ; preds = %for.body28.i.i.for.end.i.i35_crit_edge, %land.rhs.i.i.for.end.i.i35_crit_edge, %for.body.i.i31.for.end.i.i35_crit_edge
  %rx_buf5.1.lcssa.i.i = phi ptr [ %rx_buf5.083.i.i, %for.body.i.i31.for.end.i.i35_crit_edge ], [ %incdec.ptr.i.i33, %for.body28.i.i.for.end.i.i35_crit_edge ], [ %rx_buf5.176.i.i, %land.rhs.i.i.for.end.i.i35_crit_edge ]
  %consume.2.lcssa.i.i = phi i32 [ 0, %for.body.i.i31.for.end.i.i35_crit_edge ], [ 0, %for.body28.i.i.for.end.i.i35_crit_edge ], [ %consume.277.i.i, %land.rhs.i.i.for.end.i.i35_crit_edge ]
  %inc33.i.i = add nuw i32 %count.082.i.i, 1
  %191 = ptrtoint ptr %curr_dma_words9.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %curr_dma_words9.i.i, align 4
  %cmp20.i.i = icmp ult i32 %inc33.i.i, %192
  br i1 %cmp20.i.i, label %for.end.i.i35.for.body.i.i31_crit_edge, label %for.end.i.i35.tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge

for.end.i.i35.tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge: ; preds = %for.end.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i

for.end.i.i35.for.body.i.i31_crit_edge:           ; preds = %for.end.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i31

tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i:  ; preds = %for.end.i.i35.tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge, %if.else.i.i29.tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge, %if.then.i17.i
  %cur_rx_pos7.sink86.i.i = phi ptr [ %cur_rx_pos.i.i22, %if.then.i17.i ], [ %cur_rx_pos7.i.i, %if.else.i.i29.tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge ], [ %cur_rx_pos7.i.i, %for.end.i.i35.tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge ]
  %.sink85.i.i = phi i32 [ %mul3.i.i, %if.then.i17.i ], [ %179, %if.else.i.i29.tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge ], [ %179, %for.end.i.i35.tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i_crit_edge ]
  %193 = ptrtoint ptr %cur_rx_pos7.sink86.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cur_rx_pos7.sink86.i.i, align 4
  %add36.i.i = add i32 %194, %.sink85.i.i
  store i32 %add36.i.i, ptr %cur_rx_pos7.sink86.i.i, align 4
  %195 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %context_data, align 4
  %197 = ptrtoint ptr %rx_dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %rx_dma_phys.i.i, align 4
  %199 = ptrtoint ptr %dma_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %dma_buf_size.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %196, i32 noundef %198, i32 noundef %200, i32 noundef 2) #9
  br label %if.end63.i

if.end63.i:                                       ; preds = %tegra_spi_copy_spi_rxbuf_to_client_rxbuf.exit.i, %if.end58.i.if.end63.i_crit_edge
  %201 = ptrtoint ptr %cur_direction.i5 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %cur_direction.i5, align 4
  %and65.i = and i32 %202, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  %cur_rx_pos.i36 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 16
  %cur_tx_pos.i37 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 17
  %.sink.in.i38 = select i1 %tobool66.not.i, ptr %cur_rx_pos.i36, ptr %cur_tx_pos.i37
  %203 = ptrtoint ptr %.sink.in.i38 to i32
  call void @__asan_load4_noabort(i32 %203)
  %.sink.i39 = load i32, ptr %.sink.in.i38, align 4
  %204 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 11
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %.sink.i39, ptr %204, align 4
  %len.i40 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %206 = ptrtoint ptr %len.i40 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %len.i40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %.sink.i39)
  %cmp72.i = icmp eq i32 %207, %.sink.i39
  br i1 %cmp72.i, label %if.then74.i, label %if.end76.i

if.then74.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  %xfer_completion75.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 35
  tail call void @complete(ptr noundef %xfer_completion75.i) #9
  br label %exit.i64

if.end76.i:                                       ; preds = %if.end63.i
  %sub.i19.i = sub i32 %207, %.sink.i39
  %bits_per_word1.i.i41 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  %208 = ptrtoint ptr %bits_per_word1.i.i41 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %bits_per_word1.i.i41, align 1
  %conv.i20.i = zext i8 %209 to i32
  %sub2.i.i42 = add nuw nsw i32 %conv.i20.i, 7
  %div1.i.i43 = lshr i32 %sub2.i.i42, 3
  %bytes_per_word.i21.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 13
  %210 = ptrtoint ptr %bytes_per_word.i21.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %div1.i.i43, ptr %bytes_per_word.i21.i, align 4
  %211 = zext i8 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %209, label %if.end76.i.if.else.i24.i_crit_edge [
    i8 8, label %if.end76.i.land.lhs.true.i.i45_crit_edge
    i8 16, label %if.end76.i.land.lhs.true.i.i45_crit_edge67
    i8 32, label %if.end76.i.land.lhs.true.i.i45_crit_edge68
  ]

if.end76.i.land.lhs.true.i.i45_crit_edge68:       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i45

if.end76.i.land.lhs.true.i.i45_crit_edge67:       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i45

if.end76.i.land.lhs.true.i.i45_crit_edge:         ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i45

if.end76.i.if.else.i24.i_crit_edge:               ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i24.i

land.lhs.true.i.i45:                              ; preds = %if.end76.i.land.lhs.true.i.i45_crit_edge, %if.end76.i.land.lhs.true.i.i45_crit_edge67, %if.end76.i.land.lhs.true.i.i45_crit_edge68
  %212 = ptrtoint ptr %len.i40 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %len.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %213)
  %cmp10.i.i44 = icmp ugt i32 %213, 3
  br i1 %cmp10.i.i44, label %if.then.i23.i, label %land.lhs.true.i.i45.if.else.i24.i_crit_edge

land.lhs.true.i.i45.if.else.i24.i_crit_edge:      ; preds = %land.lhs.true.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i24.i

if.then.i23.i:                                    ; preds = %land.lhs.true.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  %is_packed.i22.i = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 27
  %214 = ptrtoint ptr %is_packed.i22.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 1, ptr %is_packed.i22.i, align 4
  %div124.i.i46 = udiv i8 32, %209
  %div12.zext.i.i47 = zext i8 %div124.i.i46 to i32
  br label %if.end.i.i52

if.else.i24.i:                                    ; preds = %land.lhs.true.i.i45.if.else.i24.i_crit_edge, %if.end76.i.if.else.i24.i_crit_edge
  %is_packed13.i.i48 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 27
  %215 = ptrtoint ptr %is_packed13.i.i48 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %is_packed13.i.i48, align 4
  br label %if.end.i.i52

if.end.i.i52:                                     ; preds = %if.else.i24.i, %if.then.i23.i
  %.sink.i.i49 = phi i32 [ 1, %if.else.i24.i ], [ %div12.zext.i.i47, %if.then.i23.i ]
  %words_per_32bit14.i.i50 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 12
  %216 = ptrtoint ptr %words_per_32bit14.i.i50 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %.sink.i.i49, ptr %words_per_32bit14.i.i50, align 4
  %is_packed15.i.i51 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 27
  %217 = ptrtoint ptr %is_packed15.i.i51 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %is_packed15.i.i51, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.i25.i = icmp eq i8 %218, 0
  br i1 %tobool.not.i25.i, label %if.else23.i.i61, label %if.then16.i.i55

if.then16.i.i55:                                  ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  %max_buf_size.i.i53 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 19
  %219 = ptrtoint ptr %max_buf_size.i.i53 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %max_buf_size.i.i53, align 4
  %221 = tail call i32 @llvm.umin.i32(i32 %sub.i19.i, i32 %220) #9
  %div20.i.i54 = udiv i32 %221, %div1.i.i43
  %add21.i.i = add i32 %221, 3
  %div223.i.i = lshr i32 %add21.i.i, 2
  br label %tegra_spi_calculate_curr_xfer_param.exit.i63

if.else23.i.i61:                                  ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  %sub24.i.i56 = add i32 %sub.i19.i, -1
  %div26.i.i57 = udiv i32 %sub24.i.i56, %div1.i.i43
  %add27.i.i58 = add i32 %div26.i.i57, 1
  %max_buf_size28.i.i59 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 19
  %222 = ptrtoint ptr %max_buf_size28.i.i59 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %max_buf_size28.i.i59, align 4
  %div292.i.i60 = lshr i32 %223, 2
  %224 = tail call i32 @llvm.umin.i32(i32 %add27.i.i58, i32 %div292.i.i60) #9
  br label %tegra_spi_calculate_curr_xfer_param.exit.i63

tegra_spi_calculate_curr_xfer_param.exit.i63:     ; preds = %if.else23.i.i61, %if.then16.i.i55
  %div20.sink.i.i62 = phi i32 [ %224, %if.else23.i.i61 ], [ %div20.i.i54, %if.then16.i.i55 ]
  %total_fifo_words.0.i.i = phi i32 [ %224, %if.else23.i.i61 ], [ %div223.i.i, %if.then16.i.i55 ]
  %225 = getelementptr inbounds %struct.tegra_spi_data, ptr %context_data, i32 0, i32 14
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %div20.sink.i.i62, ptr %225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %total_fifo_words.0.i.i)
  %cmp78.i = icmp ugt i32 %total_fifo_words.0.i.i, 64
  br i1 %cmp78.i, label %if.then80.i, label %if.else82.i

if.then80.i:                                      ; preds = %tegra_spi_calculate_curr_xfer_param.exit.i63
  call void @__sanitizer_cov_trace_pc() #11
  %call81.i = tail call fastcc i32 @tegra_spi_start_dma_based_transfer(ptr noundef %context_data, ptr noundef %3) #9
  br label %exit.i64

if.else82.i:                                      ; preds = %tegra_spi_calculate_curr_xfer_param.exit.i63
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_spi_start_cpu_based_transfer(ptr noundef %context_data, ptr noundef %3) #9
  br label %exit.i64

exit.i64:                                         ; preds = %if.else82.i, %if.then80.i, %if.then74.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i12, i32 noundef %call38.i) #9
  br label %cleanup

cleanup:                                          ; preds = %exit.i64, %do.end47.i, %exit.i, %do.end8.i
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %clk = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #9
  tail call void @clk_unprepare(ptr noundef %8) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_spi_start_transfer_one(ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %t, i32 noundef %command1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %cur_pos.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %cur_pos.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_pos.i, align 4
  %sub.i = sub i32 %5, %7
  %bits_per_word1.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %8 = ptrtoint ptr %bits_per_word1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits_per_word1.i, align 1
  %conv.i = zext i8 %9 to i32
  %sub2.i = add nuw nsw i32 %conv.i, 7
  %div1.i = lshr i32 %sub2.i, 3
  %bytes_per_word.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div1.i, ptr %bytes_per_word.i, align 4
  %11 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %9, label %entry.if.else.i_crit_edge [
    i8 8, label %entry.land.lhs.true.i_crit_edge
    i8 16, label %entry.land.lhs.true.i_crit_edge82
    i8 32, label %entry.land.lhs.true.i_crit_edge83
  ]

entry.land.lhs.true.i_crit_edge83:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

entry.land.lhs.true.i_crit_edge82:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge82, %entry.land.lhs.true.i_crit_edge83
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp10.i = icmp ugt i32 %13, 3
  br i1 %cmp10.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_packed.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 27
  %14 = ptrtoint ptr %is_packed.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_packed.i, align 4
  %div124.i = udiv i8 32, %9
  %div12.zext.i = zext i8 %div124.i to i32
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %is_packed13.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 27
  %15 = ptrtoint ptr %is_packed13.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_packed13.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 1, %if.else.i ], [ %div12.zext.i, %if.then.i ]
  %words_per_32bit14.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %words_per_32bit14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i, ptr %words_per_32bit14.i, align 4
  %is_packed15.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 27
  %17 = ptrtoint ptr %is_packed15.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_packed15.i, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.else23.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_buf_size.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 19
  %19 = ptrtoint ptr %max_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_buf_size.i, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %20) #9
  %div20.i = udiv i32 %21, %div1.i
  %add21.i = add i32 %21, 3
  %div223.i = lshr i32 %add21.i, 2
  br label %tegra_spi_calculate_curr_xfer_param.exit

if.else23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub24.i = add i32 %sub.i, -1
  %div26.i = udiv i32 %sub24.i, %div1.i
  %add27.i = add i32 %div26.i, 1
  %max_buf_size28.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 19
  %22 = ptrtoint ptr %max_buf_size28.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_buf_size28.i, align 4
  %div292.i = lshr i32 %23, 2
  %24 = tail call i32 @llvm.umin.i32(i32 %add27.i, i32 %div292.i) #9
  br label %tegra_spi_calculate_curr_xfer_param.exit

tegra_spi_calculate_curr_xfer_param.exit:         ; preds = %if.else23.i, %if.then16.i
  %masksel81 = phi i32 [ 32, %if.then16.i ], [ 0, %if.else23.i ]
  %div20.sink.i = phi i32 [ %div20.i, %if.then16.i ], [ %24, %if.else23.i ]
  %total_fifo_words.0.i = phi i32 [ %div223.i, %if.then16.i ], [ %24, %if.else23.i ]
  %25 = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 14
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div20.sink.i, ptr %25, align 4
  %rx_nbits = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 7
  %27 = ptrtoint ptr %rx_nbits to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %rx_nbits, align 4
  %bf.clear = and i8 %bf.load, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 2
  %28 = and i8 %bf.load, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %28)
  %cmp5 = icmp eq i8 %28, 16
  %or.cond = or i1 %cmp, %cmp5
  %and = and i32 %command1, -201349153
  %masksel = select i1 %or.cond, i32 16384, i32 0
  %command1.addr.0 = or i32 %masksel81, %and
  %command1.addr.1 = or i32 %command1.addr.0, %masksel
  %cur_direction = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 15
  %29 = ptrtoint ptr %cur_direction to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cur_direction, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %30 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_buf, align 4
  %tobool12.not = icmp eq ptr %31, null
  br i1 %tobool12.not, label %tegra_spi_calculate_curr_xfer_param.exit.if.end17_crit_edge, label %if.then13

tegra_spi_calculate_curr_xfer_param.exit.if.end17_crit_edge: ; preds = %tegra_spi_calculate_curr_xfer_param.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %tegra_spi_calculate_curr_xfer_param.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or14 = or i32 %command1.addr.1, 4096
  %32 = ptrtoint ptr %cur_direction to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %cur_direction, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %tegra_spi_calculate_curr_xfer_param.exit.if.end17_crit_edge
  %command1.addr.2 = phi i32 [ %or14, %if.then13 ], [ %command1.addr.1, %tegra_spi_calculate_curr_xfer_param.exit.if.end17_crit_edge ]
  %33 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t, align 4
  %tobool18.not = icmp eq ptr %34, null
  br i1 %tobool18.not, label %if.end17.if.end23_crit_edge, label %if.then19

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %or20 = or i32 %command1.addr.2, 2048
  %35 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur_direction, align 4
  %or22 = or i32 %36, 1
  store i32 %or22, ptr %cur_direction, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17.if.end23_crit_edge
  %command1.addr.3 = phi i32 [ %or20, %if.then19 ], [ %command1.addr.2, %if.end17.if.end23_crit_edge ]
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %37 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %chip_select, align 4
  %39 = and i8 %38, 3
  %and24 = zext i8 %39 to i32
  %shl = shl nuw nsw i32 %and24, 26
  %or25 = or i32 %shl, %command1.addr.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %or25) #9
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #9, !srcloc !209
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %command1_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 28
  %46 = ptrtoint ptr %command1_reg to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or25, ptr %command1_reg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_spi_start_transfer_one.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_spi_start_transfer_one, %do.end)) #9
          to label %if.then31 [label %do.end], !srcloc !213

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %def_command1_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 30
  %49 = ptrtoint ptr %def_command1_reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %def_command1_reg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_spi_start_transfer_one.__UNIQUE_ID_ddebug253, ptr noundef %48, ptr noundef nonnull @.str.46, i32 noundef %50, i32 noundef %or25) #9
  br label %do.end

do.end:                                           ; preds = %if.then31, %if.end23
  %call33 = tail call fastcc i32 @tegra_spi_flush_fifos(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end.cleanup_crit_edge, label %if.end37

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %total_fifo_words.0.i)
  %cmp38 = icmp ugt i32 %total_fifo_words.0.i, 64
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call fastcc i32 @tegra_spi_start_dma_based_transfer(ptr noundef %3, ptr noundef %t)
  br label %cleanup

if.else42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_spi_start_cpu_based_transfer(ptr noundef %3, ptr noundef %t)
  br label %cleanup

cleanup:                                          ; preds = %if.else42, %if.then40, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %do.end.cleanup_crit_edge ], [ %call41, %if.then40 ], [ 0, %if.else42 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_spi_dump_regs(ptr nocapture noundef readonly %tspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_spi_dump_regs.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_spi_dump_regs, %do.body4)) #9
          to label %if.then [label %do.body4], !srcloc !213

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tspi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_spi_dump_regs.__UNIQUE_ID_ddebug256, ptr noundef %1, ptr noundef nonnull @.str.62) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_spi_dump_regs.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_spi_dump_regs, %do.body24)) #9
          to label %if.then18 [label %do.body24], !srcloc !213

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tspi, align 4
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 5
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !210
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !210
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_spi_dump_regs.__UNIQUE_ID_ddebug257, ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %7, i32 noundef %11) #9
  br label %do.body24

do.body24:                                        ; preds = %if.then18, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_spi_dump_regs.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_spi_dump_regs, %do.body44)) #9
          to label %if.then38 [label %do.body44], !srcloc !213

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tspi, align 4
  %base.i83 = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 5
  %14 = ptrtoint ptr %base.i83 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i83, align 4
  %add.ptr.i84 = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #9, !srcloc !210
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %18 = ptrtoint ptr %base.i83 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i83, align 4
  %add.ptr.i86 = getelementptr i8, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #9, !srcloc !210
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_spi_dump_regs.__UNIQUE_ID_ddebug258, ptr noundef %13, ptr noundef nonnull @.str.64, i32 noundef %17, i32 noundef %21) #9
  br label %do.body44

do.body44:                                        ; preds = %if.then38, %do.body24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_spi_dump_regs.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_spi_dump_regs, %do.end63)) #9
          to label %if.then58 [label %do.end63], !srcloc !213

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tspi, align 4
  %base.i87 = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 5
  %24 = ptrtoint ptr %base.i87 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #9, !srcloc !210
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %28 = ptrtoint ptr %base.i87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i87, align 4
  %add.ptr.i90 = getelementptr i8, ptr %29, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #9, !srcloc !210
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_spi_dump_regs.__UNIQUE_ID_ddebug259, ptr noundef %23, ptr noundef nonnull @.str.65, i32 noundef %27, i32 noundef %31) #9
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %do.body44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_spi_flush_fifos(ptr nocapture noundef readonly %tspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 5
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !210
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %and = and i32 %4, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp.not = icmp eq i32 %and, 5
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %or = or i32 %4, 49152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %5) #9, !srcloc !209
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tspi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.66) #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #9
  %18 = and i32 %13, 83886080
  %cmp2.not = icmp eq i32 %18, 83886080
  br i1 %cmp2.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_spi_transfer_end(ptr nocapture noundef readonly %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %6 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cs_gpiod, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %use_hw_based_cs = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %use_hw_based_cs to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_hw_based_cs, align 1, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %command1_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 28
  %10 = ptrtoint ptr %command1_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %command1_reg, align 4
  %and8 = and i32 %11, -1048577
  %12 = shl i32 %5, 18
  %13 = and i32 %12, 1048576
  %14 = or i32 %13, %and8
  %and8.sink = xor i32 %14, 1048576
  store i32 %and8.sink, ptr %command1_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %and8.sink) #9
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !209
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end.if.end11_crit_edge
  %def_command1_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 30
  %21 = ptrtoint ptr %def_command1_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %def_command1_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %base.i21 = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %base.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !209
  %26 = ptrtoint ptr %base.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i21, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_spi_start_dma_based_transfer(ptr noundef %tspi, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  %sg.i.i163 = alloca %struct.scatterlist, align 4
  %sg.i.i = alloca %struct.scatterlist, align 4
  %dma_sconfig = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_sconfig) #9
  %0 = call ptr @memset(ptr %dma_sconfig, i32 0, i32 48)
  %curr_dma_words = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 14
  %1 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %curr_dma_words, align 4
  %sub = add i32 %2, 65535
  %and = and i32 %sub, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 5
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #9, !srcloc !209
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %is_packed = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 27
  %9 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_packed, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %curr_dma_words, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bytes_per_word = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 13
  %13 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytes_per_word, align 4
  %mul = mul i32 %14, %12
  %sub2 = add i32 %mul, 3
  %div147 = and i32 %sub2, -4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul5 = shl i32 %12, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.0 = phi i32 [ %div147, %if.then ], [ %mul5, %if.else ]
  %and6 = and i32 %len.0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else9, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else9:                                         ; preds = %if.end
  %15 = and i32 %len.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  %or13 = or i32 %and, 557056
  br label %if.end17

if.else14:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  %or15 = or i32 %and, 1114112
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then12, %if.end.if.end17_crit_edge
  %val.0 = phi i32 [ %or13, %if.then12 ], [ %or15, %if.else14 ], [ %and, %if.end.if.end17_crit_edge ]
  %dma_burst.0 = phi i32 [ 4, %if.then12 ], [ 8, %if.else14 ], [ 1, %if.end.if.end17_crit_edge ]
  %soc_data = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 45
  %16 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc_data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end31_crit_edge

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %cur_direction = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 15
  %20 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cur_direction, align 4
  %and20 = shl i32 %21, 28
  %22 = and i32 %and20, 268435456
  %23 = or i32 %22, %val.0
  %24 = and i32 %and20, 536870912
  %25 = or i32 %23, %24
  br label %if.end31

if.end31:                                         ; preds = %if.then19, %if.end17.if.end31_crit_edge
  %val.2 = phi i32 [ %val.0, %if.end17.if.end31_crit_edge ], [ %25, %if.then19 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %val.2) #9
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %26) #9, !srcloc !209
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %dma_control_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 29
  %32 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %val.2, ptr %dma_control_reg, align 4
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 9
  %33 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %device_fc, align 4
  %cur_direction32 = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 15
  %34 = ptrtoint ptr %cur_direction32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_direction32, align 4
  %and33 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end49_crit_edge, label %if.then35

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then35:                                        ; preds = %if.end31
  %phys = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 6
  %36 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys, align 4
  %add36 = add i32 %37, 264
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 2
  %38 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add36, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 4
  %39 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 6
  %40 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %dma_burst.0, ptr %dst_maxburst, align 4
  %tx_dma_chan = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 41
  %41 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_dma_chan, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.then35.do.end_crit_edge, label %dmaengine_slave_config.exit

if.then35.do.end_crit_edge:                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dmaengine_slave_config.exit:                      ; preds = %if.then35
  %call.i = call i32 %46(ptr noundef %42, ptr noundef nonnull %dma_sconfig) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %dmaengine_slave_config.exit.do.end_crit_edge, label %if.end39

dmaengine_slave_config.exit.do.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dmaengine_slave_config.exit.do.end_crit_edge, %if.then35.do.end_crit_edge
  %retval.0.i191 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.end_crit_edge ], [ -38, %if.then35.do.end_crit_edge ]
  %47 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.47, i32 noundef %retval.0.i191) #12
  br label %cleanup

if.end39:                                         ; preds = %dmaengine_slave_config.exit
  %49 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tspi, align 4
  %tx_dma_phys.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 43
  %51 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_dma_phys.i, align 4
  %dma_buf_size.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 18
  %53 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_buf_size.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef 1) #9
  %55 = ptrtoint ptr %is_packed to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %is_packed, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i151 = icmp eq i8 %56, 0
  br i1 %tobool.not.i151, label %if.else.i, label %if.then.i153

if.then.i153:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %curr_dma_words, align 4
  %bytes_per_word.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 13
  %59 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bytes_per_word.i, align 4
  %mul.i = mul i32 %60, %58
  %tx_dma_buf.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 42
  %61 = ptrtoint ptr %tx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_dma_buf.i, align 4
  %63 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %t, align 4
  %cur_pos.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 11
  %65 = ptrtoint ptr %cur_pos.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cur_pos.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %64, i32 %66
  %67 = call ptr @memcpy(ptr %62, ptr %add.ptr.i152, i32 %mul.i)
  %68 = load i32, ptr %curr_dma_words, align 4
  %69 = load i32, ptr %bytes_per_word.i, align 4
  %mul3.i = mul i32 %69, %68
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 17
  br label %tegra_spi_copy_client_txbuf_to_spi_txbuf.exit

if.else.i:                                        ; preds = %if.end39
  %cur_tx_pos6.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 17
  %70 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %curr_dma_words, align 4
  %bytes_per_word9.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 13
  %72 = ptrtoint ptr %bytes_per_word9.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bytes_per_word9.i, align 4
  %mul10.i = mul i32 %73, %71
  %len11.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %74 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len11.i, align 4
  %cur_pos12.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 11
  %76 = ptrtoint ptr %cur_pos12.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cur_pos12.i, align 4
  %sub.i = sub i32 %75, %77
  %78 = call i32 @llvm.umin.i32(i32 %mul10.i, i32 %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp1878.not.i = icmp eq i32 %71, 0
  br i1 %cmp1878.not.i, label %if.else.i.tegra_spi_copy_client_txbuf_to_spi_txbuf.exit_crit_edge, label %for.cond19.preheader.lr.ph.i

if.else.i.tegra_spi_copy_client_txbuf_to_spi_txbuf.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_copy_client_txbuf_to_spi_txbuf.exit

for.cond19.preheader.lr.ph.i:                     ; preds = %if.else.i
  %79 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %t, align 4
  %81 = ptrtoint ptr %cur_tx_pos6.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cur_tx_pos6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %80, i32 %82
  %tx_dma_buf25.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 42
  br label %for.cond19.preheader.i

for.cond19.preheader.i:                           ; preds = %for.end.i.for.cond19.preheader.i_crit_edge, %for.cond19.preheader.lr.ph.i
  %consume.181.i = phi i32 [ %78, %for.cond19.preheader.lr.ph.i ], [ %consume.2.lcssa.i, %for.end.i.for.cond19.preheader.i_crit_edge ]
  %tx_buf4.080.i = phi ptr [ %add.ptr7.i, %for.cond19.preheader.lr.ph.i ], [ %tx_buf4.1.lcssa.i, %for.end.i.for.cond19.preheader.i_crit_edge ]
  %count.079.i = phi i32 [ 0, %for.cond19.preheader.lr.ph.i ], [ %inc27.i, %for.end.i.for.cond19.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %consume.181.i)
  %tobool20.not68.i = icmp eq i32 %consume.181.i, 0
  br i1 %tobool20.not68.i, label %for.cond19.preheader.i.for.end.i_crit_edge, label %land.rhs.lr.ph.i

for.cond19.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %for.cond19.preheader.i
  %83 = ptrtoint ptr %bytes_per_word9.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bytes_per_word9.i, align 4
  %85 = add i32 %consume.181.i, -1
  %umin.i = call i32 @llvm.umin.i32(i32 %84, i32 %85) #9
  %uglygep.i = getelementptr i8, ptr %tx_buf4.080.i, i32 %umin.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body23.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %x.072.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %or.i, %for.body23.i.land.rhs.i_crit_edge ]
  %consume.271.i = phi i32 [ %consume.181.i, %land.rhs.lr.ph.i ], [ %dec.i, %for.body23.i.land.rhs.i_crit_edge ]
  %tx_buf4.170.i = phi ptr [ %tx_buf4.080.i, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %for.body23.i.land.rhs.i_crit_edge ]
  %i.069.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.body23.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.069.i, i32 %84)
  %exitcond.not.i = icmp eq i32 %i.069.i, %84
  br i1 %exitcond.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body23.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body23.i:                                     ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, ptr %tx_buf4.170.i, i32 1
  %86 = ptrtoint ptr %tx_buf4.170.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tx_buf4.170.i, align 1
  %conv.i = zext i8 %87 to i32
  %mul24.i = shl i32 %i.069.i, 3
  %shl.i = shl i32 %conv.i, %mul24.i
  %or.i = or i32 %shl.i, %x.072.i
  %inc.i = add nuw i32 %i.069.i, 1
  %dec.i = add i32 %consume.271.i, -1
  %tobool20.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool20.not.i, label %for.body23.i.for.end.i_crit_edge, label %for.body23.i.land.rhs.i_crit_edge

for.body23.i.land.rhs.i_crit_edge:                ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.body23.i.for.end.i_crit_edge:                 ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body23.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %for.cond19.preheader.i.for.end.i_crit_edge
  %tx_buf4.1.lcssa.i = phi ptr [ %tx_buf4.080.i, %for.cond19.preheader.i.for.end.i_crit_edge ], [ %uglygep.i, %land.rhs.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body23.i.for.end.i_crit_edge ]
  %consume.2.lcssa.i = phi i32 [ 0, %for.cond19.preheader.i.for.end.i_crit_edge ], [ %consume.271.i, %land.rhs.i.for.end.i_crit_edge ], [ 0, %for.body23.i.for.end.i_crit_edge ]
  %x.0.lcssa.i = phi i32 [ 0, %for.cond19.preheader.i.for.end.i_crit_edge ], [ %x.072.i, %land.rhs.i.for.end.i_crit_edge ], [ %or.i, %for.body23.i.for.end.i_crit_edge ]
  %88 = ptrtoint ptr %tx_dma_buf25.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_dma_buf25.i, align 4
  %arrayidx.i = getelementptr i32, ptr %89, i32 %count.079.i
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %x.0.lcssa.i, ptr %arrayidx.i, align 4
  %inc27.i = add nuw i32 %count.079.i, 1
  %91 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %curr_dma_words, align 4
  %cmp18.i = icmp ult i32 %inc27.i, %92
  br i1 %cmp18.i, label %for.end.i.for.cond19.preheader.i_crit_edge, label %for.end.i.tegra_spi_copy_client_txbuf_to_spi_txbuf.exit_crit_edge

for.end.i.tegra_spi_copy_client_txbuf_to_spi_txbuf.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_copy_client_txbuf_to_spi_txbuf.exit

for.end.i.for.cond19.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond19.preheader.i

tegra_spi_copy_client_txbuf_to_spi_txbuf.exit:    ; preds = %for.end.i.tegra_spi_copy_client_txbuf_to_spi_txbuf.exit_crit_edge, %if.else.i.tegra_spi_copy_client_txbuf_to_spi_txbuf.exit_crit_edge, %if.then.i153
  %cur_tx_pos6.sink83.i = phi ptr [ %cur_tx_pos.i, %if.then.i153 ], [ %cur_tx_pos6.i, %if.else.i.tegra_spi_copy_client_txbuf_to_spi_txbuf.exit_crit_edge ], [ %cur_tx_pos6.i, %for.end.i.tegra_spi_copy_client_txbuf_to_spi_txbuf.exit_crit_edge ]
  %.sink82.i = phi i32 [ %mul3.i, %if.then.i153 ], [ %78, %if.else.i.tegra_spi_copy_client_txbuf_to_spi_txbuf.exit_crit_edge ], [ %78, %for.end.i.tegra_spi_copy_client_txbuf_to_spi_txbuf.exit_crit_edge ]
  %93 = ptrtoint ptr %cur_tx_pos6.sink83.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cur_tx_pos6.sink83.i, align 4
  %add30.i = add i32 %94, %.sink82.i
  store i32 %add30.i, ptr %cur_tx_pos6.sink83.i, align 4
  %95 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tspi, align 4
  %97 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_dma_phys.i, align 4
  %99 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_buf_size.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %96, i32 noundef %98, i32 noundef %100, i32 noundef 1) #9
  %tx_dma_complete.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 23
  %101 = ptrtoint ptr %tx_dma_complete.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %tx_dma_complete.i, align 4
  %102 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx_dma_chan, align 4
  %104 = ptrtoint ptr %tx_dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_dma_phys.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %106 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %107 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %108 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #9
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %105, ptr %106, align 4
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %len.0, ptr %107, align 4
  %tobool.not.i.i = icmp eq ptr %103, null
  br i1 %tobool.not.i.i, label %tegra_spi_copy_client_txbuf_to_spi_txbuf.exit.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

tegra_spi_copy_client_txbuf_to_spi_txbuf.exit.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %tegra_spi_copy_client_txbuf_to_spi_txbuf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %tegra_spi_copy_client_txbuf_to_spi_txbuf.exit
  %111 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %103, align 4
  %tobool1.not.i.i = icmp eq ptr %112, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %112, i32 0, i32 39
  %113 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %114, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %tegra_spi_copy_client_txbuf_to_spi_txbuf.exit.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %tx_dma_desc20.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 44
  %115 = ptrtoint ptr %tx_dma_desc20.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %tx_dma_desc20.i, align 4
  br label %do.end46

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %114(ptr noundef nonnull %103, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %tx_dma_desc.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 44
  %116 = ptrtoint ptr %tx_dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i.i, ptr %tx_dma_desc.i, align 4
  %tobool.not.i155 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i155, label %dmaengine_prep_slave_single.exit.i.do.end46_crit_edge, label %tegra_spi_start_tx_dma.exit

dmaengine_prep_slave_single.exit.i.do.end46_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

tegra_spi_start_tx_dma.exit:                      ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %117 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @tegra_spi_dma_complete, ptr %callback.i, align 4
  %118 = ptrtoint ptr %tx_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tx_dma_desc.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %119, i32 0, i32 8
  %120 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %tx_dma_complete.i, ptr %callback_param.i, align 4
  %121 = load ptr, ptr %tx_dma_desc.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i18.i = call i32 %123(ptr noundef %121) #9
  %124 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tx_dma_chan, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %127, i32 0, i32 50
  %128 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %129(ptr noundef %125) #9
  br label %if.end49

do.end46:                                         ; preds = %dmaengine_prep_slave_single.exit.i.do.end46_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %130 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.57) #12
  %132 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.50, i32 noundef -5) #12
  br label %cleanup

if.end49:                                         ; preds = %tegra_spi_start_tx_dma.exit, %if.end31.if.end49_crit_edge
  %134 = ptrtoint ptr %cur_direction32 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cur_direction32, align 4
  %and51 = and i32 %135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end49.if.end83_crit_edge, label %if.then53

if.end49.if.end83_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then53:                                        ; preds = %if.end49
  %phys54 = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 6
  %136 = ptrtoint ptr %phys54 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %phys54, align 4
  %add55 = add i32 %137, 392
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 1
  %138 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %add55, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 3
  %139 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 4, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 5
  %140 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %dma_burst.0, ptr %src_maxburst, align 4
  %rx_dma_chan = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 37
  %141 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rx_dma_chan, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %device_config.i157 = getelementptr inbounds %struct.dma_device, ptr %144, i32 0, i32 44
  %145 = ptrtoint ptr %device_config.i157 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %device_config.i157, align 4
  %tobool.not.i158 = icmp eq ptr %146, null
  br i1 %tobool.not.i158, label %if.then53.do.end63_crit_edge, label %dmaengine_slave_config.exit162

if.then53.do.end63_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

dmaengine_slave_config.exit162:                   ; preds = %if.then53
  %call.i159 = call i32 %146(ptr noundef %142, ptr noundef nonnull %dma_sconfig) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %cmp58 = icmp slt i32 %call.i159, 0
  br i1 %cmp58, label %dmaengine_slave_config.exit162.do.end63_crit_edge, label %if.end65

dmaengine_slave_config.exit162.do.end63_crit_edge: ; preds = %dmaengine_slave_config.exit162
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

do.end63:                                         ; preds = %dmaengine_slave_config.exit162.do.end63_crit_edge, %if.then53.do.end63_crit_edge
  %retval.0.i161197 = phi i32 [ %call.i159, %dmaengine_slave_config.exit162.do.end63_crit_edge ], [ -38, %if.then53.do.end63_crit_edge ]
  %147 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.47, i32 noundef %retval.0.i161197) #12
  br label %cleanup

if.end65:                                         ; preds = %dmaengine_slave_config.exit162
  %149 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tspi, align 4
  %rx_dma_phys = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 39
  %151 = ptrtoint ptr %rx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rx_dma_phys, align 4
  %dma_buf_size = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 18
  %153 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dma_buf_size, align 4
  call void @dma_sync_single_for_device(ptr noundef %150, i32 noundef %152, i32 noundef %154, i32 noundef 2) #9
  %rx_dma_complete.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 22
  %155 = ptrtoint ptr %rx_dma_complete.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %rx_dma_complete.i, align 4
  %156 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rx_dma_chan, align 4
  %158 = ptrtoint ptr %rx_dma_phys to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rx_dma_phys, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i163) #9
  %160 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i163, i32 0, i32 3
  %161 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i163, i32 0, i32 4
  %162 = call ptr @memset(ptr %sg.i.i163, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i163, i32 noundef 1) #9
  %163 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %159, ptr %160, align 4
  %164 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %len.0, ptr %161, align 4
  %tobool.not.i.i164 = icmp eq ptr %157, null
  br i1 %tobool.not.i.i164, label %if.end65.dmaengine_prep_slave_single.exit.thread.i170_crit_edge, label %lor.lhs.false.i.i166

if.end65.dmaengine_prep_slave_single.exit.thread.i170_crit_edge: ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread.i170

lor.lhs.false.i.i166:                             ; preds = %if.end65
  %165 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %157, align 4
  %tobool1.not.i.i165 = icmp eq ptr %166, null
  br i1 %tobool1.not.i.i165, label %lor.lhs.false.i.i166.dmaengine_prep_slave_single.exit.thread.i170_crit_edge, label %lor.lhs.false2.i.i169

lor.lhs.false.i.i166.dmaengine_prep_slave_single.exit.thread.i170_crit_edge: ; preds = %lor.lhs.false.i.i166
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread.i170

lor.lhs.false2.i.i169:                            ; preds = %lor.lhs.false.i.i166
  %device_prep_slave_sg.i.i167 = getelementptr inbounds %struct.dma_device, ptr %166, i32 0, i32 39
  %167 = ptrtoint ptr %device_prep_slave_sg.i.i167 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %device_prep_slave_sg.i.i167, align 4
  %tobool4.not.i.i168 = icmp eq ptr %168, null
  br i1 %tobool4.not.i.i168, label %lor.lhs.false2.i.i169.dmaengine_prep_slave_single.exit.thread.i170_crit_edge, label %dmaengine_prep_slave_single.exit.i173

lor.lhs.false2.i.i169.dmaengine_prep_slave_single.exit.thread.i170_crit_edge: ; preds = %lor.lhs.false2.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread.i170

dmaengine_prep_slave_single.exit.thread.i170:     ; preds = %lor.lhs.false2.i.i169.dmaengine_prep_slave_single.exit.thread.i170_crit_edge, %lor.lhs.false.i.i166.dmaengine_prep_slave_single.exit.thread.i170_crit_edge, %if.end65.dmaengine_prep_slave_single.exit.thread.i170_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i163) #9
  %rx_dma_desc20.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 40
  %169 = ptrtoint ptr %rx_dma_desc20.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %rx_dma_desc20.i, align 4
  br label %do.end73

dmaengine_prep_slave_single.exit.i173:            ; preds = %lor.lhs.false2.i.i169
  %call.i.i171 = call ptr %168(ptr noundef nonnull %157, ptr noundef nonnull %sg.i.i163, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i163) #9
  %rx_dma_desc.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 40
  %170 = ptrtoint ptr %rx_dma_desc.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call.i.i171, ptr %rx_dma_desc.i, align 4
  %tobool.not.i172 = icmp eq ptr %call.i.i171, null
  br i1 %tobool.not.i172, label %dmaengine_prep_slave_single.exit.i173.do.end73_crit_edge, label %tegra_spi_start_rx_dma.exit

dmaengine_prep_slave_single.exit.i173.do.end73_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

tegra_spi_start_rx_dma.exit:                      ; preds = %dmaengine_prep_slave_single.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  %callback.i175 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i171, i32 0, i32 6
  %171 = ptrtoint ptr %callback.i175 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @tegra_spi_dma_complete, ptr %callback.i175, align 4
  %172 = ptrtoint ptr %rx_dma_desc.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rx_dma_desc.i, align 4
  %callback_param.i176 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %173, i32 0, i32 8
  %174 = ptrtoint ptr %callback_param.i176 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %rx_dma_complete.i, ptr %callback_param.i176, align 4
  %175 = load ptr, ptr %rx_dma_desc.i, align 4
  %tx_submit.i.i177 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %tx_submit.i.i177 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %tx_submit.i.i177, align 4
  %call.i18.i178 = call i32 %177(ptr noundef %175) #9
  %178 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rx_dma_chan, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %device_issue_pending.i.i179 = getelementptr inbounds %struct.dma_device, ptr %181, i32 0, i32 50
  %182 = ptrtoint ptr %device_issue_pending.i.i179 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %device_issue_pending.i.i179, align 4
  call void %183(ptr noundef %179) #9
  br label %if.end83

do.end73:                                         ; preds = %dmaengine_prep_slave_single.exit.i173.do.end73_crit_edge, %dmaengine_prep_slave_single.exit.thread.i170
  %184 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.59) #12
  %186 = ptrtoint ptr %tspi to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %tspi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.55, i32 noundef -5) #12
  %188 = ptrtoint ptr %cur_direction32 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %cur_direction32, align 4
  %and76 = and i32 %189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.end73.cleanup_crit_edge, label %if.then78

do.end73.cleanup_crit_edge:                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then78:                                        ; preds = %do.end73
  %tx_dma_chan79 = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 41
  %190 = ptrtoint ptr %tx_dma_chan79 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %tx_dma_chan79, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %193, i32 0, i32 47
  %194 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i182 = icmp eq ptr %195, null
  br i1 %tobool.not.i182, label %if.then78.cleanup_crit_edge, label %if.then.i184

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i184:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  %call.i183 = call i32 %195(ptr noundef %191) #9
  br label %cleanup

if.end83:                                         ; preds = %tegra_spi_start_rx_dma.exit, %if.end49.if.end83_crit_edge
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 20
  %196 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %is_curr_dma_xfer, align 4
  %197 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %val.2, ptr %dma_control_reg, align 4
  %or85 = or i32 %val.2, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  call void @arm_heavy_mb() #9
  %198 = call i32 @llvm.bswap.i32(i32 %or85) #9
  %199 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %base.i, align 4
  %add.ptr.i186 = getelementptr i8, ptr %200, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 %198) #9, !srcloc !209
  %201 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %base.i, align 4
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #9, !srcloc !210
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then.i184, %if.then78.cleanup_crit_edge, %do.end73.cleanup_crit_edge, %do.end63, %do.end46, %do.end
  %retval.0 = phi i32 [ %retval.0.i191, %do.end ], [ -5, %do.end46 ], [ %retval.0.i161197, %do.end63 ], [ 0, %if.end83 ], [ -5, %do.end73.cleanup_crit_edge ], [ -5, %if.then78.cleanup_crit_edge ], [ -5, %if.then.i184 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_sconfig) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_spi_start_cpu_based_transfer(ptr nocapture noundef %tspi, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_direction = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 15
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
  %cur_tx_pos.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 17
  %4 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tx_pos.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  %base.i.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 5
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %9 = lshr i32 %8, 8
  %and.i = and i32 %9, 127
  %is_packed.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 27
  %10 = ptrtoint ptr %is_packed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_packed.i, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %words_per_32bit.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 12
  %12 = ptrtoint ptr %words_per_32bit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %words_per_32bit.i, align 4
  %mul.i = mul i32 %13, %and.i
  %curr_dma_words.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 14
  %14 = ptrtoint ptr %curr_dma_words.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %curr_dma_words.i, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 %15) #9
  %bytes_per_word.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 13
  %17 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytes_per_word.i, align 4
  %mul2.i = mul i32 %16, %18
  %sub.i = add i32 %mul2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp3119.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp3119.not.i, label %if.then.i.for.end11.i_crit_edge, label %for.cond4.preheader.preheader.i

if.then.i.for.end11.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end11.i

for.cond4.preheader.preheader.i:                  ; preds = %if.then.i
  %div106.i = lshr i32 %sub.i, 2
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.end.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.preheader.i
  %nbytes.0122.i = phi i32 [ %nbytes.1.lcssa.i, %for.end.i.for.cond4.preheader.i_crit_edge ], [ %mul2.i, %for.cond4.preheader.preheader.i ]
  %tx_buf.0121.i = phi ptr [ %tx_buf.1.lcssa.i, %for.end.i.for.cond4.preheader.i_crit_edge ], [ %add.ptr.i, %for.cond4.preheader.preheader.i ]
  %count.0120.i = phi i32 [ %inc10.i, %for.end.i.for.cond4.preheader.i_crit_edge ], [ 0, %for.cond4.preheader.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.0122.i)
  %tobool6.not111.i = icmp eq i32 %nbytes.0122.i, 0
  br i1 %tobool6.not111.i, label %for.cond4.preheader.i.for.end.i_crit_edge, label %for.body7.preheader.i

for.cond4.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body7.preheader.i:                            ; preds = %for.cond4.preheader.i
  %19 = add i32 %nbytes.0122.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %19, i32 3) #9
  %uglygep = getelementptr i8, ptr %tx_buf.0121.i, i32 1
  %uglygep8 = getelementptr i8, ptr %uglygep, i32 %umin.i
  %20 = ptrtoint ptr %tx_buf.0121.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_buf.0121.i, align 1
  %conv.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin.i)
  %exitcond.i = icmp eq i32 %umin.i, 0
  br i1 %exitcond.i, label %for.body7.preheader.i.for.end.i.loopexit_crit_edge, label %for.body7.i.1

for.body7.preheader.i.for.end.i.loopexit_crit_edge: ; preds = %for.body7.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.loopexit

for.body7.i.1:                                    ; preds = %for.body7.preheader.i
  %incdec.ptr.i = getelementptr i8, ptr %tx_buf.0121.i, i32 1
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.loopexit

for.body7.i.2:                                    ; preds = %for.body7.i.1
  %incdec.ptr.i.1 = getelementptr i8, ptr %tx_buf.0121.i, i32 2
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.loopexit

for.body7.i.3:                                    ; preds = %for.body7.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i.2 = getelementptr i8, ptr %tx_buf.0121.i, i32 3
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
  %tx_buf.1.lcssa.i = phi ptr [ %tx_buf.0121.i, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %uglygep8, %for.end.i.loopexit ]
  %x.0.lcssa.i = phi i32 [ 0, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %or.i.lcssa, %for.end.i.loopexit ]
  %nbytes.1.lcssa.i = phi i32 [ 0, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %28, %for.end.i.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %x.0.lcssa.i) #9
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %31, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 %29) #9, !srcloc !209
  %inc10.i = add nuw nsw i32 %count.0120.i, 1
  %exitcond138.not.i = icmp eq i32 %inc10.i, %div106.i
  br i1 %exitcond138.not.i, label %for.end.i.for.end11.i_crit_edge, label %for.end.i.for.cond4.preheader.i_crit_edge

for.end.i.for.cond4.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.preheader.i

for.end.i.for.end11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end11.i

for.end11.i:                                      ; preds = %for.end.i.for.end11.i_crit_edge, %if.then.i.for.end11.i_crit_edge
  %32 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes_per_word.i, align 4
  %mul13.i = mul i32 %33, %16
  br label %tegra_spi_fill_tx_fifo_from_client_txbuf.exit

if.else.i:                                        ; preds = %if.then
  %curr_dma_words16.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 14
  %34 = ptrtoint ptr %curr_dma_words16.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %curr_dma_words16.i, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 %and.i) #9
  %bytes_per_word24.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 13
  %37 = ptrtoint ptr %bytes_per_word24.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bytes_per_word24.i, align 4
  %mul25.i = mul i32 %36, %38
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  %cur_pos.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 11
  %41 = ptrtoint ptr %cur_pos.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_pos.i, align 4
  %sub26.i = sub i32 %40, %42
  %43 = tail call i32 @llvm.umin.i32(i32 %mul25.i, i32 %sub26.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp34134.not.i = icmp eq i32 %36, 0
  br i1 %cmp34134.not.i, label %if.else.i.tegra_spi_fill_tx_fifo_from_client_txbuf.exit_crit_edge, label %if.else.i.for.cond38.preheader.i_crit_edge

if.else.i.for.cond38.preheader.i_crit_edge:       ; preds = %if.else.i
  br label %for.cond38.preheader.i

if.else.i.tegra_spi_fill_tx_fifo_from_client_txbuf.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_fill_tx_fifo_from_client_txbuf.exit

for.cond38.preheader.i:                           ; preds = %for.end54.i.for.cond38.preheader.i_crit_edge, %if.else.i.for.cond38.preheader.i_crit_edge
  %nbytes.3137.i = phi i32 [ %nbytes.4.lcssa.i, %for.end54.i.for.cond38.preheader.i_crit_edge ], [ %43, %if.else.i.for.cond38.preheader.i_crit_edge ]
  %tx_buf.2136.i = phi ptr [ %tx_buf.3.lcssa.i, %for.end54.i.for.cond38.preheader.i_crit_edge ], [ %add.ptr.i, %if.else.i.for.cond38.preheader.i_crit_edge ]
  %count.1135.i = phi i32 [ %inc56.i, %for.end54.i.for.cond38.preheader.i_crit_edge ], [ 0, %if.else.i.for.cond38.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.3137.i)
  %tobool39.not123.i = icmp eq i32 %nbytes.3137.i, 0
  br i1 %tobool39.not123.i, label %for.cond38.preheader.i.for.end54.i_crit_edge, label %land.rhs40.lr.ph.i

for.cond38.preheader.i.for.end54.i_crit_edge:     ; preds = %for.cond38.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end54.i

land.rhs40.lr.ph.i:                               ; preds = %for.cond38.preheader.i
  %44 = ptrtoint ptr %bytes_per_word24.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bytes_per_word24.i, align 4
  %46 = add i32 %nbytes.3137.i, -1
  %umin139.i = tail call i32 @llvm.umin.i32(i32 %45, i32 %46) #9
  %uglygep.i = getelementptr i8, ptr %tx_buf.2136.i, i32 %umin139.i
  br label %land.rhs40.i

land.rhs40.i:                                     ; preds = %for.body45.i.land.rhs40.i_crit_edge, %land.rhs40.lr.ph.i
  %x37.0127.i = phi i32 [ 0, %land.rhs40.lr.ph.i ], [ %or50.i, %for.body45.i.land.rhs40.i_crit_edge ]
  %nbytes.4126.i = phi i32 [ %nbytes.3137.i, %land.rhs40.lr.ph.i ], [ %dec53.i, %for.body45.i.land.rhs40.i_crit_edge ]
  %tx_buf.3125.i = phi ptr [ %tx_buf.2136.i, %land.rhs40.lr.ph.i ], [ %incdec.ptr46.i, %for.body45.i.land.rhs40.i_crit_edge ]
  %i.1124.i = phi i32 [ 0, %land.rhs40.lr.ph.i ], [ %inc52.i, %for.body45.i.land.rhs40.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1124.i, i32 %45)
  %exitcond140.not.i = icmp eq i32 %i.1124.i, %45
  br i1 %exitcond140.not.i, label %land.rhs40.i.for.end54.i_crit_edge, label %for.body45.i

land.rhs40.i.for.end54.i_crit_edge:               ; preds = %land.rhs40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end54.i

for.body45.i:                                     ; preds = %land.rhs40.i
  %incdec.ptr46.i = getelementptr i8, ptr %tx_buf.3125.i, i32 1
  %47 = ptrtoint ptr %tx_buf.3125.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tx_buf.3125.i, align 1
  %conv47.i = zext i8 %48 to i32
  %mul48.i = shl i32 %i.1124.i, 3
  %shl49.i = shl i32 %conv47.i, %mul48.i
  %or50.i = or i32 %shl49.i, %x37.0127.i
  %inc52.i = add nuw i32 %i.1124.i, 1
  %dec53.i = add i32 %nbytes.4126.i, -1
  %tobool39.not.i = icmp eq i32 %dec53.i, 0
  br i1 %tobool39.not.i, label %for.body45.i.for.end54.i_crit_edge, label %for.body45.i.land.rhs40.i_crit_edge

for.body45.i.land.rhs40.i_crit_edge:              ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs40.i

for.body45.i.for.end54.i_crit_edge:               ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end54.i

for.end54.i:                                      ; preds = %for.body45.i.for.end54.i_crit_edge, %land.rhs40.i.for.end54.i_crit_edge, %for.cond38.preheader.i.for.end54.i_crit_edge
  %tx_buf.3.lcssa.i = phi ptr [ %tx_buf.2136.i, %for.cond38.preheader.i.for.end54.i_crit_edge ], [ %uglygep.i, %land.rhs40.i.for.end54.i_crit_edge ], [ %incdec.ptr46.i, %for.body45.i.for.end54.i_crit_edge ]
  %nbytes.4.lcssa.i = phi i32 [ 0, %for.cond38.preheader.i.for.end54.i_crit_edge ], [ %nbytes.4126.i, %land.rhs40.i.for.end54.i_crit_edge ], [ 0, %for.body45.i.for.end54.i_crit_edge ]
  %x37.0.lcssa.i = phi i32 [ 0, %for.cond38.preheader.i.for.end54.i_crit_edge ], [ %x37.0127.i, %land.rhs40.i.for.end54.i_crit_edge ], [ %or50.i, %for.body45.i.for.end54.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %x37.0.lcssa.i) #9
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %51, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 %49) #9, !srcloc !209
  %inc56.i = add nuw nsw i32 %count.1135.i, 1
  %exitcond141.not.i = icmp eq i32 %inc56.i, %36
  br i1 %exitcond141.not.i, label %for.end54.i.tegra_spi_fill_tx_fifo_from_client_txbuf.exit_crit_edge, label %for.end54.i.for.cond38.preheader.i_crit_edge

for.end54.i.for.cond38.preheader.i_crit_edge:     ; preds = %for.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond38.preheader.i

for.end54.i.tegra_spi_fill_tx_fifo_from_client_txbuf.exit_crit_edge: ; preds = %for.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_spi_fill_tx_fifo_from_client_txbuf.exit

tegra_spi_fill_tx_fifo_from_client_txbuf.exit:    ; preds = %for.end54.i.tegra_spi_fill_tx_fifo_from_client_txbuf.exit_crit_edge, %if.else.i.tegra_spi_fill_tx_fifo_from_client_txbuf.exit_crit_edge, %for.end11.i
  %.sink142.i = phi i32 [ %mul13.i, %for.end11.i ], [ %43, %if.else.i.tegra_spi_fill_tx_fifo_from_client_txbuf.exit_crit_edge ], [ %43, %for.end54.i.tegra_spi_fill_tx_fifo_from_client_txbuf.exit_crit_edge ]
  %written_words.0.i = phi i32 [ %16, %for.end11.i ], [ 0, %if.else.i.tegra_spi_fill_tx_fifo_from_client_txbuf.exit_crit_edge ], [ %36, %for.end54.i.tegra_spi_fill_tx_fifo_from_client_txbuf.exit_crit_edge ]
  %52 = ptrtoint ptr %cur_tx_pos.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cur_tx_pos.i, align 4
  %add59.i = add i32 %53, %.sink142.i
  store i32 %add59.i, ptr %cur_tx_pos.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %curr_dma_words = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 14
  %54 = ptrtoint ptr %curr_dma_words to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %curr_dma_words, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %tegra_spi_fill_tx_fifo_from_client_txbuf.exit
  %cur_words.0 = phi i32 [ %written_words.0.i, %tegra_spi_fill_tx_fifo_from_client_txbuf.exit ], [ %55, %if.else ]
  %sub = add i32 %cur_words.0, 65535
  %and1 = and i32 %sub, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %and1) #9
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 5
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr.i1 = getelementptr i8, ptr %58, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %56) #9, !srcloc !209
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %62 = ptrtoint ptr %cur_direction to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cur_direction, align 4
  %and3 = shl i32 %63, 28
  %64 = and i32 %and3, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %65 = lshr exact i32 %64, 24
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %67, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %65) #9, !srcloc !209
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %dma_control_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 29
  %71 = ptrtoint ptr %dma_control_reg to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %64, ptr %dma_control_reg, align 4
  %is_curr_dma_xfer = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 20
  %72 = ptrtoint ptr %is_curr_dma_xfer to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %is_curr_dma_xfer, align 4
  %command1_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %tspi, i32 0, i32 28
  %73 = ptrtoint ptr %command1_reg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %command1_reg, align 4
  %or13 = or i32 %74, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %75 = tail call i32 @llvm.bswap.i32(i32 %or13) #9
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #9, !srcloc !209
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_spi_dma_complete(ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %args) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
define internal i32 @tegra_spi_resume(ptr noundef %dev) #2 align 64 {
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
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !215
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !216
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %command1_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 28
  %5 = ptrtoint ptr %command1_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %command1_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %base.i = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !209
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %def_command2_reg = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %def_command2_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %def_command2_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #9, !srcloc !209
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_chipselect, align 2
  %conv = trunc i16 %22 to i8
  %add = add i8 %conv, 1
  %last_used_cs = getelementptr inbounds %struct.tegra_spi_data, ptr %3, i32 0, i32 34
  %23 = ptrtoint ptr %last_used_cs to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %add, ptr %last_used_cs, align 4
  %call.i21 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  %call5 = tail call i32 @spi_controller_resume(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !189, !191, !193, !195, !197, !198}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @__initcall__kmod_spi_tegra114__260_1530_tegra_spi_driver_init6, !1, !"__initcall__kmod_spi_tegra114__260_1530_tegra_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-tegra114.c", i32 1530, i32 1}
!2 = !{ptr @__exitcall_tegra_spi_driver_exit, !1, !"__exitcall_tegra_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias261, !4, !"__UNIQUE_ID_alias261", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-tegra114.c", i32 1532, i32 1}
!5 = !{ptr @__UNIQUE_ID_description262, !6, !"__UNIQUE_ID_description262", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-tegra114.c", i32 1533, i32 1}
!7 = !{ptr @__UNIQUE_ID_author263, !8, !"__UNIQUE_ID_author263", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-tegra114.c", i32 1534, i32 1}
!9 = !{ptr @__UNIQUE_ID_file264, !10, !"__UNIQUE_ID_file264", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-tegra114.c", i32 1535, i32 1}
!11 = !{ptr @__UNIQUE_ID_license265, !10, !"__UNIQUE_ID_license265", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-tegra114.c", i32 1523, i32 12}
!14 = !{ptr @tegra_spi_driver, !15, !"tegra_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-tegra114.c", i32 1521, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-tegra114.c", i32 1310, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-tegra114.c", i32 1316, i32 46}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-tegra114.c", i32 1331, i32 47}
!28 = !{ptr @tegra_spi_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-tegra114.c", i32 1337, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-tegra114.c", i32 1341, i32 3}
!33 = !{ptr @tegra_spi_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra_spi_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-tegra114.c", i32 1359, i32 3}
!37 = !{ptr @tegra_spi_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @tegra_spi_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-tegra114.c", i32 1366, i32 3}
!41 = !{ptr @tegra_spi_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tegra_spi_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-tegra114.c", i32 1395, i32 3}
!45 = !{ptr @tegra_spi_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tegra_spi_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-tegra114.c", i32 1414, i32 3}
!49 = !{ptr @tegra_spi_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tegra_spi_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-tegra114.c", i32 1422, i32 3}
!53 = !{ptr @tegra_spi_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tegra_spi_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-tegra114.c", i32 956, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tegra_spi_setup.__UNIQUE_ID_ddebug255, !56, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!60 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-tegra114.c", i32 970, i32 3}
!64 = !{ptr @tegra_spi_setup._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tegra_spi_setup._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-tegra114.c", i32 924, i32 3}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @tegra_spi_parse_cdata_dt.__UNIQUE_ID_ddebug254, !67, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-tegra114.c", i32 932, i32 33}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-tegra114.c", i32 934, i32 33}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-tegra114.c", i32 1065, i32 4}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tegra_spi_transfer_one_message._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @tegra_spi_transfer_one_message._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-tegra114.c", i32 1074, i32 4}
!81 = !{ptr @tegra_spi_transfer_one_message._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tegra_spi_transfer_one_message._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-tegra114.c", i32 1092, i32 4}
!85 = !{ptr @tegra_spi_transfer_one_message._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tegra_spi_transfer_one_message._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/spi/spi-tegra114.c", i32 903, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tegra_spi_start_transfer_one.__UNIQUE_ID_ddebug253, !88, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-tegra114.c", i32 583, i32 4}
!93 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @tegra_spi_start_dma_based_transfer._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @tegra_spi_start_dma_based_transfer._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/spi/spi-tegra114.c", i32 591, i32 4}
!98 = !{ptr @tegra_spi_start_dma_based_transfer._entry.49, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tegra_spi_start_dma_based_transfer._entry_ptr.51, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @tegra_spi_start_dma_based_transfer._entry.52, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/spi/spi-tegra114.c", i32 603, i32 4}
!102 = !{ptr @tegra_spi_start_dma_based_transfer._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-tegra114.c", i32 614, i32 4}
!105 = !{ptr @tegra_spi_start_dma_based_transfer._entry.54, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @tegra_spi_start_dma_based_transfer._entry_ptr.56, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-tegra114.c", i32 480, i32 3}
!109 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @tegra_spi_start_tx_dma._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @tegra_spi_start_tx_dma._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/spi/spi-tegra114.c", i32 499, i32 3}
!114 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @tegra_spi_start_rx_dma._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @tegra_spi_start_rx_dma._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/spi/spi-tegra114.c", i32 1022, i32 2}
!119 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @tegra_spi_dump_regs.__UNIQUE_ID_ddebug256, !118, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/spi/spi-tegra114.c", i32 1023, i32 2}
!123 = !{ptr @tegra_spi_dump_regs.__UNIQUE_ID_ddebug257, !122, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/spi/spi-tegra114.c", i32 1026, i32 2}
!126 = !{ptr @tegra_spi_dump_regs.__UNIQUE_ID_ddebug258, !125, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/spi/spi-tegra114.c", i32 1029, i32 2}
!129 = !{ptr @tegra_spi_dump_regs.__UNIQUE_ID_ddebug259, !128, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/spi/spi-tegra114.c", i32 523, i32 5}
!132 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @tegra_spi_flush_fifos._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @tegra_spi_flush_fifos._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/spi/spi-tegra114.c", i32 735, i32 3}
!137 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @tegra_spi_set_hw_cs_timing._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @tegra_spi_set_hw_cs_timing._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/spi/spi-tegra114.c", i32 668, i32 57}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/spi/spi-tegra114.c", i32 668, i32 64}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/spi/spi-tegra114.c", i32 671, i32 10}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/spi/spi-tegra114.c", i32 676, i32 3}
!148 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @tegra_spi_init_dma_param._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @tegra_spi_init_dma_param._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @init_completion.__key, !152, !"__key", i1 false, i1 false}
!152 = !{!"../include/linux/completion.h", i32 87, i32 2}
!153 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/spi/spi-tegra114.c", i32 1510, i32 3}
!156 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @tegra_spi_runtime_resume._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @tegra_spi_runtime_resume._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/spi/spi-tegra114.c", i32 1132, i32 3}
!161 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @handle_cpu_based_xfer._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @handle_cpu_based_xfer._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/spi/spi-tegra114.c", i32 1134, i32 3}
!166 = !{ptr @handle_cpu_based_xfer._entry.80, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @handle_cpu_based_xfer._entry_ptr.82, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/spi/spi-tegra114.c", i32 1184, i32 5}
!170 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @handle_dma_based_xfer._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @handle_dma_based_xfer._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/spi/spi-tegra114.c", i32 1199, i32 5}
!175 = !{ptr @handle_dma_based_xfer._entry.85, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @handle_dma_based_xfer._entry_ptr.87, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/spi/spi-tegra114.c", i32 1207, i32 3}
!179 = !{ptr @handle_dma_based_xfer._entry.88, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @handle_dma_based_xfer._entry_ptr.90, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.92, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/spi/spi-tegra114.c", i32 1209, i32 3}
!183 = !{ptr @handle_dma_based_xfer._entry.91, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @handle_dma_based_xfer._entry_ptr.93, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @tegra_spi_of_match, !186, !"tegra_spi_of_match", i1 false, i1 false}
!186 = !{!"../drivers/spi/spi-tegra114.c", i32 1285, i32 34}
!187 = !{ptr @tegra114_spi_soc_data, !188, !"tegra114_spi_soc_data", i1 false, i1 false}
!188 = !{!"../drivers/spi/spi-tegra114.c", i32 1273, i32 34}
!189 = !{ptr @tegra124_spi_soc_data, !190, !"tegra124_spi_soc_data", i1 false, i1 false}
!190 = !{!"../drivers/spi/spi-tegra114.c", i32 1277, i32 34}
!191 = !{ptr @tegra210_spi_soc_data, !192, !"tegra210_spi_soc_data", i1 false, i1 false}
!192 = !{!"../drivers/spi/spi-tegra114.c", i32 1281, i32 34}
!193 = !{ptr @tegra_spi_pm_ops, !194, !"tegra_spi_pm_ops", i1 false, i1 false}
!194 = !{!"../drivers/spi/spi-tegra114.c", i32 1516, i32 32}
!195 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/spi/spi-tegra114.c", i32 1478, i32 3}
!197 = !{ptr @tegra_spi_resume._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @tegra_spi_resume._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{i64 2154581094}
!209 = !{i64 6346982}
!210 = !{i64 6347400}
!211 = !{i64 2154581770}
!212 = !{i64 2154580712}
!213 = !{i64 2148762392, i64 2148762397, i64 2148762410, i64 2148762454, i64 2148762488, i64 2148762509}
!214 = !{i64 2148279996}
!215 = !{i64 764819, i64 764844, i64 764866, i64 764882, i64 764894, i64 764914, i64 764938, i64 764954, i64 764966}
!216 = !{i64 2148280184}
!217 = !{i8 0, i8 2}
!218 = !{!"branch_weights", i32 1, i32 2000}
!219 = !{!"auto-init"}
