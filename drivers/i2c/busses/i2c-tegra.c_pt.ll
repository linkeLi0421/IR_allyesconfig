; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-tegra.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_i2c_hw_feature = type { i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.tegra_i2c_dev = type { ptr, %struct.i2c_adapter, ptr, ptr, i32, i32, i32, ptr, [2 x %struct.clk_bulk_data], i32, ptr, %struct.i2c_timings, %struct.completion, i32, i32, ptr, %struct.completion, ptr, ptr, i32, i32, ptr, i8, i8, i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_tegra__425_1960_tegra_i2c_driver_init6 = internal global ptr @tegra_i2c_driver_init, section ".initcall6.init", align 4
@tegra_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_i2c_probe, ptr @tegra_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_i2c_of_match, ptr @tegra_i2c_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_i2c_driver_exit = internal global ptr @tegra_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description426 = internal constant [61 x i8] c"i2c_tegra.description=NVIDIA Tegra I2C Bus Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author427 = internal constant [29 x i8] c"i2c_tegra.author=Colin Cross\00", section ".modinfo", align 1
@__UNIQUE_ID_file428 = internal constant [44 x i8] c"i2c_tegra.file=drivers/i2c/busses/i2c-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license429 = internal constant [25 x i8] c"i2c_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-i2c\00", [22 x i8] zeroinitializer }, align 32
@tegra_i2c_of_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-i2c-vi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_i2c_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-i2c-dvc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_i2c_hw }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@tegra_i2c_acpi_match = internal constant { [4 x %struct.acpi_device_id], [32 x i8] } { [4 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"NVDA0101\00", i32 ptrtoint (ptr @tegra210_i2c_hw to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"NVDA0201\00", i32 ptrtoint (ptr @tegra186_i2c_hw to i32), i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"NVDA0301\00", i32 ptrtoint (ptr @tegra194_i2c_hw to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tegra_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_i2c_suspend, ptr @tegra_i2c_resume, ptr @tegra_i2c_suspend, ptr @tegra_i2c_resume, ptr @tegra_i2c_suspend, ptr @tegra_i2c_resume, ptr @tegra_i2c_runtime_suspend, ptr @tegra_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @tegra_i2c_xfer, ptr @tegra_i2c_xfer_atomic, ptr null, ptr null, ptr @tegra_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_i2c_recovery_info = internal global { %struct.i2c_bus_recovery_info, [44 x i8] } { %struct.i2c_bus_recovery_info { ptr @tegra_i2c_issue_bus_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tegra_i2c_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 881, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IRQ status 0 %08x %08x %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra_i2c_isr\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/i2c/busses/i2c-tegra.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_i2c_isr._entry_ptr = internal global ptr @tegra_i2c_isr._entry, section ".printk_index", align 4
@tegra_i2c_isr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_i2c_wait_for_config_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 602, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to load config\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_i2c_wait_for_config_load\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tegra_i2c_wait_for_config_load._entry_ptr = internal global ptr @tegra_i2c_wait_for_config_load._entry, section ".printk_index", align 4
@tegra_i2c_empty_rx_fifo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_i2c_empty_rx_fifo.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"multi-master\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,tegra20-i2c-dvc\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,tegra210-i2c-vi\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div-clk\00", [24 x i8] zeroinitializer }, align 32
@tegra20_i2c_hw = internal constant { %struct.tegra_i2c_hw_feature, [32 x i8] } { %struct.tegra_i2c_hw_feature { i8 0, i8 0, i8 0, i32 3, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @tegra_i2c_quirks, i8 0, i8 1, i32 4, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@tegra30_i2c_hw = internal constant { %struct.tegra_i2c_hw_feature, [32 x i8] } { %struct.tegra_i2c_hw_feature { i8 1, i8 0, i8 0, i32 3, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, ptr @tegra_i2c_quirks, i8 0, i8 1, i32 4, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fast-clk\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slow\00", [27 x i8] zeroinitializer }, align 32
@tegra_i2c_init_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1692, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable div-clk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_i2c_init_clocks\00", [42 x i8] zeroinitializer }, align 32
@tegra_i2c_init_clocks._entry_ptr = internal global ptr @tegra_i2c_init_clocks._entry, section ".printk_index", align 4
@tegra_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 96, i32 0, i16 4084, i16 4096, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@tegra_i2c_init_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 476, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate DMA buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_i2c_init_dma\00", [45 x i8] zeroinitializer }, align 32
@tegra_i2c_init_dma._entry_ptr = internal global ptr @tegra_i2c_init_dma._entry, section ".printk_index", align 4
@tegra_i2c_init_dma._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 489, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot use DMA: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_i2c_init_dma._entry_ptr.27 = internal global ptr @tegra_i2c_init_dma._entry.25, section ".printk_index", align 4
@tegra_i2c_init_dma._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 490, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"falling back to PIO\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_i2c_init_dma._entry_ptr.30 = internal global ptr @tegra_i2c_init_dma._entry.28, section ".printk_index", align 4
@tegra_i2c_init_hardware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 1718, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"runtime resume failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_i2c_init_hardware\00", [40 x i8] zeroinitializer }, align 32
@tegra_i2c_init_hardware._entry_ptr = internal global ptr @tegra_i2c_init_hardware._entry, section ".printk_index", align 4
@tegra_i2c_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 691, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set div-clk rate: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_i2c_init\00", [17 x i8] zeroinitializer }, align 32
@tegra_i2c_init._entry_ptr = internal global ptr @tegra_i2c_init._entry, section ".printk_index", align 4
@tegra_i2c_flush_fifos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 583, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to flush FIFO\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_i2c_flush_fifos\00", [42 x i8] zeroinitializer }, align 32
@tegra_i2c_flush_fifos._entry_ptr = internal global ptr @tegra_i2c_flush_fifos._entry, section ".printk_index", align 4
@tegra_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 1377, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"runtime resume failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_i2c_xfer\00", [17 x i8] zeroinitializer }, align 32
@tegra_i2c_xfer._entry_ptr = internal global ptr @tegra_i2c_xfer._entry, section ".printk_index", align 4
@tegra_i2c_xfer_msg.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 1, i8 71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_tegra\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_i2c_xfer_msg\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unmasked IRQ: %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_i2c_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 1331, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA transfer timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_i2c_xfer_msg._entry_ptr = internal global ptr @tegra_i2c_xfer_msg._entry, section ".printk_index", align 4
@tegra_i2c_xfer_msg._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.41, ptr @.str.4, i32 1351, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I2C transfer timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_i2c_xfer_msg._entry_ptr.46 = internal global ptr @tegra_i2c_xfer_msg._entry.44, section ".printk_index", align 4
@tegra_i2c_xfer_msg.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.4, ptr @.str.47, i8 1, i8 83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"transfer complete: %lu %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_i2c_config_fifo_trig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 1031, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DMA config failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_i2c_config_fifo_trig\00", [37 x i8] zeroinitializer }, align 32
@tegra_i2c_config_fifo_trig._entry_ptr = internal global ptr @tegra_i2c_config_fifo_trig._entry, section ".printk_index", align 4
@tegra_i2c_config_fifo_trig._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.49, ptr @.str.4, i32 1032, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_i2c_config_fifo_trig._entry_ptr.51 = internal global ptr @tegra_i2c_config_fifo_trig._entry.50, section ".printk_index", align 4
@tegra_i2c_dma_submit.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_i2c_dma_submit\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"starting DMA for length: %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_i2c_dma_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.4, i32 407, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get %s DMA descriptor\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_i2c_dma_submit._entry_ptr = internal global ptr @tegra_i2c_dma_submit._entry, section ".printk_index", align 4
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@tegra_i2c_issue_bus_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 1132, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to clear bus\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_i2c_issue_bus_clear\00", [38 x i8] zeroinitializer }, align 32
@tegra_i2c_issue_bus_clear._entry_ptr = internal global ptr @tegra_i2c_issue_bus_clear._entry, section ".printk_index", align 4
@tegra_i2c_issue_bus_clear._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 1138, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"un-recovered arbitration lost\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_i2c_issue_bus_clear._entry_ptr.62 = internal global ptr @tegra_i2c_issue_bus_clear._entry.60, section ".printk_index", align 4
@tegra194_i2c_hw = internal constant { %struct.tegra_i2c_hw_feature, [32 x i8] } { %struct.tegra_i2c_hw_feature { i8 1, i8 1, i8 1, i32 1, i32 79, i32 60, i32 22, i8 1, i8 1, i8 1, ptr @tegra194_i2c_quirks, i8 1, i8 0, i32 8, i32 7, i32 2, i32 2, i32 134744072, i32 33686018, i32 592137, i8 1 }, [32 x i8] zeroinitializer }, align 32
@tegra186_i2c_hw = internal constant { %struct.tegra_i2c_hw_feature, [32 x i8] } { %struct.tegra_i2c_hw_feature { i8 1, i8 1, i8 1, i32 1, i32 22, i32 25, i32 16, i8 0, i8 1, i8 0, ptr @tegra_i2c_quirks, i8 1, i8 0, i32 4, i32 3, i32 4, i32 2, i32 0, i32 0, i32 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@tegra210_i2c_hw = internal constant { %struct.tegra_i2c_hw_feature, [32 x i8] } { %struct.tegra_i2c_hw_feature { i8 1, i8 1, i8 1, i32 1, i32 25, i32 25, i32 16, i8 0, i8 1, i8 0, ptr @tegra_i2c_quirks, i8 1, i8 1, i32 4, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@tegra124_i2c_hw = internal constant { %struct.tegra_i2c_hw_feature, [32 x i8] } { %struct.tegra_i2c_hw_feature { i8 1, i8 1, i8 1, i32 1, i32 25, i32 25, i32 16, i8 0, i8 1, i8 0, ptr @tegra_i2c_quirks, i8 1, i8 1, i32 4, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@tegra114_i2c_hw = internal constant { %struct.tegra_i2c_hw_feature, [32 x i8] } { %struct.tegra_i2c_hw_feature { i8 1, i8 1, i8 0, i32 1, i32 25, i32 25, i32 16, i8 0, i8 0, i8 0, ptr @tegra_i2c_quirks, i8 1, i8 1, i32 4, i32 2, i32 4, i32 2, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@tegra194_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 96, i32 0, i16 -12, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"tegra_i2c_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1950, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1954, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"tegra_i2c_of_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1617, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"tegra_i2c_acpi_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1942, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"tegra_i2c_pm\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1936, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"tegra_i2c_algo\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1427, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant [24 x i8] c"tegra_i2c_recovery_info\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1445, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 87, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 878, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 602, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1638, i32 55 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1641, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1644, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1653, i32 64 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1656, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1668, i32 43 }
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"tegra20_i2c_hw\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1449, i32 42 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"tegra30_i2c_hw\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1473, i32 42 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1671, i32 44 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1674, i32 44 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1692, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"tegra_i2c_quirks\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1434, i32 40 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 454, i32 40 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 462, i32 40 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 476, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 489, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 490, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1718, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 691, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 583, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1377, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1309, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1331, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1351, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1356, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1031, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1032, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 395, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 406, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1169, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1132, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1138, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [16 x i8] c"tegra194_i2c_hw\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1593, i32 42 }
@___asan_gen_.300 = private unnamed_addr constant [16 x i8] c"tegra186_i2c_hw\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1569, i32 42 }
@___asan_gen_.303 = private unnamed_addr constant [16 x i8] c"tegra210_i2c_hw\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1545, i32 42 }
@___asan_gen_.306 = private unnamed_addr constant [16 x i8] c"tegra124_i2c_hw\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1521, i32 42 }
@___asan_gen_.309 = private unnamed_addr constant [16 x i8] c"tegra114_i2c_hw\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1497, i32 42 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c"tegra194_i2c_quirks\00", align 1
@___asan_gen_.313 = private constant [34 x i8] c"../drivers/i2c/busses/i2c-tegra.c\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1440, i32 40 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author427, ptr @__UNIQUE_ID_description426, ptr @__UNIQUE_ID_file428, ptr @__UNIQUE_ID_license429, ptr @__exitcall_tegra_i2c_driver_exit, ptr @__initcall__kmod_i2c_tegra__425_1960_tegra_i2c_driver_init6, ptr @tegra_i2c_config_fifo_trig._entry, ptr @tegra_i2c_config_fifo_trig._entry.50, ptr @tegra_i2c_config_fifo_trig._entry_ptr, ptr @tegra_i2c_config_fifo_trig._entry_ptr.51, ptr @tegra_i2c_dma_submit._entry, ptr @tegra_i2c_dma_submit._entry_ptr, ptr @tegra_i2c_driver_exit, ptr @tegra_i2c_flush_fifos._entry, ptr @tegra_i2c_flush_fifos._entry_ptr, ptr @tegra_i2c_init._entry, ptr @tegra_i2c_init._entry_ptr, ptr @tegra_i2c_init_clocks._entry, ptr @tegra_i2c_init_clocks._entry_ptr, ptr @tegra_i2c_init_dma._entry, ptr @tegra_i2c_init_dma._entry.25, ptr @tegra_i2c_init_dma._entry.28, ptr @tegra_i2c_init_dma._entry_ptr, ptr @tegra_i2c_init_dma._entry_ptr.27, ptr @tegra_i2c_init_dma._entry_ptr.30, ptr @tegra_i2c_init_hardware._entry, ptr @tegra_i2c_init_hardware._entry_ptr, ptr @tegra_i2c_isr._entry, ptr @tegra_i2c_isr._entry_ptr, ptr @tegra_i2c_issue_bus_clear._entry, ptr @tegra_i2c_issue_bus_clear._entry.60, ptr @tegra_i2c_issue_bus_clear._entry_ptr, ptr @tegra_i2c_issue_bus_clear._entry_ptr.62, ptr @tegra_i2c_wait_for_config_load._entry, ptr @tegra_i2c_wait_for_config_load._entry_ptr, ptr @tegra_i2c_xfer._entry, ptr @tegra_i2c_xfer._entry_ptr, ptr @tegra_i2c_xfer_msg._entry, ptr @tegra_i2c_xfer_msg._entry.44, ptr @tegra_i2c_xfer_msg._entry_ptr, ptr @tegra_i2c_xfer_msg._entry_ptr.46, ptr @tegra_i2c_driver, ptr @.str, ptr @tegra_i2c_of_match, ptr @tegra_i2c_acpi_match, ptr @tegra_i2c_pm, ptr @tegra_i2c_algo, ptr @tegra_i2c_recovery_info, ptr @init_completion.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @tegra20_i2c_hw, ptr @tegra30_i2c_hw, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tegra_i2c_quirks, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @tegra194_i2c_hw, ptr @tegra186_i2c_hw, ptr @tegra210_i2c_hw, ptr @tegra124_i2c_hw, ptr @tegra114_i2c_hw, ptr @tegra194_i2c_quirks], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_acpi_match to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_recovery_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_wait_for_config_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_i2c_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_i2c_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_init_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_init_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_init_dma._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_init_dma._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_init_hardware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_flush_fifos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_xfer_msg._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_config_fifo_trig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_config_fifo_trig._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_dma_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_issue_bus_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_i2c_issue_bus_clear._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_i2c_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_i2c_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_i2c_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_i2c_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_i2c_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_i2c_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #9
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !181
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1600, i32 noundef 3520) #9
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
  %msg_complete = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 12
  %2 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %msg_complete, align 4
  %wait.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #9
  %dma_complete = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %dma_complete to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dma_complete, align 4
  %wait.i144 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i144, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #9
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev) #9
  %hw = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %hw, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %cont_id = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %cont_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cont_id, align 8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 8
  %call5 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #9
  %base = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %base_phys = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %base_phys to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %base_phys, align 8
  %call12 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %irq = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call12, ptr %irq, align 4
  call void @irq_modify_status(i32 noundef %call12, i32 noundef 0, i32 noundef 4096) #9
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.dev_name.exit_crit_edge

if.end14.dev_name.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end14.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %24, %if.end.i ], [ %22, %if.end14.dev_name.exit_crit_edge ]
  %call20 = call i32 @devm_request_threaded_irq(ptr noundef %18, i32 noundef %20, ptr noundef null, ptr noundef nonnull @tegra_i2c_isr, i32 noundef 24576, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %dev_name.exit
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node.i, align 8
  %timings.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 11
  call void @i2c_parse_fw_timings(ptr noundef %26, ptr noundef %timings.i, i1 noundef zeroext true) #9
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 8
  %call.i.i = call zeroext i1 @device_property_present(ptr noundef %30, ptr noundef nonnull @.str.11) #9
  %frombool.i = zext i1 %call.i.i to i8
  %multimaster_mode.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 22
  %31 = ptrtoint ptr %multimaster_mode.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool.i, ptr %multimaster_mode.i, align 8
  %call4.i = call i32 @of_device_is_compatible(ptr noundef %28, ptr noundef nonnull @.str.12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end23.if.end.i145_crit_edge, label %if.then.i

if.end23.if.end.i145_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i145

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %is_dvc.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 26
  %32 = ptrtoint ptr %is_dvc.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %is_dvc.i, align 4
  br label %if.end.i145

if.end.i145:                                      ; preds = %if.then.i, %if.end23.if.end.i145_crit_edge
  %call6.i = call i32 @of_device_is_compatible(ptr noundef %28, ptr noundef nonnull @.str.13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end.i145.tegra_i2c_parse_dt.exit_crit_edge, label %if.then8.i

if.end.i145.tegra_i2c_parse_dt.exit_crit_edge:    ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_parse_dt.exit

if.then8.i:                                       ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 27
  %33 = ptrtoint ptr %is_vi.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %is_vi.i, align 1
  br label %tegra_i2c_parse_dt.exit

tegra_i2c_parse_dt.exit:                          ; preds = %if.then8.i, %if.end.i145.tegra_i2c_parse_dt.exit_crit_edge
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 8
  %call.i.i146 = call ptr @__devm_reset_control_get(ptr noundef %35, ptr noundef nonnull @.str.14, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %rst.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %rst.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i146, ptr %rst.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %tegra_i2c_init_reset.exit, label %tegra_i2c_parse_dt.exit.if.end27_crit_edge

tegra_i2c_parse_dt.exit.if.end27_crit_edge:       ; preds = %tegra_i2c_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

tegra_i2c_init_reset.exit:                        ; preds = %tegra_i2c_parse_dt.exit
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 8
  %39 = ptrtoint ptr %call.i.i146 to i32
  %call7.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %38, i32 noundef %39, ptr noundef nonnull @.str.15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool25.not = icmp eq i32 %call7.i, 0
  br i1 %tobool25.not, label %tegra_i2c_init_reset.exit.if.end27_crit_edge, label %tegra_i2c_init_reset.exit.cleanup_crit_edge

tegra_i2c_init_reset.exit.cleanup_crit_edge:      ; preds = %tegra_i2c_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tegra_i2c_init_reset.exit.if.end27_crit_edge:     ; preds = %tegra_i2c_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %tegra_i2c_init_reset.exit.if.end27_crit_edge, %tegra_i2c_parse_dt.exit.if.end27_crit_edge
  %clocks.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 8
  %nclocks.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nclocks.i, align 8
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %nclocks.i, align 8
  %arrayidx.i = getelementptr %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 8, i32 %41
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.16, ptr %arrayidx.i, align 8
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 8
  %cmp.i148 = icmp eq ptr %44, @tegra20_i2c_hw
  %cmp2.i = icmp eq ptr %44, @tegra30_i2c_hw
  %or.cond.i = or i1 %cmp.i148, %cmp2.i
  br i1 %or.cond.i, label %if.then3.i149, label %if.end27.if.end9.i_crit_edge

if.end27.if.end9.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then3.i149:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nclocks.i, align 8
  %inc6.i = add i32 %46, 1
  store i32 %inc6.i, ptr %nclocks.i, align 8
  %arrayidx7.i = getelementptr %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 8, i32 %46
  %47 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.17, ptr %arrayidx7.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then3.i149, %if.end27.if.end9.i_crit_edge
  %is_vi.i150 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 27
  %48 = ptrtoint ptr %is_vi.i150 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_vi.i150, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i151 = icmp eq i8 %49, 0
  br i1 %tobool.not.i151, label %if.end9.i.if.end16.i_crit_edge, label %if.then10.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nclocks.i, align 8
  %inc13.i = add i32 %51, 1
  store i32 %inc13.i, ptr %nclocks.i, align 8
  %arrayidx14.i = getelementptr %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 8, i32 %51
  %52 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.18, ptr %arrayidx14.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then10.i, %if.end9.i.if.end16.i_crit_edge
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 8
  %55 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nclocks.i, align 8
  %call.i152 = call i32 @devm_clk_bulk_get(ptr noundef %54, i32 noundef %56, ptr noundef %clocks.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool19.not.i = icmp eq i32 %call.i152, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21.i:                                       ; preds = %if.end16.i
  %57 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nclocks.i, align 8
  %call25.i = call i32 @clk_bulk_prepare(i32 noundef %58, ptr noundef %clocks.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end21.i.cleanup_crit_edge

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28.i:                                       ; preds = %if.end21.i
  %clk.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %59 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clk.i, align 4
  %div_clk.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 10
  %61 = ptrtoint ptr %div_clk.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %div_clk.i, align 4
  %62 = ptrtoint ptr %multimaster_mode.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %multimaster_mode.i, align 8, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool31.not.i = icmp eq i8 %63, 0
  br i1 %tobool31.not.i, label %if.end28.i.if.end31_crit_edge, label %if.end33.i

if.end28.i.if.end31_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end33.i:                                       ; preds = %if.end28.i
  %call35.i = call i32 @clk_enable(ptr noundef %60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end33.i.if.end31_crit_edge, label %do.end.i

if.end33.i.if.end31_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end.i:                                         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.19, i32 noundef %call35.i) #12
  %66 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nclocks.i, align 8
  call void @clk_bulk_unprepare(i32 noundef %67, ptr noundef %clocks.i) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end33.i.if.end31_crit_edge, %if.end28.i.if.end31_crit_edge
  %call32 = call fastcc i32 @tegra_i2c_init_dma(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.release_clocks_crit_edge

if.end31.release_clocks_crit_edge:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_clocks

if.end35:                                         ; preds = %if.end31
  %68 = ptrtoint ptr %is_vi.i150 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %is_vi.i150, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool36.not = icmp eq i8 %69, 0
  br i1 %tobool36.not, label %if.then37, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 8
  call void @pm_runtime_irq_safe(ptr noundef %71) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 8
  call void @pm_runtime_enable(ptr noundef %73) #9
  %call41 = call fastcc i32 @tegra_i2c_init_hardware(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.release_rpm_crit_edge

if.end39.release_rpm_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_rpm

if.end44:                                         ; preds = %if.end39
  %adapter = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1
  %driver_data.i.i155 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 9, i32 8
  %74 = ptrtoint ptr %driver_data.i.i155 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i, ptr %driver_data.i.i155, align 4
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 27
  %77 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %of_node, align 8
  %of_node48 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 9, i32 27
  %79 = ptrtoint ptr %of_node48 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %of_node48, align 8
  %parent = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 9, i32 1
  %80 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %76, ptr %parent, align 8
  %retries = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 8
  %81 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %retries, align 8
  %timeout = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 7
  %82 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 600, ptr %timeout, align 4
  %83 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw, align 8
  %quirks = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %84, i32 0, i32 10
  %85 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %quirks, align 4
  %quirks56 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 17
  %87 = ptrtoint ptr %quirks56 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %quirks56, align 8
  %88 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 256, ptr %class, align 4
  %algo = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 2
  %90 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @tegra_i2c_algo, ptr %algo, align 8
  %91 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 11
  %93 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %nr, align 4
  %supports_bus_clear = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %84, i32 0, i32 11
  %94 = ptrtoint ptr %supports_bus_clear to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %supports_bus_clear, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool63.not = icmp eq i8 %95, 0
  br i1 %tobool63.not, label %if.end44.if.end66_crit_edge, label %if.then64

if.end44.if.end66_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %bus_recovery_info = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 16
  %96 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @tegra_i2c_recovery_info, ptr %bus_recovery_info, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end44.if.end66_crit_edge
  %name = getelementptr inbounds %struct.tegra_i2c_dev, ptr %call.i, i32 0, i32 1, i32 12
  %init_name.i156 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 3
  %97 = ptrtoint ptr %init_name.i156 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i156, align 8
  %tobool.not.i157 = icmp eq ptr %98, null
  br i1 %tobool.not.i157, label %if.end.i158, label %if.end66.dev_name.exit160_crit_edge

if.end66.dev_name.exit160_crit_edge:              ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit160

if.end.i158:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %76, align 4
  br label %dev_name.exit160

dev_name.exit160:                                 ; preds = %if.end.i158, %if.end66.dev_name.exit160_crit_edge
  %retval.0.i159 = phi ptr [ %100, %if.end.i158 ], [ %98, %if.end66.dev_name.exit160_crit_edge ]
  %call70 = call i32 @strlcpy(ptr noundef %name, ptr noundef %retval.0.i159, i32 noundef 48) #9
  %call72 = call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %dev_name.exit160.cleanup_crit_edge, label %dev_name.exit160.release_rpm_crit_edge

dev_name.exit160.release_rpm_crit_edge:           ; preds = %dev_name.exit160
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_rpm

dev_name.exit160.cleanup_crit_edge:               ; preds = %dev_name.exit160
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

release_rpm:                                      ; preds = %dev_name.exit160.release_rpm_crit_edge, %if.end39.release_rpm_crit_edge
  %err.0 = phi i32 [ %call41, %if.end39.release_rpm_crit_edge ], [ %call72, %dev_name.exit160.release_rpm_crit_edge ]
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 8
  call void @__pm_runtime_disable(ptr noundef %102, i1 noundef zeroext true) #9
  call fastcc void @tegra_i2c_release_dma(ptr noundef nonnull %call.i)
  br label %release_clocks

release_clocks:                                   ; preds = %release_rpm, %if.end31.release_clocks_crit_edge
  %err.1 = phi i32 [ %call32, %if.end31.release_clocks_crit_edge ], [ %err.0, %release_rpm ]
  call fastcc void @tegra_i2c_release_clocks(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %release_clocks, %dev_name.exit160.cleanup_crit_edge, %do.end.i, %if.end21.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %tegra_i2c_init_reset.exit.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then8 ], [ %err.1, %release_clocks ], [ -12, %entry.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call20, %dev_name.exit.cleanup_crit_edge ], [ %call7.i, %tegra_i2c_init_reset.exit.cleanup_crit_edge ], [ 0, %dev_name.exit160.cleanup_crit_edge ], [ %call25.i, %if.end21.i.cleanup_crit_edge ], [ %call.i152, %if.end16.i.cleanup_crit_edge ], [ %call35.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %3) #9
  %dma_buf.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_buf.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dma_buf_size.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_buf_size.i, align 4
  %dma_phys.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_phys.i, align 8
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #9
  %12 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dma_buf.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_dma_chan.i, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %14) #9
  %15 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tx_dma_chan.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_dma_chan.i, align 8
  %tobool8.not.i = icmp eq ptr %17, null
  br i1 %tobool8.not.i, label %if.end7.i.tegra_i2c_release_dma.exit_crit_edge, label %if.then9.i

if.end7.i.tegra_i2c_release_dma.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_release_dma.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %17) #9
  %18 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rx_dma_chan.i, align 8
  br label %tegra_i2c_release_dma.exit

tegra_i2c_release_dma.exit:                       ; preds = %if.then9.i, %if.end7.i.tegra_i2c_release_dma.exit_crit_edge
  %multimaster_mode.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %multimaster_mode.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %multimaster_mode.i, align 8, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i5 = icmp eq i8 %20, 0
  br i1 %tobool.not.i5, label %tegra_i2c_release_dma.exit.tegra_i2c_release_clocks.exit_crit_edge, label %if.then.i6

tegra_i2c_release_dma.exit.tegra_i2c_release_clocks.exit_crit_edge: ; preds = %tegra_i2c_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_release_clocks.exit

if.then.i6:                                       ; preds = %tegra_i2c_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div_clk.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %div_clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %div_clk.i, align 4
  tail call void @clk_disable(ptr noundef %22) #9
  br label %tegra_i2c_release_clocks.exit

tegra_i2c_release_clocks.exit:                    ; preds = %if.then.i6, %tegra_i2c_release_dma.exit.tegra_i2c_release_clocks.exit_crit_edge
  %nclocks.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nclocks.i, align 8
  %clocks.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 8
  tail call void @clk_bulk_unprepare(i32 noundef %24, ptr noundef %clocks.i) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %is_dvc.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 26
  %2 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.i2c_readl.exit_crit_edge

entry.i2c_readl.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %4 = ptrtoint ptr %is_vi.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_vi.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i.i = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool1.not.i.i, i32 104, i32 3488
  br label %i2c_readl.exit

i2c_readl.exit:                                   ; preds = %if.else.i.i, %entry.i2c_readl.exit_crit_edge
  %reg.addr.0.i.i = phi i32 [ 120, %entry.i2c_readl.exit_crit_edge ], [ %spec.select, %if.else.i.i ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 %reg.addr.0.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !183
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %i2c_readl.exit
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 8
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i184 = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i184, label %if.else.i.i188, label %do.end.i2c_readl.exit192_crit_edge

do.end.i2c_readl.exit192_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit192

if.else.i.i188:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i186 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %14 = ptrtoint ptr %is_vi.i.i186 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_vi.i.i186, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i.i187 = icmp eq i8 %15, 0
  %spec.select324 = select i1 %tobool1.not.i.i187, i32 88, i32 3424
  br label %i2c_readl.exit192

i2c_readl.exit192:                                ; preds = %if.else.i.i188, %do.end.i2c_readl.exit192_crit_edge
  %reg.addr.0.i.i190 = phi i32 [ 104, %do.end.i2c_readl.exit192_crit_edge ], [ %spec.select324, %if.else.i.i188 ]
  %add.ptr.i191 = getelementptr i8, ptr %11, i32 %reg.addr.0.i.i190
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191) #9, !srcloc !183
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %20 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i195 = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i195, label %if.else.i.i199, label %i2c_readl.exit192.i2c_readl.exit203_crit_edge

i2c_readl.exit192.i2c_readl.exit203_crit_edge:    ; preds = %i2c_readl.exit192
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit203

if.else.i.i199:                                   ; preds = %i2c_readl.exit192
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i197 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %22 = ptrtoint ptr %is_vi.i.i197 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_vi.i.i197, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i.i198 = icmp eq i8 %23, 0
  %spec.select325 = select i1 %tobool1.not.i.i198, i32 28, i32 3184
  br label %i2c_readl.exit203

i2c_readl.exit203:                                ; preds = %if.else.i.i199, %i2c_readl.exit192.i2c_readl.exit203_crit_edge
  %reg.addr.0.i.i201 = phi i32 [ 92, %i2c_readl.exit192.i2c_readl.exit203_crit_edge ], [ %spec.select325, %if.else.i.i199 ]
  %add.ptr.i202 = getelementptr i8, ptr %19, i32 %reg.addr.0.i.i201
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #9, !srcloc !183
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %28 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i206 = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i206, label %if.else.i.i210, label %i2c_readl.exit203.i2c_readl.exit214_crit_edge

i2c_readl.exit203.i2c_readl.exit214_crit_edge:    ; preds = %i2c_readl.exit203
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit214

if.else.i.i210:                                   ; preds = %i2c_readl.exit203
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i208 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %30 = ptrtoint ptr %is_vi.i.i208 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_vi.i.i208, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.not.i.i209 = icmp eq i8 %31, 0
  %spec.select326 = select i1 %tobool1.not.i.i209, i32 0, i32 3072
  br label %i2c_readl.exit214

i2c_readl.exit214:                                ; preds = %if.else.i.i210, %i2c_readl.exit203.i2c_readl.exit214_crit_edge
  %reg.addr.0.i.i212 = phi i32 [ 64, %i2c_readl.exit203.i2c_readl.exit214_crit_edge ], [ %spec.select326, %if.else.i.i210 ]
  %add.ptr.i213 = getelementptr i8, ptr %27, i32 %reg.addr.0.i.i212
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #9, !srcloc !183
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef %17, i32 noundef %25, i32 noundef %33) #12
  br label %err.sink.split

if.end:                                           ; preds = %i2c_readl.exit
  %and = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %cond.false18.i

cond.false18.i:                                   ; preds = %if.end
  %timings.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 11
  %34 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timings.i, align 8
  %sub.i = add i32 %35, 1999999
  %div.i = udiv i32 %sub.i, %35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %div.i) #9
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %39 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %cond.false18.i.i2c_readl.exit.i_crit_edge

cond.false18.i.i2c_readl.exit.i_crit_edge:        ; preds = %cond.false18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit.i

if.else.i.i.i:                                    ; preds = %cond.false18.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %41 = ptrtoint ptr %is_vi.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_vi.i.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool1.not.i.i.i = icmp eq i8 %42, 0
  %spec.select.i = select i1 %tobool1.not.i.i.i, i32 0, i32 3072
  br label %i2c_readl.exit.i

i2c_readl.exit.i:                                 ; preds = %if.else.i.i.i, %cond.false18.i.i2c_readl.exit.i_crit_edge
  %reg.addr.0.i.i.i = phi i32 [ 64, %cond.false18.i.i2c_readl.exit.i_crit_edge ], [ %spec.select.i, %if.else.i.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %reg.addr.0.i.i.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !183
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %and.i = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %i2c_readl.exit.i.if.end.i_crit_edge, label %if.then.i

i2c_readl.exit.i.if.end.i_crit_edge:              ; preds = %i2c_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %i2c_readl.exit.i
  %and27.i = and i32 %44, -1025
  %45 = tail call i32 @llvm.bswap.i32(i32 %and27.i) #9
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %48 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i3.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i3.i, label %if.else.i.i7.i, label %if.then.i.tegra_i2c_reg_addr.exit.i.i_crit_edge

if.then.i.tegra_i2c_reg_addr.exit.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i

if.else.i.i7.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i5.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %50 = ptrtoint ptr %is_vi.i.i5.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_vi.i.i5.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.not.i.i6.i = icmp eq i8 %51, 0
  %spec.select11.i = select i1 %tobool1.not.i.i6.i, i32 0, i32 3072
  br label %tegra_i2c_reg_addr.exit.i.i

tegra_i2c_reg_addr.exit.i.i:                      ; preds = %if.else.i.i7.i, %if.then.i.tegra_i2c_reg_addr.exit.i.i_crit_edge
  %reg.addr.0.i.i9.i = phi i32 [ 64, %if.then.i.tegra_i2c_reg_addr.exit.i.i_crit_edge ], [ %spec.select11.i, %if.else.i.i7.i ]
  %add.ptr.i10.i = getelementptr i8, ptr %47, i32 %reg.addr.0.i.i9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %45) #9, !srcloc !184
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %54 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i22.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i22.i.i, label %if.else.i29.i.i, label %tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge

tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit.i

if.else.i29.i.i:                                  ; preds = %tegra_i2c_reg_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %56 = ptrtoint ptr %is_vi.i27.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_vi.i27.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool1.not.i28.i.i = icmp eq i8 %57, 0
  %spec.select12.i = select i1 %tobool1.not.i28.i.i, i32 0, i32 3072
  br label %i2c_writel.exit.i

i2c_writel.exit.i:                                ; preds = %if.else.i29.i.i, %tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge
  %reg.addr.0.i33.i.i = phi i32 [ 64, %tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge ], [ %spec.select12.i, %if.else.i29.i.i ]
  %add.ptr3.i.i = getelementptr i8, ptr %53, i32 %reg.addr.0.i33.i.i
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !183
  br label %if.end.i

if.end.i:                                         ; preds = %i2c_writel.exit.i, %i2c_readl.exit.i.if.end.i_crit_edge
  %hw.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 2
  %59 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw.i.i, align 8
  %has_config_load_reg.i.i = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %has_config_load_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %has_config_load_reg.i.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i215 = icmp eq i8 %62, 0
  br i1 %tobool.not.i.i215, label %if.end.i.tegra_i2c_disable_packet_mode.exit_crit_edge, label %if.end.i.i

if.end.i.tegra_i2c_disable_packet_mode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_disable_packet_mode.exit

if.end.i.i:                                       ; preds = %if.end.i
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %65 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i.i.i.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.end.i.i.tegra_i2c_reg_addr.exit.i.i.i_crit_edge

if.end.i.i.tegra_i2c_reg_addr.exit.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %67 = ptrtoint ptr %is_vi.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_vi.i.i.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool1.not.i.i.i.i = icmp eq i8 %68, 0
  %spec.select.i.i = select i1 %tobool1.not.i.i.i.i, i32 140, i32 3632
  br label %tegra_i2c_reg_addr.exit.i.i.i

tegra_i2c_reg_addr.exit.i.i.i:                    ; preds = %if.else.i.i.i.i, %if.end.i.i.tegra_i2c_reg_addr.exit.i.i.i_crit_edge
  %reg.addr.0.i.i.i.i = phi i32 [ 156, %if.end.i.i.tegra_i2c_reg_addr.exit.i.i.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i.i.i ]
  %add.ptr.i.i.i = getelementptr i8, ptr %64, i32 %reg.addr.0.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #9, !srcloc !184
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %71 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i22.i.i.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i22.i.i.i, label %if.else.i29.i.i.i, label %tegra_i2c_reg_addr.exit.i.i.i.i2c_writel.exit.i.i_crit_edge

tegra_i2c_reg_addr.exit.i.i.i.i2c_writel.exit.i.i_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit.i.i

if.else.i29.i.i.i:                                ; preds = %tegra_i2c_reg_addr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %73 = ptrtoint ptr %is_vi.i27.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_vi.i27.i.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool1.not.i28.i.i.i = icmp eq i8 %74, 0
  %spec.select8.i.i = select i1 %tobool1.not.i28.i.i.i, i32 140, i32 3632
  br label %i2c_writel.exit.i.i

i2c_writel.exit.i.i:                              ; preds = %if.else.i29.i.i.i, %tegra_i2c_reg_addr.exit.i.i.i.i2c_writel.exit.i.i_crit_edge
  %reg.addr.0.i33.i.i.i = phi i32 [ 156, %tegra_i2c_reg_addr.exit.i.i.i.i2c_writel.exit.i.i_crit_edge ], [ %spec.select8.i.i, %if.else.i29.i.i.i ]
  %add.ptr3.i.i.i = getelementptr i8, ptr %70, i32 %reg.addr.0.i33.i.i.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i.i) #9, !srcloc !183
  %call.i.i = tail call fastcc i32 @tegra_i2c_poll_register(ptr noundef %dev_id, i32 noundef 140, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i216 = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i216, label %i2c_writel.exit.i.i.tegra_i2c_disable_packet_mode.exit_crit_edge, label %do.end.i.i

i2c_writel.exit.i.i.tegra_i2c_disable_packet_mode.exit_crit_edge: ; preds = %i2c_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_disable_packet_mode.exit

do.end.i.i:                                       ; preds = %i2c_writel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.7) #12
  br label %tegra_i2c_disable_packet_mode.exit

tegra_i2c_disable_packet_mode.exit:               ; preds = %do.end.i.i, %i2c_writel.exit.i.i.tegra_i2c_disable_packet_mode.exit_crit_edge, %if.end.i.tegra_i2c_disable_packet_mode.exit_crit_edge
  %and6 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %tegra_i2c_disable_packet_mode.exit.if.end11_crit_edge, label %if.then8

tegra_i2c_disable_packet_mode.exit.if.end11_crit_edge: ; preds = %tegra_i2c_disable_packet_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %tegra_i2c_disable_packet_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  %msg_err9 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 14
  %78 = ptrtoint ptr %msg_err9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %msg_err9, align 4
  %or10 = or i32 %79, 1
  store i32 %or10, ptr %msg_err9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %tegra_i2c_disable_packet_mode.exit.if.end11_crit_edge
  %and12 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.err_crit_edge, label %if.end11.err.sink.split_crit_edge

if.end11.err.sink.split_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.sink.split

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end18:                                         ; preds = %if.end
  %hw = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 2
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 8
  %supports_bus_clear = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %81, i32 0, i32 11
  %82 = ptrtoint ptr %supports_bus_clear to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %supports_bus_clear, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool19.not = icmp eq i8 %83, 0
  %and20 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %or.cond = select i1 %tobool19.not, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %if.end23, label %if.end18.err_crit_edge

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end23:                                         ; preds = %if.end18
  %dma_mode = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 24
  %84 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %dma_mode, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool24.not = icmp eq i8 %85, 0
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end49_crit_edge

if.end23.if.end49_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then25:                                        ; preds = %if.end23
  %msg_read = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 25
  %86 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool26.not = icmp eq i8 %87, 0
  %and28 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond179 = select i1 %tobool26.not, i1 true, i1 %tobool29.not
  br i1 %or.cond179, label %if.then25.if.end37_crit_edge, label %if.then30

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then30:                                        ; preds = %if.then25
  %msg_buf_remaining.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 13
  %88 = ptrtoint ptr %msg_buf_remaining.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %msg_buf_remaining.i, align 8
  %msg_buf.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 15
  %90 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %msg_buf.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i217 = icmp eq i32 %89, 0
  br i1 %tobool.not.i217, label %land.rhs.i, label %if.end40.i

land.rhs.i:                                       ; preds = %if.then30
  %.b185.i = load i1, ptr @tegra_i2c_empty_rx_fifo.__already_done, align 1
  br i1 %.b185.i, label %land.rhs.i.if.then33_crit_edge, label %land.rhs.i.if.then33.sink.split_crit_edge, !prof !185

land.rhs.i.if.then33.sink.split_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.sink.split

land.rhs.i.if.then33_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.end40.i:                                       ; preds = %if.then30
  %has_mst_fifo.i = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %81, i32 0, i32 9
  %92 = ptrtoint ptr %has_mst_fifo.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %has_mst_fifo.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool41.not.i = icmp eq i8 %93, 0
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %96 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i190.i = icmp eq i8 %97, 0
  br i1 %tobool41.not.i, label %if.else.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.end40.i
  br i1 %tobool.not.i.i190.i, label %if.else.i.i.i221, label %if.then42.i.i2c_readl.exit.i224_crit_edge

if.then42.i.i2c_readl.exit.i224_crit_edge:        ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit.i224

if.else.i.i.i221:                                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i219 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %98 = ptrtoint ptr %is_vi.i.i.i219 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %is_vi.i.i.i219, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool1.not.i.i.i220 = icmp eq i8 %99, 0
  %spec.select224.i = select i1 %tobool1.not.i.i.i220, i32 184, i32 3808
  br label %i2c_readl.exit.i224

i2c_readl.exit.i224:                              ; preds = %if.else.i.i.i221, %if.then42.i.i2c_readl.exit.i224_crit_edge
  %reg.addr.0.i.i.i222 = phi i32 [ 200, %if.then42.i.i2c_readl.exit.i224_crit_edge ], [ %spec.select224.i, %if.else.i.i.i221 ]
  %add.ptr.i.i223 = getelementptr i8, ptr %95, i32 %reg.addr.0.i.i.i222
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223) #9, !srcloc !183
  br label %if.end78.i

if.else.i:                                        ; preds = %if.end40.i
  br i1 %tobool.not.i.i190.i, label %if.else.i.i194.i, label %if.else.i.i2c_readl.exit198.i_crit_edge

if.else.i.i2c_readl.exit198.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit198.i

if.else.i.i194.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i192.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %101 = ptrtoint ptr %is_vi.i.i192.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %is_vi.i.i192.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool1.not.i.i193.i = icmp eq i8 %102, 0
  %spec.select225.i = select i1 %tobool1.not.i.i193.i, i32 96, i32 3456
  br label %i2c_readl.exit198.i

i2c_readl.exit198.i:                              ; preds = %if.else.i.i194.i, %if.else.i.i2c_readl.exit198.i_crit_edge
  %reg.addr.0.i.i196.i = phi i32 [ 112, %if.else.i.i2c_readl.exit198.i_crit_edge ], [ %spec.select225.i, %if.else.i.i194.i ]
  %add.ptr.i197.i = getelementptr i8, ptr %95, i32 %reg.addr.0.i.i196.i
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197.i) #9, !srcloc !183
  br label %if.end78.i

if.end78.i:                                       ; preds = %i2c_readl.exit198.i, %i2c_readl.exit.i224
  %.sink228.i = phi i32 [ %103, %i2c_readl.exit198.i ], [ %100, %i2c_readl.exit.i224 ]
  %.sink227.i = phi i32 [ 15, %i2c_readl.exit198.i ], [ 255, %i2c_readl.exit.i224 ]
  %104 = lshr i32 %.sink228.i, 24
  %and76.i = and i32 %104, %.sink227.i
  %div183.i = lshr i32 %89, 2
  %105 = tail call i32 @llvm.umin.i32(i32 %div183.i, i32 %and76.i) #9
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %108 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i.i201.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i.i201.i, label %if.else.i.i204.i, label %if.end78.i.i2c_readsl.exit.i_crit_edge

if.end78.i.i2c_readsl.exit.i_crit_edge:           ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readsl.exit.i

if.else.i.i204.i:                                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i202.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %110 = ptrtoint ptr %is_vi.i.i202.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %is_vi.i.i202.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool1.not.i.i203.i = icmp eq i8 %111, 0
  %spec.select.i.i225 = select i1 %tobool1.not.i.i203.i, i32 84, i32 3408
  br label %i2c_readsl.exit.i

i2c_readsl.exit.i:                                ; preds = %if.else.i.i204.i, %if.end78.i.i2c_readsl.exit.i_crit_edge
  %reg.addr.0.i.i205.i = phi i32 [ 100, %if.end78.i.i2c_readsl.exit.i_crit_edge ], [ %spec.select.i.i225, %if.else.i.i204.i ]
  %add.ptr.i206.i = getelementptr i8, ptr %107, i32 %reg.addr.0.i.i205.i
  tail call void @__raw_readsl(ptr noundef %add.ptr.i206.i, ptr noundef %91, i32 noundef %105) #9
  %mul.i226 = shl nuw nsw i32 %105, 2
  %add.ptr.i227 = getelementptr i8, ptr %91, i32 %mul.i226
  %sub.i228 = sub i32 %89, %mul.i226
  %sub82.i = sub nsw i32 %and76.i, %105
  call void @__sanitizer_cov_trace_cmp4(i32 %and76.i, i32 %div183.i)
  %cmp83.not.not.i = icmp ugt i32 %and76.i, %div183.i
  br i1 %cmp83.not.not.i, label %land.lhs.true.i, label %i2c_readsl.exit.i.tegra_i2c_empty_rx_fifo.exit_crit_edge

i2c_readsl.exit.i.tegra_i2c_empty_rx_fifo.exit_crit_edge: ; preds = %i2c_readsl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_empty_rx_fifo.exit

land.lhs.true.i:                                  ; preds = %i2c_readsl.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i228)
  %cmp84.not.i = icmp eq i32 %sub.i228, 0
  br i1 %cmp84.not.i, label %land.lhs.true.i.land.rhs96.i_crit_edge, label %if.then85.i

land.lhs.true.i.land.rhs96.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs96.i

if.then85.i:                                      ; preds = %land.lhs.true.i
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i, align 4
  %114 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i209.i = icmp eq i8 %115, 0
  br i1 %tobool.not.i.i209.i, label %if.else.i.i213.i, label %if.then85.i.if.end87.i_crit_edge

if.then85.i.if.end87.i_crit_edge:                 ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.i

if.else.i.i213.i:                                 ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i211.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %116 = ptrtoint ptr %is_vi.i.i211.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %is_vi.i.i211.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool1.not.i.i212.i = icmp eq i8 %117, 0
  %spec.select226.i = select i1 %tobool1.not.i.i212.i, i32 84, i32 3408
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.else.i.i213.i, %if.then85.i.if.end87.i_crit_edge
  %reg.addr.0.i.i215.i = phi i32 [ 100, %if.then85.i.if.end87.i_crit_edge ], [ %spec.select226.i, %if.else.i.i213.i ]
  %add.ptr.i216.i = getelementptr i8, ptr %113, i32 %reg.addr.0.i.i215.i
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i216.i) #9, !srcloc !183
  %119 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %val.i, align 4
  %120 = call ptr @memcpy(ptr %add.ptr.i227, ptr %val.i, i32 %sub.i228)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub82.i)
  %phi.cmp.i = icmp eq i32 %sub82.i, 1
  br i1 %phi.cmp.i, label %if.end87.i.tegra_i2c_empty_rx_fifo.exit_crit_edge, label %if.end87.i.land.rhs96.i_crit_edge

if.end87.i.land.rhs96.i_crit_edge:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs96.i

if.end87.i.tegra_i2c_empty_rx_fifo.exit_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_empty_rx_fifo.exit

land.rhs96.i:                                     ; preds = %if.end87.i.land.rhs96.i_crit_edge, %land.lhs.true.i.land.rhs96.i_crit_edge
  %.b182184.i = load i1, ptr @tegra_i2c_empty_rx_fifo.__already_done.10, align 1
  br i1 %.b182184.i, label %land.rhs96.i.if.then33_crit_edge, label %land.rhs96.i.if.then33.sink.split_crit_edge, !prof !185

land.rhs96.i.if.then33.sink.split_crit_edge:      ; preds = %land.rhs96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.sink.split

land.rhs96.i.if.then33_crit_edge:                 ; preds = %land.rhs96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

tegra_i2c_empty_rx_fifo.exit:                     ; preds = %if.end87.i.tegra_i2c_empty_rx_fifo.exit_crit_edge, %i2c_readsl.exit.i.tegra_i2c_empty_rx_fifo.exit_crit_edge
  %buf_remaining.0220.i = phi i32 [ 0, %if.end87.i.tegra_i2c_empty_rx_fifo.exit_crit_edge ], [ %sub.i228, %i2c_readsl.exit.i.tegra_i2c_empty_rx_fifo.exit_crit_edge ]
  %121 = ptrtoint ptr %msg_buf_remaining.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %buf_remaining.0220.i, ptr %msg_buf_remaining.i, align 8
  %122 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %add.ptr.i227, ptr %msg_buf.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  br label %if.end37

if.then33.sink.split:                             ; preds = %land.rhs96.i.if.then33.sink.split_crit_edge, %land.rhs.i.if.then33.sink.split_crit_edge
  %tegra_i2c_empty_rx_fifo.__already_done.sink = phi ptr [ @tegra_i2c_empty_rx_fifo.__already_done, %land.rhs.i.if.then33.sink.split_crit_edge ], [ @tegra_i2c_empty_rx_fifo.__already_done.10, %land.rhs96.i.if.then33.sink.split_crit_edge ]
  %.sink = phi i32 [ 748, %land.rhs.i.if.then33.sink.split_crit_edge ], [ 788, %land.rhs96.i.if.then33.sink.split_crit_edge ]
  %123 = ptrtoint ptr %tegra_i2c_empty_rx_fifo.__already_done.sink to i32
  call void @__asan_store1_noabort(i32 %123)
  store i1 true, ptr %tegra_i2c_empty_rx_fifo.__already_done.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #9
  br label %if.then33

if.then33:                                        ; preds = %if.then33.sink.split, %land.rhs96.i.if.then33_crit_edge, %land.rhs.i.if.then33_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  br label %err.sink.split

if.end37:                                         ; preds = %tegra_i2c_empty_rx_fifo.exit, %if.then25.if.end37_crit_edge
  %124 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool39.not = icmp ne i8 %125, 0
  %and41 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %or.cond180 = select i1 %tobool39.not, i1 true, i1 %tobool42.not
  br i1 %or.cond180, label %if.end37.if.end49_crit_edge, label %if.then43

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then43:                                        ; preds = %if.end37
  %msg_buf_remaining = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 13
  %126 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %msg_buf_remaining, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool44.not = icmp eq i32 %127, 0
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_i2c_fill_tx_fifo(ptr noundef %dev_id)
  br label %if.end49

if.else:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tegra_i2c_mask_irq(ptr noundef %dev_id, i32 noundef 2)
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then45, %if.end37.if.end49_crit_edge, %if.end23.if.end49_crit_edge
  %128 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base.i, align 4
  %130 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i.i231 = icmp eq i8 %131, 0
  br i1 %tobool.not.i.i231, label %if.else.i.i235, label %if.end49.tegra_i2c_reg_addr.exit.i_crit_edge

if.end49.tegra_i2c_reg_addr.exit.i_crit_edge:     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i

if.else.i.i235:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i233 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %132 = ptrtoint ptr %is_vi.i.i233 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %is_vi.i.i233, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool1.not.i.i234 = icmp eq i8 %133, 0
  %spec.select327 = select i1 %tobool1.not.i.i234, i32 104, i32 3488
  br label %tegra_i2c_reg_addr.exit.i

tegra_i2c_reg_addr.exit.i:                        ; preds = %if.else.i.i235, %if.end49.tegra_i2c_reg_addr.exit.i_crit_edge
  %reg.addr.0.i.i237 = phi i32 [ 120, %if.end49.tegra_i2c_reg_addr.exit.i_crit_edge ], [ %spec.select327, %if.else.i.i235 ]
  %add.ptr.i238 = getelementptr i8, ptr %129, i32 %reg.addr.0.i.i237
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238, i32 %6) #9, !srcloc !184
  %134 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base.i, align 4
  %136 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i22.i = icmp eq i8 %137, 0
  br i1 %tobool.not.i22.i, label %if.else.i29.i, label %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge

tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit

if.else.i29.i:                                    ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %138 = ptrtoint ptr %is_vi.i27.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %is_vi.i27.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool1.not.i28.i = icmp eq i8 %139, 0
  %spec.select328 = select i1 %tobool1.not.i28.i, i32 104, i32 3488
  br label %i2c_writel.exit

i2c_writel.exit:                                  ; preds = %if.else.i29.i, %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge
  %reg.addr.0.i33.i = phi i32 [ 120, %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge ], [ %spec.select328, %if.else.i29.i ]
  %add.ptr3.i = getelementptr i8, ptr %135, i32 %reg.addr.0.i33.i
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !183
  %141 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool50.not = icmp eq i8 %142, 0
  br i1 %tobool50.not, label %i2c_writel.exit.if.end52_crit_edge, label %if.then51

i2c_writel.exit.if.end52_crit_edge:               ; preds = %i2c_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then51:                                        ; preds = %i2c_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base.i, align 4
  %add.ptr.i241 = getelementptr i8, ptr %144, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i241, i32 64) #9, !srcloc !184
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %i2c_writel.exit.if.end52_crit_edge
  %and53 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.done_crit_edge, label %if.then55

if.end52.done_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then55:                                        ; preds = %if.end52
  %145 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %dma_mode, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool57.not = icmp eq i8 %146, 0
  br i1 %tobool57.not, label %if.then55.if.end60_crit_edge, label %if.then58

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %msg_buf_remaining59 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 13
  %147 = ptrtoint ptr %msg_buf_remaining59 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %msg_buf_remaining59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.then55.if.end60_crit_edge
  %msg_buf_remaining61 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 13
  %148 = ptrtoint ptr %msg_buf_remaining61 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %msg_buf_remaining61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool62.not = icmp eq i32 %149, 0
  br i1 %tobool62.not, label %if.end60.done.sink.split_crit_edge, label %land.rhs

if.end60.done.sink.split_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.sink.split

land.rhs:                                         ; preds = %if.end60
  %.b178 = load i1, ptr @tegra_i2c_isr.__already_done, align 1
  br i1 %.b178, label %land.rhs.err.sink.split_crit_edge, label %if.then70, !prof !185

land.rhs.err.sink.split_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.sink.split

if.then70:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tegra_i2c_isr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 943, i32 noundef 9, ptr noundef null) #9
  br label %err.sink.split

err.sink.split:                                   ; preds = %if.then70, %land.rhs.err.sink.split_crit_edge, %if.then33, %if.end11.err.sink.split_crit_edge, %i2c_readl.exit214
  %.sink332 = phi i32 [ 8, %if.then33 ], [ 4, %i2c_readl.exit214 ], [ 2, %if.end11.err.sink.split_crit_edge ], [ 4, %land.rhs.err.sink.split_crit_edge ], [ 4, %if.then70 ]
  %msg_err = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 14
  %150 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %msg_err, align 4
  %or16 = or i32 %151, %.sink332
  store i32 %or16, ptr %msg_err, align 4
  br label %err

err:                                              ; preds = %err.sink.split, %if.end18.err_crit_edge, %if.end11.err_crit_edge
  %152 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i, align 4
  %154 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i.i.i244 = icmp eq i8 %155, 0
  br i1 %tobool.not.i.i.i244, label %if.else.i.i.i248, label %err.i2c_readl.exit.i252_crit_edge

err.i2c_readl.exit.i252_crit_edge:                ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit.i252

if.else.i.i.i248:                                 ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i245 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %156 = ptrtoint ptr %is_vi.i.i.i245 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %is_vi.i.i.i245, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool1.not.i.i.i246 = icmp eq i8 %157, 0
  %spec.select.i247 = select i1 %tobool1.not.i.i.i246, i32 100, i32 3472
  br label %i2c_readl.exit.i252

i2c_readl.exit.i252:                              ; preds = %if.else.i.i.i248, %err.i2c_readl.exit.i252_crit_edge
  %reg.addr.0.i.i.i249 = phi i32 [ 116, %err.i2c_readl.exit.i252_crit_edge ], [ %spec.select.i247, %if.else.i.i.i248 ]
  %add.ptr.i.i250 = getelementptr i8, ptr %153, i32 %reg.addr.0.i.i.i249
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i250) #9, !srcloc !183
  %159 = and i32 %158, 1895825407
  %160 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i, align 4
  %162 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i.i4.i = icmp eq i8 %163, 0
  br i1 %tobool.not.i.i4.i, label %if.else.i.i8.i, label %i2c_readl.exit.i252.tegra_i2c_reg_addr.exit.i.i255_crit_edge

i2c_readl.exit.i252.tegra_i2c_reg_addr.exit.i.i255_crit_edge: ; preds = %i2c_readl.exit.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i255

if.else.i.i8.i:                                   ; preds = %i2c_readl.exit.i252
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i6.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %164 = ptrtoint ptr %is_vi.i.i6.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %is_vi.i.i6.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool1.not.i.i7.i = icmp eq i8 %165, 0
  %spec.select12.i253 = select i1 %tobool1.not.i.i7.i, i32 100, i32 3472
  br label %tegra_i2c_reg_addr.exit.i.i255

tegra_i2c_reg_addr.exit.i.i255:                   ; preds = %if.else.i.i8.i, %i2c_readl.exit.i252.tegra_i2c_reg_addr.exit.i.i255_crit_edge
  %reg.addr.0.i.i10.i = phi i32 [ 116, %i2c_readl.exit.i252.tegra_i2c_reg_addr.exit.i.i255_crit_edge ], [ %spec.select12.i253, %if.else.i.i8.i ]
  %add.ptr.i11.i = getelementptr i8, ptr %161, i32 %reg.addr.0.i.i10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %159) #9, !srcloc !184
  %166 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base.i, align 4
  %168 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i22.i.i254 = icmp eq i8 %169, 0
  br i1 %tobool.not.i22.i.i254, label %if.else.i29.i.i258, label %tegra_i2c_reg_addr.exit.i.i255.tegra_i2c_mask_irq.exit_crit_edge

tegra_i2c_reg_addr.exit.i.i255.tegra_i2c_mask_irq.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i255
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_mask_irq.exit

if.else.i29.i.i258:                               ; preds = %tegra_i2c_reg_addr.exit.i.i255
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i.i256 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %170 = ptrtoint ptr %is_vi.i27.i.i256 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %is_vi.i27.i.i256, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool1.not.i28.i.i257 = icmp eq i8 %171, 0
  %spec.select13.i = select i1 %tobool1.not.i28.i.i257, i32 100, i32 3472
  br label %tegra_i2c_mask_irq.exit

tegra_i2c_mask_irq.exit:                          ; preds = %if.else.i29.i.i258, %tegra_i2c_reg_addr.exit.i.i255.tegra_i2c_mask_irq.exit_crit_edge
  %reg.addr.0.i33.i.i259 = phi i32 [ 116, %tegra_i2c_reg_addr.exit.i.i255.tegra_i2c_mask_irq.exit_crit_edge ], [ %spec.select13.i, %if.else.i29.i.i258 ]
  %add.ptr3.i.i260 = getelementptr i8, ptr %167, i32 %reg.addr.0.i33.i.i259
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i260) #9, !srcloc !183
  %hw109 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 2
  %173 = ptrtoint ptr %hw109 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hw109, align 8
  %supports_bus_clear110 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %174, i32 0, i32 11
  %175 = ptrtoint ptr %supports_bus_clear110 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %supports_bus_clear110, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool111.not = icmp eq i8 %176, 0
  br i1 %tobool111.not, label %tegra_i2c_mask_irq.exit.if.end113_crit_edge, label %if.then112

tegra_i2c_mask_irq.exit.if.end113_crit_edge:      ; preds = %tegra_i2c_mask_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then112:                                       ; preds = %tegra_i2c_mask_irq.exit
  %177 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base.i, align 4
  %179 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i.i.i264 = icmp eq i8 %180, 0
  br i1 %tobool.not.i.i.i264, label %if.else.i.i.i268, label %if.then112.i2c_readl.exit.i273_crit_edge

if.then112.i2c_readl.exit.i273_crit_edge:         ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit.i273

if.else.i.i.i268:                                 ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i265 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %181 = ptrtoint ptr %is_vi.i.i.i265 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %is_vi.i.i.i265, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool1.not.i.i.i266 = icmp eq i8 %182, 0
  %spec.select.i267 = select i1 %tobool1.not.i.i.i266, i32 100, i32 3472
  br label %i2c_readl.exit.i273

i2c_readl.exit.i273:                              ; preds = %if.else.i.i.i268, %if.then112.i2c_readl.exit.i273_crit_edge
  %reg.addr.0.i.i.i269 = phi i32 [ 116, %if.then112.i2c_readl.exit.i273_crit_edge ], [ %spec.select.i267, %if.else.i.i.i268 ]
  %add.ptr.i.i270 = getelementptr i8, ptr %178, i32 %reg.addr.0.i.i.i269
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i270) #9, !srcloc !183
  %184 = and i32 %183, -524289
  %185 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i, align 4
  %187 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool.not.i.i4.i272 = icmp eq i8 %188, 0
  br i1 %tobool.not.i.i4.i272, label %if.else.i.i8.i277, label %i2c_readl.exit.i273.tegra_i2c_reg_addr.exit.i.i281_crit_edge

i2c_readl.exit.i273.tegra_i2c_reg_addr.exit.i.i281_crit_edge: ; preds = %i2c_readl.exit.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i281

if.else.i.i8.i277:                                ; preds = %i2c_readl.exit.i273
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i6.i274 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %189 = ptrtoint ptr %is_vi.i.i6.i274 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %is_vi.i.i6.i274, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool1.not.i.i7.i275 = icmp eq i8 %190, 0
  %spec.select12.i276 = select i1 %tobool1.not.i.i7.i275, i32 100, i32 3472
  br label %tegra_i2c_reg_addr.exit.i.i281

tegra_i2c_reg_addr.exit.i.i281:                   ; preds = %if.else.i.i8.i277, %i2c_readl.exit.i273.tegra_i2c_reg_addr.exit.i.i281_crit_edge
  %reg.addr.0.i.i10.i278 = phi i32 [ 116, %i2c_readl.exit.i273.tegra_i2c_reg_addr.exit.i.i281_crit_edge ], [ %spec.select12.i276, %if.else.i.i8.i277 ]
  %add.ptr.i11.i279 = getelementptr i8, ptr %186, i32 %reg.addr.0.i.i10.i278
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i279, i32 %184) #9, !srcloc !184
  %191 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i, align 4
  %193 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i22.i.i280 = icmp eq i8 %194, 0
  br i1 %tobool.not.i22.i.i280, label %if.else.i29.i.i285, label %tegra_i2c_reg_addr.exit.i.i281.tegra_i2c_mask_irq.exit289_crit_edge

tegra_i2c_reg_addr.exit.i.i281.tegra_i2c_mask_irq.exit289_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i281
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_mask_irq.exit289

if.else.i29.i.i285:                               ; preds = %tegra_i2c_reg_addr.exit.i.i281
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i.i282 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %195 = ptrtoint ptr %is_vi.i27.i.i282 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %is_vi.i27.i.i282, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool1.not.i28.i.i283 = icmp eq i8 %196, 0
  %spec.select13.i284 = select i1 %tobool1.not.i28.i.i283, i32 100, i32 3472
  br label %tegra_i2c_mask_irq.exit289

tegra_i2c_mask_irq.exit289:                       ; preds = %if.else.i29.i.i285, %tegra_i2c_reg_addr.exit.i.i281.tegra_i2c_mask_irq.exit289_crit_edge
  %reg.addr.0.i33.i.i286 = phi i32 [ 116, %tegra_i2c_reg_addr.exit.i.i281.tegra_i2c_mask_irq.exit289_crit_edge ], [ %spec.select13.i284, %if.else.i29.i.i285 ]
  %add.ptr3.i.i287 = getelementptr i8, ptr %192, i32 %reg.addr.0.i33.i.i286
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i287) #9, !srcloc !183
  br label %if.end113

if.end113:                                        ; preds = %tegra_i2c_mask_irq.exit289, %tegra_i2c_mask_irq.exit.if.end113_crit_edge
  %198 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %base.i, align 4
  %200 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool.not.i.i292 = icmp eq i8 %201, 0
  br i1 %tobool.not.i.i292, label %if.else.i.i296, label %if.end113.tegra_i2c_reg_addr.exit.i300_crit_edge

if.end113.tegra_i2c_reg_addr.exit.i300_crit_edge: ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i300

if.else.i.i296:                                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i294 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %202 = ptrtoint ptr %is_vi.i.i294 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %is_vi.i.i294, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool1.not.i.i295 = icmp eq i8 %203, 0
  %spec.select329 = select i1 %tobool1.not.i.i295, i32 104, i32 3488
  br label %tegra_i2c_reg_addr.exit.i300

tegra_i2c_reg_addr.exit.i300:                     ; preds = %if.else.i.i296, %if.end113.tegra_i2c_reg_addr.exit.i300_crit_edge
  %reg.addr.0.i.i298 = phi i32 [ 120, %if.end113.tegra_i2c_reg_addr.exit.i300_crit_edge ], [ %spec.select329, %if.else.i.i296 ]
  %add.ptr.i299 = getelementptr i8, ptr %199, i32 %reg.addr.0.i.i298
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 %6) #9, !srcloc !184
  %204 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %base.i, align 4
  %206 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool.not.i22.i301 = icmp eq i8 %207, 0
  br i1 %tobool.not.i22.i301, label %if.else.i29.i306, label %tegra_i2c_reg_addr.exit.i300.i2c_writel.exit310_crit_edge

tegra_i2c_reg_addr.exit.i300.i2c_writel.exit310_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit310

if.else.i29.i306:                                 ; preds = %tegra_i2c_reg_addr.exit.i300
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i304 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 27
  %208 = ptrtoint ptr %is_vi.i27.i304 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %is_vi.i27.i304, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool1.not.i28.i305 = icmp eq i8 %209, 0
  %spec.select330 = select i1 %tobool1.not.i28.i305, i32 104, i32 3488
  br label %i2c_writel.exit310

i2c_writel.exit310:                               ; preds = %if.else.i29.i306, %tegra_i2c_reg_addr.exit.i300.i2c_writel.exit310_crit_edge
  %reg.addr.0.i33.i308 = phi i32 [ 120, %tegra_i2c_reg_addr.exit.i300.i2c_writel.exit310_crit_edge ], [ %spec.select330, %if.else.i29.i306 ]
  %add.ptr3.i309 = getelementptr i8, ptr %205, i32 %reg.addr.0.i33.i308
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i309) #9, !srcloc !183
  %211 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool115.not = icmp eq i8 %212, 0
  br i1 %tobool115.not, label %i2c_writel.exit310.if.end117_crit_edge, label %if.then116

i2c_writel.exit310.if.end117_crit_edge:           ; preds = %i2c_writel.exit310
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.then116:                                       ; preds = %i2c_writel.exit310
  call void @__sanitizer_cov_trace_pc() #11
  %213 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %base.i, align 4
  %add.ptr.i312 = getelementptr i8, ptr %214, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i312, i32 64) #9, !srcloc !184
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %i2c_writel.exit310.if.end117_crit_edge
  %dma_mode118 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 24
  %215 = ptrtoint ptr %dma_mode118 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %dma_mode118, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool119.not = icmp eq i8 %216, 0
  br i1 %tobool119.not, label %if.end117.done.sink.split_crit_edge, label %if.then120

if.end117.done.sink.split_crit_edge:              ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.sink.split

if.then120:                                       ; preds = %if.end117
  %msg_read121 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 25
  %217 = ptrtoint ptr %msg_read121 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %msg_read121, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool122.not = icmp eq i8 %218, 0
  br i1 %tobool122.not, label %if.else125, label %if.then123

if.then123:                                       ; preds = %if.then120
  %rx_dma_chan = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 18
  %219 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rx_dma_chan, align 8
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %220, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %222, i32 0, i32 47
  %223 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i313 = icmp eq ptr %224, null
  br i1 %tobool.not.i313, label %if.then123.if.end127_crit_edge, label %if.then.i314

if.then123.if.end127_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then.i314:                                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %224(ptr noundef %220) #9
  br label %if.end127

if.else125:                                       ; preds = %if.then120
  %tx_dma_chan = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 17
  %225 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %tx_dma_chan, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %device_terminate_all.i316 = getelementptr inbounds %struct.dma_device, ptr %228, i32 0, i32 47
  %229 = ptrtoint ptr %device_terminate_all.i316 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %device_terminate_all.i316, align 4
  %tobool.not.i317 = icmp eq ptr %230, null
  br i1 %tobool.not.i317, label %if.else125.if.end127_crit_edge, label %if.then.i319

if.else125.if.end127_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then.i319:                                     ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #11
  %call.i318 = tail call i32 %230(ptr noundef %226) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then.i319, %if.else125.if.end127_crit_edge, %if.then.i314, %if.then123.if.end127_crit_edge
  %dma_complete = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 16
  tail call void @complete(ptr noundef %dma_complete) #9
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.end127, %if.end117.done.sink.split_crit_edge, %if.end60.done.sink.split_crit_edge
  %msg_complete = getelementptr inbounds %struct.tegra_i2c_dev, ptr %dev_id, i32 0, i32 12
  tail call void @complete(ptr noundef %msg_complete) #9
  br label %done

done:                                             ; preds = %done.sink.split, %if.end52.done_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_init_dma(ptr nocapture noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  %dma_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_phys) #9
  %0 = ptrtoint ptr %dma_phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_phys, align 4, !annotation !181
  %hw = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %has_apb_dma = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %has_apb_dma to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %has_apb_dma, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_vi = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %5 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_dev, align 8
  %call = tail call ptr @dma_request_chan(ptr noundef %8, ptr noundef nonnull @.str.21) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call to i32
  br label %err_out

if.end5:                                          ; preds = %if.end
  %rx_dma_chan = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 18
  %10 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %rx_dma_chan, align 8
  %11 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_dev, align 8
  %call7 = tail call ptr @dma_request_chan(ptr noundef %12, ptr noundef nonnull @.str.22) #9
  %cmp.i59 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call7 to i32
  br label %err_out

if.end11:                                         ; preds = %if.end5
  %tx_dma_chan = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 17
  %14 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %tx_dma_chan, align 4
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 8
  %quirks = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %quirks, align 4
  %max_write_len = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %max_write_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_write_len, align 4
  %conv = zext i16 %20 to i32
  %add = add nuw nsw i32 %conv, 12
  %dma_buf_size = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 19
  %21 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %dma_buf_size, align 4
  %22 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_dev, align 8
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %23, i32 noundef %add, ptr noundef nonnull %dma_phys, i32 noundef 11456, i32 noundef 256) #9
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.23) #12
  br label %err_out

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %dma_buf20 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 21
  %26 = ptrtoint ptr %dma_buf20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %dma_buf20, align 4
  %27 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_phys, align 4
  %dma_phys21 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 20
  %29 = ptrtoint ptr %dma_phys21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dma_phys21, align 8
  br label %cleanup

err_out:                                          ; preds = %do.end, %if.then9, %if.then3
  %err.0 = phi i32 [ %9, %if.then3 ], [ %13, %if.then9 ], [ -12, %do.end ]
  %dma_buf.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 21
  %30 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_buf.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %err_out.if.end.i_crit_edge, label %if.then.i

err_out.if.end.i_crit_edge:                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_dev, align 8
  %dma_buf_size.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 19
  %34 = ptrtoint ptr %dma_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_buf_size.i, align 4
  %dma_phys.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 20
  %36 = ptrtoint ptr %dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_phys.i, align 8
  call void @dma_free_attrs(ptr noundef %33, i32 noundef %35, ptr noundef nonnull %31, i32 noundef %37, i32 noundef 0) #9
  %38 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %dma_buf.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %err_out.if.end.i_crit_edge
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 17
  %39 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_dma_chan.i, align 4
  %tobool3.not.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %40) #9
  %41 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %tx_dma_chan.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 18
  %42 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_dma_chan.i, align 8
  %tobool8.not.i = icmp eq ptr %43, null
  br i1 %tobool8.not.i, label %if.end7.i.tegra_i2c_release_dma.exit_crit_edge, label %if.then9.i

if.end7.i.tegra_i2c_release_dma.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_release_dma.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %43) #9
  %44 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rx_dma_chan.i, align 8
  br label %tegra_i2c_release_dma.exit

tegra_i2c_release_dma.exit:                       ; preds = %if.then9.i, %if.end7.i.tegra_i2c_release_dma.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %err.0)
  %cmp.not = icmp eq i32 %err.0, -517
  br i1 %cmp.not, label %tegra_i2c_release_dma.exit.cleanup_crit_edge, label %do.end26

tegra_i2c_release_dma.exit.cleanup_crit_edge:     ; preds = %tegra_i2c_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end26:                                         ; preds = %tegra_i2c_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.26, i32 noundef %err.0) #12
  %47 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.29) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %tegra_i2c_release_dma.exit.cleanup_crit_edge, %if.end19, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end26 ], [ 0, %if.end19 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -517, %tegra_i2c_release_dma.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_phys) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_init_hardware(ptr noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %call.i) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc i32 @tegra_i2c_init(ptr noundef %i2c_dev)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call2, %if.else ]
  %4 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_dev, align 8
  %call.i10 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #9
  ret i32 %ret.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_i2c_release_dma(ptr nocapture noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_buf = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 21
  %0 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_dev, align 8
  %dma_buf_size = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 19
  %4 = ptrtoint ptr %dma_buf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_buf_size, align 4
  %dma_phys = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 20
  %6 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_phys, align 8
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #9
  %8 = ptrtoint ptr %dma_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dma_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_dma_chan = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 17
  %9 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_dma_chan, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %10) #9
  %11 = ptrtoint ptr %tx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_dma_chan, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %rx_dma_chan = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 18
  %12 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_dma_chan, align 8
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %13) #9
  %14 = ptrtoint ptr %rx_dma_chan to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_dma_chan, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_i2c_release_clocks(ptr noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %multimaster_mode = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 22
  %0 = ptrtoint ptr %multimaster_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %multimaster_mode, align 8, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div_clk = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 10
  %2 = ptrtoint ptr %div_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %div_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nclocks = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 9
  %4 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nclocks, align 8
  %clocks = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 8
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %clocks) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_i2c_fill_tx_fifo(ptr nocapture noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_buf_remaining = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 13
  %0 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_buf_remaining, align 8
  %msg_buf = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 15
  %2 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg_buf, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val)
  %hw = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %has_mst_fifo = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %has_mst_fifo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_mst_fifo, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %base.i2 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %8 = ptrtoint ptr %base.i2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i2, align 4
  %is_dvc.i.i3 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %10 = ptrtoint ptr %is_dvc.i.i3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_dvc.i.i3, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i4 = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i4, label %if.else.i.i, label %if.then.i2c_readl.exit_crit_edge

if.then.i2c_readl.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %12 = ptrtoint ptr %is_vi.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_vi.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i.i = icmp eq i8 %13, 0
  %spec.select35 = select i1 %tobool1.not.i.i, i32 184, i32 3808
  br label %i2c_readl.exit

i2c_readl.exit:                                   ; preds = %if.else.i.i, %if.then.i2c_readl.exit_crit_edge
  %reg.addr.0.i.i = phi i32 [ 200, %if.then.i2c_readl.exit_crit_edge ], [ %spec.select35, %if.else.i.i ]
  %add.ptr.i = getelementptr i8, ptr %9, i32 %reg.addr.0.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !183
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  %and = lshr i32 %15, 16
  %shr = and i32 %and, 255
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i.i4, label %if.else.i.i8, label %if.else.i2c_readl.exit12_crit_edge

if.else.i2c_readl.exit12_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit12

if.else.i.i8:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i6 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %17 = ptrtoint ptr %is_vi.i.i6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_vi.i.i6, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i.i7 = icmp eq i8 %18, 0
  %spec.select36 = select i1 %tobool1.not.i.i7, i32 96, i32 3456
  br label %i2c_readl.exit12

i2c_readl.exit12:                                 ; preds = %if.else.i.i8, %if.else.i2c_readl.exit12_crit_edge
  %reg.addr.0.i.i10 = phi i32 [ 112, %if.else.i2c_readl.exit12_crit_edge ], [ %spec.select36, %if.else.i.i8 ]
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 %reg.addr.0.i.i10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #9, !srcloc !183
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val, align 4
  %and30 = lshr i32 %20, 4
  %shr31 = and i32 %and30, 15
  br label %if.end

if.end:                                           ; preds = %i2c_readl.exit12, %i2c_readl.exit
  %tx_fifo_avail.0 = phi i32 [ %shr, %i2c_readl.exit ], [ %shr31, %i2c_readl.exit12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %tobool32.not = icmp ult i32 %1, 4
  br i1 %tobool32.not, label %if.end.if.end46_crit_edge, label %if.then33

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then33:                                        ; preds = %if.end
  %div1 = lshr i32 %1, 2
  %22 = tail call i32 @llvm.umin.i32(i32 %div1, i32 %tx_fifo_avail.0)
  %mul = shl nuw nsw i32 %22, 2
  %sub = sub i32 %1, %mul
  %sub36 = sub nsw i32 %tx_fifo_avail.0, %22
  %23 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %msg_buf_remaining, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %24 = ptrtoint ptr %msg_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr, ptr %msg_buf, align 8
  %is_vi = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %25 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool40.not = icmp eq i8 %26, 0
  br i1 %tobool40.not, label %if.else42, label %if.then41

if.then41:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not1.i = icmp eq i32 %22, 0
  br i1 %tobool.not1.i, label %if.then41.if.end46_crit_edge, label %while.body.lr.ph.i

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

while.body.lr.ph.i:                               ; preds = %if.then41
  %base.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %is_dvc.i.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  br label %while.body.i

while.body.i:                                     ; preds = %i2c_writel.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %data32.03.i = phi ptr [ %3, %while.body.lr.ph.i ], [ %incdec.ptr.i, %i2c_writel.exit.i.while.body.i_crit_edge ]
  %len.addr.02.i = phi i32 [ %22, %while.body.lr.ph.i ], [ %dec.i, %i2c_writel.exit.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.02.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %data32.03.i, i32 1
  %27 = ptrtoint ptr %data32.03.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data32.03.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %32 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %while.body.i.tegra_i2c_reg_addr.exit.i.i_crit_edge

while.body.i.tegra_i2c_reg_addr.exit.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i

if.else.i.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool1.not.i.i.i = icmp eq i8 %35, 0
  %spec.select.i = select i1 %tobool1.not.i.i.i, i32 80, i32 3392
  br label %tegra_i2c_reg_addr.exit.i.i

tegra_i2c_reg_addr.exit.i.i:                      ; preds = %if.else.i.i.i, %while.body.i.tegra_i2c_reg_addr.exit.i.i_crit_edge
  %reg.addr.0.i.i.i = phi i32 [ 96, %while.body.i.tegra_i2c_reg_addr.exit.i.i_crit_edge ], [ %spec.select.i, %if.else.i.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %reg.addr.0.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #9, !srcloc !184
  %36 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i13 = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i13, label %tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge, label %if.then5.i.i

tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit.i

if.then5.i.i:                                     ; preds = %tegra_i2c_reg_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %40 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i36.i.i = icmp eq i8 %41, 0
  %spec.select.i.i = select i1 %tobool.not.i36.i.i, i32 3488, i32 120
  %add.ptr9.i.i = getelementptr i8, ptr %39, i32 %spec.select.i.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #9, !srcloc !183
  br label %i2c_writel.exit.i

i2c_writel.exit.i:                                ; preds = %if.then5.i.i, %tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %i2c_writel.exit.i.if.end46_crit_edge, label %i2c_writel.exit.i.while.body.i_crit_edge

i2c_writel.exit.i.while.body.i_crit_edge:         ; preds = %i2c_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

i2c_writel.exit.i.if.end46_crit_edge:             ; preds = %i2c_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.else42:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %base.i14 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %43 = ptrtoint ptr %base.i14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i14, align 4
  %is_dvc.i.i15 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %45 = ptrtoint ptr %is_dvc.i.i15 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_dvc.i.i15, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i16 = icmp eq i8 %46, 0
  %spec.select37 = select i1 %tobool.not.i.i16, i32 80, i32 96
  %add.ptr.i22 = getelementptr i8, ptr %44, i32 %spec.select37
  tail call void @__raw_writesl(ptr noundef %add.ptr.i22, ptr noundef %3, i32 noundef %22) #9
  br label %if.end46

if.end46:                                         ; preds = %if.else42, %i2c_writel.exit.i.if.end46_crit_edge, %if.then41.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %tx_fifo_avail.1 = phi i32 [ %tx_fifo_avail.0, %if.end.if.end46_crit_edge ], [ %sub36, %if.else42 ], [ %sub36, %if.then41.if.end46_crit_edge ], [ %sub36, %i2c_writel.exit.i.if.end46_crit_edge ]
  %buf.0 = phi ptr [ %3, %if.end.if.end46_crit_edge ], [ %add.ptr, %if.else42 ], [ %add.ptr, %if.then41.if.end46_crit_edge ], [ %add.ptr, %i2c_writel.exit.i.if.end46_crit_edge ]
  %buf_remaining.0 = phi i32 [ %1, %if.end.if.end46_crit_edge ], [ %sub, %if.else42 ], [ %sub, %if.then41.if.end46_crit_edge ], [ %sub, %i2c_writel.exit.i.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_fifo_avail.1)
  %cmp47.not = icmp eq i32 %tx_fifo_avail.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_remaining.0)
  %cmp48.not = icmp eq i32 %buf_remaining.0, 0
  %or.cond = select i1 %cmp47.not, i1 true, i1 %cmp48.not
  br i1 %or.cond, label %if.end46.if.end52_crit_edge, label %if.then49

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then49:                                        ; preds = %if.end46
  %47 = call ptr @memcpy(ptr %val, ptr %buf.0, i32 %buf_remaining.0)
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %val.0.val.0.val.0.54 = load i32, ptr %val, align 4
  %49 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %msg_buf_remaining, align 8
  %50 = ptrtoint ptr %msg_buf to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %msg_buf, align 8
  %base.i23 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %51 = ptrtoint ptr %base.i23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i23, align 4
  %is_dvc.i.i24 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %53 = ptrtoint ptr %is_dvc.i.i24 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %is_dvc.i.i24, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i25 = icmp eq i8 %54, 0
  br i1 %tobool.not.i.i25, label %if.else.i.i29, label %if.then49.tegra_i2c_reg_addr.exit.i_crit_edge

if.then49.tegra_i2c_reg_addr.exit.i_crit_edge:    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i

if.else.i.i29:                                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i27 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %55 = ptrtoint ptr %is_vi.i.i27 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %is_vi.i.i27, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool1.not.i.i28 = icmp eq i8 %56, 0
  %spec.select38 = select i1 %tobool1.not.i.i28, i32 80, i32 3392
  br label %tegra_i2c_reg_addr.exit.i

tegra_i2c_reg_addr.exit.i:                        ; preds = %if.else.i.i29, %if.then49.tegra_i2c_reg_addr.exit.i_crit_edge
  %reg.addr.0.i.i31 = phi i32 [ 96, %if.then49.tegra_i2c_reg_addr.exit.i_crit_edge ], [ %spec.select38, %if.else.i.i29 ]
  %add.ptr.i32 = getelementptr i8, ptr %52, i32 %reg.addr.0.i.i31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %val.0.val.0.val.0.54) #9, !srcloc !184
  %is_vi.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %57 = ptrtoint ptr %is_vi.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_vi.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i33 = icmp eq i8 %58, 0
  br i1 %tobool.not.i33, label %tegra_i2c_reg_addr.exit.i.if.end52_crit_edge, label %if.then5.i

tegra_i2c_reg_addr.exit.i.if.end52_crit_edge:     ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then5.i:                                       ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %base.i23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i23, align 4
  %61 = ptrtoint ptr %is_dvc.i.i24 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %is_dvc.i.i24, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i36.i = icmp eq i8 %62, 0
  %spec.select.i34 = select i1 %tobool.not.i36.i, i32 3488, i32 120
  %add.ptr9.i = getelementptr i8, ptr %60, i32 %spec.select.i34
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #9, !srcloc !183
  br label %if.end52

if.end52:                                         ; preds = %if.then5.i, %tegra_i2c_reg_addr.exit.i.if.end52_crit_edge, %if.end46.if.end52_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_i2c_mask_irq(ptr nocapture noundef readonly %i2c_dev, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %is_dvc.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %2 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.i2c_readl.exit_crit_edge

entry.i2c_readl.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %4 = ptrtoint ptr %is_vi.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_vi.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i.i = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool1.not.i.i, i32 100, i32 3472
  br label %i2c_readl.exit

i2c_readl.exit:                                   ; preds = %if.else.i.i, %entry.i2c_readl.exit_crit_edge
  %reg.addr.0.i.i = phi i32 [ 116, %entry.i2c_readl.exit_crit_edge ], [ %spec.select, %if.else.i.i ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 %reg.addr.0.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !183
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %neg = xor i32 %mask, -1
  %and = and i32 %7, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i4 = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i4, label %if.else.i.i8, label %i2c_readl.exit.tegra_i2c_reg_addr.exit.i_crit_edge

i2c_readl.exit.tegra_i2c_reg_addr.exit.i_crit_edge: ; preds = %i2c_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i

if.else.i.i8:                                     ; preds = %i2c_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i6 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %13 = ptrtoint ptr %is_vi.i.i6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_vi.i.i6, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i.i7 = icmp eq i8 %14, 0
  %spec.select12 = select i1 %tobool1.not.i.i7, i32 100, i32 3472
  br label %tegra_i2c_reg_addr.exit.i

tegra_i2c_reg_addr.exit.i:                        ; preds = %if.else.i.i8, %i2c_readl.exit.tegra_i2c_reg_addr.exit.i_crit_edge
  %reg.addr.0.i.i10 = phi i32 [ 116, %i2c_readl.exit.tegra_i2c_reg_addr.exit.i_crit_edge ], [ %spec.select12, %if.else.i.i8 ]
  %add.ptr.i11 = getelementptr i8, ptr %10, i32 %reg.addr.0.i.i10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %8) #9, !srcloc !184
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %17 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i22.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i22.i, label %if.else.i29.i, label %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge

tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit

if.else.i29.i:                                    ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %19 = ptrtoint ptr %is_vi.i27.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_vi.i27.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i28.i = icmp eq i8 %20, 0
  %spec.select13 = select i1 %tobool1.not.i28.i, i32 100, i32 3472
  br label %i2c_writel.exit

i2c_writel.exit:                                  ; preds = %if.else.i29.i, %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge
  %reg.addr.0.i33.i = phi i32 [ 116, %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge ], [ %spec.select13, %if.else.i29.i ]
  %add.ptr3.i = getelementptr i8, ptr %16, i32 %reg.addr.0.i33.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !183
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_poll_register(ptr nocapture noundef readonly %i2c_dev, i32 noundef %reg, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %is_dvc.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %2 = ptrtoint ptr %is_dvc.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_dvc.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %reg)
  %cmp.i = icmp ugt i32 %reg, 79
  %cond.i = select i1 %cmp.i, i32 16, i32 64
  %add.i = add i32 %cond.i, %reg
  br label %tegra_i2c_reg_addr.exit

if.else.i:                                        ; preds = %entry
  %is_vi.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %4 = ptrtoint ptr %is_vi.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_vi.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.else.i.tegra_i2c_reg_addr.exit_crit_edge, label %if.then2.i

if.else.i.tegra_i2c_reg_addr.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl i32 %reg, 2
  %add3.i = add i32 %shl.i, 3072
  br label %tegra_i2c_reg_addr.exit

tegra_i2c_reg_addr.exit:                          ; preds = %if.then2.i, %if.else.i.tegra_i2c_reg_addr.exit_crit_edge, %if.then.i
  %reg.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %add3.i, %if.then2.i ], [ %reg, %if.else.i.tegra_i2c_reg_addr.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 %reg.addr.0.i
  %atomic_mode = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 23
  %6 = ptrtoint ptr %atomic_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %atomic_mode, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %call1 = tail call i64 @ktime_get() #9
  %add.i1 = add i64 %call1, 1000000000
  br i1 %tobool.not, label %if.then, label %if.end31

if.then:                                          ; preds = %tegra_i2c_reg_addr.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 556) #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !183
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and13 = and i32 %9, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool12.not14 = icmp eq i32 %and13, 0
  br i1 %tobool12.not14, label %if.then.for.end.thread_crit_edge, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

if.then.for.end.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call16 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i1)
  %cmp3.i = icmp sgt i64 %call16, %add.i1
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !183
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and = and i32 %11, %mask
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then26.for.end.thread_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then26.for.end.thread_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !183
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %.pre = and i32 %13, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool30.not = icmp eq i32 %.pre, 0
  br i1 %tobool30.not, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then26.for.end.thread_crit_edge, %if.then.for.end.thread_crit_edge
  br label %cleanup

if.end31:                                         ; preds = %tegra_i2c_reg_addr.exit
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !183
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and4111 = and i32 %15, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4111)
  %tobool42.not12 = icmp eq i32 %and4111, 0
  br i1 %tobool42.not12, label %if.end31.for.end64.thread_crit_edge, label %if.end31.land.lhs.true46_crit_edge

if.end31.land.lhs.true46_crit_edge:               ; preds = %if.end31
  br label %land.lhs.true46

if.end31.for.end64.thread_crit_edge:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end64.thread

land.lhs.true46:                                  ; preds = %cond.false.land.lhs.true46_crit_edge, %if.end31.land.lhs.true46_crit_edge
  %call47 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call47, i64 %add.i1)
  %cmp3.i5 = icmp sgt i64 %call47, %add.i1
  br i1 %cmp3.i5, label %for.end64, label %cond.false

cond.false:                                       ; preds = %land.lhs.true46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !183
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and41 = and i32 %18, %mask
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %cond.false.for.end64.thread_crit_edge, label %cond.false.land.lhs.true46_crit_edge

cond.false.land.lhs.true46_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true46

cond.false.for.end64.thread_crit_edge:            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end64.thread

for.end64:                                        ; preds = %land.lhs.true46
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !183
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %.pre17 = and i32 %20, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre17)
  %tobool67.not = icmp eq i32 %.pre17, 0
  br i1 %tobool67.not, label %for.end64.for.end64.thread_crit_edge, label %for.end64.cleanup_crit_edge

for.end64.cleanup_crit_edge:                      ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end64.for.end64.thread_crit_edge:             ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end64.thread

for.end64.thread:                                 ; preds = %for.end64.for.end64.thread_crit_edge, %cond.false.for.end64.thread_crit_edge, %if.end31.for.end64.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end64.thread, %for.end64.cleanup_crit_edge, %for.end.thread, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end.cleanup_crit_edge ], [ 0, %for.end64.thread ], [ -110, %for.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_init(ptr noundef readonly %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timings = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 11
  %rst = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 3
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_reset(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %entry.if.end32_crit_edge, label %land.rhs

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %.b297 = load i1, ptr @tegra_i2c_init.__already_done, align 1
  br i1 %.b297, label %land.rhs.if.end32_crit_edge, label %if.then10, !prof !185

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tegra_i2c_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 629, i32 noundef 9, ptr noundef null) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then10, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  %is_dvc = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %2 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool40.not = icmp eq i8 %3, 0
  br i1 %tobool40.not, label %if.end32.do.end57_crit_edge, label %if.then41

if.end32.do.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

if.then41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !183
  %7 = or i32 %6, 68
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %7) #9, !srcloc !184
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !183
  %13 = or i32 %12, 262144
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !184
  br label %do.end57

do.end57:                                         ; preds = %if.then41, %if.end32.do.end57_crit_edge
  %hw = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %has_multi_master_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %has_multi_master_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_multi_master_mode, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool59.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool59.not, i32 11264, i32 142336
  %20 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #9
  %base.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %23 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end57.tegra_i2c_reg_addr.exit.i_crit_edge

do.end57.tegra_i2c_reg_addr.exit.i_crit_edge:     ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i

if.else.i.i:                                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %25 = ptrtoint ptr %is_vi.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_vi.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i.i = icmp eq i8 %26, 0
  %spec.select495 = select i1 %tobool1.not.i.i, i32 0, i32 3072
  br label %tegra_i2c_reg_addr.exit.i

tegra_i2c_reg_addr.exit.i:                        ; preds = %if.else.i.i, %do.end57.tegra_i2c_reg_addr.exit.i_crit_edge
  %reg.addr.0.i.i = phi i32 [ 64, %do.end57.tegra_i2c_reg_addr.exit.i_crit_edge ], [ %spec.select495, %if.else.i.i ]
  %add.ptr.i = getelementptr i8, ptr %22, i32 %reg.addr.0.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #9, !srcloc !184
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %29 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i22.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i22.i, label %if.else.i29.i, label %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge

tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit

if.else.i29.i:                                    ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %31 = ptrtoint ptr %is_vi.i27.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_vi.i27.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool1.not.i28.i = icmp eq i8 %32, 0
  %spec.select496 = select i1 %tobool1.not.i28.i, i32 0, i32 3072
  br label %i2c_writel.exit

i2c_writel.exit:                                  ; preds = %if.else.i29.i, %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge
  %reg.addr.0.i33.i = phi i32 [ 64, %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge ], [ %spec.select496, %if.else.i29.i ]
  %add.ptr3.i = getelementptr i8, ptr %28, i32 %reg.addr.0.i33.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !183
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %36 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i307 = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i307, label %if.else.i.i311, label %i2c_writel.exit.tegra_i2c_reg_addr.exit.i315_crit_edge

i2c_writel.exit.tegra_i2c_reg_addr.exit.i315_crit_edge: ; preds = %i2c_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i315

if.else.i.i311:                                   ; preds = %i2c_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i309 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %38 = ptrtoint ptr %is_vi.i.i309 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_vi.i.i309, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool1.not.i.i310 = icmp eq i8 %39, 0
  %spec.select497 = select i1 %tobool1.not.i.i310, i32 100, i32 3472
  br label %tegra_i2c_reg_addr.exit.i315

tegra_i2c_reg_addr.exit.i315:                     ; preds = %if.else.i.i311, %i2c_writel.exit.tegra_i2c_reg_addr.exit.i315_crit_edge
  %reg.addr.0.i.i313 = phi i32 [ 116, %i2c_writel.exit.tegra_i2c_reg_addr.exit.i315_crit_edge ], [ %spec.select497, %if.else.i.i311 ]
  %add.ptr.i314 = getelementptr i8, ptr %35, i32 %reg.addr.0.i.i313
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 0) #9, !srcloc !184
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %42 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i22.i316 = icmp eq i8 %43, 0
  br i1 %tobool.not.i22.i316, label %if.else.i29.i320, label %tegra_i2c_reg_addr.exit.i315.i2c_writel.exit324_crit_edge

tegra_i2c_reg_addr.exit.i315.i2c_writel.exit324_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i315
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit324

if.else.i29.i320:                                 ; preds = %tegra_i2c_reg_addr.exit.i315
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i318 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %44 = ptrtoint ptr %is_vi.i27.i318 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_vi.i27.i318, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool1.not.i28.i319 = icmp eq i8 %45, 0
  %spec.select498 = select i1 %tobool1.not.i28.i319, i32 100, i32 3472
  br label %i2c_writel.exit324

i2c_writel.exit324:                               ; preds = %if.else.i29.i320, %tegra_i2c_reg_addr.exit.i315.i2c_writel.exit324_crit_edge
  %reg.addr.0.i33.i322 = phi i32 [ 116, %tegra_i2c_reg_addr.exit.i315.i2c_writel.exit324_crit_edge ], [ %spec.select498, %if.else.i29.i320 ]
  %add.ptr3.i323 = getelementptr i8, ptr %41, i32 %reg.addr.0.i33.i322
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i323) #9, !srcloc !183
  %is_vi = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %47 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool63.not = icmp eq i8 %48, 0
  br i1 %tobool63.not, label %i2c_writel.exit324.if.end65_crit_edge, label %if.then64

i2c_writel.exit324.if.end65_crit_edge:            ; preds = %i2c_writel.exit324
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then64:                                        ; preds = %i2c_writel.exit324
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %51 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i.i = icmp eq i8 %52, 0
  %spec.select499 = select i1 %tobool.not.i.i.i, i32 3664, i32 164
  %add.ptr.i.i326 = getelementptr i8, ptr %50, i32 %spec.select499
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i326, i32 67239936) #9, !srcloc !184
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %55 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i22.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i22.i.i, label %if.else.i29.i.i, label %if.then64.i2c_writel.exit.i_crit_edge

if.then64.i2c_writel.exit.i_crit_edge:            ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit.i

if.else.i29.i.i:                                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool1.not.i28.i.i = icmp eq i8 %58, 0
  %spec.select305.i = select i1 %tobool1.not.i28.i.i, i32 148, i32 3664
  br label %i2c_writel.exit.i

i2c_writel.exit.i:                                ; preds = %if.else.i29.i.i, %if.then64.i2c_writel.exit.i_crit_edge
  %reg.addr.0.i33.i.i = phi i32 [ 164, %if.then64.i2c_writel.exit.i_crit_edge ], [ %spec.select305.i, %if.else.i29.i.i ]
  %add.ptr3.i.i = getelementptr i8, ptr %54, i32 %reg.addr.0.i33.i.i
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !183
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %62 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i207.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i.i207.i, label %if.else.i.i211.i, label %i2c_writel.exit.i.tegra_i2c_reg_addr.exit.i215.i_crit_edge

i2c_writel.exit.i.tegra_i2c_reg_addr.exit.i215.i_crit_edge: ; preds = %i2c_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i215.i

if.else.i.i211.i:                                 ; preds = %i2c_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool1.not.i.i210.i = icmp eq i8 %65, 0
  %spec.select306.i = select i1 %tobool1.not.i.i210.i, i32 152, i32 3680
  br label %tegra_i2c_reg_addr.exit.i215.i

tegra_i2c_reg_addr.exit.i215.i:                   ; preds = %if.else.i.i211.i, %i2c_writel.exit.i.tegra_i2c_reg_addr.exit.i215.i_crit_edge
  %reg.addr.0.i.i213.i = phi i32 [ 168, %i2c_writel.exit.i.tegra_i2c_reg_addr.exit.i215.i_crit_edge ], [ %spec.select306.i, %if.else.i.i211.i ]
  %add.ptr.i214.i = getelementptr i8, ptr %61, i32 %reg.addr.0.i.i213.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214.i, i32 67372804) #9, !srcloc !184
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %68 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i22.i216.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i22.i216.i, label %if.else.i29.i220.i, label %tegra_i2c_reg_addr.exit.i215.i.i2c_writel.exit224.i_crit_edge

tegra_i2c_reg_addr.exit.i215.i.i2c_writel.exit224.i_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i215.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit224.i

if.else.i29.i220.i:                               ; preds = %tegra_i2c_reg_addr.exit.i215.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool1.not.i28.i219.i = icmp eq i8 %71, 0
  %spec.select307.i = select i1 %tobool1.not.i28.i219.i, i32 152, i32 3680
  br label %i2c_writel.exit224.i

i2c_writel.exit224.i:                             ; preds = %if.else.i29.i220.i, %tegra_i2c_reg_addr.exit.i215.i.i2c_writel.exit224.i_crit_edge
  %reg.addr.0.i33.i222.i = phi i32 [ 168, %tegra_i2c_reg_addr.exit.i215.i.i2c_writel.exit224.i_crit_edge ], [ %spec.select307.i, %if.else.i29.i220.i ]
  %add.ptr3.i223.i = getelementptr i8, ptr %67, i32 %reg.addr.0.i33.i222.i
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i223.i) #9, !srcloc !183
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 4
  %75 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i.i227.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i.i227.i, label %if.else.i.i231.i, label %i2c_writel.exit224.i.tegra_i2c_reg_addr.exit.i235.i_crit_edge

i2c_writel.exit224.i.tegra_i2c_reg_addr.exit.i235.i_crit_edge: ; preds = %i2c_writel.exit224.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i235.i

if.else.i.i231.i:                                 ; preds = %i2c_writel.exit224.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool1.not.i.i230.i = icmp eq i8 %78, 0
  %spec.select308.i = select i1 %tobool1.not.i.i230.i, i32 156, i32 3696
  br label %tegra_i2c_reg_addr.exit.i235.i

tegra_i2c_reg_addr.exit.i235.i:                   ; preds = %if.else.i.i231.i, %i2c_writel.exit224.i.tegra_i2c_reg_addr.exit.i235.i_crit_edge
  %reg.addr.0.i.i233.i = phi i32 [ 172, %i2c_writel.exit224.i.tegra_i2c_reg_addr.exit.i235.i_crit_edge ], [ %spec.select308.i, %if.else.i.i231.i ]
  %add.ptr.i234.i = getelementptr i8, ptr %74, i32 %reg.addr.0.i.i233.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i234.i, i32 134414336) #9, !srcloc !184
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 4
  %81 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i22.i236.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i22.i236.i, label %if.else.i29.i240.i, label %tegra_i2c_reg_addr.exit.i235.i.i2c_writel.exit244.i_crit_edge

tegra_i2c_reg_addr.exit.i235.i.i2c_writel.exit244.i_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit244.i

if.else.i29.i240.i:                               ; preds = %tegra_i2c_reg_addr.exit.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool1.not.i28.i239.i = icmp eq i8 %84, 0
  %spec.select309.i = select i1 %tobool1.not.i28.i239.i, i32 156, i32 3696
  br label %i2c_writel.exit244.i

i2c_writel.exit244.i:                             ; preds = %if.else.i29.i240.i, %tegra_i2c_reg_addr.exit.i235.i.i2c_writel.exit244.i_crit_edge
  %reg.addr.0.i33.i242.i = phi i32 [ 172, %tegra_i2c_reg_addr.exit.i235.i.i2c_writel.exit244.i_crit_edge ], [ %spec.select309.i, %if.else.i29.i240.i ]
  %add.ptr3.i243.i = getelementptr i8, ptr %80, i32 %reg.addr.0.i33.i242.i
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i243.i) #9, !srcloc !183
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %88 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i.i247.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i.i247.i, label %if.else.i.i251.i, label %i2c_writel.exit244.i.tegra_i2c_reg_addr.exit.i255.i_crit_edge

i2c_writel.exit244.i.tegra_i2c_reg_addr.exit.i255.i_crit_edge: ; preds = %i2c_writel.exit244.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i255.i

if.else.i.i251.i:                                 ; preds = %i2c_writel.exit244.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool1.not.i.i250.i = icmp eq i8 %91, 0
  %spec.select310.i = select i1 %tobool1.not.i.i250.i, i32 160, i32 3712
  br label %tegra_i2c_reg_addr.exit.i255.i

tegra_i2c_reg_addr.exit.i255.i:                   ; preds = %if.else.i.i251.i, %i2c_writel.exit244.i.tegra_i2c_reg_addr.exit.i255.i_crit_edge
  %reg.addr.0.i.i253.i = phi i32 [ 176, %i2c_writel.exit244.i.tegra_i2c_reg_addr.exit.i255.i_crit_edge ], [ %spec.select310.i, %if.else.i.i251.i ]
  %add.ptr.i254.i = getelementptr i8, ptr %87, i32 %reg.addr.0.i.i253.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i254.i, i32 185273088) #9, !srcloc !184
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i, align 4
  %94 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i22.i256.i = icmp eq i8 %95, 0
  br i1 %tobool.not.i22.i256.i, label %if.else.i29.i260.i, label %tegra_i2c_reg_addr.exit.i255.i.i2c_writel.exit264.i_crit_edge

tegra_i2c_reg_addr.exit.i255.i.i2c_writel.exit264.i_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i255.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit264.i

if.else.i29.i260.i:                               ; preds = %tegra_i2c_reg_addr.exit.i255.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool1.not.i28.i259.i = icmp eq i8 %97, 0
  %spec.select311.i = select i1 %tobool1.not.i28.i259.i, i32 160, i32 3712
  br label %i2c_writel.exit264.i

i2c_writel.exit264.i:                             ; preds = %if.else.i29.i260.i, %tegra_i2c_reg_addr.exit.i255.i.i2c_writel.exit264.i_crit_edge
  %reg.addr.0.i33.i262.i = phi i32 [ 176, %tegra_i2c_reg_addr.exit.i255.i.i2c_writel.exit264.i_crit_edge ], [ %spec.select311.i, %if.else.i29.i260.i ]
  %add.ptr3.i263.i = getelementptr i8, ptr %93, i32 %reg.addr.0.i33.i262.i
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i263.i) #9, !srcloc !183
  %99 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i, align 4
  %101 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i.i267.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i.i267.i, label %if.else.i.i271.i, label %i2c_writel.exit264.i.tegra_i2c_reg_addr.exit.i275.i_crit_edge

i2c_writel.exit264.i.tegra_i2c_reg_addr.exit.i275.i_crit_edge: ; preds = %i2c_writel.exit264.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i275.i

if.else.i.i271.i:                                 ; preds = %i2c_writel.exit264.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool1.not.i.i270.i = icmp eq i8 %104, 0
  %spec.select312.i = select i1 %tobool1.not.i.i270.i, i32 132, i32 3600
  br label %tegra_i2c_reg_addr.exit.i275.i

tegra_i2c_reg_addr.exit.i275.i:                   ; preds = %if.else.i.i271.i, %i2c_writel.exit264.i.tegra_i2c_reg_addr.exit.i275.i_crit_edge
  %reg.addr.0.i.i273.i = phi i32 [ 148, %i2c_writel.exit264.i.tegra_i2c_reg_addr.exit.i275.i_crit_edge ], [ %spec.select312.i, %if.else.i.i271.i ]
  %add.ptr.i274.i = getelementptr i8, ptr %100, i32 %reg.addr.0.i.i273.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.i, i32 67111168) #9, !srcloc !184
  %105 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i, align 4
  %107 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i22.i276.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i22.i276.i, label %if.else.i29.i280.i, label %tegra_i2c_reg_addr.exit.i275.i.i2c_writel.exit284.i_crit_edge

tegra_i2c_reg_addr.exit.i275.i.i2c_writel.exit284.i_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i275.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit284.i

if.else.i29.i280.i:                               ; preds = %tegra_i2c_reg_addr.exit.i275.i
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool1.not.i28.i279.i = icmp eq i8 %110, 0
  %spec.select313.i = select i1 %tobool1.not.i28.i279.i, i32 132, i32 3600
  br label %i2c_writel.exit284.i

i2c_writel.exit284.i:                             ; preds = %if.else.i29.i280.i, %tegra_i2c_reg_addr.exit.i275.i.i2c_writel.exit284.i_crit_edge
  %reg.addr.0.i33.i282.i = phi i32 [ 148, %tegra_i2c_reg_addr.exit.i275.i.i2c_writel.exit284.i_crit_edge ], [ %spec.select313.i, %if.else.i29.i280.i ]
  %add.ptr3.i283.i = getelementptr i8, ptr %106, i32 %reg.addr.0.i33.i282.i
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i283.i) #9, !srcloc !183
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i, align 4
  %114 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i287.i = icmp eq i8 %115, 0
  br i1 %tobool.not.i.i287.i, label %if.else.i.i291.i, label %i2c_writel.exit284.i.tegra_i2c_reg_addr.exit.i295.i_crit_edge

i2c_writel.exit284.i.tegra_i2c_reg_addr.exit.i295.i_crit_edge: ; preds = %i2c_writel.exit284.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i295.i

if.else.i.i291.i:                                 ; preds = %i2c_writel.exit284.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool1.not.i.i290.i = icmp eq i8 %117, 0
  %spec.select314.i = select i1 %tobool1.not.i.i290.i, i32 52, i32 3280
  br label %tegra_i2c_reg_addr.exit.i295.i

tegra_i2c_reg_addr.exit.i295.i:                   ; preds = %if.else.i.i291.i, %i2c_writel.exit284.i.tegra_i2c_reg_addr.exit.i295.i_crit_edge
  %reg.addr.0.i.i293.i = phi i32 [ 116, %i2c_writel.exit284.i.tegra_i2c_reg_addr.exit.i295.i_crit_edge ], [ %spec.select314.i, %if.else.i.i291.i ]
  %add.ptr.i294.i = getelementptr i8, ptr %113, i32 %reg.addr.0.i.i293.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i294.i, i32 0) #9, !srcloc !184
  %118 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i, align 4
  %120 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i22.i296.i = icmp eq i8 %121, 0
  br i1 %tobool.not.i22.i296.i, label %if.else.i29.i300.i, label %tegra_i2c_reg_addr.exit.i295.i.tegra_i2c_vi_init.exit_crit_edge

tegra_i2c_reg_addr.exit.i295.i.tegra_i2c_vi_init.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i295.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_vi_init.exit

if.else.i29.i300.i:                               ; preds = %tegra_i2c_reg_addr.exit.i295.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool1.not.i28.i299.i = icmp eq i8 %123, 0
  %spec.select315.i = select i1 %tobool1.not.i28.i299.i, i32 52, i32 3280
  br label %tegra_i2c_vi_init.exit

tegra_i2c_vi_init.exit:                           ; preds = %if.else.i29.i300.i, %tegra_i2c_reg_addr.exit.i295.i.tegra_i2c_vi_init.exit_crit_edge
  %reg.addr.0.i33.i302.i = phi i32 [ 116, %tegra_i2c_reg_addr.exit.i295.i.tegra_i2c_vi_init.exit_crit_edge ], [ %spec.select315.i, %if.else.i29.i300.i ]
  %add.ptr3.i303.i = getelementptr i8, ptr %119, i32 %reg.addr.0.i33.i302.i
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i303.i) #9, !srcloc !183
  br label %if.end65

if.end65:                                         ; preds = %tegra_i2c_vi_init.exit, %i2c_writel.exit324.if.end65_crit_edge
  %125 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %126)
  %inbounds78 = icmp ult i32 %126, 100001
  %127 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hw, align 8
  br i1 %inbounds78, label %sw.bb75, label %sw.caserange

if.then70:                                        ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #11
  %clk_divisor_fast_plus_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %128, i32 0, i32 6
  br label %do.body88

sw.caserange:                                     ; preds = %if.end65
  %tlow_fast_fastplus_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %128, i32 0, i32 15
  %129 = ptrtoint ptr %tlow_fast_fastplus_mode to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tlow_fast_fastplus_mode, align 4
  %thigh_fast_fastplus_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %128, i32 0, i32 16
  %131 = ptrtoint ptr %thigh_fast_fastplus_mode to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %thigh_fast_fastplus_mode, align 4
  %setup_hold_time_fast_fast_plus_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %128, i32 0, i32 18
  %133 = ptrtoint ptr %setup_hold_time_fast_fast_plus_mode to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %setup_hold_time_fast_fast_plus_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %126)
  %cmp = icmp ugt i32 %126, 400000
  br i1 %cmp, label %if.then70, label %if.else72

if.else72:                                        ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #11
  %clk_divisor_fast_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %128, i32 0, i32 5
  br label %do.body88

sw.bb75:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %tlow_std_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %128, i32 0, i32 13
  %135 = ptrtoint ptr %tlow_std_mode to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tlow_std_mode, align 4
  %thigh_std_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %128, i32 0, i32 14
  %137 = ptrtoint ptr %thigh_std_mode to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %thigh_std_mode, align 4
  %setup_hold_time_std_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %128, i32 0, i32 17
  %139 = ptrtoint ptr %setup_hold_time_std_mode to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %setup_hold_time_std_mode, align 4
  %clk_divisor_std_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %128, i32 0, i32 4
  br label %do.body88

do.body88:                                        ; preds = %sw.bb75, %if.else72, %if.then70
  %non_hs_mode.0.in = phi ptr [ %clk_divisor_std_mode, %sw.bb75 ], [ %clk_divisor_fast_plus_mode, %if.then70 ], [ %clk_divisor_fast_mode, %if.else72 ]
  %thigh.0 = phi i32 [ %138, %sw.bb75 ], [ %132, %if.then70 ], [ %132, %if.else72 ]
  %tlow.0 = phi i32 [ %136, %sw.bb75 ], [ %130, %if.then70 ], [ %130, %if.else72 ]
  %tsu_thd.0 = phi i32 [ %140, %sw.bb75 ], [ %134, %if.then70 ], [ %134, %if.else72 ]
  %141 = ptrtoint ptr %non_hs_mode.0.in to i32
  call void @__asan_load4_noabort(i32 %141)
  %non_hs_mode.0 = load i32, ptr %non_hs_mode.0.in, align 4
  %142 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw, align 8
  %clk_divisor_hs_mode = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %clk_divisor_hs_mode to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %clk_divisor_hs_mode, align 4
  %and106 = and i32 %145, 65535
  %shl129 = shl i32 %non_hs_mode.0, 16
  %or131 = or i32 %and106, %shl129
  %146 = tail call i32 @llvm.bswap.i32(i32 %or131) #9
  %147 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i, align 4
  %149 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i.i329 = icmp eq i8 %150, 0
  br i1 %tobool.not.i.i329, label %if.else.i.i333, label %do.body88.tegra_i2c_reg_addr.exit.i337_crit_edge

do.body88.tegra_i2c_reg_addr.exit.i337_crit_edge: ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i337

if.else.i.i333:                                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool1.not.i.i332 = icmp eq i8 %152, 0
  %spec.select500 = select i1 %tobool1.not.i.i332, i32 108, i32 3504
  br label %tegra_i2c_reg_addr.exit.i337

tegra_i2c_reg_addr.exit.i337:                     ; preds = %if.else.i.i333, %do.body88.tegra_i2c_reg_addr.exit.i337_crit_edge
  %reg.addr.0.i.i335 = phi i32 [ 124, %do.body88.tegra_i2c_reg_addr.exit.i337_crit_edge ], [ %spec.select500, %if.else.i.i333 ]
  %add.ptr.i336 = getelementptr i8, ptr %148, i32 %reg.addr.0.i.i335
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i336, i32 %146) #9, !srcloc !184
  %153 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i, align 4
  %155 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i22.i338 = icmp eq i8 %156, 0
  br i1 %tobool.not.i22.i338, label %if.else.i29.i342, label %tegra_i2c_reg_addr.exit.i337.i2c_writel.exit346_crit_edge

tegra_i2c_reg_addr.exit.i337.i2c_writel.exit346_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i337
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit346

if.else.i29.i342:                                 ; preds = %tegra_i2c_reg_addr.exit.i337
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool1.not.i28.i341 = icmp eq i8 %158, 0
  %spec.select501 = select i1 %tobool1.not.i28.i341, i32 108, i32 3504
  br label %i2c_writel.exit346

i2c_writel.exit346:                               ; preds = %if.else.i29.i342, %tegra_i2c_reg_addr.exit.i337.i2c_writel.exit346_crit_edge
  %reg.addr.0.i33.i344 = phi i32 [ 124, %tegra_i2c_reg_addr.exit.i337.i2c_writel.exit346_crit_edge ], [ %spec.select501, %if.else.i29.i342 ]
  %add.ptr3.i345 = getelementptr i8, ptr %154, i32 %reg.addr.0.i33.i344
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i345) #9, !srcloc !183
  %160 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw, align 8
  %has_interface_timing_reg = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %161, i32 0, i32 20
  %162 = ptrtoint ptr %has_interface_timing_reg to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %has_interface_timing_reg, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool133.not = icmp eq i8 %163, 0
  br i1 %tobool133.not, label %i2c_writel.exit346.if.end184_crit_edge, label %do.end179

i2c_writel.exit346.if.end184_crit_edge:           ; preds = %i2c_writel.exit346
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

do.end179:                                        ; preds = %i2c_writel.exit346
  %shl157 = shl i32 %thigh.0, 8
  %and158 = and i32 %shl157, 16128
  %and182 = and i32 %tlow.0, 63
  %or183 = or i32 %and158, %and182
  %164 = tail call i32 @llvm.bswap.i32(i32 %or183) #9
  %165 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i, align 4
  %167 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i.i349 = icmp eq i8 %168, 0
  br i1 %tobool.not.i.i349, label %if.else.i.i353, label %do.end179.tegra_i2c_reg_addr.exit.i357_crit_edge

do.end179.tegra_i2c_reg_addr.exit.i357_crit_edge: ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i357

if.else.i.i353:                                   ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool1.not.i.i352 = icmp eq i8 %170, 0
  %spec.select502 = select i1 %tobool1.not.i.i352, i32 148, i32 3664
  br label %tegra_i2c_reg_addr.exit.i357

tegra_i2c_reg_addr.exit.i357:                     ; preds = %if.else.i.i353, %do.end179.tegra_i2c_reg_addr.exit.i357_crit_edge
  %reg.addr.0.i.i355 = phi i32 [ 164, %do.end179.tegra_i2c_reg_addr.exit.i357_crit_edge ], [ %spec.select502, %if.else.i.i353 ]
  %add.ptr.i356 = getelementptr i8, ptr %166, i32 %reg.addr.0.i.i355
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356, i32 %164) #9, !srcloc !184
  %171 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base.i, align 4
  %173 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i22.i358 = icmp eq i8 %174, 0
  br i1 %tobool.not.i22.i358, label %if.else.i29.i362, label %tegra_i2c_reg_addr.exit.i357.i2c_writel.exit366_crit_edge

tegra_i2c_reg_addr.exit.i357.i2c_writel.exit366_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i357
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit366

if.else.i29.i362:                                 ; preds = %tegra_i2c_reg_addr.exit.i357
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool1.not.i28.i361 = icmp eq i8 %176, 0
  %spec.select503 = select i1 %tobool1.not.i28.i361, i32 148, i32 3664
  br label %i2c_writel.exit366

i2c_writel.exit366:                               ; preds = %if.else.i29.i362, %tegra_i2c_reg_addr.exit.i357.i2c_writel.exit366_crit_edge
  %reg.addr.0.i33.i364 = phi i32 [ 164, %tegra_i2c_reg_addr.exit.i357.i2c_writel.exit366_crit_edge ], [ %spec.select503, %if.else.i29.i362 ]
  %add.ptr3.i365 = getelementptr i8, ptr %172, i32 %reg.addr.0.i33.i364
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i365) #9, !srcloc !183
  br label %if.end184

if.end184:                                        ; preds = %i2c_writel.exit366, %i2c_writel.exit346.if.end184_crit_edge
  %178 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hw, align 8
  %has_interface_timing_reg186 = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %179, i32 0, i32 20
  %180 = ptrtoint ptr %has_interface_timing_reg186 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %has_interface_timing_reg186, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool187.not = icmp eq i8 %181, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tsu_thd.0)
  %tobool188.not = icmp eq i32 %tsu_thd.0, 0
  %or.cond304 = select i1 %tobool187.not, i1 true, i1 %tobool188.not
  br i1 %or.cond304, label %if.end184.if.end190_crit_edge, label %if.then189

if.end184.if.end190_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

if.then189:                                       ; preds = %if.end184
  %182 = tail call i32 @llvm.bswap.i32(i32 %tsu_thd.0) #9
  %183 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i, align 4
  %185 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i.i369 = icmp eq i8 %186, 0
  br i1 %tobool.not.i.i369, label %if.else.i.i373, label %if.then189.tegra_i2c_reg_addr.exit.i377_crit_edge

if.then189.tegra_i2c_reg_addr.exit.i377_crit_edge: ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i377

if.else.i.i373:                                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  %187 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool1.not.i.i372 = icmp eq i8 %188, 0
  %spec.select504 = select i1 %tobool1.not.i.i372, i32 152, i32 3680
  br label %tegra_i2c_reg_addr.exit.i377

tegra_i2c_reg_addr.exit.i377:                     ; preds = %if.else.i.i373, %if.then189.tegra_i2c_reg_addr.exit.i377_crit_edge
  %reg.addr.0.i.i375 = phi i32 [ 168, %if.then189.tegra_i2c_reg_addr.exit.i377_crit_edge ], [ %spec.select504, %if.else.i.i373 ]
  %add.ptr.i376 = getelementptr i8, ptr %184, i32 %reg.addr.0.i.i375
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i376, i32 %182) #9, !srcloc !184
  %189 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i, align 4
  %191 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i22.i378 = icmp eq i8 %192, 0
  br i1 %tobool.not.i22.i378, label %if.else.i29.i382, label %tegra_i2c_reg_addr.exit.i377.i2c_writel.exit386_crit_edge

tegra_i2c_reg_addr.exit.i377.i2c_writel.exit386_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i377
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit386

if.else.i29.i382:                                 ; preds = %tegra_i2c_reg_addr.exit.i377
  call void @__sanitizer_cov_trace_pc() #11
  %193 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool1.not.i28.i381 = icmp eq i8 %194, 0
  %spec.select505 = select i1 %tobool1.not.i28.i381, i32 152, i32 3680
  br label %i2c_writel.exit386

i2c_writel.exit386:                               ; preds = %if.else.i29.i382, %tegra_i2c_reg_addr.exit.i377.i2c_writel.exit386_crit_edge
  %reg.addr.0.i33.i384 = phi i32 [ 168, %tegra_i2c_reg_addr.exit.i377.i2c_writel.exit386_crit_edge ], [ %spec.select505, %if.else.i29.i382 ]
  %add.ptr3.i385 = getelementptr i8, ptr %190, i32 %reg.addr.0.i33.i384
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i385) #9, !srcloc !183
  br label %if.end190

if.end190:                                        ; preds = %i2c_writel.exit386, %if.end184.if.end190_crit_edge
  %add = add i32 %thigh.0, 2
  %add191 = add i32 %add, %tlow.0
  %add192 = add i32 %non_hs_mode.0, 1
  %mul = mul i32 %add192, %add191
  %div_clk = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 10
  %196 = ptrtoint ptr %div_clk to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %div_clk, align 4
  %198 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %timings, align 4
  %mul194 = mul i32 %mul, %199
  %call195 = tail call i32 @clk_set_rate(ptr noundef %197, i32 noundef %mul194) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end201, label %do.end200

do.end200:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #11
  %200 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %i2c_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.34, i32 noundef %call195) #12
  br label %cleanup

if.end201:                                        ; preds = %if.end190
  %202 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool203.not = icmp eq i8 %203, 0
  br i1 %tobool203.not, label %land.lhs.true204, label %if.end201.if.end210_crit_edge

if.end201.if.end210_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end210

land.lhs.true204:                                 ; preds = %if.end201
  %204 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool206.not = icmp eq i8 %205, 0
  br i1 %tobool206.not, label %i2c_readl.exit, label %land.lhs.true204.if.end210_crit_edge

land.lhs.true204.if.end210_crit_edge:             ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end210

i2c_readl.exit:                                   ; preds = %land.lhs.true204
  %206 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %base.i, align 4
  %add.ptr.i396 = getelementptr i8, ptr %207, i32 32
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i396) #9, !srcloc !183
  %209 = or i32 %208, 100663296
  %210 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %base.i, align 4
  %212 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool.not.i.i400 = icmp eq i8 %213, 0
  br i1 %tobool.not.i.i400, label %if.else.i.i404, label %i2c_readl.exit.tegra_i2c_reg_addr.exit.i408_crit_edge

i2c_readl.exit.tegra_i2c_reg_addr.exit.i408_crit_edge: ; preds = %i2c_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i408

if.else.i.i404:                                   ; preds = %i2c_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %214 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool1.not.i.i403 = icmp eq i8 %215, 0
  %spec.select506 = select i1 %tobool1.not.i.i403, i32 32, i32 3200
  br label %tegra_i2c_reg_addr.exit.i408

tegra_i2c_reg_addr.exit.i408:                     ; preds = %if.else.i.i404, %i2c_readl.exit.tegra_i2c_reg_addr.exit.i408_crit_edge
  %reg.addr.0.i.i406 = phi i32 [ 96, %i2c_readl.exit.tegra_i2c_reg_addr.exit.i408_crit_edge ], [ %spec.select506, %if.else.i.i404 ]
  %add.ptr.i407 = getelementptr i8, ptr %211, i32 %reg.addr.0.i.i406
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i407, i32 %209) #9, !srcloc !184
  %216 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %base.i, align 4
  %218 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool.not.i22.i409 = icmp eq i8 %219, 0
  br i1 %tobool.not.i22.i409, label %if.else.i29.i413, label %tegra_i2c_reg_addr.exit.i408.i2c_writel.exit417_crit_edge

tegra_i2c_reg_addr.exit.i408.i2c_writel.exit417_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit417

if.else.i29.i413:                                 ; preds = %tegra_i2c_reg_addr.exit.i408
  call void @__sanitizer_cov_trace_pc() #11
  %220 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool1.not.i28.i412 = icmp eq i8 %221, 0
  %spec.select507 = select i1 %tobool1.not.i28.i412, i32 32, i32 3200
  br label %i2c_writel.exit417

i2c_writel.exit417:                               ; preds = %if.else.i29.i413, %tegra_i2c_reg_addr.exit.i408.i2c_writel.exit417_crit_edge
  %reg.addr.0.i33.i415 = phi i32 [ 96, %tegra_i2c_reg_addr.exit.i408.i2c_writel.exit417_crit_edge ], [ %spec.select507, %if.else.i29.i413 ]
  %add.ptr3.i416 = getelementptr i8, ptr %217, i32 %reg.addr.0.i33.i415
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i416) #9, !srcloc !183
  %223 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %base.i, align 4
  %225 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool.not.i.i420 = icmp eq i8 %226, 0
  br i1 %tobool.not.i.i420, label %if.else.i.i424, label %i2c_writel.exit417.tegra_i2c_reg_addr.exit.i428_crit_edge

i2c_writel.exit417.tegra_i2c_reg_addr.exit.i428_crit_edge: ; preds = %i2c_writel.exit417
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i428

if.else.i.i424:                                   ; preds = %i2c_writel.exit417
  call void @__sanitizer_cov_trace_pc() #11
  %227 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool1.not.i.i423 = icmp eq i8 %228, 0
  %spec.select508 = select i1 %tobool1.not.i.i423, i32 44, i32 3248
  br label %tegra_i2c_reg_addr.exit.i428

tegra_i2c_reg_addr.exit.i428:                     ; preds = %if.else.i.i424, %i2c_writel.exit417.tegra_i2c_reg_addr.exit.i428_crit_edge
  %reg.addr.0.i.i426 = phi i32 [ 108, %i2c_writel.exit417.tegra_i2c_reg_addr.exit.i428_crit_edge ], [ %spec.select508, %if.else.i.i424 ]
  %add.ptr.i427 = getelementptr i8, ptr %224, i32 %reg.addr.0.i.i426
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i427, i32 -67108864) #9, !srcloc !184
  %229 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %base.i, align 4
  %231 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.i22.i429 = icmp eq i8 %232, 0
  br i1 %tobool.not.i22.i429, label %if.else.i29.i433, label %tegra_i2c_reg_addr.exit.i428.i2c_writel.exit437_crit_edge

tegra_i2c_reg_addr.exit.i428.i2c_writel.exit437_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i428
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit437

if.else.i29.i433:                                 ; preds = %tegra_i2c_reg_addr.exit.i428
  call void @__sanitizer_cov_trace_pc() #11
  %233 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool1.not.i28.i432 = icmp eq i8 %234, 0
  %spec.select509 = select i1 %tobool1.not.i28.i432, i32 44, i32 3248
  br label %i2c_writel.exit437

i2c_writel.exit437:                               ; preds = %if.else.i29.i433, %tegra_i2c_reg_addr.exit.i428.i2c_writel.exit437_crit_edge
  %reg.addr.0.i33.i435 = phi i32 [ 108, %tegra_i2c_reg_addr.exit.i428.i2c_writel.exit437_crit_edge ], [ %spec.select509, %if.else.i29.i433 ]
  %add.ptr3.i436 = getelementptr i8, ptr %230, i32 %reg.addr.0.i33.i435
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i436) #9, !srcloc !183
  %236 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %base.i, align 4
  %238 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool.not.i.i440 = icmp eq i8 %239, 0
  br i1 %tobool.not.i.i440, label %if.else.i.i444, label %i2c_writel.exit437.tegra_i2c_reg_addr.exit.i448_crit_edge

i2c_writel.exit437.tegra_i2c_reg_addr.exit.i448_crit_edge: ; preds = %i2c_writel.exit437
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i448

if.else.i.i444:                                   ; preds = %i2c_writel.exit437
  call void @__sanitizer_cov_trace_pc() #11
  %240 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool1.not.i.i443 = icmp eq i8 %241, 0
  %spec.select510 = select i1 %tobool1.not.i.i443, i32 48, i32 3264
  br label %tegra_i2c_reg_addr.exit.i448

tegra_i2c_reg_addr.exit.i448:                     ; preds = %if.else.i.i444, %i2c_writel.exit437.tegra_i2c_reg_addr.exit.i448_crit_edge
  %reg.addr.0.i.i446 = phi i32 [ 112, %i2c_writel.exit437.tegra_i2c_reg_addr.exit.i448_crit_edge ], [ %spec.select510, %if.else.i.i444 ]
  %add.ptr.i447 = getelementptr i8, ptr %237, i32 %reg.addr.0.i.i446
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i447, i32 0) #9, !srcloc !184
  %242 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %base.i, align 4
  %244 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool.not.i22.i449 = icmp eq i8 %245, 0
  br i1 %tobool.not.i22.i449, label %if.else.i29.i453, label %tegra_i2c_reg_addr.exit.i448.i2c_writel.exit457_crit_edge

tegra_i2c_reg_addr.exit.i448.i2c_writel.exit457_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i448
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit457

if.else.i29.i453:                                 ; preds = %tegra_i2c_reg_addr.exit.i448
  call void @__sanitizer_cov_trace_pc() #11
  %246 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool1.not.i28.i452 = icmp eq i8 %247, 0
  %spec.select511 = select i1 %tobool1.not.i28.i452, i32 48, i32 3264
  br label %i2c_writel.exit457

i2c_writel.exit457:                               ; preds = %if.else.i29.i453, %tegra_i2c_reg_addr.exit.i448.i2c_writel.exit457_crit_edge
  %reg.addr.0.i33.i455 = phi i32 [ 112, %tegra_i2c_reg_addr.exit.i448.i2c_writel.exit457_crit_edge ], [ %spec.select511, %if.else.i29.i453 ]
  %add.ptr3.i456 = getelementptr i8, ptr %243, i32 %reg.addr.0.i33.i455
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i456) #9, !srcloc !183
  br label %if.end210

if.end210:                                        ; preds = %i2c_writel.exit457, %land.lhs.true204.if.end210_crit_edge, %if.end201.if.end210_crit_edge
  %call211 = tail call fastcc i32 @tegra_i2c_flush_fifos(ptr noundef %i2c_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end214, label %if.end210.cleanup_crit_edge

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end214:                                        ; preds = %if.end210
  %multimaster_mode = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 22
  %249 = ptrtoint ptr %multimaster_mode to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %multimaster_mode, align 8, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool215.not = icmp eq i8 %250, 0
  br i1 %tobool215.not, label %if.end214.if.end220_crit_edge, label %land.lhs.true216

if.end214.if.end220_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end220

land.lhs.true216:                                 ; preds = %if.end214
  %251 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %hw, align 8
  %has_slcg_override_reg = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %252, i32 0, i32 8
  %253 = ptrtoint ptr %has_slcg_override_reg to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %has_slcg_override_reg, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool218.not = icmp eq i8 %254, 0
  br i1 %tobool218.not, label %land.lhs.true216.if.end220_crit_edge, label %if.then219

land.lhs.true216.if.end220_crit_edge:             ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end220

if.then219:                                       ; preds = %land.lhs.true216
  %255 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %base.i, align 4
  %257 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool.not.i.i460 = icmp eq i8 %258, 0
  br i1 %tobool.not.i.i460, label %if.else.i.i464, label %if.then219.tegra_i2c_reg_addr.exit.i468_crit_edge

if.then219.tegra_i2c_reg_addr.exit.i468_crit_edge: ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i468

if.else.i.i464:                                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #11
  %259 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool1.not.i.i463 = icmp eq i8 %260, 0
  %spec.select512 = select i1 %tobool1.not.i.i463, i32 144, i32 3648
  br label %tegra_i2c_reg_addr.exit.i468

tegra_i2c_reg_addr.exit.i468:                     ; preds = %if.else.i.i464, %if.then219.tegra_i2c_reg_addr.exit.i468_crit_edge
  %reg.addr.0.i.i466 = phi i32 [ 160, %if.then219.tegra_i2c_reg_addr.exit.i468_crit_edge ], [ %spec.select512, %if.else.i.i464 ]
  %add.ptr.i467 = getelementptr i8, ptr %256, i32 %reg.addr.0.i.i466
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i467, i32 16777216) #9, !srcloc !184
  %261 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %base.i, align 4
  %263 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool.not.i22.i469 = icmp eq i8 %264, 0
  br i1 %tobool.not.i22.i469, label %if.else.i29.i473, label %tegra_i2c_reg_addr.exit.i468.i2c_writel.exit477_crit_edge

tegra_i2c_reg_addr.exit.i468.i2c_writel.exit477_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i468
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit477

if.else.i29.i473:                                 ; preds = %tegra_i2c_reg_addr.exit.i468
  call void @__sanitizer_cov_trace_pc() #11
  %265 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool1.not.i28.i472 = icmp eq i8 %266, 0
  %spec.select513 = select i1 %tobool1.not.i28.i472, i32 144, i32 3648
  br label %i2c_writel.exit477

i2c_writel.exit477:                               ; preds = %if.else.i29.i473, %tegra_i2c_reg_addr.exit.i468.i2c_writel.exit477_crit_edge
  %reg.addr.0.i33.i475 = phi i32 [ 160, %tegra_i2c_reg_addr.exit.i468.i2c_writel.exit477_crit_edge ], [ %spec.select513, %if.else.i29.i473 ]
  %add.ptr3.i476 = getelementptr i8, ptr %262, i32 %reg.addr.0.i33.i475
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i476) #9, !srcloc !183
  br label %if.end220

if.end220:                                        ; preds = %i2c_writel.exit477, %land.lhs.true216.if.end220_crit_edge, %if.end214.if.end220_crit_edge
  %268 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %hw, align 8
  %has_config_load_reg.i = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %has_config_load_reg.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %has_config_load_reg.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool.not.i = icmp eq i8 %271, 0
  br i1 %tobool.not.i, label %if.end220.cleanup_crit_edge, label %if.end.i

if.end220.cleanup_crit_edge:                      ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end220
  %272 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %base.i, align 4
  %274 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.not.i.i.i480 = icmp eq i8 %275, 0
  br i1 %tobool.not.i.i.i480, label %if.else.i.i.i484, label %if.end.i.tegra_i2c_reg_addr.exit.i.i488_crit_edge

if.end.i.tegra_i2c_reg_addr.exit.i.i488_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i488

if.else.i.i.i484:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %276 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool1.not.i.i.i482 = icmp eq i8 %277, 0
  %spec.select.i483 = select i1 %tobool1.not.i.i.i482, i32 140, i32 3632
  br label %tegra_i2c_reg_addr.exit.i.i488

tegra_i2c_reg_addr.exit.i.i488:                   ; preds = %if.else.i.i.i484, %if.end.i.tegra_i2c_reg_addr.exit.i.i488_crit_edge
  %reg.addr.0.i.i.i485 = phi i32 [ 156, %if.end.i.tegra_i2c_reg_addr.exit.i.i488_crit_edge ], [ %spec.select.i483, %if.else.i.i.i484 ]
  %add.ptr.i.i486 = getelementptr i8, ptr %273, i32 %reg.addr.0.i.i.i485
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i486, i32 16777216) #9, !srcloc !184
  %278 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %base.i, align 4
  %280 = ptrtoint ptr %is_dvc to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %is_dvc, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool.not.i22.i.i487 = icmp eq i8 %281, 0
  br i1 %tobool.not.i22.i.i487, label %if.else.i29.i.i491, label %tegra_i2c_reg_addr.exit.i.i488.i2c_writel.exit.i494_crit_edge

tegra_i2c_reg_addr.exit.i.i488.i2c_writel.exit.i494_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i488
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit.i494

if.else.i29.i.i491:                               ; preds = %tegra_i2c_reg_addr.exit.i.i488
  call void @__sanitizer_cov_trace_pc() #11
  %282 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool1.not.i28.i.i490 = icmp eq i8 %283, 0
  %spec.select8.i = select i1 %tobool1.not.i28.i.i490, i32 140, i32 3632
  br label %i2c_writel.exit.i494

i2c_writel.exit.i494:                             ; preds = %if.else.i29.i.i491, %tegra_i2c_reg_addr.exit.i.i488.i2c_writel.exit.i494_crit_edge
  %reg.addr.0.i33.i.i492 = phi i32 [ 156, %tegra_i2c_reg_addr.exit.i.i488.i2c_writel.exit.i494_crit_edge ], [ %spec.select8.i, %if.else.i29.i.i491 ]
  %add.ptr3.i.i493 = getelementptr i8, ptr %279, i32 %reg.addr.0.i33.i.i492
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i493) #9, !srcloc !183
  %call.i = tail call fastcc i32 @tegra_i2c_poll_register(ptr noundef %i2c_dev, i32 noundef 140, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %i2c_writel.exit.i494.cleanup_crit_edge, label %do.end.i

i2c_writel.exit.i494.cleanup_crit_edge:           ; preds = %i2c_writel.exit.i494
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %i2c_writel.exit.i494
  call void @__sanitizer_cov_trace_pc() #11
  %285 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %i2c_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %286, ptr noundef nonnull @.str.7) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %i2c_writel.exit.i494.cleanup_crit_edge, %if.end220.cleanup_crit_edge, %if.end210.cleanup_crit_edge, %do.end200
  %retval.0 = phi i32 [ %call195, %do.end200 ], [ %call211, %if.end210.cleanup_crit_edge ], [ %call.i, %do.end.i ], [ 0, %if.end220.cleanup_crit_edge ], [ 0, %i2c_writel.exit.i494.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_flush_fifos(ptr nocapture noundef readonly %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %has_mst_fifo = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %has_mst_fifo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_mst_fifo, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %. = select i1 %tobool.not, i32 92, i32 180
  %base.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %is_dvc.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %6 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add nuw nsw i32 %., 16
  br label %i2c_readl.exit

if.else.i.i:                                      ; preds = %entry
  %is_vi.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %8 = ptrtoint ptr %is_vi.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_vi.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i.i2c_readl.exit_crit_edge, label %if.then2.i.i

if.else.i.i.i2c_readl.exit_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl nuw nsw i32 %., 2
  %add3.i.i = or i32 %shl.i.i, 3072
  br label %i2c_readl.exit

i2c_readl.exit:                                   ; preds = %if.then2.i.i, %if.else.i.i.i2c_readl.exit_crit_edge, %if.then.i.i
  %reg.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %add3.i.i, %if.then2.i.i ], [ %., %if.else.i.i.i2c_readl.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %5, i32 %reg.addr.0.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !183
  %11 = or i32 %10, 50331648
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i19 = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i19, label %if.else.i.i24, label %if.then.i.i21

if.then.i.i21:                                    ; preds = %i2c_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i20 = add nuw nsw i32 %., 16
  br label %tegra_i2c_reg_addr.exit.i

if.else.i.i24:                                    ; preds = %i2c_readl.exit
  %is_vi.i.i22 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %16 = ptrtoint ptr %is_vi.i.i22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_vi.i.i22, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i.i23 = icmp eq i8 %17, 0
  br i1 %tobool1.not.i.i23, label %if.else.i.i24.tegra_i2c_reg_addr.exit.i_crit_edge, label %if.then2.i.i27

if.else.i.i24.tegra_i2c_reg_addr.exit.i_crit_edge: ; preds = %if.else.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i

if.then2.i.i27:                                   ; preds = %if.else.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i25 = shl nuw nsw i32 %., 2
  %add3.i.i26 = or i32 %shl.i.i25, 3072
  br label %tegra_i2c_reg_addr.exit.i

tegra_i2c_reg_addr.exit.i:                        ; preds = %if.then2.i.i27, %if.else.i.i24.tegra_i2c_reg_addr.exit.i_crit_edge, %if.then.i.i21
  %reg.addr.0.i.i28 = phi i32 [ %add.i.i20, %if.then.i.i21 ], [ %add3.i.i26, %if.then2.i.i27 ], [ %., %if.else.i.i24.tegra_i2c_reg_addr.exit.i_crit_edge ]
  %add.ptr.i29 = getelementptr i8, ptr %13, i32 %reg.addr.0.i.i28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %11) #9, !srcloc !184
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %20 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i22.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i22.i, label %if.else.i29.i, label %if.then.i26.i

if.then.i26.i:                                    ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i25.i = add nuw nsw i32 %., 16
  br label %i2c_writel.exit

if.else.i29.i:                                    ; preds = %tegra_i2c_reg_addr.exit.i
  %is_vi.i27.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %22 = ptrtoint ptr %is_vi.i27.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_vi.i27.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i28.i = icmp eq i8 %23, 0
  br i1 %tobool1.not.i28.i, label %if.else.i29.i.i2c_writel.exit_crit_edge, label %if.then2.i32.i

if.else.i29.i.i2c_writel.exit_crit_edge:          ; preds = %if.else.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit

if.then2.i32.i:                                   ; preds = %if.else.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i30.i = shl nuw nsw i32 %., 2
  %add3.i31.i = or i32 %shl.i30.i, 3072
  br label %i2c_writel.exit

i2c_writel.exit:                                  ; preds = %if.then2.i32.i, %if.else.i29.i.i2c_writel.exit_crit_edge, %if.then.i26.i
  %reg.addr.0.i33.i = phi i32 [ %add.i25.i, %if.then.i26.i ], [ %add3.i31.i, %if.then2.i32.i ], [ %., %if.else.i29.i.i2c_writel.exit_crit_edge ]
  %add.ptr3.i = getelementptr i8, ptr %19, i32 %reg.addr.0.i33.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !183
  %call1 = tail call fastcc i32 @tegra_i2c_poll_register(ptr noundef %i2c_dev, i32 noundef %., i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %i2c_writel.exit.cleanup_crit_edge, label %do.end

i2c_writel.exit.cleanup_crit_edge:                ; preds = %i2c_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %i2c_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.36) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %i2c_writel.exit.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp438 = icmp sgt i32 %num, 0
  br i1 %cmp438, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add nsw i32 %num, -1
  br label %for.body

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %call.i) #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !187
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.cleanup18_crit_edge, label %do.end11.i.i.i.i

do.end.cleanup18_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup18

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !188
  br label %cleanup18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.039, i32 %sub)
  %cmp5 = icmp slt i32 %i.039, %sub
  br i1 %cmp5, label %if.then6, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %i.039, 1
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 2
  %11 = and i16 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %for.body.if.end9_crit_edge
  %end_type.0 = phi i32 [ 0, %for.body.if.end9_crit_edge ], [ %., %if.then6 ]
  %arrayidx10 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.039
  %call11 = tail call fastcc i32 @tegra_i2c_xfer_msg(ptr noundef %1, ptr noundef %arrayidx10, i32 noundef %end_type.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.inc, label %for.end.thread48

for.end.thread48:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i3751 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #9
  br label %cleanup18

for.inc:                                          ; preds = %if.end9
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.end.thread, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i3745 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 5) #9
  br label %18

for.end:                                          ; preds = %for.cond.preheader
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call.i37 = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %for.end._crit_edge, label %for.end.cleanup18_crit_edge

for.end.cleanup18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup18

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %18

18:                                               ; preds = %for.end._crit_edge, %for.end.thread
  %i.0.lcssa47 = phi i32 [ %num, %for.end.thread ], [ 0, %for.end._crit_edge ]
  br label %cleanup18

cleanup18:                                        ; preds = %18, %for.end.cleanup18_crit_edge, %for.end.thread48, %do.end11.i.i.i.i, %do.end.cleanup18_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end.cleanup18_crit_edge ], [ %call.i, %do.end11.i.i.i.i ], [ %i.0.lcssa47, %18 ], [ %call.i, %for.end.cleanup18_crit_edge ], [ %call11, %for.end.thread48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_xfer_atomic(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %atomic_mode = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %atomic_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %atomic_mode, align 1
  %call1 = tail call i32 @tegra_i2c_xfer(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num)
  %3 = ptrtoint ptr %atomic_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %atomic_mode, align 1
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_i2c_func(ptr nocapture noundef readonly %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hw = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, i32 251527183, i32 251527199
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_xfer_msg(ptr noundef %i2c_dev, ptr nocapture noundef readonly %msg, i32 noundef %end_state) unnamed_addr #2 align 64 {
entry:
  %slv_config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tegra_i2c_flush_fifos(ptr noundef %i2c_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %msg_buf = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 15
  %2 = ptrtoint ptr %msg_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %msg_buf, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len, align 4
  %conv = zext i16 %4 to i32
  %msg_buf_remaining = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 13
  %5 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %msg_buf_remaining, align 8
  %msg_err = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 14
  %6 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %msg_err, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  %msg_read = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 25
  %9 = trunc i16 %8 to i8
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %msg_read to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %msg_read, align 1
  %msg_complete = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 12
  %12 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %msg_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len, align 4
  %conv10 = zext i16 %14 to i32
  %add = add nuw nsw i32 %conv10, 12
  %xfer_size.0 = select i1 %tobool5.not, i32 %add, i32 %conv10
  %add12 = add nuw nsw i32 %xfer_size.0, 3
  %and13 = and i32 %add12, 262140
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and13)
  %cmp = icmp ugt i32 %and13, 32
  br i1 %cmp, label %land.lhs.true, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true:                                    ; preds = %if.end
  %dma_buf = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 21
  %15 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_buf, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %atomic_mode = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 23
  %17 = ptrtoint ptr %atomic_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %atomic_mode, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not = icmp eq i8 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %if.end.land.end_crit_edge
  %19 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %if.end.land.end_crit_edge ], [ %tobool16.not, %land.rhs ]
  %dma_mode = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 24
  %frombool18 = zext i1 %19 to i8
  %20 = ptrtoint ptr %dma_mode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool18, ptr %dma_mode, align 2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %slv_config.i) #9
  %21 = call ptr @memset(ptr %slv_config.i, i32 0, i32 48)
  %hw.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 8
  %has_mst_fifo.i = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %has_mst_fifo.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %has_mst_fifo.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  %..i = select i1 %tobool.not.i, i32 92, i32 180
  br i1 %19, label %if.then2.i, label %land.end.if.end47.i_crit_edge

land.end.if.end47.i_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then2.i:                                       ; preds = %land.end
  %and.i = and i32 %add12, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %and6.i = and i32 %add12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %.78.i = select i1 %tobool7.not.i, i32 8, i32 4
  %dma_burst.0.i = select i1 %tobool3.not.i, i32 %.78.i, i32 1
  br i1 %tobool5.not, label %if.else22.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then2.i
  %rx_dma_chan.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 18
  %26 = ptrtoint ptr %rx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_dma_chan.i, align 8
  %is_dvc.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %28 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then13.i.tegra_i2c_reg_addr.exit.i_crit_edge

if.then13.i.tegra_i2c_reg_addr.exit.i_crit_edge:  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i

if.else.i.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %30 = ptrtoint ptr %is_vi.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_vi.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.not.i.i = icmp eq i8 %31, 0
  %spec.select.i = select i1 %tobool1.not.i.i, i32 84, i32 3408
  br label %tegra_i2c_reg_addr.exit.i

tegra_i2c_reg_addr.exit.i:                        ; preds = %if.else.i.i, %if.then13.i.tegra_i2c_reg_addr.exit.i_crit_edge
  %reg.addr.0.i.i = phi i32 [ 100, %if.then13.i.tegra_i2c_reg_addr.exit.i_crit_edge ], [ %spec.select.i, %if.else.i.i ]
  %base_phys.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 6
  %32 = ptrtoint ptr %base_phys.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_phys.i, align 8
  %add.i = add i32 %33, %reg.addr.0.i.i
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %slv_config.i, i32 0, i32 1
  %34 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %src_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %slv_config.i, i32 0, i32 3
  %35 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %src_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %slv_config.i, i32 0, i32 5
  %36 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dma_burst.0.i, ptr %src_maxburst.i, align 4
  %37 = ptrtoint ptr %has_mst_fifo.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_mst_fifo.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool16.not.i = icmp eq i8 %38, 0
  %.99.i = select i1 %tobool16.not.i, i32 2, i32 4
  %.100.i = select i1 %tobool16.not.i, i32 -4, i32 -16
  br label %if.end36.i

if.else22.i:                                      ; preds = %if.then2.i
  %tx_dma_chan.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 17
  %39 = ptrtoint ptr %tx_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_dma_chan.i, align 4
  %is_dvc.i80.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %41 = ptrtoint ptr %is_dvc.i80.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_dvc.i80.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i81.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i81.i, label %if.else.i85.i, label %if.else22.i.tegra_i2c_reg_addr.exit88.i_crit_edge

if.else22.i.tegra_i2c_reg_addr.exit88.i_crit_edge: ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit88.i

if.else.i85.i:                                    ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i83.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %43 = ptrtoint ptr %is_vi.i83.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_vi.i83.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool1.not.i84.i = icmp eq i8 %44, 0
  %spec.select97.i = select i1 %tobool1.not.i84.i, i32 80, i32 3392
  br label %tegra_i2c_reg_addr.exit88.i

tegra_i2c_reg_addr.exit88.i:                      ; preds = %if.else.i85.i, %if.else22.i.tegra_i2c_reg_addr.exit88.i_crit_edge
  %reg.addr.0.i87.i = phi i32 [ 96, %if.else22.i.tegra_i2c_reg_addr.exit88.i_crit_edge ], [ %spec.select97.i, %if.else.i85.i ]
  %base_phys24.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 6
  %45 = ptrtoint ptr %base_phys24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base_phys24.i, align 8
  %add25.i = add i32 %46, %reg.addr.0.i87.i
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %slv_config.i, i32 0, i32 2
  %47 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add25.i, ptr %dst_addr.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %slv_config.i, i32 0, i32 4
  %48 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %dst_addr_width.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %slv_config.i, i32 0, i32 6
  %49 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dma_burst.0.i, ptr %dst_maxburst.i, align 4
  %50 = ptrtoint ptr %has_mst_fifo.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_mst_fifo.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool28.not.i = icmp eq i8 %51, 0
  %.101.i = select i1 %tobool28.not.i, i32 5, i32 16
  %.102.i = select i1 %tobool28.not.i, i32 -32, i32 -65536
  br label %if.end36.i

if.end36.i:                                       ; preds = %tegra_i2c_reg_addr.exit88.i, %tegra_i2c_reg_addr.exit.i
  %.sink98.i = phi i32 [ %.99.i, %tegra_i2c_reg_addr.exit.i ], [ %.101.i, %tegra_i2c_reg_addr.exit88.i ]
  %.sink.i = phi i32 [ %.100.i, %tegra_i2c_reg_addr.exit.i ], [ %.102.i, %tegra_i2c_reg_addr.exit88.i ]
  %chan.0.i = phi ptr [ %27, %tegra_i2c_reg_addr.exit.i ], [ %40, %tegra_i2c_reg_addr.exit88.i ]
  %device_fc.i = getelementptr inbounds %struct.dma_slave_config, ptr %slv_config.i, i32 0, i32 9
  %52 = ptrtoint ptr %device_fc.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %device_fc.i, align 4
  %53 = ptrtoint ptr %chan.0.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chan.0.i, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 44
  %55 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i89.i = icmp eq ptr %56, null
  br i1 %tobool.not.i89.i, label %if.end36.i.do.end.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end36.i.do.end.i_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end36.i
  %sub30.i = shl nuw nsw i32 %dma_burst.0.i, %.sink98.i
  %shl31.i = add nsw i32 %sub30.i, %.sink.i
  %call.i.i = call i32 %56(ptr noundef %chan.0.i, ptr noundef nonnull %slv_config.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool38.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool38.not.i, label %dmaengine_slave_config.exit.i.out.i_crit_edge, label %dmaengine_slave_config.exit.i.do.end.i_crit_edge

dmaengine_slave_config.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

dmaengine_slave_config.exit.i.out.i_crit_edge:    ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

do.end.i:                                         ; preds = %dmaengine_slave_config.exit.i.do.end.i_crit_edge, %if.end36.i.do.end.i_crit_edge
  %retval.0.i96.i = phi i32 [ %call.i.i, %dmaengine_slave_config.exit.i.do.end.i_crit_edge ], [ -38, %if.end36.i.do.end.i_crit_edge ]
  %57 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i96.i) #12
  %59 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.29) #12
  %dma_buf.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 21
  %61 = ptrtoint ptr %dma_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_buf.i.i, align 4
  %tobool.not.i91.i = icmp eq ptr %62, null
  br i1 %tobool.not.i91.i, label %do.end.i.if.end.i.i_crit_edge, label %if.then.i92.i

do.end.i.if.end.i.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i92.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c_dev, align 8
  %dma_buf_size.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 19
  %65 = ptrtoint ptr %dma_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_buf_size.i.i, align 4
  %dma_phys.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 20
  %67 = ptrtoint ptr %dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_phys.i.i, align 8
  call void @dma_free_attrs(ptr noundef %64, i32 noundef %66, ptr noundef nonnull %62, i32 noundef %68, i32 noundef 0) #9
  %69 = ptrtoint ptr %dma_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %dma_buf.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i92.i, %do.end.i.if.end.i.i_crit_edge
  %tx_dma_chan.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 17
  %70 = ptrtoint ptr %tx_dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tx_dma_chan.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %71, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %71) #9
  %72 = ptrtoint ptr %tx_dma_chan.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %tx_dma_chan.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %rx_dma_chan.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 18
  %73 = ptrtoint ptr %rx_dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rx_dma_chan.i.i, align 8
  %tobool8.not.i.i = icmp eq ptr %74, null
  br i1 %tobool8.not.i.i, label %if.end7.i.i.tegra_i2c_release_dma.exit.i_crit_edge, label %if.then9.i.i

if.end7.i.i.tegra_i2c_release_dma.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_release_dma.exit.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %74) #9
  %75 = ptrtoint ptr %rx_dma_chan.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %rx_dma_chan.i.i, align 8
  br label %tegra_i2c_release_dma.exit.i

tegra_i2c_release_dma.exit.i:                     ; preds = %if.then9.i.i, %if.end7.i.i.tegra_i2c_release_dma.exit.i_crit_edge
  %76 = ptrtoint ptr %dma_mode to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %dma_mode, align 2
  br label %if.end47.i

if.end47.i:                                       ; preds = %tegra_i2c_release_dma.exit.i, %land.end.if.end47.i_crit_edge
  %77 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw.i, align 8
  %has_mst_fifo49.i = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %has_mst_fifo49.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %has_mst_fifo49.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool50.not.i = icmp eq i8 %80, 0
  %.79.i = select i1 %tobool50.not.i, i32 224, i32 458752
  br label %out.i

out.i:                                            ; preds = %if.end47.i, %dmaengine_slave_config.exit.i.out.i_crit_edge
  %val.1.i = phi i32 [ %shl31.i, %dmaengine_slave_config.exit.i.out.i_crit_edge ], [ %.79.i, %if.end47.i ]
  %81 = call i32 @llvm.bswap.i32(i32 %val.1.i) #9
  %base.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %82 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i.i, align 4
  %is_dvc.i.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %84 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i = add nuw nsw i32 %..i, 16
  br label %tegra_i2c_reg_addr.exit.i.i

if.else.i.i.i:                                    ; preds = %out.i
  %is_vi.i.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %86 = ptrtoint ptr %is_vi.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %is_vi.i.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool1.not.i.i.i = icmp eq i8 %87, 0
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i.tegra_i2c_reg_addr.exit.i.i_crit_edge, label %if.then2.i.i.i

if.else.i.i.i.tegra_i2c_reg_addr.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i

if.then2.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i.i = shl nuw nsw i32 %..i, 2
  %add3.i.i.i = or i32 %shl.i.i.i, 3072
  br label %tegra_i2c_reg_addr.exit.i.i

tegra_i2c_reg_addr.exit.i.i:                      ; preds = %if.then2.i.i.i, %if.else.i.i.i.tegra_i2c_reg_addr.exit.i.i_crit_edge, %if.then.i.i.i
  %reg.addr.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %add3.i.i.i, %if.then2.i.i.i ], [ %..i, %if.else.i.i.i.tegra_i2c_reg_addr.exit.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %83, i32 %reg.addr.0.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %81) #9, !srcloc !184
  %88 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i, align 4
  %90 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i22.i.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i22.i.i, label %if.else.i29.i.i, label %if.then.i26.i.i

if.then.i26.i.i:                                  ; preds = %tegra_i2c_reg_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i25.i.i = add nuw nsw i32 %..i, 16
  br label %tegra_i2c_config_fifo_trig.exit

if.else.i29.i.i:                                  ; preds = %tegra_i2c_reg_addr.exit.i.i
  %is_vi.i27.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %92 = ptrtoint ptr %is_vi.i27.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %is_vi.i27.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool1.not.i28.i.i = icmp eq i8 %93, 0
  br i1 %tobool1.not.i28.i.i, label %if.else.i29.i.i.tegra_i2c_config_fifo_trig.exit_crit_edge, label %if.then2.i32.i.i

if.else.i29.i.i.tegra_i2c_config_fifo_trig.exit_crit_edge: ; preds = %if.else.i29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_config_fifo_trig.exit

if.then2.i32.i.i:                                 ; preds = %if.else.i29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i30.i.i = shl nuw nsw i32 %..i, 2
  %add3.i31.i.i = or i32 %shl.i30.i.i, 3072
  br label %tegra_i2c_config_fifo_trig.exit

tegra_i2c_config_fifo_trig.exit:                  ; preds = %if.then2.i32.i.i, %if.else.i29.i.i.tegra_i2c_config_fifo_trig.exit_crit_edge, %if.then.i26.i.i
  %reg.addr.0.i33.i.i = phi i32 [ %add.i25.i.i, %if.then.i26.i.i ], [ %add3.i31.i.i, %if.then2.i32.i.i ], [ %..i, %if.else.i29.i.i.tegra_i2c_config_fifo_trig.exit_crit_edge ]
  %add.ptr3.i.i = getelementptr i8, ptr %89, i32 %reg.addr.0.i33.i.i
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !183
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slv_config.i) #9
  %mul = mul nuw nsw i32 %and13, 9
  %add19 = or i32 %mul, 2
  %mul20 = mul nuw i32 %add19, 1000
  %timings = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 11
  %95 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %timings, align 8
  %div275 = lshr i32 %96, 1
  %add21 = add i32 %div275, %mul20
  %div22 = udiv i32 %add21, %96
  %add23 = add i32 %div22, 100
  %97 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i.i, align 4
  %99 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i.i.i282 = icmp eq i8 %100, 0
  br i1 %tobool.not.i.i.i282, label %if.else.i.i.i286, label %tegra_i2c_config_fifo_trig.exit.i2c_readl.exit.i_crit_edge

tegra_i2c_config_fifo_trig.exit.i2c_readl.exit.i_crit_edge: ; preds = %tegra_i2c_config_fifo_trig.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit.i

if.else.i.i.i286:                                 ; preds = %tegra_i2c_config_fifo_trig.exit
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i283 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %101 = ptrtoint ptr %is_vi.i.i.i283 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %is_vi.i.i.i283, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool1.not.i.i.i284 = icmp eq i8 %102, 0
  %spec.select.i285 = select i1 %tobool1.not.i.i.i284, i32 100, i32 3472
  br label %i2c_readl.exit.i

i2c_readl.exit.i:                                 ; preds = %if.else.i.i.i286, %tegra_i2c_config_fifo_trig.exit.i2c_readl.exit.i_crit_edge
  %reg.addr.0.i.i.i287 = phi i32 [ 116, %tegra_i2c_config_fifo_trig.exit.i2c_readl.exit.i_crit_edge ], [ %spec.select.i285, %if.else.i.i.i286 ]
  %add.ptr.i.i288 = getelementptr i8, ptr %98, i32 %reg.addr.0.i.i.i287
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i288) #9, !srcloc !183
  %104 = or i32 %103, 201326592
  %105 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i.i, align 4
  %107 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i.i4.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i.i4.i, label %if.else.i.i8.i, label %i2c_readl.exit.i.tegra_i2c_reg_addr.exit.i.i290_crit_edge

i2c_readl.exit.i.tegra_i2c_reg_addr.exit.i.i290_crit_edge: ; preds = %i2c_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i290

if.else.i.i8.i:                                   ; preds = %i2c_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i6.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %109 = ptrtoint ptr %is_vi.i.i6.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %is_vi.i.i6.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool1.not.i.i7.i = icmp eq i8 %110, 0
  %spec.select12.i = select i1 %tobool1.not.i.i7.i, i32 100, i32 3472
  br label %tegra_i2c_reg_addr.exit.i.i290

tegra_i2c_reg_addr.exit.i.i290:                   ; preds = %if.else.i.i8.i, %i2c_readl.exit.i.tegra_i2c_reg_addr.exit.i.i290_crit_edge
  %reg.addr.0.i.i10.i = phi i32 [ 116, %i2c_readl.exit.i.tegra_i2c_reg_addr.exit.i.i290_crit_edge ], [ %spec.select12.i, %if.else.i.i8.i ]
  %add.ptr.i11.i = getelementptr i8, ptr %106, i32 %reg.addr.0.i.i10.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %104) #9, !srcloc !184
  %111 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i.i, align 4
  %113 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i22.i.i289 = icmp eq i8 %114, 0
  br i1 %tobool.not.i22.i.i289, label %if.else.i29.i.i293, label %tegra_i2c_reg_addr.exit.i.i290.tegra_i2c_unmask_irq.exit_crit_edge

tegra_i2c_reg_addr.exit.i.i290.tegra_i2c_unmask_irq.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i290
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_unmask_irq.exit

if.else.i29.i.i293:                               ; preds = %tegra_i2c_reg_addr.exit.i.i290
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i.i291 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %115 = ptrtoint ptr %is_vi.i27.i.i291 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %is_vi.i27.i.i291, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool1.not.i28.i.i292 = icmp eq i8 %116, 0
  %spec.select13.i = select i1 %tobool1.not.i28.i.i292, i32 100, i32 3472
  br label %tegra_i2c_unmask_irq.exit

tegra_i2c_unmask_irq.exit:                        ; preds = %if.else.i29.i.i293, %tegra_i2c_reg_addr.exit.i.i290.tegra_i2c_unmask_irq.exit_crit_edge
  %reg.addr.0.i33.i.i294 = phi i32 [ 116, %tegra_i2c_reg_addr.exit.i.i290.tegra_i2c_unmask_irq.exit_crit_edge ], [ %spec.select13.i, %if.else.i29.i.i293 ]
  %add.ptr3.i.i295 = getelementptr i8, ptr %112, i32 %reg.addr.0.i33.i.i294
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i295) #9, !srcloc !183
  %118 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %dma_mode, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool25.not = icmp eq i8 %119, 0
  br i1 %tobool25.not, label %tegra_i2c_unmask_irq.exit.if.end38_crit_edge, label %if.then26

tegra_i2c_unmask_irq.exit.if.end38_crit_edge:     ; preds = %tegra_i2c_unmask_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then26:                                        ; preds = %tegra_i2c_unmask_irq.exit
  %120 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool28.not = icmp eq i8 %121, 0
  %122 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i2c_dev, align 8
  %dma_phys36 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 20
  %124 = ptrtoint ptr %dma_phys36 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dma_phys36, align 8
  br i1 %tobool28.not, label %if.else34, label %if.then29

if.then29:                                        ; preds = %if.then26
  call void @dma_sync_single_for_device(ptr noundef %123, i32 noundef %125, i32 noundef %and13, i32 noundef 2) #9
  %call30 = call fastcc i32 @tegra_i2c_dma_submit(ptr noundef %i2c_dev, i32 noundef %and13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end38_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29.if.end38_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.else34:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_sync_single_for_cpu(ptr noundef %123, i32 noundef %125, i32 noundef %and13, i32 noundef 1) #9
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then29.if.end38_crit_edge, %tegra_i2c_unmask_irq.exit.if.end38_crit_edge
  %dma_buf1.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 21
  %126 = ptrtoint ptr %dma_buf1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dma_buf1.i, align 4
  %cont_id.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 4
  %128 = ptrtoint ptr %cont_id.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cont_id.i, align 8
  %shl.i = shl i32 %129, 12
  %and48.i = and i32 %shl.i, 61440
  %or66.i = or i32 %and48.i, 65552
  %130 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %dma_mode, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool67.not.i = icmp eq i8 %131, 0
  br i1 %tobool67.not.i, label %if.end38.if.else.i_crit_edge, label %land.lhs.true.i

if.end38.if.else.i_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end38
  %132 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool68.not.i = icmp eq i8 %133, 0
  br i1 %tobool68.not.i, label %if.then69.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then69.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr i32, ptr %127, i32 1
  %134 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or66.i, ptr %127, align 4
  br label %if.end70.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end38.if.else.i_crit_edge
  %135 = call i32 @llvm.bswap.i32(i32 %or66.i) #9
  %136 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i.i, align 4
  %138 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i.i.i301 = icmp eq i8 %139, 0
  br i1 %tobool.not.i.i.i301, label %if.else.i.i.i304, label %if.else.i.tegra_i2c_reg_addr.exit.i.i309_crit_edge

if.else.i.tegra_i2c_reg_addr.exit.i.i309_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i309

if.else.i.i.i304:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i302 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %140 = ptrtoint ptr %is_vi.i.i.i302 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %is_vi.i.i.i302, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool1.not.i.i.i303 = icmp eq i8 %141, 0
  %spec.select198.i = select i1 %tobool1.not.i.i.i303, i32 80, i32 3392
  br label %tegra_i2c_reg_addr.exit.i.i309

tegra_i2c_reg_addr.exit.i.i309:                   ; preds = %if.else.i.i.i304, %if.else.i.tegra_i2c_reg_addr.exit.i.i309_crit_edge
  %reg.addr.0.i.i.i305 = phi i32 [ 96, %if.else.i.tegra_i2c_reg_addr.exit.i.i309_crit_edge ], [ %spec.select198.i, %if.else.i.i.i304 ]
  %add.ptr.i.i306 = getelementptr i8, ptr %137, i32 %reg.addr.0.i.i.i305
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i306, i32 %135) #9, !srcloc !184
  %is_vi.i.i307 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %142 = ptrtoint ptr %is_vi.i.i307 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %is_vi.i.i307, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i.i308 = icmp eq i8 %143, 0
  br i1 %tobool.not.i.i308, label %tegra_i2c_reg_addr.exit.i.i309.if.end70.i_crit_edge, label %if.then5.i.i

tegra_i2c_reg_addr.exit.i.i309.if.end70.i_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i309
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

if.then5.i.i:                                     ; preds = %tegra_i2c_reg_addr.exit.i.i309
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i, align 4
  %146 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i36.i.i = icmp eq i8 %147, 0
  %spec.select.i.i = select i1 %tobool.not.i36.i.i, i32 3488, i32 120
  %add.ptr9.i.i = getelementptr i8, ptr %145, i32 %spec.select.i.i
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #9, !srcloc !183
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then5.i.i, %tegra_i2c_reg_addr.exit.i.i309.if.end70.i_crit_edge, %if.then69.i
  %dma_buf.0.i = phi ptr [ %incdec.ptr.i, %if.then69.i ], [ %127, %tegra_i2c_reg_addr.exit.i.i309.if.end70.i_crit_edge ], [ %127, %if.then5.i.i ]
  %149 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %len, align 4
  %conv.i = zext i16 %150 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %151 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %dma_mode, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool72.not.i = icmp eq i8 %152, 0
  br i1 %tobool72.not.i, label %if.end70.i.if.else79.i_crit_edge, label %land.lhs.true74.i

if.end70.i.if.else79.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else79.i

land.lhs.true74.i:                                ; preds = %if.end70.i
  %153 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool76.not.i = icmp eq i8 %154, 0
  br i1 %tobool76.not.i, label %if.then77.i, label %land.lhs.true74.i.if.else79.i_crit_edge

land.lhs.true74.i.if.else79.i_crit_edge:          ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else79.i

if.then77.i:                                      ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr78.i = getelementptr i32, ptr %dma_buf.0.i, i32 1
  %155 = ptrtoint ptr %dma_buf.0.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %sub.i, ptr %dma_buf.0.i, align 4
  br label %if.end80.i

if.else79.i:                                      ; preds = %land.lhs.true74.i.if.else79.i_crit_edge, %if.end70.i.if.else79.i_crit_edge
  %156 = call i32 @llvm.bswap.i32(i32 %sub.i) #9
  %157 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i.i, align 4
  %159 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i.i164.i = icmp eq i8 %160, 0
  br i1 %tobool.not.i.i164.i, label %if.else.i.i168.i, label %if.else79.i.tegra_i2c_reg_addr.exit.i172.i_crit_edge

if.else79.i.tegra_i2c_reg_addr.exit.i172.i_crit_edge: ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i172.i

if.else.i.i168.i:                                 ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i166.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %161 = ptrtoint ptr %is_vi.i.i166.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %is_vi.i.i166.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool1.not.i.i167.i = icmp eq i8 %162, 0
  %spec.select199.i = select i1 %tobool1.not.i.i167.i, i32 80, i32 3392
  br label %tegra_i2c_reg_addr.exit.i172.i

tegra_i2c_reg_addr.exit.i172.i:                   ; preds = %if.else.i.i168.i, %if.else79.i.tegra_i2c_reg_addr.exit.i172.i_crit_edge
  %reg.addr.0.i.i170.i = phi i32 [ 96, %if.else79.i.tegra_i2c_reg_addr.exit.i172.i_crit_edge ], [ %spec.select199.i, %if.else.i.i168.i ]
  %add.ptr.i171.i = getelementptr i8, ptr %158, i32 %reg.addr.0.i.i170.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i, i32 %156) #9, !srcloc !184
  %is_vi.i173.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %163 = ptrtoint ptr %is_vi.i173.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %is_vi.i173.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i174.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i174.i, label %tegra_i2c_reg_addr.exit.i172.i.if.end80.i_crit_edge, label %if.then5.i178.i

tegra_i2c_reg_addr.exit.i172.i.if.end80.i_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i172.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i

if.then5.i178.i:                                  ; preds = %tegra_i2c_reg_addr.exit.i172.i
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i.i, align 4
  %167 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i36.i175.i = icmp eq i8 %168, 0
  %spec.select.i176.i = select i1 %tobool.not.i36.i175.i, i32 3488, i32 120
  %add.ptr9.i177.i = getelementptr i8, ptr %166, i32 %spec.select.i176.i
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i177.i) #9, !srcloc !183
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then5.i178.i, %tegra_i2c_reg_addr.exit.i172.i.if.end80.i_crit_edge, %if.then77.i
  %dma_buf.1.i = phi ptr [ %incdec.ptr78.i, %if.then77.i ], [ %dma_buf.0.i, %tegra_i2c_reg_addr.exit.i172.i.if.end80.i_crit_edge ], [ %dma_buf.0.i, %if.then5.i178.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %end_state)
  %switch.selectcmp.i = icmp eq i32 %end_state, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 196608, i32 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %end_state)
  %switch.selectcmp160.i = icmp eq i32 %end_state, 2
  %switch.select161.i = select i1 %switch.selectcmp160.i, i32 163840, i32 %switch.select.i
  %170 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %flags, align 2
  %172 = and i16 %171, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %172)
  %tobool93.not.i = icmp eq i16 %172, 0
  %173 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %msg, align 4
  %conv100.i = zext i16 %174 to i32
  %or96.i = or i32 %switch.select161.i, %conv100.i
  %or97.i = or i32 %or96.i, 262144
  %shl101.i = shl nuw nsw i32 %conv100.i, 1
  %or102.i = or i32 %shl101.i, %switch.select161.i
  %packet_header.1.i = select i1 %tobool93.not.i, i32 %or102.i, i32 %or97.i
  %175 = and i16 %171, 4096
  %176 = zext i16 %175 to i32
  %177 = shl nuw nsw i32 %176, 9
  %178 = and i16 %171, 1
  %179 = zext i16 %178 to i32
  %180 = shl nuw nsw i32 %179, 19
  %181 = or i32 %180, %177
  %182 = or i32 %packet_header.1.i, %181
  %183 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %dma_mode, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool119.not.i = icmp eq i8 %184, 0
  br i1 %tobool119.not.i, label %if.end80.i.if.else126.i_crit_edge, label %land.lhs.true121.i

if.end80.i.if.else126.i_crit_edge:                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else126.i

land.lhs.true121.i:                               ; preds = %if.end80.i
  %185 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool123.not.i = icmp eq i8 %186, 0
  br i1 %tobool123.not.i, label %if.then124.i, label %land.lhs.true121.i.if.else126.i_crit_edge

land.lhs.true121.i.if.else126.i_crit_edge:        ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else126.i

if.then124.i:                                     ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #11
  %187 = ptrtoint ptr %dma_buf.1.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %182, ptr %dma_buf.1.i, align 4
  br label %tegra_i2c_push_packet_header.exit

if.else126.i:                                     ; preds = %land.lhs.true121.i.if.else126.i_crit_edge, %if.end80.i.if.else126.i_crit_edge
  %188 = call i32 @llvm.bswap.i32(i32 %182) #9
  %189 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i.i, align 4
  %191 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i.i182.i = icmp eq i8 %192, 0
  br i1 %tobool.not.i.i182.i, label %if.else.i.i186.i, label %if.else126.i.tegra_i2c_reg_addr.exit.i190.i_crit_edge

if.else126.i.tegra_i2c_reg_addr.exit.i190.i_crit_edge: ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i190.i

if.else.i.i186.i:                                 ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i184.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %193 = ptrtoint ptr %is_vi.i.i184.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %is_vi.i.i184.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool1.not.i.i185.i = icmp eq i8 %194, 0
  %spec.select200.i = select i1 %tobool1.not.i.i185.i, i32 80, i32 3392
  br label %tegra_i2c_reg_addr.exit.i190.i

tegra_i2c_reg_addr.exit.i190.i:                   ; preds = %if.else.i.i186.i, %if.else126.i.tegra_i2c_reg_addr.exit.i190.i_crit_edge
  %reg.addr.0.i.i188.i = phi i32 [ 96, %if.else126.i.tegra_i2c_reg_addr.exit.i190.i_crit_edge ], [ %spec.select200.i, %if.else.i.i186.i ]
  %add.ptr.i189.i = getelementptr i8, ptr %190, i32 %reg.addr.0.i.i188.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189.i, i32 %188) #9, !srcloc !184
  %is_vi.i191.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %195 = ptrtoint ptr %is_vi.i191.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %is_vi.i191.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i192.i = icmp eq i8 %196, 0
  br i1 %tobool.not.i192.i, label %tegra_i2c_reg_addr.exit.i190.i.tegra_i2c_push_packet_header.exit_crit_edge, label %if.then5.i196.i

tegra_i2c_reg_addr.exit.i190.i.tegra_i2c_push_packet_header.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_push_packet_header.exit

if.then5.i196.i:                                  ; preds = %tegra_i2c_reg_addr.exit.i190.i
  call void @__sanitizer_cov_trace_pc() #11
  %197 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base.i.i, align 4
  %199 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.not.i36.i193.i = icmp eq i8 %200, 0
  %spec.select.i194.i = select i1 %tobool.not.i36.i193.i, i32 3488, i32 120
  %add.ptr9.i195.i = getelementptr i8, ptr %198, i32 %spec.select.i194.i
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i195.i) #9, !srcloc !183
  br label %tegra_i2c_push_packet_header.exit

tegra_i2c_push_packet_header.exit:                ; preds = %if.then5.i196.i, %tegra_i2c_reg_addr.exit.i190.i.tegra_i2c_push_packet_header.exit_crit_edge, %if.then124.i
  %202 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool40.not = icmp eq i8 %203, 0
  br i1 %tobool40.not, label %if.then41, label %tegra_i2c_push_packet_header.exit.if.end58_crit_edge

tegra_i2c_push_packet_header.exit.if.end58_crit_edge: ; preds = %tegra_i2c_push_packet_header.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then41:                                        ; preds = %tegra_i2c_push_packet_header.exit
  %204 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %dma_mode, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool43.not = icmp eq i8 %205, 0
  br i1 %tobool43.not, label %if.else55, label %if.then44

if.then44:                                        ; preds = %if.then41
  %206 = ptrtoint ptr %dma_buf1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dma_buf1.i, align 4
  %add.ptr = getelementptr i8, ptr %207, i32 12
  %208 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %buf, align 4
  %210 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %len, align 4
  %conv48 = zext i16 %211 to i32
  %212 = call ptr @memcpy(ptr %add.ptr, ptr %209, i32 %conv48)
  %213 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %i2c_dev, align 8
  %dma_phys50 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 20
  %215 = ptrtoint ptr %dma_phys50 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %dma_phys50, align 8
  call void @dma_sync_single_for_device(ptr noundef %214, i32 noundef %216, i32 noundef %and13, i32 noundef 1) #9
  %call51 = call fastcc i32 @tegra_i2c_dma_submit(ptr noundef %i2c_dev, i32 noundef %and13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then44.if.end58_crit_edge, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44.if.end58_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.else55:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @tegra_i2c_fill_tx_fifo(ptr noundef %i2c_dev)
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then44.if.end58_crit_edge, %tegra_i2c_push_packet_header.exit.if.end58_crit_edge
  %217 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hw.i, align 8
  %has_per_pkt_xfer_complete_irq = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %has_per_pkt_xfer_complete_irq to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %has_per_pkt_xfer_complete_irq, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool59.not = icmp eq i8 %220, 0
  %spec.select = select i1 %tobool59.not, i32 12, i32 140
  %221 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %dma_mode, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool63.not = icmp eq i8 %222, 0
  br i1 %tobool63.not, label %if.then64, label %if.end58.if.end78_crit_edge

if.end58.if.end78_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then64:                                        ; preds = %if.end58
  %223 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %flags, align 2
  %225 = and i16 %224, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %tobool68.not = icmp eq i16 %225, 0
  br i1 %tobool68.not, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %or70 = or i32 %spec.select, 1
  br label %if.end78

if.else71:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %226 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %msg_buf_remaining, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool73.not = icmp eq i32 %227, 0
  %or75 = or i32 %spec.select, 2
  %spec.select276 = select i1 %tobool73.not, i32 %spec.select, i32 %or75
  br label %if.end78

if.end78:                                         ; preds = %if.else71, %if.then69, %if.end58.if.end78_crit_edge
  %int_mask.1 = phi i32 [ %spec.select, %if.end58.if.end78_crit_edge ], [ %or70, %if.then69 ], [ %spec.select276, %if.else71 ]
  %228 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %base.i.i, align 4
  %230 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool.not.i.i.i312 = icmp eq i8 %231, 0
  br i1 %tobool.not.i.i.i312, label %if.else.i.i.i316, label %if.end78.i2c_readl.exit.i321_crit_edge

if.end78.i2c_readl.exit.i321_crit_edge:           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit.i321

if.else.i.i.i316:                                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i313 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %232 = ptrtoint ptr %is_vi.i.i.i313 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %is_vi.i.i.i313, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool1.not.i.i.i314 = icmp eq i8 %233, 0
  %spec.select.i315 = select i1 %tobool1.not.i.i.i314, i32 100, i32 3472
  br label %i2c_readl.exit.i321

i2c_readl.exit.i321:                              ; preds = %if.else.i.i.i316, %if.end78.i2c_readl.exit.i321_crit_edge
  %reg.addr.0.i.i.i317 = phi i32 [ 116, %if.end78.i2c_readl.exit.i321_crit_edge ], [ %spec.select.i315, %if.else.i.i.i316 ]
  %add.ptr.i.i318 = getelementptr i8, ptr %229, i32 %reg.addr.0.i.i.i317
  %234 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i318) #9, !srcloc !183
  %235 = call i32 @llvm.bswap.i32(i32 %234) #9
  %or.i319 = or i32 %235, %int_mask.1
  %236 = call i32 @llvm.bswap.i32(i32 %or.i319) #9
  %237 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %base.i.i, align 4
  %239 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.not.i.i4.i320 = icmp eq i8 %240, 0
  br i1 %tobool.not.i.i4.i320, label %if.else.i.i8.i325, label %i2c_readl.exit.i321.tegra_i2c_reg_addr.exit.i.i329_crit_edge

i2c_readl.exit.i321.tegra_i2c_reg_addr.exit.i.i329_crit_edge: ; preds = %i2c_readl.exit.i321
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i329

if.else.i.i8.i325:                                ; preds = %i2c_readl.exit.i321
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i6.i322 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %241 = ptrtoint ptr %is_vi.i.i6.i322 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %is_vi.i.i6.i322, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool1.not.i.i7.i323 = icmp eq i8 %242, 0
  %spec.select12.i324 = select i1 %tobool1.not.i.i7.i323, i32 100, i32 3472
  br label %tegra_i2c_reg_addr.exit.i.i329

tegra_i2c_reg_addr.exit.i.i329:                   ; preds = %if.else.i.i8.i325, %i2c_readl.exit.i321.tegra_i2c_reg_addr.exit.i.i329_crit_edge
  %reg.addr.0.i.i10.i326 = phi i32 [ 116, %i2c_readl.exit.i321.tegra_i2c_reg_addr.exit.i.i329_crit_edge ], [ %spec.select12.i324, %if.else.i.i8.i325 ]
  %add.ptr.i11.i327 = getelementptr i8, ptr %238, i32 %reg.addr.0.i.i10.i326
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i327, i32 %236) #9, !srcloc !184
  %243 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %base.i.i, align 4
  %245 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool.not.i22.i.i328 = icmp eq i8 %246, 0
  br i1 %tobool.not.i22.i.i328, label %if.else.i29.i.i333, label %tegra_i2c_reg_addr.exit.i.i329.tegra_i2c_unmask_irq.exit336_crit_edge

tegra_i2c_reg_addr.exit.i.i329.tegra_i2c_unmask_irq.exit336_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i329
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_unmask_irq.exit336

if.else.i29.i.i333:                               ; preds = %tegra_i2c_reg_addr.exit.i.i329
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i.i330 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %247 = ptrtoint ptr %is_vi.i27.i.i330 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %is_vi.i27.i.i330, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool1.not.i28.i.i331 = icmp eq i8 %248, 0
  %spec.select13.i332 = select i1 %tobool1.not.i28.i.i331, i32 100, i32 3472
  br label %tegra_i2c_unmask_irq.exit336

tegra_i2c_unmask_irq.exit336:                     ; preds = %if.else.i29.i.i333, %tegra_i2c_reg_addr.exit.i.i329.tegra_i2c_unmask_irq.exit336_crit_edge
  %reg.addr.0.i33.i.i334 = phi i32 [ 116, %tegra_i2c_reg_addr.exit.i.i329.tegra_i2c_unmask_irq.exit336_crit_edge ], [ %spec.select13.i332, %if.else.i29.i.i333 ]
  %add.ptr3.i.i335 = getelementptr i8, ptr %244, i32 %reg.addr.0.i33.i.i334
  %249 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i335) #9, !srcloc !183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_i2c_xfer_msg.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_i2c_xfer_msg, %do.end)) #9
          to label %if.then87 [label %do.end], !srcloc !189

if.then87:                                        ; preds = %tegra_i2c_unmask_irq.exit336
  %250 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %i2c_dev, align 8
  %252 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %base.i.i, align 4
  %254 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool.not.i.i338 = icmp eq i8 %255, 0
  br i1 %tobool.not.i.i338, label %if.else.i.i341, label %if.then87.i2c_readl.exit_crit_edge

if.then87.i2c_readl.exit_crit_edge:               ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit

if.else.i.i341:                                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i339 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %256 = ptrtoint ptr %is_vi.i.i339 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %is_vi.i.i339, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool1.not.i.i340 = icmp eq i8 %257, 0
  %spec.select410 = select i1 %tobool1.not.i.i340, i32 100, i32 3472
  br label %i2c_readl.exit

i2c_readl.exit:                                   ; preds = %if.else.i.i341, %if.then87.i2c_readl.exit_crit_edge
  %reg.addr.0.i.i342 = phi i32 [ 116, %if.then87.i2c_readl.exit_crit_edge ], [ %spec.select410, %if.else.i.i341 ]
  %add.ptr.i = getelementptr i8, ptr %253, i32 %reg.addr.0.i.i342
  %258 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !183
  %259 = call i32 @llvm.bswap.i32(i32 %258) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_i2c_xfer_msg.__UNIQUE_ID_ddebug423, ptr noundef %251, ptr noundef nonnull @.str.42, i32 noundef %259) #9
  br label %do.end

do.end:                                           ; preds = %i2c_readl.exit, %tegra_i2c_unmask_irq.exit336
  %260 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %dma_mode, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool92.not = icmp eq i8 %261, 0
  br i1 %tobool92.not, label %do.end.if.end134_crit_edge, label %if.then93

do.end.if.end134_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then93:                                        ; preds = %do.end
  %dma_complete = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 16
  %atomic_mode.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 23
  %262 = ptrtoint ptr %atomic_mode.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %atomic_mode.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool.not.i344 = icmp eq i8 %263, 0
  br i1 %tobool.not.i344, label %if.else.i345, label %if.then93.if.end6.sink.split.i_crit_edge

if.then93.if.end6.sink.split.i_crit_edge:         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split.i

if.else.i345:                                     ; preds = %if.then93
  %irq.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 5
  %264 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %irq.i, align 4
  call void @enable_irq(i32 noundef %265) #9
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %add23) #9
  %call2.i = call i32 @wait_for_completion_timeout(ptr noundef %dma_complete, i32 noundef %call2.i.i) #9
  %266 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %irq.i, align 4
  call void @disable_irq(i32 noundef %267) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.else.i345.if.end6.sink.split.i_crit_edge, label %if.else.i345.tegra_i2c_wait_completion.exit_crit_edge

if.else.i345.tegra_i2c_wait_completion.exit_crit_edge: ; preds = %if.else.i345
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_wait_completion.exit

if.else.i345.if.end6.sink.split.i_crit_edge:      ; preds = %if.else.i345
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.else.i345.if.end6.sink.split.i_crit_edge, %if.then93.if.end6.sink.split.i_crit_edge
  %.sink.i349 = phi i32 [ %add23, %if.then93.if.end6.sink.split.i_crit_edge ], [ 0, %if.else.i345.if.end6.sink.split.i_crit_edge ]
  %call5.i = call fastcc i32 @tegra_i2c_poll_completion(ptr noundef %i2c_dev, ptr noundef %dma_complete, i32 noundef %.sink.i349) #9
  br label %tegra_i2c_wait_completion.exit

tegra_i2c_wait_completion.exit:                   ; preds = %if.end6.sink.split.i, %if.else.i345.tegra_i2c_wait_completion.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.else.i345.tegra_i2c_wait_completion.exit_crit_edge ], [ %call5.i, %if.end6.sink.split.i ]
  %268 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool96.not = icmp eq i8 %269, 0
  %rx_dma_chan = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 18
  %tx_dma_chan = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 17
  %cond.in = select i1 %tobool96.not, ptr %tx_dma_chan, ptr %rx_dma_chan
  %270 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %270)
  %cond = load ptr, ptr %cond.in, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1169) #9
  %271 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cond, align 4
  %device_synchronize.i = getelementptr inbounds %struct.dma_device, ptr %272, i32 0, i32 48
  %273 = ptrtoint ptr %device_synchronize.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %device_synchronize.i, align 4
  %tobool.not.i350 = icmp eq ptr %274, null
  br i1 %tobool.not.i350, label %tegra_i2c_wait_completion.exit.dmaengine_synchronize.exit_crit_edge, label %if.then.i351

tegra_i2c_wait_completion.exit.dmaengine_synchronize.exit_crit_edge: ; preds = %tegra_i2c_wait_completion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_synchronize.exit

if.then.i351:                                     ; preds = %tegra_i2c_wait_completion.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void %274(ptr noundef %cond) #9
  br label %dmaengine_synchronize.exit

dmaengine_synchronize.exit:                       ; preds = %if.then.i351, %tegra_i2c_wait_completion.exit.dmaengine_synchronize.exit_crit_edge
  %275 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool99.not = icmp eq i8 %276, 0
  %cond106.in = select i1 %tobool99.not, ptr %tx_dma_chan, ptr %rx_dma_chan
  %277 = ptrtoint ptr %cond106.in to i32
  call void @__asan_load4_noabort(i32 %277)
  %cond106 = load ptr, ptr %cond106.in, align 4
  %278 = ptrtoint ptr %cond106 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %cond106, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %279, i32 0, i32 47
  %280 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i352 = icmp eq ptr %281, null
  br i1 %tobool.not.i.i352, label %dmaengine_synchronize.exit.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

dmaengine_synchronize.exit.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %dmaengine_synchronize.exit
  %call.i.i353 = call i32 %281(ptr noundef %cond106) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i353)
  %tobool.not.i354 = icmp eq i32 %call.i.i353, 0
  br i1 %tobool.not.i354, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1169) #9
  %282 = ptrtoint ptr %cond106 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %cond106, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %283, i32 0, i32 48
  %284 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %285, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %285(ptr noundef %cond106) #9
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_synchronize.exit.dmaengine_terminate_sync.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool108.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool108.not, label %land.lhs.true109, label %dmaengine_terminate_sync.exit.if.end118_crit_edge

dmaengine_terminate_sync.exit.if.end118_crit_edge: ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

land.lhs.true109:                                 ; preds = %dmaengine_terminate_sync.exit
  %call111 = call zeroext i1 @completion_done(ptr noundef %dma_complete) #9
  br i1 %call111, label %land.lhs.true109.if.end118_crit_edge, label %do.end115

land.lhs.true109.if.end118_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

do.end115:                                        ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  %286 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %i2c_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %287, ptr noundef nonnull @.str.43) #12
  %call117 = call fastcc i32 @tegra_i2c_init(ptr noundef %i2c_dev)
  br label %cleanup

if.end118:                                        ; preds = %land.lhs.true109.if.end118_crit_edge, %dmaengine_terminate_sync.exit.if.end118_crit_edge
  %288 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool120.not = icmp eq i8 %289, 0
  br i1 %tobool120.not, label %if.end118.if.end134_crit_edge, label %land.lhs.true122

if.end118.if.end134_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

land.lhs.true122:                                 ; preds = %if.end118
  %290 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %msg_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %cmp124 = icmp eq i32 %291, 0
  br i1 %cmp124, label %if.then126, label %land.lhs.true122.if.end134_crit_edge

land.lhs.true122.if.end134_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then126:                                       ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #11
  %292 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %i2c_dev, align 8
  %dma_phys128 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 20
  %294 = ptrtoint ptr %dma_phys128 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %dma_phys128, align 8
  call void @dma_sync_single_for_cpu(ptr noundef %293, i32 noundef %295, i32 noundef %and13, i32 noundef 2) #9
  %296 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %msg_buf, align 8
  %298 = ptrtoint ptr %dma_buf1.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dma_buf1.i, align 4
  %300 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %len, align 4
  %conv132 = zext i16 %301 to i32
  %302 = call ptr @memcpy(ptr %297, ptr %299, i32 %conv132)
  br label %if.end134

if.end134:                                        ; preds = %if.then126, %land.lhs.true122.if.end134_crit_edge, %if.end118.if.end134_crit_edge, %do.end.if.end134_crit_edge
  %atomic_mode.i355 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 23
  %303 = ptrtoint ptr %atomic_mode.i355 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %atomic_mode.i355, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool.not.i356 = icmp eq i8 %304, 0
  br i1 %tobool.not.i356, label %if.else.i358, label %if.end134.if.end6.sink.split.i372_crit_edge

if.end134.if.end6.sink.split.i372_crit_edge:      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split.i372

if.else.i358:                                     ; preds = %if.end134
  %irq.i357 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 5
  %305 = ptrtoint ptr %irq.i357 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %irq.i357, align 4
  call void @enable_irq(i32 noundef %306) #9
  %call2.i.i364 = call i32 @__msecs_to_jiffies(i32 noundef %add23) #9
  %call2.i367 = call i32 @wait_for_completion_timeout(ptr noundef %msg_complete, i32 noundef %call2.i.i364) #9
  %307 = ptrtoint ptr %irq.i357 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %irq.i357, align 4
  call void @disable_irq(i32 noundef %308) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i367)
  %cmp.i368 = icmp eq i32 %call2.i367, 0
  br i1 %cmp.i368, label %if.else.i358.if.end6.sink.split.i372_crit_edge, label %if.else.i358.tegra_i2c_wait_completion.exit374_crit_edge

if.else.i358.tegra_i2c_wait_completion.exit374_crit_edge: ; preds = %if.else.i358
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_wait_completion.exit374

if.else.i358.if.end6.sink.split.i372_crit_edge:   ; preds = %if.else.i358
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split.i372

if.end6.sink.split.i372:                          ; preds = %if.else.i358.if.end6.sink.split.i372_crit_edge, %if.end134.if.end6.sink.split.i372_crit_edge
  %.sink.i370 = phi i32 [ %add23, %if.end134.if.end6.sink.split.i372_crit_edge ], [ 0, %if.else.i358.if.end6.sink.split.i372_crit_edge ]
  %call5.i371 = call fastcc i32 @tegra_i2c_poll_completion(ptr noundef %i2c_dev, ptr noundef %msg_complete, i32 noundef %.sink.i370) #9
  br label %tegra_i2c_wait_completion.exit374

tegra_i2c_wait_completion.exit374:                ; preds = %if.end6.sink.split.i372, %if.else.i358.tegra_i2c_wait_completion.exit374_crit_edge
  %ret.0.i373 = phi i32 [ %call2.i367, %if.else.i358.tegra_i2c_wait_completion.exit374_crit_edge ], [ %call5.i371, %if.end6.sink.split.i372 ]
  %309 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %base.i.i, align 4
  %311 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool.not.i.i.i377 = icmp eq i8 %312, 0
  br i1 %tobool.not.i.i.i377, label %if.else.i.i.i381, label %tegra_i2c_wait_completion.exit374.i2c_readl.exit.i386_crit_edge

tegra_i2c_wait_completion.exit374.i2c_readl.exit.i386_crit_edge: ; preds = %tegra_i2c_wait_completion.exit374
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit.i386

if.else.i.i.i381:                                 ; preds = %tegra_i2c_wait_completion.exit374
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i378 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %313 = ptrtoint ptr %is_vi.i.i.i378 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %is_vi.i.i.i378, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool1.not.i.i.i379 = icmp eq i8 %314, 0
  %spec.select.i380 = select i1 %tobool1.not.i.i.i379, i32 100, i32 3472
  br label %i2c_readl.exit.i386

i2c_readl.exit.i386:                              ; preds = %if.else.i.i.i381, %tegra_i2c_wait_completion.exit374.i2c_readl.exit.i386_crit_edge
  %reg.addr.0.i.i.i382 = phi i32 [ 116, %tegra_i2c_wait_completion.exit374.i2c_readl.exit.i386_crit_edge ], [ %spec.select.i380, %if.else.i.i.i381 ]
  %add.ptr.i.i383 = getelementptr i8, ptr %310, i32 %reg.addr.0.i.i.i382
  %315 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i383) #9, !srcloc !183
  %316 = call i32 @llvm.bswap.i32(i32 %315) #9
  %neg.i = xor i32 %int_mask.1, -1
  %and.i384 = and i32 %316, %neg.i
  %317 = call i32 @llvm.bswap.i32(i32 %and.i384) #9
  %318 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %base.i.i, align 4
  %320 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool.not.i.i4.i385 = icmp eq i8 %321, 0
  br i1 %tobool.not.i.i4.i385, label %if.else.i.i8.i390, label %i2c_readl.exit.i386.tegra_i2c_reg_addr.exit.i.i394_crit_edge

i2c_readl.exit.i386.tegra_i2c_reg_addr.exit.i.i394_crit_edge: ; preds = %i2c_readl.exit.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i394

if.else.i.i8.i390:                                ; preds = %i2c_readl.exit.i386
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i6.i387 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %322 = ptrtoint ptr %is_vi.i.i6.i387 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %is_vi.i.i6.i387, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool1.not.i.i7.i388 = icmp eq i8 %323, 0
  %spec.select12.i389 = select i1 %tobool1.not.i.i7.i388, i32 100, i32 3472
  br label %tegra_i2c_reg_addr.exit.i.i394

tegra_i2c_reg_addr.exit.i.i394:                   ; preds = %if.else.i.i8.i390, %i2c_readl.exit.i386.tegra_i2c_reg_addr.exit.i.i394_crit_edge
  %reg.addr.0.i.i10.i391 = phi i32 [ 116, %i2c_readl.exit.i386.tegra_i2c_reg_addr.exit.i.i394_crit_edge ], [ %spec.select12.i389, %if.else.i.i8.i390 ]
  %add.ptr.i11.i392 = getelementptr i8, ptr %319, i32 %reg.addr.0.i.i10.i391
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i392, i32 %317) #9, !srcloc !184
  %324 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %base.i.i, align 4
  %326 = ptrtoint ptr %is_dvc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %is_dvc.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool.not.i22.i.i393 = icmp eq i8 %327, 0
  br i1 %tobool.not.i22.i.i393, label %if.else.i29.i.i398, label %tegra_i2c_reg_addr.exit.i.i394.tegra_i2c_mask_irq.exit_crit_edge

tegra_i2c_reg_addr.exit.i.i394.tegra_i2c_mask_irq.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i394
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_mask_irq.exit

if.else.i29.i.i398:                               ; preds = %tegra_i2c_reg_addr.exit.i.i394
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i.i395 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %328 = ptrtoint ptr %is_vi.i27.i.i395 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %is_vi.i27.i.i395, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool1.not.i28.i.i396 = icmp eq i8 %329, 0
  %spec.select13.i397 = select i1 %tobool1.not.i28.i.i396, i32 100, i32 3472
  br label %tegra_i2c_mask_irq.exit

tegra_i2c_mask_irq.exit:                          ; preds = %if.else.i29.i.i398, %tegra_i2c_reg_addr.exit.i.i394.tegra_i2c_mask_irq.exit_crit_edge
  %reg.addr.0.i33.i.i399 = phi i32 [ 116, %tegra_i2c_reg_addr.exit.i.i394.tegra_i2c_mask_irq.exit_crit_edge ], [ %spec.select13.i397, %if.else.i29.i.i398 ]
  %add.ptr3.i.i400 = getelementptr i8, ptr %325, i32 %reg.addr.0.i33.i.i399
  %330 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i400) #9, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i373)
  %cmp137 = icmp eq i32 %ret.0.i373, 0
  br i1 %cmp137, label %do.end142, label %do.body146

do.end142:                                        ; preds = %tegra_i2c_mask_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %331 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %i2c_dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %332, ptr noundef nonnull @.str.45) #12
  %call144 = call fastcc i32 @tegra_i2c_init(ptr noundef %i2c_dev)
  br label %cleanup

do.body146:                                       ; preds = %tegra_i2c_mask_irq.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_i2c_xfer_msg.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_i2c_xfer_msg, %do.end168)) #9
          to label %if.then160 [label %do.end168], !srcloc !189

if.then160:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #11
  %333 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %i2c_dev, align 8
  %call163 = call zeroext i1 @completion_done(ptr noundef %msg_complete) #9
  %conv164 = zext i1 %call163 to i32
  %335 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %msg_err, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_i2c_xfer_msg.__UNIQUE_ID_ddebug424, ptr noundef %334, ptr noundef nonnull @.str.47, i32 noundef %ret.0.i373, i32 noundef %conv164, i32 noundef %336) #9
  br label %do.end168

do.end168:                                        ; preds = %if.then160, %do.body146
  %337 = ptrtoint ptr %dma_mode to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 0, ptr %dma_mode, align 2
  %338 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %msg_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %cmp.i401 = icmp eq i32 %339, 0
  br i1 %cmp.i401, label %do.end168.cleanup_crit_edge, label %if.end.i402

do.end168.cleanup_crit_edge:                      ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i402:                                      ; preds = %do.end168
  %call.i = call fastcc i32 @tegra_i2c_init(ptr noundef %i2c_dev) #9
  %340 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %msg_err, align 4
  %342 = zext i32 %341 to i64
  call void @__sanitizer_cov_trace_switch(i64 %342, ptr @__sancov_gen_cov_switch_values)
  switch i32 %341, label %if.end.i402.cleanup_crit_edge [
    i32 2, label %if.then3.i
    i32 1, label %if.then10.i
  ]

if.end.i402.cleanup_crit_edge:                    ; preds = %if.end.i402
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i402
  %multimaster_mode.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 22
  %343 = ptrtoint ptr %multimaster_mode.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %multimaster_mode.i, align 8, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %344)
  %tobool.not.i403 = icmp eq i8 %344, 0
  br i1 %tobool.not.i403, label %if.then4.i, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %adapter.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %call5.i404 = call i32 @i2c_recover_bus(ptr noundef %adapter.i) #9
  br label %cleanup

if.then10.i:                                      ; preds = %if.end.i402
  call void @__sanitizer_cov_trace_pc() #11
  %345 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %flags, align 2
  %347 = and i16 %346, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %347)
  %tobool11.not.i = icmp eq i16 %347, 0
  %..i406 = select i1 %tobool11.not.i, i32 -121, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i, %if.then4.i, %if.then3.i.cleanup_crit_edge, %if.end.i402.cleanup_crit_edge, %do.end168.cleanup_crit_edge, %do.end142, %do.end115, %if.then44.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end142 ], [ -110, %do.end115 ], [ %call, %entry.cleanup_crit_edge ], [ %call30, %if.then29.cleanup_crit_edge ], [ %call51, %if.then44.cleanup_crit_edge ], [ %call5.i404, %if.then4.i ], [ 0, %do.end168.cleanup_crit_edge ], [ -11, %if.then3.i.cleanup_crit_edge ], [ %..i406, %if.then10.i ], [ -5, %if.end.i402.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_dma_submit(ptr noundef %i2c_dev, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_i2c_dma_submit.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_i2c_dma_submit, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !189

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_i2c_dma_submit.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %len) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dma_complete = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 16
  %2 = ptrtoint ptr %dma_complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dma_complete, align 4
  %msg_read = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 25
  %3 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool4.not, i32 1, i32 2
  %rx_dma_chan = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 18
  %tx_dma_chan = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 17
  %cond7.in = select i1 %tobool4.not, ptr %tx_dma_chan, ptr %rx_dma_chan
  %5 = ptrtoint ptr %cond7.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond7 = load ptr, ptr %cond7.in, align 4
  %dma_phys = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 20
  %6 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_phys, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #9
  %8 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %10 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #9
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %8, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %cond7, null
  br i1 %tobool.not.i, label %do.end.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

do.end.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %do.end
  %13 = ptrtoint ptr %cond7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cond7, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 39
  %15 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %do.end.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  br label %do.end13

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %16(ptr noundef nonnull %cond7, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef %cond, i32 noundef 3, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %dmaengine_prep_slave_single.exit.do.end13_crit_edge, label %if.end18

dmaengine_prep_slave_single.exit.do.end13_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end13:                                         ; preds = %dmaengine_prep_slave_single.exit.do.end13_crit_edge, %dmaengine_prep_slave_single.exit.thread
  %17 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_dev, align 8
  %19 = ptrtoint ptr %msg_read to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %msg_read, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.56, ptr @.str.55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.54, ptr noundef nonnull %cond17) #12
  br label %cleanup

if.end18:                                         ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #11
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tegra_i2c_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %i2c_dev, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_submit.i, align 4
  %call.i37 = call i32 %24(ptr noundef nonnull %call.i) #9
  %25 = ptrtoint ptr %cond7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cond7, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 50
  %27 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_issue_pending.i, align 4
  call void %28(ptr noundef nonnull %cond7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end13
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_i2c_dma_complete(ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_complete = getelementptr inbounds %struct.tegra_i2c_dev, ptr %args, i32 0, i32 16
  tail call void @complete(ptr noundef %dma_complete) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_i2c_poll_completion(ptr noundef %i2c_dev, ptr noundef %complete, i32 noundef %timeout_ms) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #9
  %conv = zext i32 %timeout_ms to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000
  %add.i = add i64 %call, %mul.i
  %base.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %is_dvc.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 26
  %is_vi.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 27
  %irq = getelementptr inbounds %struct.tegra_i2c_dev, ptr %i2c_dev, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %ktime.0 = phi i64 [ %call, %entry ], [ %call11, %do.cond.do.body_crit_edge ]
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i2c_readl.exit_crit_edge

do.body.i2c_readl.exit_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit

if.else.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %is_vi.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_vi.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i.i = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool1.not.i.i, i32 104, i32 3488
  br label %i2c_readl.exit

i2c_readl.exit:                                   ; preds = %if.else.i.i, %do.body.i2c_readl.exit_crit_edge
  %reg.addr.0.i.i = phi i32 [ 120, %do.body.i2c_readl.exit_crit_edge ], [ %spec.select, %if.else.i.i ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 %reg.addr.0.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %i2c_readl.exit.if.end_crit_edge, label %if.then

i2c_readl.exit.if.end_crit_edge:                  ; preds = %i2c_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %i2c_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call3 = tail call i32 @tegra_i2c_isr(i32 noundef %8, ptr noundef %i2c_dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %i2c_readl.exit.if.end_crit_edge
  %call4 = tail call zeroext i1 @completion_done(ptr noundef %complete) #9
  br i1 %call4, label %if.then5, label %do.cond

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i64 %add.i, %ktime.0
  %9 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #9
  %10 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %9) #13, !srcloc !190
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %9, i64 %10, i32 0) #13, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %11, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv7 = trunc i64 %cond213.i.i.i to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool9.not = icmp eq i32 %call2.i, 0
  %spec.select25 = select i1 %tobool9.not, i32 1, i32 %call2.i
  br label %cleanup13

do.cond:                                          ; preds = %if.end
  %call11 = tail call i64 @ktime_get() #9
  %cmp.i.i = icmp slt i64 %call11, %add.i
  br i1 %cmp.i.i, label %do.cond.do.body_crit_edge, label %do.cond.cleanup13_crit_edge

do.cond.cleanup13_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup13

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup13:                                        ; preds = %do.cond.cleanup13_crit_edge, %if.then5
  %retval.2 = phi i32 [ %spec.select25, %if.then5 ], [ 0, %do.cond.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_issue_bus_clear(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %msg_complete = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %msg_complete, align 4
  %base.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %is_dvc.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.tegra_i2c_reg_addr.exit.i_crit_edge

entry.tegra_i2c_reg_addr.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %is_vi.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_vi.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i.i = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool1.not.i.i, i32 132, i32 3600
  br label %tegra_i2c_reg_addr.exit.i

tegra_i2c_reg_addr.exit.i:                        ; preds = %if.else.i.i, %entry.tegra_i2c_reg_addr.exit.i_crit_edge
  %reg.addr.0.i.i = phi i32 [ 148, %entry.tegra_i2c_reg_addr.exit.i_crit_edge ], [ %spec.select, %if.else.i.i ]
  %add.ptr.i = getelementptr i8, ptr %4, i32 %reg.addr.0.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 100665600) #9, !srcloc !184
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i22.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i22.i, label %if.else.i29.i, label %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge

tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit

if.else.i29.i:                                    ; preds = %tegra_i2c_reg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %is_vi.i27.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_vi.i27.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i28.i = icmp eq i8 %14, 0
  %spec.select126 = select i1 %tobool1.not.i28.i, i32 132, i32 3600
  br label %i2c_writel.exit

i2c_writel.exit:                                  ; preds = %if.else.i29.i, %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge
  %reg.addr.0.i33.i = phi i32 [ 148, %tegra_i2c_reg_addr.exit.i.i2c_writel.exit_crit_edge ], [ %spec.select126, %if.else.i29.i ]
  %add.ptr3.i = getelementptr i8, ptr %10, i32 %reg.addr.0.i33.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !183
  %hw.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw.i, align 8
  %has_config_load_reg.i = getelementptr inbounds %struct.tegra_i2c_hw_feature, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %has_config_load_reg.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_config_load_reg.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %i2c_writel.exit.if.end_crit_edge, label %if.end.i

i2c_writel.exit.if.end_crit_edge:                 ; preds = %i2c_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %i2c_writel.exit
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.end.i.tegra_i2c_reg_addr.exit.i.i_crit_edge

if.end.i.tegra_i2c_reg_addr.exit.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %24 = ptrtoint ptr %is_vi.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_vi.i.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool1.not.i.i.i = icmp eq i8 %25, 0
  %spec.select.i = select i1 %tobool1.not.i.i.i, i32 140, i32 3632
  br label %tegra_i2c_reg_addr.exit.i.i

tegra_i2c_reg_addr.exit.i.i:                      ; preds = %if.else.i.i.i, %if.end.i.tegra_i2c_reg_addr.exit.i.i_crit_edge
  %reg.addr.0.i.i.i = phi i32 [ 156, %if.end.i.tegra_i2c_reg_addr.exit.i.i_crit_edge ], [ %spec.select.i, %if.else.i.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %reg.addr.0.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !184
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %28 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i22.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i22.i.i, label %if.else.i29.i.i, label %tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge

tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit.i

if.else.i29.i.i:                                  ; preds = %tegra_i2c_reg_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %30 = ptrtoint ptr %is_vi.i27.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_vi.i27.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.not.i28.i.i = icmp eq i8 %31, 0
  %spec.select8.i = select i1 %tobool1.not.i28.i.i, i32 140, i32 3632
  br label %i2c_writel.exit.i

i2c_writel.exit.i:                                ; preds = %if.else.i29.i.i, %tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge
  %reg.addr.0.i33.i.i = phi i32 [ 156, %tegra_i2c_reg_addr.exit.i.i.i2c_writel.exit.i_crit_edge ], [ %spec.select8.i, %if.else.i29.i.i ]
  %add.ptr3.i.i = getelementptr i8, ptr %27, i32 %reg.addr.0.i33.i.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !183
  %call.i = tail call fastcc i32 @tegra_i2c_poll_register(ptr noundef %1, i32 noundef 140, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %i2c_writel.exit.i.if.end_crit_edge, label %i2c_writel.exit.i.cleanup.sink.split_crit_edge

i2c_writel.exit.i.cleanup.sink.split_crit_edge:   ; preds = %i2c_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

i2c_writel.exit.i.if.end_crit_edge:               ; preds = %i2c_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %i2c_writel.exit.i.if.end_crit_edge, %i2c_writel.exit.if.end_crit_edge
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %35 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i50 = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i50, label %if.else.i.i54, label %if.end.tegra_i2c_reg_addr.exit.i58_crit_edge

if.end.tegra_i2c_reg_addr.exit.i58_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i58

if.else.i.i54:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i52 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %37 = ptrtoint ptr %is_vi.i.i52 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_vi.i.i52, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.not.i.i53 = icmp eq i8 %38, 0
  %spec.select127 = select i1 %tobool1.not.i.i53, i32 132, i32 3600
  br label %tegra_i2c_reg_addr.exit.i58

tegra_i2c_reg_addr.exit.i58:                      ; preds = %if.else.i.i54, %if.end.tegra_i2c_reg_addr.exit.i58_crit_edge
  %reg.addr.0.i.i56 = phi i32 [ 148, %if.end.tegra_i2c_reg_addr.exit.i58_crit_edge ], [ %spec.select127, %if.else.i.i54 ]
  %add.ptr.i57 = getelementptr i8, ptr %34, i32 %reg.addr.0.i.i56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 117442816) #9, !srcloc !184
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %41 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i22.i59 = icmp eq i8 %42, 0
  br i1 %tobool.not.i22.i59, label %if.else.i29.i63, label %tegra_i2c_reg_addr.exit.i58.i2c_writel.exit67_crit_edge

tegra_i2c_reg_addr.exit.i58.i2c_writel.exit67_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_writel.exit67

if.else.i29.i63:                                  ; preds = %tegra_i2c_reg_addr.exit.i58
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i61 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %43 = ptrtoint ptr %is_vi.i27.i61 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_vi.i27.i61, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool1.not.i28.i62 = icmp eq i8 %44, 0
  %spec.select128 = select i1 %tobool1.not.i28.i62, i32 132, i32 3600
  br label %i2c_writel.exit67

i2c_writel.exit67:                                ; preds = %if.else.i29.i63, %tegra_i2c_reg_addr.exit.i58.i2c_writel.exit67_crit_edge
  %reg.addr.0.i33.i65 = phi i32 [ 148, %tegra_i2c_reg_addr.exit.i58.i2c_writel.exit67_crit_edge ], [ %spec.select128, %if.else.i29.i63 ]
  %add.ptr3.i66 = getelementptr i8, ptr %40, i32 %reg.addr.0.i33.i65
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i66) #9, !srcloc !183
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %48 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i.i70 = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i.i70, label %if.else.i.i.i74, label %i2c_writel.exit67.i2c_readl.exit.i_crit_edge

i2c_writel.exit67.i2c_readl.exit.i_crit_edge:     ; preds = %i2c_writel.exit67
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit.i

if.else.i.i.i74:                                  ; preds = %i2c_writel.exit67
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i71 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %50 = ptrtoint ptr %is_vi.i.i.i71 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_vi.i.i.i71, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.not.i.i.i72 = icmp eq i8 %51, 0
  %spec.select.i73 = select i1 %tobool1.not.i.i.i72, i32 100, i32 3472
  br label %i2c_readl.exit.i

i2c_readl.exit.i:                                 ; preds = %if.else.i.i.i74, %i2c_writel.exit67.i2c_readl.exit.i_crit_edge
  %reg.addr.0.i.i.i75 = phi i32 [ 116, %i2c_writel.exit67.i2c_readl.exit.i_crit_edge ], [ %spec.select.i73, %if.else.i.i.i74 ]
  %add.ptr.i.i76 = getelementptr i8, ptr %47, i32 %reg.addr.0.i.i.i75
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76) #9, !srcloc !183
  %53 = or i32 %52, 524288
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %56 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i4.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i4.i, label %if.else.i.i8.i, label %i2c_readl.exit.i.tegra_i2c_reg_addr.exit.i.i78_crit_edge

i2c_readl.exit.i.tegra_i2c_reg_addr.exit.i.i78_crit_edge: ; preds = %i2c_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i78

if.else.i.i8.i:                                   ; preds = %i2c_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i6.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %58 = ptrtoint ptr %is_vi.i.i6.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %is_vi.i.i6.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool1.not.i.i7.i = icmp eq i8 %59, 0
  %spec.select12.i = select i1 %tobool1.not.i.i7.i, i32 100, i32 3472
  br label %tegra_i2c_reg_addr.exit.i.i78

tegra_i2c_reg_addr.exit.i.i78:                    ; preds = %if.else.i.i8.i, %i2c_readl.exit.i.tegra_i2c_reg_addr.exit.i.i78_crit_edge
  %reg.addr.0.i.i10.i = phi i32 [ 116, %i2c_readl.exit.i.tegra_i2c_reg_addr.exit.i.i78_crit_edge ], [ %spec.select12.i, %if.else.i.i8.i ]
  %add.ptr.i11.i = getelementptr i8, ptr %55, i32 %reg.addr.0.i.i10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %53) #9, !srcloc !184
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %62 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i22.i.i77 = icmp eq i8 %63, 0
  br i1 %tobool.not.i22.i.i77, label %if.else.i29.i.i81, label %tegra_i2c_reg_addr.exit.i.i78.tegra_i2c_unmask_irq.exit_crit_edge

tegra_i2c_reg_addr.exit.i.i78.tegra_i2c_unmask_irq.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_unmask_irq.exit

if.else.i29.i.i81:                                ; preds = %tegra_i2c_reg_addr.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i.i79 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %64 = ptrtoint ptr %is_vi.i27.i.i79 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_vi.i27.i.i79, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool1.not.i28.i.i80 = icmp eq i8 %65, 0
  %spec.select13.i = select i1 %tobool1.not.i28.i.i80, i32 100, i32 3472
  br label %tegra_i2c_unmask_irq.exit

tegra_i2c_unmask_irq.exit:                        ; preds = %if.else.i29.i.i81, %tegra_i2c_reg_addr.exit.i.i78.tegra_i2c_unmask_irq.exit_crit_edge
  %reg.addr.0.i33.i.i82 = phi i32 [ 116, %tegra_i2c_reg_addr.exit.i.i78.tegra_i2c_unmask_irq.exit_crit_edge ], [ %spec.select13.i, %if.else.i29.i.i81 ]
  %add.ptr3.i.i83 = getelementptr i8, ptr %61, i32 %reg.addr.0.i33.i.i82
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i83) #9, !srcloc !183
  %atomic_mode.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 23
  %67 = ptrtoint ptr %atomic_mode.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %atomic_mode.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i85 = icmp eq i8 %68, 0
  br i1 %tobool.not.i85, label %if.else.i, label %tegra_i2c_unmask_irq.exit.if.end6.sink.split.i_crit_edge

tegra_i2c_unmask_irq.exit.if.end6.sink.split.i_crit_edge: ; preds = %tegra_i2c_unmask_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split.i

if.else.i:                                        ; preds = %tegra_i2c_unmask_irq.exit
  %irq.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 5
  %69 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %70) #9
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete, i32 noundef 5) #9
  %71 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.else.i.if.end6.sink.split.i_crit_edge, label %if.else.i.tegra_i2c_wait_completion.exit_crit_edge

if.else.i.tegra_i2c_wait_completion.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_wait_completion.exit

if.else.i.if.end6.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.else.i.if.end6.sink.split.i_crit_edge, %tegra_i2c_unmask_irq.exit.if.end6.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 50, %tegra_i2c_unmask_irq.exit.if.end6.sink.split.i_crit_edge ], [ 0, %if.else.i.if.end6.sink.split.i_crit_edge ]
  %call5.i = tail call fastcc i32 @tegra_i2c_poll_completion(ptr noundef %1, ptr noundef %msg_complete, i32 noundef %.sink.i) #9
  br label %tegra_i2c_wait_completion.exit

tegra_i2c_wait_completion.exit:                   ; preds = %if.end6.sink.split.i, %if.else.i.tegra_i2c_wait_completion.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.else.i.tegra_i2c_wait_completion.exit_crit_edge ], [ %call5.i, %if.end6.sink.split.i ]
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 4
  %75 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i.i.i89 = icmp eq i8 %76, 0
  br i1 %tobool.not.i.i.i89, label %if.else.i.i.i93, label %tegra_i2c_wait_completion.exit.i2c_readl.exit.i97_crit_edge

tegra_i2c_wait_completion.exit.i2c_readl.exit.i97_crit_edge: ; preds = %tegra_i2c_wait_completion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit.i97

if.else.i.i.i93:                                  ; preds = %tegra_i2c_wait_completion.exit
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i.i90 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %77 = ptrtoint ptr %is_vi.i.i.i90 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %is_vi.i.i.i90, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool1.not.i.i.i91 = icmp eq i8 %78, 0
  %spec.select.i92 = select i1 %tobool1.not.i.i.i91, i32 100, i32 3472
  br label %i2c_readl.exit.i97

i2c_readl.exit.i97:                               ; preds = %if.else.i.i.i93, %tegra_i2c_wait_completion.exit.i2c_readl.exit.i97_crit_edge
  %reg.addr.0.i.i.i94 = phi i32 [ 116, %tegra_i2c_wait_completion.exit.i2c_readl.exit.i97_crit_edge ], [ %spec.select.i92, %if.else.i.i.i93 ]
  %add.ptr.i.i95 = getelementptr i8, ptr %74, i32 %reg.addr.0.i.i.i94
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95) #9, !srcloc !183
  %80 = and i32 %79, -524289
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i, align 4
  %83 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i.i4.i96 = icmp eq i8 %84, 0
  br i1 %tobool.not.i.i4.i96, label %if.else.i.i8.i101, label %i2c_readl.exit.i97.tegra_i2c_reg_addr.exit.i.i105_crit_edge

i2c_readl.exit.i97.tegra_i2c_reg_addr.exit.i.i105_crit_edge: ; preds = %i2c_readl.exit.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_reg_addr.exit.i.i105

if.else.i.i8.i101:                                ; preds = %i2c_readl.exit.i97
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i6.i98 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %85 = ptrtoint ptr %is_vi.i.i6.i98 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_vi.i.i6.i98, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool1.not.i.i7.i99 = icmp eq i8 %86, 0
  %spec.select12.i100 = select i1 %tobool1.not.i.i7.i99, i32 100, i32 3472
  br label %tegra_i2c_reg_addr.exit.i.i105

tegra_i2c_reg_addr.exit.i.i105:                   ; preds = %if.else.i.i8.i101, %i2c_readl.exit.i97.tegra_i2c_reg_addr.exit.i.i105_crit_edge
  %reg.addr.0.i.i10.i102 = phi i32 [ 116, %i2c_readl.exit.i97.tegra_i2c_reg_addr.exit.i.i105_crit_edge ], [ %spec.select12.i100, %if.else.i.i8.i101 ]
  %add.ptr.i11.i103 = getelementptr i8, ptr %82, i32 %reg.addr.0.i.i10.i102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i103, i32 %80) #9, !srcloc !184
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 4
  %89 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i22.i.i104 = icmp eq i8 %90, 0
  br i1 %tobool.not.i22.i.i104, label %if.else.i29.i.i109, label %tegra_i2c_reg_addr.exit.i.i105.tegra_i2c_mask_irq.exit_crit_edge

tegra_i2c_reg_addr.exit.i.i105.tegra_i2c_mask_irq.exit_crit_edge: ; preds = %tegra_i2c_reg_addr.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_i2c_mask_irq.exit

if.else.i29.i.i109:                               ; preds = %tegra_i2c_reg_addr.exit.i.i105
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i27.i.i106 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %91 = ptrtoint ptr %is_vi.i27.i.i106 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %is_vi.i27.i.i106, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool1.not.i28.i.i107 = icmp eq i8 %92, 0
  %spec.select13.i108 = select i1 %tobool1.not.i28.i.i107, i32 100, i32 3472
  br label %tegra_i2c_mask_irq.exit

tegra_i2c_mask_irq.exit:                          ; preds = %if.else.i29.i.i109, %tegra_i2c_reg_addr.exit.i.i105.tegra_i2c_mask_irq.exit_crit_edge
  %reg.addr.0.i33.i.i110 = phi i32 [ 116, %tegra_i2c_reg_addr.exit.i.i105.tegra_i2c_mask_irq.exit_crit_edge ], [ %spec.select13.i108, %if.else.i29.i.i109 ]
  %add.ptr3.i.i111 = getelementptr i8, ptr %88, i32 %reg.addr.0.i33.i.i110
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i111) #9, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp eq i32 %ret.0.i, 0
  br i1 %cmp, label %tegra_i2c_mask_irq.exit.cleanup.sink.split_crit_edge, label %if.end22

tegra_i2c_mask_irq.exit.cleanup.sink.split_crit_edge: ; preds = %tegra_i2c_mask_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end22:                                         ; preds = %tegra_i2c_mask_irq.exit
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %96 = ptrtoint ptr %is_dvc.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %is_dvc.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i115 = icmp eq i8 %97, 0
  br i1 %tobool.not.i.i115, label %if.else.i.i119, label %if.end22.i2c_readl.exit_crit_edge

if.end22.i2c_readl.exit_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_readl.exit

if.else.i.i119:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %is_vi.i.i117 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %98 = ptrtoint ptr %is_vi.i.i117 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %is_vi.i.i117, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool1.not.i.i118 = icmp eq i8 %99, 0
  %spec.select129 = select i1 %tobool1.not.i.i118, i32 136, i32 3616
  br label %i2c_readl.exit

i2c_readl.exit:                                   ; preds = %if.else.i.i119, %if.end22.i2c_readl.exit_crit_edge
  %reg.addr.0.i.i121 = phi i32 [ 152, %if.end22.i2c_readl.exit_crit_edge ], [ %spec.select129, %if.else.i.i119 ]
  %add.ptr.i122 = getelementptr i8, ptr %95, i32 %reg.addr.0.i.i121
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #9, !srcloc !183
  %101 = and i32 %100, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool24.not = icmp eq i32 %101, 0
  br i1 %tobool24.not, label %i2c_readl.exit.cleanup.sink.split_crit_edge, label %i2c_readl.exit.cleanup_crit_edge

i2c_readl.exit.cleanup_crit_edge:                 ; preds = %i2c_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

i2c_readl.exit.cleanup.sink.split_crit_edge:      ; preds = %i2c_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %i2c_readl.exit.cleanup.sink.split_crit_edge, %tegra_i2c_mask_irq.exit.cleanup.sink.split_crit_edge, %i2c_writel.exit.i.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.7, %i2c_writel.exit.i.cleanup.sink.split_crit_edge ], [ @.str.58, %tegra_i2c_mask_irq.exit.cleanup.sink.split_crit_edge ], [ @.str.61, %i2c_readl.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %i2c_writel.exit.i.cleanup.sink.split_crit_edge ], [ -110, %tegra_i2c_mask_irq.exit.cleanup.sink.split_crit_edge ], [ -5, %i2c_readl.exit.cleanup.sink.split_crit_edge ]
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull %.str.7.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %i2c_readl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %i2c_readl.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adapter = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 1
  %lock_ops.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adapter, i32 noundef 1) #9
  %locked_flags.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 1, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %locked_flags.i) #9
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adapter, i32 noundef 1) #9
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %10 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %nclocks.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nclocks.i, align 8
  %clocks.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %13, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef %15, ptr noundef %clocks.i) #9
  %call1.i = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1.i = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %nclocks.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nclocks.i, align 8
  %clocks.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %clocks.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %is_vi.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %is_vi.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_vi.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not.i = icmp eq i8 %5, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end_crit_edge, label %if.then7.i

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7.i:                                       ; preds = %if.end5.i
  %call8.i = tail call fastcc i32 @tegra_i2c_init(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then7.i.if.end_crit_edge, label %disable_clocks.i

if.then7.i.if.end_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

disable_clocks.i:                                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nclocks.i, align 8
  tail call void @clk_bulk_disable(i32 noundef %7, ptr noundef %clocks.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.then7.i.if.end_crit_edge, %if.end5.i.if.end_crit_edge
  %call2 = tail call fastcc i32 @tegra_i2c_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  br i1 %cmp.i, label %if.then7, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %nclocks.i24 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %nclocks.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nclocks.i24, align 8
  %clocks.i25 = getelementptr inbounds %struct.tegra_i2c_dev, ptr %11, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef %13, ptr noundef %clocks.i25) #9
  %call1.i26 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool9.not = icmp eq i32 %call1.i26, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %adapter = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 1
  %lock_ops.i.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock_ops.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void %17(ptr noundef %adapter, i32 noundef 1) #9
  %locked_flags.i = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 1, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %locked_flags.i) #9
  %18 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %21(ptr noundef %adapter, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %disable_clocks.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call2, %if.end.cleanup_crit_edge ], [ %call1.i26, %if.then7.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call1.i, %entry.cleanup_crit_edge ], [ %call8.i, %disable_clocks.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nclocks = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nclocks, align 8
  %clocks = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %clocks) #9
  %call1 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_i2c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %nclocks = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nclocks, align 8
  %clocks = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 8
  %call2 = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %clocks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %is_vi = getelementptr inbounds %struct.tegra_i2c_dev, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %is_vi to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_vi, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %call8 = tail call fastcc i32 @tegra_i2c_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.cleanup_crit_edge, label %disable_clocks

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

disable_clocks:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nclocks, align 8
  tail call void @clk_bulk_disable(i32 noundef %7, ptr noundef %clocks) #9
  br label %cleanup

cleanup:                                          ; preds = %disable_clocks, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %disable_clocks ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !139, !140, !141, !143, !145, !147, !148, !149, !150, !152, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @__initcall__kmod_i2c_tegra__425_1960_tegra_i2c_driver_init6, !1, !"__initcall__kmod_i2c_tegra__425_1960_tegra_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1960, i32 1}
!2 = !{ptr @__exitcall_tegra_i2c_driver_exit, !1, !"__exitcall_tegra_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description426, !4, !"__UNIQUE_ID_description426", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1962, i32 1}
!5 = !{ptr @__UNIQUE_ID_author427, !6, !"__UNIQUE_ID_author427", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1963, i32 1}
!7 = !{ptr @__UNIQUE_ID_file428, !8, !"__UNIQUE_ID_file428", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1964, i32 1}
!9 = !{ptr @__UNIQUE_ID_license429, !8, !"__UNIQUE_ID_license429", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1954, i32 11}
!12 = !{ptr @tegra_i2c_driver, !13, !"tegra_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1950, i32 31}
!14 = !{ptr @init_completion.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../include/linux/completion.h", i32 87, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 878, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tegra_i2c_isr._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra_i2c_isr._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 943, i32 7}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 602, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tegra_i2c_wait_for_config_load._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @tegra_i2c_wait_for_config_load._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 748, i32 6}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 788, i32 6}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1638, i32 55}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1641, i32 34}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1644, i32 34}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1653, i32 64}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1656, i32 11}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1668, i32 43}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1671, i32 44}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1674, i32 44}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1692, i32 3}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tegra_i2c_init_clocks._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @tegra_i2c_init_clocks._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @tegra20_i2c_hw, !59, !"tegra20_i2c_hw", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1449, i32 42}
!60 = !{ptr @tegra_i2c_quirks, !61, !"tegra_i2c_quirks", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1434, i32 40}
!62 = !{ptr @tegra30_i2c_hw, !63, !"tegra30_i2c_hw", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1473, i32 42}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 454, i32 40}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 462, i32 40}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 476, i32 3}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tegra_i2c_init_dma._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tegra_i2c_init_dma._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 489, i32 3}
!75 = !{ptr @tegra_i2c_init_dma._entry.25, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tegra_i2c_init_dma._entry_ptr.27, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 490, i32 3}
!79 = !{ptr @tegra_i2c_init_dma._entry.28, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tegra_i2c_init_dma._entry_ptr.30, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1718, i32 3}
!83 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @tegra_i2c_init_hardware._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @tegra_i2c_init_hardware._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 625, i32 38}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 629, i32 2}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 691, i32 3}
!92 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @tegra_i2c_init._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @tegra_i2c_init._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 583, i32 3}
!97 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @tegra_i2c_flush_fifos._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @tegra_i2c_flush_fifos._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @tegra_i2c_algo, !101, !"tegra_i2c_algo", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1427, i32 35}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1377, i32 3}
!104 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @tegra_i2c_xfer._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @tegra_i2c_xfer._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1309, i32 2}
!109 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @tegra_i2c_xfer_msg.__UNIQUE_ID_ddebug423, !108, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1331, i32 4}
!114 = !{ptr @tegra_i2c_xfer_msg._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @tegra_i2c_xfer_msg._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1351, i32 3}
!118 = !{ptr @tegra_i2c_xfer_msg._entry.44, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @tegra_i2c_xfer_msg._entry_ptr.46, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1356, i32 2}
!122 = !{ptr @tegra_i2c_xfer_msg.__UNIQUE_ID_ddebug424, !121, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1031, i32 4}
!125 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @tegra_i2c_config_fifo_trig._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @tegra_i2c_config_fifo_trig._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @tegra_i2c_config_fifo_trig._entry.50, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1032, i32 4}
!130 = !{ptr @tegra_i2c_config_fifo_trig._entry_ptr.51, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 395, i32 2}
!133 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @tegra_i2c_dma_submit.__UNIQUE_ID_ddebug291, !132, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 406, i32 3}
!137 = !{ptr @tegra_i2c_dma_submit._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @tegra_i2c_dma_submit._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!143 = !{ptr @tegra_i2c_recovery_info, !144, !"tegra_i2c_recovery_info", i1 false, i1 false}
!144 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1445, i32 37}
!145 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1132, i32 3}
!147 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @tegra_i2c_issue_bus_clear._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @tegra_i2c_issue_bus_clear._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1138, i32 3}
!152 = !{ptr @tegra_i2c_issue_bus_clear._entry.60, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @tegra_i2c_issue_bus_clear._entry_ptr.62, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @tegra_i2c_of_match, !155, !"tegra_i2c_of_match", i1 false, i1 false}
!155 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1617, i32 34}
!156 = !{ptr @tegra194_i2c_hw, !157, !"tegra194_i2c_hw", i1 false, i1 false}
!157 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1593, i32 42}
!158 = !{ptr @tegra194_i2c_quirks, !159, !"tegra194_i2c_quirks", i1 false, i1 false}
!159 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1440, i32 40}
!160 = !{ptr @tegra186_i2c_hw, !161, !"tegra186_i2c_hw", i1 false, i1 false}
!161 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1569, i32 42}
!162 = !{ptr @tegra210_i2c_hw, !163, !"tegra210_i2c_hw", i1 false, i1 false}
!163 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1545, i32 42}
!164 = !{ptr @tegra124_i2c_hw, !165, !"tegra124_i2c_hw", i1 false, i1 false}
!165 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1521, i32 42}
!166 = !{ptr @tegra114_i2c_hw, !167, !"tegra114_i2c_hw", i1 false, i1 false}
!167 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1497, i32 42}
!168 = !{ptr @tegra_i2c_acpi_match, !169, !"tegra_i2c_acpi_match", i1 false, i1 false}
!169 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1942, i32 36}
!170 = !{ptr @tegra_i2c_pm, !171, !"tegra_i2c_pm", i1 false, i1 false}
!171 = !{!"../drivers/i2c/busses/i2c-tegra.c", i32 1936, i32 32}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{!"auto-init"}
!182 = !{i8 0, i8 2}
!183 = !{i64 7045814}
!184 = !{i64 7045396}
!185 = !{!"branch_weights", i32 2000, i32 1}
!186 = !{i64 2148356118}
!187 = !{i64 840941, i64 840966, i64 840988, i64 841004, i64 841016, i64 841036, i64 841060, i64 841076, i64 841088}
!188 = !{i64 2148356306}
!189 = !{i64 2149000991, i64 2149000996, i64 2149001009, i64 2149001053, i64 2149001087, i64 2149001108}
!190 = !{i64 1540347, i64 1540374}
!191 = !{i64 1541042, i64 1541069, i64 1541102, i64 1541123, i64 1541150, i64 1541176}
